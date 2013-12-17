/****************************************************************************************
**
** Copyright (C) 2013 Riccardo Ferrazzo <f.riccardo87@gmail.com>.
** All rights reserved.
**
** This program is based on ubuntu-calculator-app created by:
** Dalius Dobravolskas <dalius@sandbox.lt>
** Riccardo Ferrazzo <f.riccardo87@gmail.com>
**
** This file is part of ScientificCalc Calculator.
** ScientificCalc Calculator is free software: you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation, either version 3 of the License, or
** (at your option) any later version.
**
** ScientificCalc Calculator is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with ScientificCalc Calculator.  If not, see <http://www.gnu.org/licenses/>.
**
****************************************************************************************/

import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    id: page

    Rectangle {
        id: screen
        color: Theme.secondaryHighlightColor
        width: parent.width -20
        anchors{
            top: parent.top
            left: parent.left
            topMargin: 10
            leftMargin: 10
        }
        height: column.height + 20

        Column{
            id: column
            anchors {
                top: parent.top
                left: parent.left
                topMargin: 10
                leftMargin: 5
            }

            width: parent.width - 10
            Label{
                width: parent.width
                height: font.pixelSize + 5
                text: calculator.formula_text+calculator.brackets_added
                fontSizeMode: Text.HorizontalFit
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
                color: Theme.primaryColor
            }

            Label{
                width: parent.width
                height: font.pixelSize + 5
                text: '= ' + calculator.answer
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
    Item {
        id: keyboard
        anchors {
            top: screen.bottom
            bottom: page.bottom
            left: page.left
            right: page.right
        }

        Label{
            anchors.centerIn: parent
            text: "√"
            color: Theme.secondaryColor
            font.pixelSize: Theme.fontSizeExtraLarge
        }
    }
}



