   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   K GRed Alert, Version=0.1.7184.30978, Culture=neutral, PublicKeyToken=null3clr-namespace:MvvmWpfApp.ViewsMvvmWpfApp.Views 5   	   =#clr-namespace:MvvmWpfApp.ViewModelsMvvmWpfApp.ViewModels 5   	   5clr-namespace:MvvmWpfApp.ModelsMvvmWpfApp.Models 5   	   'clr-namespace:MvvmWpfApp
MvvmWpfApp 5   	   H DMahApps.Metro, Version=1.6.5.1, Culture=neutral, PublicKeyToken=nullV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5      !   MvvmWpfApp.Views.MainWindow   5   	   U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   9system&clr-namespace:System;assembly=mscorlib     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   R NMahApps.Metro.IconPacks, Version=2.3.0.4, Culture=neutral, PublicKeyToken=null=	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  5
      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   *localclr-namespace:MvvmWpfApp.Views  5   	   2localVMs#clr-namespace:MvvmWpfApp.ViewModels  5   	   1localModelsclr-namespace:MvvmWpfApp.Models  5   	   X	 TXceed.Wpf.Toolkit, Version=3.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit 	 5   	   R
 NMvvmDialogs, Version=5.2.2.0, Culture=neutral, PublicKeyToken=3d3b9708589bc73e8md/https://github.com/fantasticfiasco/mvvm-dialogs 
 5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   E ADragablz, Version=0.0.3.203, Culture=neutral, PublicKeyToken=null6dragablz'http://dragablz.net/winfx/xaml/dragablz  5   	   )
mvvmWpfAppclr-namespace:MvvmWpfApp  5   	   Emah;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  5      $��0q�5      (  "MahApps.Metro.Controls.MetroWindow    	GlowBrush
  �   � � 
ResizeMode$ CanResizeWithGrip=�5         WindowTransitionsEnabled .  $ 
 MvvmDialogs.DialogServiceViews   IsRegistered .    MaterialDesignPaper#���   5   	     MaterialDesignFont#���  5   	    � Icon$ emergency.ico��5   	    � WindowState$ 	Maximized=�5   	    � Title 5   	   �� *Title+ � 	Resources 5        SampleTemplate  LargeTileStyle �� 
TargetType!  MahApps.Metro.Controls.Tile	 �� Property
 �� Value  SmallTileStyle��%�  &	       &	 (     &	 �     �� 5!   
   .R�5"      �� 5#      �� 5$   
   "  6'   .�5%      �� 	 � ��$	
 300��6&   �� 5&      	 � ��$	
 125��6'   �� 5'      	 �@ TitleFontSize$
 10Q�6.   5(      �� 5*   
   "  6'   .�5+      �� 	 � ��$	
 147��6&   �� 5,      	 � ��$	
 125��6'   �� 5-      	 �@ TitleFontSize$
 10Q�6.   5.      50       J� InputBindings 51      �� 53   
   
 �� Key$ S��61    �� 	Modifiers$
 Ctrlf�69    �� Command 6   �� *	SaveCmd+69   �� 54   
    �� Gesture$ Ctrl+Shift+S��63    6   �� *	SaveAsCmd+63   �� 55   
   $ Ctrl+O��61    6   �� *	OpenCmd+61   �� 56   
   $ Ctrl+N��60    6   �� *NewCmd+60   �� 57   
   $ Alt+F4��61    6   �� *	ExitCmd+61   .��59      � .+�5:   
   %  MahApps.Metro.Controls.FlipView  -   5          Name$ FlipViewTest��5:        
WhiteBrush#���  5;      $
��auto��5<      @�5?      � 5@      ���#2E8DEF.+�5A      �  � ColumnDefinitions 5B      �� 5C      $	��70* �6/   �� 5D      $
��450* �6/    � RowDefinitions 5F      �� 5G      $	��63* �6,   �� 5H      $
��400* �6,   .+�5K      �� $��1��6$   $��Center=�5L      $��Alerts��5M      $��Light"�5N      
�������$��30(�5P      $��Segoe UI)�5Q      � 5R      $��1��6$   $��1��61   $	��940��6A   $	��450��6M   $
��Left=�6Z   $	��Top=�6u   .+�5Y        -   5           Title$ Alerts��5Y   '   #��[ 66   $	��140��6p   $	��150��6|   $��3q�5Z   (   ��5[   "   �� 5\   &    �� ImageSource$ alert-icon.png��61   5^        5_      -   5        $ 
Statistics��5_   '   #��[ 6:   $��3q�6u   $	��350��6�   $	��150��6�   ��5`   "   �� 5a   &   $ statistics.png��61   5c        5d      -   5        $ Pictures��5d   '   #��[ 68   $	��150��6`   $	��150��6l   $��3q�6�   ��5e   "   �� 5f   &   $ explosion1.jpg��61   5h        5i      -   5        $ About us��5i   '   $	��150��6L   $	��150��6X   #��[ 6e   
��� � �6�   5j      5k      5l      � 5m      ���	#FFB8D4F1.+�5n      �  5o      �� 5p      $��40 �6/   �� 5q      $
��auto �6/   �� 5r      $��5 �6/   �� 5s      $��* �6/   .+�5v      �� -   5         ��Name$ homeBtn��5v   9   $	��top=�6!   $
��Left=�6a   $��0��6|    / +MahApps.Metro.Styles.MetroCircleButtonStyle#���  6�   .��5y      ,  &MahApps.Metro.IconPacks.PackIconModern  $��25��67   $��25��5z   '   $��Center=�5{   '   $��Center=�5|   '   E AControlzEx, Version=3.0.2.4, Culture=neutral, PublicKeyToken=null�  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconModernKind, MahApps.Metro.IconPacks, Version=2.3.0.4, Culture=neutral, PublicKeyToken=null]]   Kind$ 	HomeEmpty=�5}   '   5      (  "MvvmWpfApp.Views.NewReportFormView  5�      -   5          Name$ ReportFormView��5�   B   $��1��62      ReportFormVm 6Z   �� *NewReportFormVm+�� 5�      $��2��6'   $��5��67   $��Stretch=�6A     MvvmWpfApp.MapView  5�      -   5          Name$ MapView��5�   =   $��3��6-      MapVm 6N   �� *MapVm+5�      5�      � 5�      ���	#FFB8D4F1.+�5�      ]� .+�5�      �  5�      �� 5�   "   $��40 �63   �� 5�   "   $
��auto �63   �� 5�   "   $��5 �63   �� 5�   "   $��* �63   .+�5�      �� -	   5        $	��top=�5�   %   $
��Left=�6T   $��0��6o   #���  6   .��5�   "     $��25��6;   $��25��5�   '   $��Center=�5�   '   $��Center=�5�   '   $ 	HomeEmpty=�5�   '   5�      +	  %MvvmWpfApp.Views.ChooseExplosionsView	  5�      -
   5         	 Name$ ChooseExplosionsView��5�   I   +
  %MvvmWpfApp.Views.ChooseExplosionsView 
  ExplosionUpdated$ updateGraph��6�   $��1��69    	  ChooseExplosionsVm 6g   �� *ChooseExplosionsVm+6�   �� 5�      $��2��6+   $��5��6;   $��Stretch=�6E     MvvmWpfApp.GraphView  5�      -   5          Name$ 	GraphView��5�   C   $��3��63      GraphVm 6V   �� *	GraphVm+5�      5�      5�      � 5�      ���#2E8DEF.+�5�      �  5�      �� 5�      $��40 �6/   �� 5�      $
��auto �6/   5�      �� 5�      -   5        $	��top=�5�      $
��Left=�6L   $��0��6g   #���  6w   .��5�        $��25��63   $��25��5�   '   $��Center=�5�   '   $��Center=�5�   '   $ 	HomeEmpty=�5�   '   5�      �� 5�      $��1��6    $��Center=�60   $��Center=�6M     �� TextAlignment$  Right=�6h   $����בעיתות חירום מתקבלים במוקדים טלפוניים הודעות מרובות מאזרחים הטוענים להתרחשותו של אירוע בסביבתם כגון נפילת טיל
  אך לא תמיד המדווחים מסוגלים לציין במדויק את מיקום התרחשות האירוע
 בפרוייקט זה נתייחס לאוסף הודעות נכנסות וננסה להעריך את מיקומי האירועים באמצעות ניתוח אשכולות
 לאחר בירור ומציאת מקום הנפילה האמיתי נשתמש בצילומי המקום הכוללים GeoTagging לאיתור הקורדינטות הנכונות 
ונבצע הערכה לטיב הניתוח באמצעות מרחק ההערכה מהנפילה בפועל.��6~   5�      5�      � 5�      ���	#FFECD12B.+�5�      �  5�      �� 5�      $��40 �6/   �� 5�      $
��auto �6/   5�      �� 5�      -   5        $	��top=�5�      $
��Left=�6L   $��0��6g   #���  6w   .��5�        $��25��63   $��25��5�   '   $��Center=�5�   '   $��Center=�5�   '   $ 	HomeEmpty=�5�   '   5�      #  MvvmWpfApp.Views.picturesList  5�      $��1��6)   5�      5�      5�      5�      