   M S B A M L   `   `   `  ����K  GRed Alert, Version=0.1.7184.30978, Culture=neutral, PublicKeyToken=null3clr-namespace:MvvmWpfApp.ViewsMvvmWpfApp.Views  5   	       MvvmWpfApp.Views.main   5   	   U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:MvvmWpfApp.Views     5   	   U QMaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$
  main��5	   	   $	��600��6   $
��1080��6#    � 
ResizeMode$ NoResize=�60    � WindowStartupLocation$ CenterScreen=�6F    � WindowStyle$
 None=�6k   
������� � 	Resources 5         OpenMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	CloseMenu��%�  &	        &	 �     �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 70Q�63     5      $ 0:0:0.5��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.5��6'   $ 70Q�69   5      5      5      	 � Triggers	 5      :� 5   
   
 :� RoutedEvent$
 ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�5      �� #��[  6   5      :� 5   
   $
 ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�5      �� #��[ 6   5      .��5!      � ���	#FFDEDEDE.+�5"   
   � -   5         �Name$ GridMain��5"      $��Right=�6!   $��Bottom=�6=   $	��540��6X   $
��1010��6e   � 5#   
   $��60��6   $	��Top=�6   ���	#FF5C99D6 J� Effect 5$      3  -System.Windows.Media.Effects.DropShadowEffect  5%         
BlurRadius$ 1Q�6#      ShadowDepth$ 1Q�62      Color$ 	#FFACACAC��6B   .+�5'      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   .+�5(      �� $��
Abel Dutra��6   $��Center=�6.   $��16(�6I   '  !MaterialDesignThemes.Wpf.PopupBox  5)         PlacementMode$ BottomAndAlignRightEdges=�6*      	StaysOpen .  $��10q�6e      PopupContent. 5*      �� $	��150��6!   .+�5+      �� $��Settings��6!   �� 5,      $��Account��6!   �� 5-      $
��Help��6!   �� 5.      �� 5/      $��Logout��6!   50      51      52      �� 53      $��Center=�6   $��Center=�65   $��22(�6P   Detecting Rocket Hits6u   54      � 55   
   -   5        $ GridMenu��55      $��70��6!   $
��Left=�6,   ���	#FF31577E 56        57      $ 2Q�6#   $ 1Q�62   $ 	#FFAEAEAE��6B   .+�59      �� .+�5:      � $	��150��6   
������� J� RenderTransformOrigin$ 0.5,0.5&�67   z�5;      V� 5<      .~�5=      �� �� 5>      �� 5?      T� 5@      5A      .+�5C      �� -   5         ��Name$ ButtonOpenMenu��5C      $��60��65   $��60��6A   $��5q�6L   $��Right=�6W   $	��Top=�6s    0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 6�   ���	#FF31577E��6�   Z� ��6�   Z� .��5D      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.6.0.325, Culture=neutral, PublicKeyToken=null]]   Kind$
 Menu=�62   $��25��6>   $��25��6I   5E      �� 5F      -   5        $ ButtonCloseMenu��5F      $y�	Collapsed=�66   $��60��6M   $��60��6Y   $��5q�6d   $��Right=�6o   $	��Top=�6�   #��[ 6�   ���	#FF31577E��6�   Z� ��6�   Z� .��5G        $ 	ArrowLeft=�62   $��25��6C   $��25��6N   5H      �� 5J      $��80��6   $��Bottom=�6(   5K      �� 5L      -   5         ��Name$ ListViewMenu��5L      ���	#FF5C99D6$��Disabled=�6H   .@�5M      �� -   5         ��Name$ ItemHome��5M   #   $��60��65   ���	#FF31577E.��5N      �� $ 
Horizontal=�6%   .+�5O        $ ViewDashboard=�66   $��25��6K   $��25��6W   $��17q�6b   ���	#FF5C99D66n   �� 5P      $
��Home��6(   $��Center=�64   $��20 10q�6O   ���	#FF5C99D66^   5Q      5R      �� 5S      -   5        $ 
ItemCreate��5S   #   $��60��67   ���	#FF31577E.��5T      �� $ 
Horizontal=�6%   .+�5U        $ Pencil=�66   $��25��6D   $��25��6P   $��17q�6[   ���	#FF5C99D66g   �� 5V      $��Report��6(   $��Center=�66   $��20 10q�6Q   ���	#FF5C99D66`   5W      5X      �� 5Y      $��60��6#   ���	#FF31577E.��5Z      �� $ 
Horizontal=�6%   .+�5[        $ InsertChart=�66   $��25��6I   $��25��6U   $��17q�6`   ���	#FF5C99D66l   �� 5\      $��Analysis��6(   $��Center=�68   $��20 10q�6S   ���	#FF5C99D66b   5]      5^      �� 5_      $��60��6#   ���	#FF31577E.��5`      �� $ 
Horizontal=�6%   .+�5a        $ Update=�66   $��25��6D   $��25��6P   $��17q�6[   ���	#FF5C99D66h   �� 5b      $��Update��6(   $��Center=�66   $��20 10q�6R   ���	#FF5C99D66a   5c      5d      �� 5e      $��60��6#   ���	#FF31577E.��5f      �� $ 
Horizontal=�6%   .+�5g        $ DoneAll=�66   $��25��6E   $��25��6Q   $��17q�6\   ���	#FF5C99D66i   �� 5h      $��Evaluate��6(   $��Center=�68   $��20 10q�6T   ���	#FF5C99D66c   5i      5j      5k      5l      5m      5n      5o      