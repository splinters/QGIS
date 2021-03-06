/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/symbology-ng/qgslegendsymbolitem.h                          *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/





class QgsLegendSymbolItem
{
%Docstring
 The class stores information about one class/rule of a vector layer renderer in a unified way
 that can be used by legend model for rendering of legend.

.. seealso:: QgsSymbolLegendNode
.. versionadded:: 2.6
%End

%TypeHeaderCode
#include "qgslegendsymbolitem.h"
%End
  public:
    QgsLegendSymbolItem();
    QgsLegendSymbolItem( QgsSymbol *symbol, const QString &label, const QString &ruleKey, bool checkable = false, int scaleMinDenom = -1, int scaleMaxDenom = -1, int level = 0, const QString &parentRuleKey = QString() );
%Docstring
.. versionadded:: 2.8
%End
    ~QgsLegendSymbolItem();
    QgsLegendSymbolItem( const QgsLegendSymbolItem &other );

    QgsSymbol *symbol() const;
%Docstring
Return associated symbol. May be null.
 :rtype: QgsSymbol
%End
    QString label() const;
%Docstring
Return text label
 :rtype: str
%End
    QString ruleKey() const;
%Docstring
Return unique identifier of the rule for identification of the item within renderer
 :rtype: str
%End
    bool isCheckable() const;
%Docstring
Return whether the item is user-checkable - whether renderer supports enabling/disabling it
 :rtype: bool
%End

    QgsSymbol *legacyRuleKey() const;
%Docstring
Used for older code that identifies legend entries from symbol pointer within renderer
 :rtype: QgsSymbol
%End

    bool isScaleOK( double scale ) const;
%Docstring
Determine whether given scale is within the scale range. Returns true if scale or scale range is invalid (value <= 0)
 :rtype: bool
%End
    int scaleMinDenom() const;
%Docstring
Value <= 0 means the range is unbounded on this side
 :rtype: int
%End
    int scaleMaxDenom() const;
%Docstring
Value <= 0 means the range is unbounded on this side
 :rtype: int
%End

    int level() const;
%Docstring
Identation level that tells how deep the item is in a hierarchy of items. For flat lists level is 0
 :rtype: int
%End

    QString parentRuleKey() const;
%Docstring
.. note::

   Parameter parentRuleKey added in QGIS 2.8
 :rtype: str
%End

    void setSymbol( QgsSymbol *s /Transfer/ );
%Docstring
Set symbol of the item. Takes ownership of symbol.
%End

};


typedef QList< QgsLegendSymbolItem > QgsLegendSymbolList;

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/symbology-ng/qgslegendsymbolitem.h                          *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
