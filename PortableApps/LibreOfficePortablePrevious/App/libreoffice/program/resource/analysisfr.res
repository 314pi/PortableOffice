  �     "   "SERIE.JOUR.OUVRE    �          FRACTION.ANNEE    �        MOIS.DECALER    �        NO.SEMAINE    �        FIN.MOIS    �          NB.JOURS.OUVRES   �        EST.PAIR    �        EST.IMPAIR    �        MULTINOMIALE    �        SOMME.SERIES    �        QUOTIENT    �     $   $ARRONDI.AU.MULTIPLE   �        RACINE.PI   �     "   "ALEA.ENTRE.BORNES   �        PGCD    �        PPCM    �        BESSELI   �        BESSELJ   �        BESSELK   �        BESSELY   �        BINOCT    �        BINDEC    �        BINHEX    �        OCTBIN    �        OCTDEC    �        OCTHEX    �        DECBIN    �        DECHEX    �        DECOCT    �        HEXBIN    �        HEXDEC    �        HEXOCT    �        DELTA   �        ERF   �        ERFC    �        SUP.SEUIL   �        FACTDOUBLE    �          COMPLEXE.MODULE   �     $   $COMPLEXE.IMAGINAIRE   �     $   $COMPLEXE.PUISSANCE    �     "   "COMPLEXE.ARGUMENT   �        COMPLEXE.COS    �        COMPLEXE.DIV    �        COMPLEXE.EXP    �     "   "COMPLEXE.CONJUGUE   �        COMPLEXE.LN   �          COMPLEXE.LOG10    �        COMPLEXE.LOG2   �     "   "COMPLEXE.PRODUIT    �        COMPLEXE.REEL   �        COMPLEXE.SIN    �     $   $COMPLEXE.DIFFERENCE   �          COMPLEXE.RACINE   �          COMPLEXE.SOMME    �        COMPLEXE    �        CONVERTIR   �        AMORDEGRC   �        AMORLINC    �        INTERET.ACC   �          INTERET.ACC.MAT   �          VALEUR.NOMINALE   �        TAUX.ESCOMPTE   �        DUREE   �        TAUX.EFFECTIF   �          CUMUL.PRINCPER    �        CUMUL.INTER   �        PRIX.TITRE    �     $   $VALEUR.ENCAISSEMENT   �     $   $PRIX.TITRE.ECHEANCE   �          DUREE.MODIFIEE    �        TAUX.NOMINAL    �        PRIX.FRAC            PRIX.DEC              RENDEMENT.TITRE        "   "RENDEMENT.SIMPLE         *   *RENDEMENT.TITRE.ECHEANCE              TAUX.ESCOMPTE.R             PRIX.BON.TRESOR        &   &RENDEMENT.BON.TRESOR         $   $PRIX.PCOUPON.IRREG         $   $REND.PCOUPON.IRREG    	     $   $PRIX.DCOUPON.IRREG    
     $   $REND.DCOUPON.IRREG            TRI.PAIEMENTS           VAN.PAIEMENTS           TAUX.INTERET         "   "DATE.COUPON.SUIV         "   "NB.JOURS.COUPONS         &   &NB.JOURS.COUPON.SUIV         &   &NB.JOURS.COUPON.PREC         "   "DATE.COUPON.PREC            NB.COUPONS            VC.PAIEMENTS            COMPLEXE.TAN            COMPLEXE.SEC            COMPLEXE.CSC            COMPLEXE.COT            COMPLEXE.SINH           COMPLEXE.COSH           COMPLEXE.SECH           COMPLEXE.CSCH   �  y  B  B   Renvoie le numéro de série de la date précédant ou suivant un nombre spécifié de jours ouvrés      Date initiale     Date initiale     Jours     Nombre de jours ouvrés avant ou après la date initiale      Congés et fêtes     Liste comprenant les dates des congés, jours fériés, etc.        �  y       Renvoie le nombre d'années (y compris la part fractionnelle) entre deux dates      Date initiale     Date initiale     Date de fin     Date de fin     Base      Base indique la convention de compte de jours à utiliser pour le calcul        �  y       Renvoie le numéro de série de la date située avant ou après un nombre spécifié de mois par rapport à la date de début     Date initiale     Date initiale     Nombre de mois      Nombre de mois avant ou après la date initiale       �  y  h  h   Returns the number of the calendar week in which the specified date occurs.
This function exists for interoperability with older Microsoft Excel documents, for new documents use WEEKNUM instead.      Date      La date ou le numéro de série de la date      Méthode      Indique le premier jour de la semaine (1 = Dimanche, 2 = Lundi)       �  y       Renvoie le numéro de série du dernier jour du mois situé avant ou après un nombre spécifié de mois par rapport à la date de début     Date initiale     Date initiale     Nombre de mois      Nombre de mois avant ou après la date initiale       �  y  b  b   Returns the number of workdays between two dates.
This function exists for interoperability with older Microsoft Excel documents, for new documents use NETWORKDAYS instead.      Date initiale     Date initiale     Date de fin     Date de fin     Congés et fêtes     Liste comprenant les dates des congés, jours fériés, etc.        �  y   `   `   Renvoie la valeur 'vrai' si le nombre est pair      Nombre      Nombre        �  y   b   b   Renvoie la valeur 'vrai' si le nombre est impair      Nombre      Nombre        �  y   �   �   Renvoie le coefficient multinomial d'un ensemble de nombres     Nombre      Nombre ou série de nombres dont le coefficient multinomial est à déterminer        �  y  z  z   	Renvoie la somme d'une série de puissances     X     Variable indépendante de la série de puissances     N     Puissance initiale à laquelle élever x      M     Incrément selon lequel augmenter n pour chacun des termes de la série     Coefficients      Ensemble des coefficients par lesquels multiplier les puissances successives de la variable x       �  y   �   �   Renvoie la partie entière d'une division     Numérateur     Le dividende      Dénominateur     Le diviseur       �  y   �   �   Renvoie un nombre arrondi au multiple spécifié      Nombre      Le nombre à arrondir     Multiple      Le multiple auquel arrondir le nombre       �  y   �   �   Renvoie la racine carrée d'un nombre multiplié par pi     Nombre      Le nombre par lequel pi est multiplié        �  y   �   �   Renvoie un nombre aléatoire entier compris entre les nombres spécifiés     Minimum     Le plus petit nombre pouvant être renvoyé     Maximum     Le plus grand nombre pouvant être renvoyé       �  y   �   �   Returns the greatest common divisor.
This function exists for interoperability with older Microsoft Excel documents, for new documents use GCD instead.     Nombre      Nombre ou série de nombres       �  y   �   �   Returns the least common multiple.
This function exists for interoperability with older Microsoft Excel documents, for new documents use LCM instead.     Nombre      Nombre ou série de nombres       �  y   �   �   Calcule la fonction de Bessel modifiée In(x)     X     La valeur à laquelle la fonction est à évaluer     N     Ordre de la fonction Bessel       �  y   �   �   Calcule la fonction de Bessel Jn(x)     X     La valeur à laquelle la fonction est à évaluer     N     Ordre de la fonction Bessel       �  y   �   �   Calcule la fonction de Bessel modifiée Kn(x)     X     La valeur à laquelle la fonction est à évaluer     N     Ordre de la fonction Bessel       �  y   �   �   Calcule la fonction de Bessel Yn(x)     X     La valeur à laquelle la fonction est à évaluer     N     Ordre de la fonction Bessel       �  y   �   �   Convertit un nombre binaire en nombre octal     Nombre      Le nombre binaire à convertir (en texte)     Chiffres      Nombre de chiffres à utiliser        �  y   �   �   Convertit un nombre binaire en nombre décimal      Nombre      Le nombre binaire à convertir (en texte)       �  y   �   �   Convertit un nombre binaire en nombre hexadécimal      Nombre      Le nombre binaire à convertir (en texte)     Chiffres      Nombre de chiffres à utiliser.       �  y   �   �   Convertit un nombre octal en nombre binaire     Nombre      Le nombre octal à convertir (en texte)     Chiffres      Nombre de chiffres à utiliser           y   ~   ~   Convertit un nombre octal en nombre décimal      Nombre      Le nombre octal à convertir (en texte)         y   �   �   Convertit un nombre octal en nombre hexadécimal      Nombre      Le nombre octal à convertir (en texte)     Chiffres      Nombre de chiffres à utiliser          y   �   �   Convertit un nombre décimal en nombre binaire      Nombre      Le nombre décimal à convertir     Chiffres      Nombre de chiffres à utiliser          y   �   �   Convertit un nombre décimal en nombre hexadécimal     Nombre      Le nombre décimal à convertir     Chiffres      Nombre de chiffres à utiliser          y   �   �   Convertit un nombre décimal en nombre octal      Nombre      Le nombre décimal      Chiffres      Nombre de chiffres à utiliser          y   �   �   Convertit un nombre hexadécimal en nombre binaire      Nombre      Le nombre hexadécimal à convertir (en texte)      Chiffres      Nombre de chiffres à utiliser          y   �   �   Convertit un nombre hexadécimal en nombre décimal     Nombre      Le nombre hexadécimal à convertir (en texte)          y   �   �   Convertit un nombre hexadécimal en nombre octal      Nombre      Le nombre hexadécimal à convertir (en texte)      Chiffres      Nombre de chiffres à utiliser          y   �   �   Vérifie l'égalité de deux valeurs      Nombre 1      Premier nombre      Nombre 2      Deuxième nombre        	  y   �   �   Renvoie la fonction d'erreur      Limite inférieure      La limite inférieure pour l'intégration     Limite supérieure      La limite supérieure pour l'intégration       
  y   �   �   Renvoie la fonction d'erreur complémentaire      Limite inférieure      La limite inférieure pour l'intégration         y   �   �   Vérifie si un nombre est supérieur à une valeur de seuil     Nombre      Valeur à comparer avec la valeur de seuil      Seuil     La valeur de seuil          y   Z   Z   Renvoie la factorielle double d'un nombre     Nombre      Nombre          y   |   |   Renvoie la valeur absolue (module) d'un nombre complexe     Nombre complexe     Le nombre complexe          y   |   |   Renvoie le coefficient imaginaire d'un nombre complexe      Nombre complexe     Le nombre complexe          y   �   �   Renvoie un nombre complexe élevé à une puissance réelle     Nombre complexe     Le nombre complexe      Nombre      Puissance à laquelle élever le nombre complexe          y   �   �   Renvoie l'argument thêta d'un nombre complexe, un angle exprimé en radians      Nombre complexe     Un nombre complexe          y   l   l   Renvoie le cosinus d'un nombre complexe     Nombre complexe     Un nombre complexe          y   �   �   Renvoie le quotient de deux nombres complexes     Numérateur     Le dividende      Dénominateur     Le diviseur         y   �   �   Renvoie la forme algébrique de l'exponentiel d'un nombre complexe      Nombre complexe     Le nombre complexe          y   x   x   Renvoie le complexe conjugué d'un nombre complexe      Nombre complexe     Le nombre complexe          y   z   z   Renvoie le logarithme népérien d'un nombre complexe     Nombre complexe     Le nombre complexe          y   z   z   Renvoie le logarithme en base 10 d'un nombre complexe     Nombre complexe     Le nombre complexe          y   z   z   Renvoie le logarithme en base 2 d'un nombre complexe      Nombre complexe     Le nombre complexe          y   �   �   Renvoie le produit de plusieurs nombres complexes     Nombre complexe     Le premier nombre complexe      Nombre complexe     Un autre nombre complexe          y   v   v   Renvoie le coefficient réel d'un nombre complexe     Nombre complexe     Le nombre complexe          y   j   j   Renvoie le sinus d'un nombre complexe     Nombre complexe     Le nombre complexe          y   �   �   Renvoie la différence entre deux noms complexes      Nombre complexe 1     Nombre complexe 1     Nombre complexe 2     Nombre complexe 2         y   t   t   Renvoie la racine carrée d'un nombre complexe      Nombre complexe     Le nombre complexe          y   t   t   Renvoie la somme de plusieurs nombres complexes     Nombre complexe     Le nombre complexe          y   �   �   Convertit les coefficients réels et imaginaires en nombre complexe     Partie réelle      Le coefficient réel      Partie imaginaire     Le coefficient imaginaire     Suffixe     Suffixe         y   �   �   Convertit un nombre d'un système de mesure à un autre     Nombre      Nombre      De unité     Unité de l'argument Nombre     En unité     Unité de mesure du résultat          y  �  �   Renvoie l'amortissement linéaire prorata correspondant à chaque période comptable      Coût     Coût d'acquisition du bien     Date d'acquisition      Date d'acquisition du bien      Première période      Date indiquant la fin de la première période      Valeur résiduelle      Valeur résiduelle du bien au terme de l'amortissement      Période      Période      Taux      Taux d'amortissement      Base      Base annuelle à utiliser       !  y  �  �   Renvoie l'amortissement linéaire prorata correspondant à chaque période comptable      Coût     Coût d'acquisition du bien     Date d'acquisition      Date d'acquisition du bien      Première période      Date indiquant la fin de la première période      Valeur résiduelle      Valeur résiduelle du bien au terme de l'amortissement      Période      Période      Taux      Taux d'amortissement      Base      Base annuelle à utiliser       "  y  �  �   Renvoie les intérêts échus (ou intérêts accumulés) d'un titre ; versement périodique des intérêts      Émission     Date de l'émission du titre      Premier coupon      Date du premier paiement des intérêts du titre      Liquidation     Liquidation     Taux      Intérêt nominal     Valeur nominale     Valeur nominale     Fréquence      Fréquence      Base      Base        #  y  (  (   Renvoie les intérêts échus (ou intérêts accumulés) d'un titre ; versement des intérêts à échéance      Émission     La date d'émission     Liquidation     Liquidation     Taux      Intérêt nominal     Valeur nominale     Valeur nominale     Base      Base        $  y   �   �   Renvoie le montant du versement au terme de l'échéance pour une obligation      Liquidation     Liquidation     Échéance      Échéance      Investissement      Investissement      Escompte      Escompte      Base      Base        %  y   �   �   Renvoie le taux d'escompte d'un titre     Liquidation     Liquidation     Échéance      Échéance      Prix      Prix      Remboursement     Remboursement     Base      Base        &  y  (  (   Renvoie la durée Macaulay d'un titre avec des paiements d'intérêts périodiques      Liquidation     Liquidation     Échéance      Échéance      Intérêt nominal     Intérêt nominal     Rendement     Rendement     Fréquence      Fréquence      Base      Base        '  y   �   �   Renvoie le taux d'intérêt effectif annuel     Intérêt nominal     Intérêt nominal     Périodes     Périodes       (  y  V  V   Renvoie le montant cumulé des remboursements d'un emprunt à verser entre deux périodes     Taux      Intérêt nominal     Npm     Nombre de périodes de paiement     VA      Valeur actuelle     Période de début      Période de début      Période de fin     Période de fin     Type      Type de l'échéance        )  y  :  :   Renvoie les intérêts cumulés à payer entre deux périodes     Taux      Intérêt nominal     Npm     Nombre de périodes de paiement     VA      Valeur actuelle     Période de début      Période de début      Période de fin     Période de fin     Type      Type de l'échéance        *  y  d  d   Renvoie le prix, pour une valeur nominale de 100 unités monétaires, d'un titre rapportant des intérêts périodiques     Liquidation     Liquidation     Échéance      Échéance      Taux      Intérêt nominal     Rendement     Rendement     Remboursement     Remboursement     Fréquence      Fréquence      Base      Base        +  y       Renvoie le prix d'un titre escompté pour une valeur nominale de 100 unités monétaires      Liquidation     Liquidation     Échéance      Échéance      Escompte      Escompte      Remboursement     Remboursement     Base      Base        ,  y  H  H   Renvoie le prix, pour une valeur nominale de 100 unités monétaires, d'un titre rapportant des intérêts au terme de l'échéance     Liquidation     Liquidation     Échéance      Échéance      Émission     Émission     Taux      Intérêt nominal     Rendement     Rendement     Base      Base        -  y  <  <   Renvoie la durée de Macaulay modifiée d'un titre pour une valeur nominale de 100 unités monétaires      Liquidation     Liquidation     Échéance      Échéance      Intérêt nominal     Intérêt nominal     Rendement     Rendement     Fréquence      Fréquence      Base      Base        .  y   �   �   Renvoie le taux d'intérêt nominal annuel      Intérêt effectif      Taux d'intérêt effectif     Périodes     Périodes       /  y   �   �   Convertit une cotation de la forme décimale à la forme fractionnaire      Nombre      Nombre décimal     Fraction      Le diviseur       0  y   �   �   Convertit une cotation de la forme fractionnaire à la forme décimale      Nombre      Le nombre comme fraction      Fraction      Le diviseur       1  y  ,  ,   Renvoie le rendement d'un titre rapportant des intérêts périodiques      Liquidation     Liquidation     Échéance      Échéance      Taux      Intérêt nominal     Prix      Prix      Remboursement     Remboursement     Fréquence      Fréquence      Base      Base        2  y   �   �   Renvoie le rendement annuel d'un titre escompté      Liquidation     Liquidation     Échéance      Échéance      Prix      Prix      Remboursement     Remboursement     Base      Base        3  y         Renvoie le rendement annuel d'un titre rapportant des intérêts au terme de l'échéance     Liquidation     Liquidation     Échéance      Échéance      Émission     La date d'émission     Taux      Intérêt nominal     Prix      Prix      Base      Base        4  y   �   �   Renvoie le rendement équivalent à une obligation pour un bon du Trésor     Liquidation     Liquidation     Échéance      Échéance      Escompte      Le taux d'escompte        5  y   �   �   Renvoie le prix d'un bon du Trésor pour une valeur nominale de 100 unités monétaires     Liquidation     Liquidation     Échéance      Échéance      Escompte      Le taux d'escompte        6  y   �   �   Renvoie le rendement d'un bon du Trésor      Liquidation     Liquidation     Échéance      Échéance      Prix      Prix        7  y  �  �   Renvoie le prix, pour une valeur nominale de 100 unités monétaires, d'un titre dont la première période de coupon est irrégulière     Liquidation     Liquidation     Échéance      Échéance      Émission     Émission     Premier coupon      La date du premier coupon     Taux      Intérêt nominal     Rendement     Rendement     Remboursement     Remboursement     Fréquence      Fréquence      Base      Base        8  y  �  �   Renvoie le rendement d'un titre dont la première période de coupon est irrégulière      Liquidation     Liquidation     Échéance      Échéance      Émission     La date d'émission     Premier coupon      La date du premier coupon     Taux      Intérêt nominal     Prix      Prix      Remboursement     Remboursement     Fréquence      Fréquence      Base      Base        9  y  �  �   Renvoie le prix, pour une valeur nominale de 100 unités monétaires, d'un titre dont la dernière période de coupon est irrégulière     Liquidation     Liquidation     Échéance      Échéance      Dernier coupon      La date du dernier coupon     Taux      Intérêt nominal     Rendement     Rendement     Remboursement     Remboursement     Fréquence      Fréquence      Base      Base        :  y  n  n   Renvoie le rendement d'un titre dont la dernière période de coupon est irrégulière      Liquidation     Liquidation     Échéance      Échéance      Dernier coupon      La date du dernier coupon     Taux      Intérêt nominal     Prix      Prix      Remboursement     Remboursement     Fréquence      Fréquence      Base      Base        ;  y   �   �   Renvoie le taux de rentabilité interne d'un ensemble de paiements non périodiques     Valeurs     Valeurs     Dates     Dates     Estimation      Estimation        <  y   �   �   Renvoie la valeur actuelle nette d'un ensemble de paiements non périodiques      Taux      Intérêt nominal     Valeurs     Valeurs     Dates     Dates       =  y   �   �   Renvoie le taux d'intérêt pour une obligation     Liquidation     Liquidation     Échéance      Échéance      Investissement      Investissement      Remboursement     Remboursement     Base      Base        >  y   �   �   	Renvoie la date du coupon suivant la date de liquidation      Liquidation     Liquidation     Échéance      Échéance      Fréquence      Fréquence      Base      Base        ?  y   �   �   	Renvoie le nombre de jours pour la période du coupon contenant la date de liquidation      Liquidation     Liquidation     Échéance      Échéance      Fréquence      Fréquence      Base      Base        @  y   �   �   	Renvoie le nombre de jours entre la date de liquidation et la date du coupon suivant      Liquidation     Liquidation     Échéance      Échéance      Fréquence      Fréquence      Base      Base        A  y   �   �   	Renvoie le nombre de jours entre le début de la période de coupon et la date de liquidation     Liquidation     Liquidation     Échéance      Échéance      Fréquence      Fréquence      Base      Base        B  y   �   �   	Renvoie la date du coupon précédant la date de liquidation      Liquidation     Liquidation     Échéance      Échéance      Fréquence      Fréquence      Base      Base        C  y   �   �   	Renvoie le nombre de coupons dus entre la date de liquidation et la date d'échéance     Liquidation     Liquidation     Échéance      Échéance      Fréquence      Fréquence      Base      Base        D  y   �   �   Renvoie la valeur future d'un investissement en appliquant une série de taux d'intérêt composites      Capital     Capital     Intérêts      Intérêts        E  y   n   n   Renvoie la tangente d'un nombre complexe      Nombre complexe     Un nombre complexe        F  y   n   n   Renvoie la sécante d'un nombre complexe      Nombre complexe     Un nombre complexe        G  y   p   p   Renvoie la cosécante d'un nombre complexe      Nombre complexe     Un nombre complexe        H  y   p   p   Renvoie la cotangente d'un nombre complexe      Nombre complexe     Un nombre complexe        I  y   x   x   Renvoie le sinus hyperbolique d'un nombre complexe      Nombre complexe     Un nombre complexe        J  y   z   z   Renvoie le cosinus hyperbolique d'un nombre complexe      Nombre complexe     Un nombre complexe        K  y   z   z   Renvoie la sécante hyperbolique d'un nombre complexe     Nombre complexe     Un nombre complexe        L  y   |   |   Renvoie la cosécante hyperbolique d'un nombre complexe     Nombre complexe     Un nombre complexe         �           �     �  \f    �        �   "    �   B    �   `    �   |    �   �    �   �    �   �    �   �    �  
    �  (    �  B    �  f    �  �    �  �    �  �    �  �    �  �    �  �    �      �  .    �  F    �  ^    �  v    �  �    �  �    �  �    �  �    �  �    �      �      �  6    �  N    �  d    �  x    �  �    �  �    �  �    �  �    �      �  ,    �  N    �  l    �  �    �  �    �  �    �  �    �      �  $    �  F    �  d    �  �    �  �    �  �    �  �    �       �      �  4    �  N    �  j    �  �    �  �    �  �    �  �    �  �    �      �  8    �  T    �  x    �  �    �  �    �  �       �            .      P      z      �      �      �      	    	  	(    
  	L      	p      	�      	�      	�      	�      
      
4      
Z      
|      
�      
�      
�      
�            .      L      j      �  y  �  �  y  �  �  y  �  �  y  �  �  y  �  V  y  �  d  y  �  �  y  �  &  y  �  �  y  �  <  y  �  �  y  �  <  y  �  �  y  �  l  y  �  F  y  �  "  y  �  �  y  �  �  y  �  B  y  �  �  y  �  �  y  �  8  y  �  �  y  �  r  y        y    �  y     R  y     �  y    !�  y    "F  y    #  y    #�  y    $L  y  	  $�  y  
  %�  y    &  y    &�  y    '*  y    '�  y    ("  y    (�  y    )v  y    )�  y    *l  y    *�  y    +l  y    +�  y    ,`  y    ,�  y    -�  y    .   y    .j  y    /  y    /�  y    /�  y    0�  y     1�  y  !  3h  y  "  5@  y  #  6�  y  $  8  y  %  9   y  &  9�  y  '  :�  y  (  ;~  y  )  <�  y  *  >  y  +  ?r  y  ,  @x  y  -  A�  y  .  B�  y  /  C�  y  0  D0  y  1  D�  y  2  F  y  3  F�  y  4  G�  y  5  H�  y  6  I�  y  7  J.  y  8  K�  y  9  M�  y  :  O*  y  ;  P�  y  <  QP  y  =  R  y  >  R�  y  ?  S�  y  @  T�  y  A  Uv  y  B  V`  y  C  W*  y  D  X  y  E  X�  y  F  Y0  y  G  Y�  y  H  Z  y  I  Z~  y  J  Z�  y  K  [p  y  L  [�  	�