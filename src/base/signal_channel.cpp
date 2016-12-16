// Copyright 2013 Clemens Brunner, Thomas Brunner, Christoph Eibel,
// Alois Schlögl, Oliver Terbu.

// This file is part of SigViewer.
//
// SigViewer is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// SigViewer is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with SigViewer. If not, see <http://www.gnu.org/licenses/>.


#include "signal_channel.h"

namespace SigViewer_
{

//-----------------------------------------------------------------------------
SignalChannel::SignalChannel(unsigned ch, const HDRTYPE* hdr) :
    label_ (QString(hdr->CHANNEL[ch].Label).trimmed()),
    physical_maximum_(hdr->CHANNEL[ch].PhysMax),
    digital_maximum_(hdr->CHANNEL[ch].DigMax),
    physical_minimum_(hdr->CHANNEL[ch].PhysMin),
    digital_minimum_(hdr->CHANNEL[ch].DigMin),
    data_type_(hdr->CHANNEL[ch].GDFTYP),
    lowpass_(hdr->CHANNEL[ch].LowPass),
    highpass_(hdr->CHANNEL[ch].HighPass),
    notch_(hdr->CHANNEL[ch].Notch)
{
#if (BIOSIG_VERSION < 10400)
    char tmpstr[30];
    PhysDim(hdr->CHANNEL[ch].PhysDimCode), tmpstr);
#else
    const char *tmpstr = PhysDim3(hdr->CHANNEL[ch].PhysDimCode);
#endif
    phys_y_dimension_label_ = QString(tmpstr);
    samplerate_ = hdr->SampleRate * hdr->CHANNEL[ch].SPR / hdr->SPR;
}

//-----------------------------------------------------------------------------
float64 SignalChannel::getSampleRate() const
{
    return samplerate_;
}

//-----------------------------------------------------------------------------
const QString& SignalChannel::getLabel() const
{
    return label_;
}

//-----------------------------------------------------------------------------
float64 SignalChannel::getLowpass() const
{
    return lowpass_;
}

//-----------------------------------------------------------------------------
float64 SignalChannel::getHighpass() const
{
    return highpass_;
}

//-----------------------------------------------------------------------------
bool SignalChannel::getNotch() const
{
    return notch_;
}

//-----------------------------------------------------------------------------
const QString& SignalChannel::getPhysicalDim() const
{
    return phys_y_dimension_label_;
}

//-----------------------------------------------------------------------------
float64 SignalChannel::getPhysicalMaximum() const
{
    return physical_maximum_;
}

//-----------------------------------------------------------------------------
float64 SignalChannel::getDigitalMaximum() const
{
    return digital_maximum_;
}

//-----------------------------------------------------------------------------
float64 SignalChannel::getPhysicalMinimum() const
{
    return physical_minimum_;
}

//-----------------------------------------------------------------------------
float64 SignalChannel::getDigitalMinimum() const
{
    return digital_minimum_;
}

//-----------------------------------------------------------------------------
QString SignalChannel::typeString() const
{
    if (data_type_ > UBITN)
    {
        return QString("ubit%1").arg(data_type_ - UBITN);
    }
    if (data_type_ > BITN)
    {
        return QString("bit%1").arg(data_type_ - BITN);
    }
    switch (data_type_)
    {
        case CHAR:
            return "char";
        case INT8:
            return "int8";
        case UINT8:
            return "uint8";
        case INT16:
            return "int16";
        case UINT16:
            return "uint16";
        case INT32:
            return "int32";
        case UINT32:
            return "uint32";
        case INT64:
            return "int64";
        case UINT64:
            return "uint64";
        case FLOAT32:
            return "float32";
        case FLOAT64:
            return "float64";
        case FLOAT128:
            return "float128";
        default:
            return "?";
    }
    return "?";
}

} // namespace SigViewer_
