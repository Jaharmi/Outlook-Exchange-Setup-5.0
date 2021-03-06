FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��--------------------------------------------Outlook Exchange Setup 5.0
� Copyright 2008-2015 William Smith
bill@officeformachelp.com

Except where otherwise noted, this work is licensed under
http://creativecommons.org/licenses/by/3.0/

This file is one of four files for assisting a user with configuring
an Exchange account in Microsoft Outlook 2016 for Mac:

1. Outlook Exchange Setup 5.0.scpt
2. OutlookExchangeSetupLaunchAgent.sh
3. net.talkingmoose.OutlookExchangeSetupLaunchAgent.plist
4. com.microsoft.Outlook.plist for creating a configuraiton profile

These scripts and files may be freely modified for personal or commercial
purposes but may not be republished for profit without prior consent.

If you find these resources useful or have ideas for improving them,
please let me know. It is only compatible with Outlook 2016 for Mac.--------------------------------------------This script assists a user with the setup of his Exchange accountinformation. Below are basic instructions for using the script.Consult the Outlook Exchange Setup 5.0 Administrator's Guidefor complete details.1.	Customize the "network and  server properties" below with information	appropriate to your network.	2.	Deploy this script to a location on your Macs such as	"/Library/CompanyName/OutlookExchangeSetup5.0.scpt".3. 	Deploy the recommended "Outlook preferences.mobileconfig"	configuration profile to eliminate Outlook's startup windows.	This assumes you're using the volume license edition	of Office 2016 for Mac.	4.	Deploy the OutlookExchangeSetup5.0.plist file to	/Library/LaunchAgents. Update the path to point to the	OutlookExchangeSetup5.0.scpt script.	  This script assumes the user's full name is in the form of "Last, First",but is easily modified if the full name is in the form of "First Last".It works especially well if the Mac is bound to Active Directory wherethe user's short name will match his login name. Optionally, you cans set dsclto pull the user's EMailAddress from a directory service.     � 	 	�   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  O u t l o o k   E x c h a n g e   S e t u p   5 . 0 
 �   C o p y r i g h t   2 0 0 8 - 2 0 1 5   W i l l i a m   S m i t h 
 b i l l @ o f f i c e f o r m a c h e l p . c o m 
 
 E x c e p t   w h e r e   o t h e r w i s e   n o t e d ,   t h i s   w o r k   i s   l i c e n s e d   u n d e r 
 h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y / 3 . 0 / 
 
 T h i s   f i l e   i s   o n e   o f   f o u r   f i l e s   f o r   a s s i s t i n g   a   u s e r   w i t h   c o n f i g u r i n g 
 a n   E x c h a n g e   a c c o u n t   i n   M i c r o s o f t   O u t l o o k   2 0 1 6   f o r   M a c : 
 
 1 .   O u t l o o k   E x c h a n g e   S e t u p   5 . 0 . s c p t 
 2 .   O u t l o o k E x c h a n g e S e t u p L a u n c h A g e n t . s h 
 3 .   n e t . t a l k i n g m o o s e . O u t l o o k E x c h a n g e S e t u p L a u n c h A g e n t . p l i s t 
 4 .   c o m . m i c r o s o f t . O u t l o o k . p l i s t   f o r   c r e a t i n g   a   c o n f i g u r a i t o n   p r o f i l e 
 
 T h e s e   s c r i p t s   a n d   f i l e s   m a y   b e   f r e e l y   m o d i f i e d   f o r   p e r s o n a l   o r   c o m m e r c i a l 
 p u r p o s e s   b u t   m a y   n o t   b e   r e p u b l i s h e d   f o r   p r o f i t   w i t h o u t   p r i o r   c o n s e n t . 
 
 I f   y o u   f i n d   t h e s e   r e s o u r c e s   u s e f u l   o r   h a v e   i d e a s   f o r   i m p r o v i n g   t h e m , 
 p l e a s e   l e t   m e   k n o w .   I t   i s   o n l y   c o m p a t i b l e   w i t h   O u t l o o k   2 0 1 6   f o r   M a c .   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   T h i s   s c r i p t   a s s i s t s   a   u s e r   w i t h   t h e   s e t u p   o f   h i s   E x c h a n g e   a c c o u n t  i n f o r m a t i o n .   B e l o w   a r e   b a s i c   i n s t r u c t i o n s   f o r   u s i n g   t h e   s c r i p t .  C o n s u l t   t h e   O u t l o o k   E x c h a n g e   S e t u p   5 . 0   A d m i n i s t r a t o r ' s   G u i d e  f o r   c o m p l e t e   d e t a i l s .   1 . 	 C u s t o m i z e   t h e   " n e t w o r k   a n d     s e r v e r   p r o p e r t i e s "   b e l o w   w i t h   i n f o r m a t i o n  	 a p p r o p r i a t e   t o   y o u r   n e t w o r k .  	  2 . 	 D e p l o y   t h i s   s c r i p t   t o   a   l o c a t i o n   o n   y o u r   M a c s   s u c h   a s  	 " / L i b r a r y / C o m p a n y N a m e / O u t l o o k E x c h a n g e S e t u p 5 . 0 . s c p t " .   3 .   	 D e p l o y   t h e   r e c o m m e n d e d   " O u t l o o k   p r e f e r e n c e s . m o b i l e c o n f i g "  	 c o n f i g u r a t i o n   p r o f i l e   t o   e l i m i n a t e   O u t l o o k ' s   s t a r t u p   w i n d o w s .  	 T h i s   a s s u m e s   y o u ' r e   u s i n g   t h e   v o l u m e   l i c e n s e   e d i t i o n  	 o f   O f f i c e   2 0 1 6   f o r   M a c .  	  4 . 	 D e p l o y   t h e   O u t l o o k E x c h a n g e S e t u p 5 . 0 . p l i s t   f i l e   t o  	 / L i b r a r y / L a u n c h A g e n t s .   U p d a t e   t h e   p a t h   t o   p o i n t   t o   t h e  	 O u t l o o k E x c h a n g e S e t u p 5 . 0 . s c p t   s c r i p t .  	      T h i s   s c r i p t   a s s u m e s   t h e   u s e r ' s   f u l l   n a m e   i s   i n   t h e   f o r m   o f   " L a s t ,   F i r s t " ,  b u t   i s   e a s i l y   m o d i f i e d   i f   t h e   f u l l   n a m e   i s   i n   t h e   f o r m   o f   " F i r s t   L a s t " .  I t   w o r k s   e s p e c i a l l y   w e l l   i f   t h e   M a c   i s   b o u n d   t o   A c t i v e   D i r e c t o r y   w h e r e  t h e   u s e r ' s   s h o r t   n a m e   w i l l   m a t c h   h i s   l o g i n   n a m e .   O p t i o n a l l y ,   y o u   c a n s   s e t   d s c l  t o   p u l l   t h e   u s e r ' s   E M a i l A d d r e s s   f r o m   a   d i r e c t o r y   s e r v i c e .     
  
 l     ��������  ��  ��        l     ��  ��    0 *------------------------------------------     �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��  ��    , & Begin network, server and preferences     �   L   B e g i n   n e t w o r k ,   s e r v e r   a n d   p r e f e r e n c e s      l     ��  ��    0 *------------------------------------------     �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��������  ��  ��        l     ��������  ��  ��         l     �� ! "��   ! C =------------- Exchange Server settings ----------------------    " � # # z - - - - - - - - - - - - -   E x c h a n g e   S e r v e r   s e t t i n g s   - - - - - - - - - - - - - - - - - - - - - -    $ % $ l     ��������  ��  ��   %  & ' & j     �� (�� 0 usekerberos useKerberos ( m     ��
�� boovtrue '  ) * ) l     �� + ,��   + B < Set this to true only if Macs in your environment are bound    , � - - x   S e t   t h i s   t o   t r u e   o n l y   i f   M a c s   i n   y o u r   e n v i r o n m e n t   a r e   b o u n d *  . / . l     �� 0 1��   0 C = to Active Directory and your network is properly configured.    1 � 2 2 z   t o   A c t i v e   D i r e c t o r y   a n d   y o u r   n e t w o r k   i s   p r o p e r l y   c o n f i g u r e d . /  3 4 3 l     ��������  ��  ��   4  5 6 5 j    �� 7��  0 exchangeserver ExchangeServer 7 m     8 8 � 9 9 ( e x c h a n g e . e x a m p l e . c o m 6  : ; : l     �� < =��   < 6 0 Address of your organization's Exchange server.    = � > > `   A d d r e s s   o f   y o u r   o r g a n i z a t i o n ' s   E x c h a n g e   s e r v e r . ;  ? @ ? l     ��������  ��  ��   @  A B A j    �� C�� 60 exchangeserverrequiresssl ExchangeServerRequiresSSL C m    ��
�� boovtrue B  D E D l     �� F G��   F   True for most servers.    G � H H .   T r u e   f o r   m o s t   s e r v e r s . E  I J I l     ��������  ��  ��   J  K L K j   	 �� M�� .0 exchangeserversslport ExchangeServerSSLPort M m   	 
����� L  N O N l     �� P Q��   P @ : If ExchangeServerRequiresSSL is true set the port to 443.    Q � R R t   I f   E x c h a n g e S e r v e r R e q u i r e s S S L   i s   t r u e   s e t   t h e   p o r t   t o   4 4 3 . O  S T S l     �� U V��   U @ : If ExchangeServerRequiresSSL is false set the port to 80.    V � W W t   I f   E x c h a n g e S e r v e r R e q u i r e s S S L   i s   f a l s e   s e t   t h e   p o r t   t o   8 0 . T  X Y X l     �� Z [��   Z L F Use a different port number only if your administrator instructs you.    [ � \ \ �   U s e   a   d i f f e r e n t   p o r t   n u m b e r   o n l y   i f   y o u r   a d m i n i s t r a t o r   i n s t r u c t s   y o u . Y  ] ^ ] l     ��������  ��  ��   ^  _ ` _ j    �� a�� "0 directoryserver DirectoryServer a m     b b � c c  g c . e x a m p l e . c o m `  d e d l     �� f g��   f Z T Address of an internal Global Catalog server (a type of Windows domain controller).    g � h h �   A d d r e s s   o f   a n   i n t e r n a l   G l o b a l   C a t a l o g   s e r v e r   ( a   t y p e   o f   W i n d o w s   d o m a i n   c o n t r o l l e r ) . e  i j i l     �� k l��   k L F The LDAP server in a Windows network will be a Global Catalog server,    l � m m �   T h e   L D A P   s e r v e r   i n   a   W i n d o w s   n e t w o r k   w i l l   b e   a   G l o b a l   C a t a l o g   s e r v e r , j  n o n l     �� p q��   p 2 , which is separate from the Exchange Server.    q � r r X   w h i c h   i s   s e p a r a t e   f r o m   t h e   E x c h a n g e   S e r v e r . o  s t s l     ��������  ��  ��   t  u v u j    �� w�� N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication w m    ��
�� boovtrue v  x y x l     �� z {��   z ' ! This will almost always be true.    { � | | B   T h i s   w i l l   a l m o s t   a l w a y s   b e   t r u e . y  } ~ } l     ��������  ��  ��   ~   �  j    �� ��� 80 directoryserverrequiresssl DirectoryServerRequiresSSL � m    ��
�� boovtrue �  � � � l     �� � ���   � ' ! This will almost always be true.    � � � � B   T h i s   w i l l   a l m o s t   a l w a y s   b e   t r u e . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� 00 directoryserversslport DirectoryServerSSLPort � m    ����� �  � � � l     �� � ���   � B < If DirectoryServerRequiresSSL is true set the port to 3269.    � � � � x   I f   D i r e c t o r y S e r v e r R e q u i r e s S S L   i s   t r u e   s e t   t h e   p o r t   t o   3 2 6 9 . �  � � � l     �� � ���   � C = If DirectoryServerRequiresSSL is false set the port to 3268.    � � � � z   I f   D i r e c t o r y S e r v e r R e q u i r e s S S L   i s   f a l s e   s e t   t h e   p o r t   t o   3 2 6 8 . �  � � � l     �� � ���   � U O Use a different port number only if your Exchange administrator instructs you.    � � � � �   U s e   a   d i f f e r e n t   p o r t   n u m b e r   o n l y   i f   y o u r   E x c h a n g e   a d m i n i s t r a t o r   i n s t r u c t s   y o u . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� >0 directoryservermaximumresults DirectoryServerMaximumResults � m    ����� �  � � � l     �� � ���   � G A When searching the Global Catalog server, this number determines    � � � � �   W h e n   s e a r c h i n g   t h e   G l o b a l   C a t a l o g   s e r v e r ,   t h i s   n u m b e r   d e t e r m i n e s �  � � � l     �� � ���   � 0 * the maximum number of entries to display.    � � � � T   t h e   m a x i m u m   n u m b e r   o f   e n t r i e s   t o   d i s p l a y . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� 60 directoryserversearchbase DirectoryServerSearchBase � m     � � � � �   �  � � � l     �� � ���   � + % example: "cn=users,dc=domain,dc=com"    � � � � J   e x a m p l e :   " c n = u s e r s , d c = d o m a i n , d c = c o m " �  � � � l     �� � ���   �   Usually, this is empty.    � � � � 0   U s u a l l y ,   t h i s   i s   e m p t y . �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � D >------------- For Active Directory users ---------------------    � � � � | - - - - - - - - - - - - -   F o r   A c t i v e   D i r e c t o r y   u s e r s   - - - - - - - - - - - - - - - - - - - - - �  � � � l     ��������  ��  ��   �  � � � j     �� ��� N0 %getuserinformationfromactivedirectory %getUserInformationFromActiveDirectory � m    ��
�� boovtrue �  � � � l     �� � ���   � B < If Macs are bound to Active Directory they can probably use    � � � � x   I f   M a c s   a r e   b o u n d   t o   A c t i v e   D i r e c t o r y   t h e y   c a n   p r o b a b l y   u s e �  � � � l     �� � ���   � Q K dscl to return the current user's email address, phone number, title, etc.    � � � � �   d s c l   t o   r e t u r n   t h e   c u r r e n t   u s e r ' s   e m a i l   a d d r e s s ,   p h o n e   n u m b e r ,   t i t l e ,   e t c . �  � � � l     �� � ���   � O I Use Active Directory when possible, otherwise complete the next section.    � � � � �   U s e   A c t i v e   D i r e c t o r y   w h e n   p o s s i b l e ,   o t h e r w i s e   c o m p l e t e   t h e   n e x t   s e c t i o n . �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � B <------------- For non Active Directory users ---------------    � � � � x - - - - - - - - - - - - -   F o r   n o n   A c t i v e   D i r e c t o r y   u s e r s   - - - - - - - - - - - - - - - �  � � � l     ��������  ��  ��   �  � � � j   ! %�� ��� 0 
domainname 
domainName � m   ! $ � � � � �  e x a m p l e . c o m �  � � � l     �� � ���   � P J Complete this only if not using Active Directory to get user information.    � � � � �   C o m p l e t e   t h i s   o n l y   i f   n o t   u s i n g   A c t i v e   D i r e c t o r y   t o   g e t   u s e r   i n f o r m a t i o n . �  � � � l     �� � ���   � L F The part of your organization's email address following the @ symbol.    � � � � �   T h e   p a r t   o f   y o u r   o r g a n i z a t i o n ' s   e m a i l   a d d r e s s   f o l l o w i n g   t h e   @   s y m b o l . �  � � � l     ��������  ��  ��   �  � � � j   & (�� ��� 0 emailformat emailFormat � m   & '����  �  � � � l     �� � ���   � P J Complete this only if not using Active Directory to get user information.    � � � � �   C o m p l e t e   t h i s   o n l y   i f   n o t   u s i n g   A c t i v e   D i r e c t o r y   t o   g e t   u s e r   i n f o r m a t i o n . �  � � � l     �� � ���   � P J When Active Directory is unavailable to determine a user's email address,    � �   �   W h e n   A c t i v e   D i r e c t o r y   i s   u n a v a i l a b l e   t o   d e t e r m i n e   a   u s e r ' s   e m a i l   a d d r e s s , �  l     ����   V P this script will attempt to parse it from the display name of the user's login.    � �   t h i s   s c r i p t   w i l l   a t t e m p t   t o   p a r s e   i t   f r o m   t h e   d i s p l a y   n a m e   o f   t h e   u s e r ' s   l o g i n .  l     ��������  ��  ��   	 l     ��
��  
 1 + Describe your organization's email format:    � V   D e s c r i b e   y o u r   o r g a n i z a t i o n ' s   e m a i l   f o r m a t :	  l     ����   / ) 1: Email format is first.last@domain.com    � R   1 :   E m a i l   f o r m a t   i s   f i r s t . l a s t @ d o m a i n . c o m  l     ����   * $ 2: Email format is first@domain.com    � H   2 :   E m a i l   f o r m a t   i s   f i r s t @ d o m a i n . c o m  l     ����   N H 3: Email format is flast@domain.com (first name initial plus last name)    � �   3 :   E m a i l   f o r m a t   i s   f l a s t @ d o m a i n . c o m   ( f i r s t   n a m e   i n i t i a l   p l u s   l a s t   n a m e )  l     ����   . ( 4: Email format is shortName@domain.com    �   P   4 :   E m a i l   f o r m a t   i s   s h o r t N a m e @ d o m a i n . c o m !"! l     ��������  ��  ��  " #$# j   ) +�%� 0 displayname displayName% m   ) *�~�~ $ &'& l     �}()�}  ( P J Complete this only if not using Active Directory to get user information.   ) �** �   C o m p l e t e   t h i s   o n l y   i f   n o t   u s i n g   A c t i v e   D i r e c t o r y   t o   g e t   u s e r   i n f o r m a t i o n .' +,+ l     �|-.�|  - M G Describe how the user's display name appears at the bottom of the menu   . �// �   D e s c r i b e   h o w   t h e   u s e r ' s   d i s p l a y   n a m e   a p p e a r s   a t   t h e   b o t t o m   o f   t h e   m e n u, 010 l     �{23�{  2 R L when clicking the Apple menu (Log Out Joe Cool... or Log Out Cool, Joe...).   3 �44 �   w h e n   c l i c k i n g   t h e   A p p l e   m e n u   ( L o g   O u t   J o e   C o o l . . .   o r   L o g   O u t   C o o l ,   J o e . . . ) .1 565 l     �z78�z  7 / ) 1: Display name appears as "Last, First"   8 �99 R   1 :   D i s p l a y   n a m e   a p p e a r s   a s   " L a s t ,   F i r s t "6 :;: l     �y<=�y  < . ( 2: Display name appears as "First Last"   = �>> P   2 :   D i s p l a y   n a m e   a p p e a r s   a s   " F i r s t   L a s t "; ?@? l     �x�w�v�x  �w  �v  @ ABA j   , 0�uC�u 0 domainprefix domainPrefixC m   , /DD �EE  B FGF l     �tHI�t  H N H Append a NetBIOS domain name to the beginning of the user's short name.   I �JJ �   A p p e n d   a   N e t B I O S   d o m a i n   n a m e   t o   t h e   b e g i n n i n g   o f   t h e   u s e r ' s   s h o r t   n a m e .G KLK l     �sMN�s  M 9 3 Be sure to use two backslashes when adding a name.   N �OO f   B e   s u r e   t o   u s e   t w o   b a c k s l a s h e s   w h e n   a d d i n g   a   n a m e .L PQP l     �rRS�r  R N H Example: Use "TALKINGMOOSE\\" to set user name "TALKINGMOOSE\username".   S �TT �   E x a m p l e :   U s e   " T A L K I N G M O O S E \ \ "   t o   s e t   u s e r   n a m e   " T A L K I N G M O O S E \ u s e r n a m e " .Q UVU l     �q�p�o�q  �p  �o  V WXW l     �n�m�l�n  �m  �l  X YZY l     �k[\�k  [ C =------------- User Experience -------------------------------   \ �]] z - - - - - - - - - - - - -   U s e r   E x p e r i e n c e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -Z ^_^ l     �j�i�h�j  �i  �h  _ `a` j   1 3�gb�g (0 verifyemailaddress verifyEMailAddressb m   1 2�f
�f boovfalsa cdc l     �eef�e  e M G If set to "true", a dialog asks the user to confirm his email address.   f �gg �   I f   s e t   t o   " t r u e " ,   a   d i a l o g   a s k s   t h e   u s e r   t o   c o n f i r m   h i s   e m a i l   a d d r e s s .d hih l     �d�c�b�d  �c  �b  i jkj j   4 8�al�a *0 verifyserveraddress verifyServerAddressl m   4 5�`
�` boovfalsk mnm l     �_op�_  o W Q If set to "true", a dialog asks the user to confirm his Exchange server address.   p �qq �   I f   s e t   t o   " t r u e " ,   a   d i a l o g   a s k s   t h e   u s e r   t o   c o n f i r m   h i s   E x c h a n g e   s e r v e r   a d d r e s s .n rsr l     �^�]�\�^  �]  �\  s tut j   9 =�[v�[ *0 displaydomainprefix displayDomainPrefixv m   9 :�Z
�Z boovfalsu wxw l     �Yyz�Y  y C = If set to "true", the username appears as "DOMAIN\username".   z �{{ z   I f   s e t   t o   " t r u e " ,   t h e   u s e r n a m e   a p p e a r s   a s   " D O M A I N \ u s e r n a m e " .x |}| l     �X~�X  ~ 5 / Otherwise, the username appears as "username".    ��� ^   O t h e r w i s e ,   t h e   u s e r n a m e   a p p e a r s   a s   " u s e r n a m e " .} ��� l     �W�V�U�W  �V  �U  � ��� j   > B�T��T *0 downloadheadersonly downloadHeadersOnly� m   > ?�S
�S boovfals� ��� l     �R���R  � H B If set to "true", only email headers are downloaded into Outlook.   � ��� �   I f   s e t   t o   " t r u e " ,   o n l y   e m a i l   h e a d e r s   a r e   d o w n l o a d e d   i n t o   O u t l o o k .� ��� l     �Q���Q  � B < This takes much less time to sync but a user must be online   � ��� x   T h i s   t a k e s   m u c h   l e s s   t i m e   t o   s y n c   b u t   a   u s e r   m u s t   b e   o n l i n e� ��� l     �P���P  � %  to download and view messages.   � ��� >   t o   d o w n l o a d   a n d   v i e w   m e s s a g e s .� ��� l     �O�N�M�O  �N  �M  � ��� j   C G�L��L 20 hideonmycomputerfolders hideOnMyComputerFolders� m   C D�K
�K boovfals� ��� l     �J���J  � - ' If set to "true", hides local folders.   � ��� N   I f   s e t   t o   " t r u e " ,   h i d e s   l o c a l   f o l d e r s .� ��� l     �I���I  � ; 5 A single Exchange account should do this by default.   � ��� j   A   s i n g l e   E x c h a n g e   a c c o u n t   s h o u l d   d o   t h i s   b y   d e f a u l t .� ��� l     �H�G�F�H  �G  �F  � ��� j   H L�E��E 0 unifiedinbox unifiedInbox� m   H I�D
�D boovfals� ��� l     �C���C  � C = If set to "true", turns on the Group Similar Folders feature   � ��� z   I f   s e t   t o   " t r u e " ,   t u r n s   o n   t h e   G r o u p   S i m i l a r   F o l d e r s   f e a t u r e� ��� l     �B���B  � / ) in Outlook menu > Preferences > General.   � ��� R   i n   O u t l o o k   m e n u   >   P r e f e r e n c e s   >   G e n e r a l .� ��� l     �A�@�?�A  �@  �?  � ��� j   M Q�>��> *0 disableautodiscover disableAutodiscover� m   M N�=
�= boovfals� ��� l     �<���<  � < 6 If set to "true", disables Autodiscover functionality   � ��� l   I f   s e t   t o   " t r u e " ,   d i s a b l e s   A u t o d i s c o v e r   f u n c t i o n a l i t y� ��� l     �;���;  � C = for the Exchange account. Not recommended for mobile devices   � ��� z   f o r   t h e   E x c h a n g e   a c c o u n t .   N o t   r e c o m m e n d e d   f o r   m o b i l e   d e v i c e s� ��� l     �:���:  � C = that may connect to an internal Exchange server addresss and   � ��� z   t h a t   m a y   c o n n e c t   t o   a n   i n t e r n a l   E x c h a n g e   s e r v e r   a d d r e s s s   a n d� ��� l     �9���9  � ? 9 connect to a different external Exchange server address.   � ��� r   c o n n e c t   t o   a   d i f f e r e n t   e x t e r n a l   E x c h a n g e   s e r v e r   a d d r e s s .� ��� l     �8�7�6�8  �7  �6  � ��� j   R X�5��5 0 errormessage errorMessage� m   R U�� ��� � O u t l o o k ' s   s e t u p   f o r   y o u r   E x c h a n g e   a c c o u n t   f a i l e d .   P l e a s e   c o n t a c t   t h e   H e l p   D e s k   f o r   a s s i s t a n c e .� ��� l     �4���4  � T N Customize this error message for your users in case their account setup fails   � ��� �   C u s t o m i z e   t h i s   e r r o r   m e s s a g e   f o r   y o u r   u s e r s   i n   c a s e   t h e i r   a c c o u n t   s e t u p   f a i l s� ��� l     �3�2�1�3  �2  �1  � ��� l     �0���0  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �/���/  � * $ End network, server and preferences   � ��� H   E n d   n e t w o r k ,   s e r v e r   a n d   p r e f e r e n c e s� ��� l     �.���.  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �-�,�+�-  �,  �+  � ��� l     �*���*  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �)���)  � ( " Begin collecting user information   � ��� D   B e g i n   c o l l e c t i n g   u s e r   i n f o r m a t i o n� ��� l     �(���(  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �'�&�%�'  �&  �%  � ��� l     �$���$  � R L attempt to read information from Active Directory for the Me Contact record   � �   �   a t t e m p t   t o   r e a d   i n f o r m a t i o n   f r o m   A c t i v e   D i r e c t o r y   f o r   t h e   M e   C o n t a c t   r e c o r d�  l     �#�"�!�#  �"  �!    l    � � r      m      �		   o      �� 0 userfirstname userFirstName�   �   

 l   �� r     m     �   o      �� 0 userlastname userLastName�  �    l   �� r     m    	 �   o      ��  0 userdepartment userDepartment�  �    l   �� r     m     �   o      �� 0 
useroffice 
userOffice�  �     l   !��! r    "#" m    $$ �%%  # o      �� 0 usercompany userCompany�  �    &'& l   (��( r    )*) m    ++ �,,  * o      �� 0 userworkphone userWorkPhone�  �  ' -.- l   /��/ r    010 m    22 �33  1 o      �� 0 
usermobile 
userMobile�  �  . 454 l   6��
6 r    787 m    99 �::  8 o      �	�	 0 userfax userFax�  �
  5 ;<; l    '=��= r     '>?> m     #@@ �AA  ? o      �� 0 	usertitle 	userTitle�  �  < BCB l  ( /D��D r   ( /EFE m   ( +GG �HH  F o      �� 0 
userstreet 
userStreet�  �  C IJI l  0 7K��K r   0 7LML m   0 3NN �OO  M o      � �  0 usercity userCity�  �  J PQP l  8 ?R����R r   8 ?STS m   8 ;UU �VV  T o      ���� 0 	userstate 	userState��  ��  Q WXW l  @ GY����Y r   @ GZ[Z m   @ C\\ �]]  [ o      ����  0 userpostalcode userPostalCode��  ��  X ^_^ l  H O`����` r   H Oaba m   H Kcc �dd  b o      ���� 0 usercountry userCountry��  ��  _ efe l  P Wg����g r   P Whih m   P Sjj �kk  i o      ���� 0 userwebpage userWebPage��  ��  f lml l     ��������  ��  ��  m non l  Xfp����p Z   Xfqrstq =  X _uvu o   X ]���� N0 %getuserinformationfromactivedirectory %getUserInformationFromActiveDirectoryv m   ] ^��
�� boovtruer k   b	)ww xyx l  b b��������  ��  ��  y z{z l  b b��|}��  | + % Get information from Active Directoy   } �~~ J   G e t   i n f o r m a t i o n   f r o m   A c t i v e   D i r e c t o y{ � l  b b��������  ��  ��  � ��� l  b b������  � 3 - get the domain's primary NetBIOS domain name   � ��� Z   g e t   t h e   d o m a i n ' s   p r i m a r y   N e t B I O S   d o m a i n   n a m e� ��� l  b b��������  ��  ��  � ��� Q   b ����� k   e ��� ��� r   e p��� I  e l�����
�� .sysoexecTEXT���     TEXT� m   e h�� ��� � / u s r / b i n / d s c l   " / A c t i v e   D i r e c t o r y / "   - r e a d   /   S u b N o d e s   |   a w k   ' B E G I N   { F S = " :   " }   { p r i n t   $ 2 } '��  � o      ���� 0 netbiosdomain netbiosDomain� ���� Z   q ������� =  q x��� o   q v���� *0 displaydomainprefix displayDomainPrefix� m   v w��
�� boovtrue� r   { ���� b   { ���� o   { ~���� 0 netbiosdomain netbiosDomain� m   ~ ��� ���  \� o      ���� 0 domainprefix domainPrefix��  � r   � ���� m   � ��� ���  � o      ���� 0 domainprefix domainPrefix��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   � ��� ��� l  � ���������  ��  ��  � ��� l  � �������  �   something went wrong   � ��� *   s o m e t h i n g   w e n t   w r o n g� ��� l  � ���������  ��  ��  � ��� I  � �����
�� .sysodlogaskr        TEXT� b   � ���� b   � ���� b   � ���� o   � ����� 0 errormessage errorMessage� o   � ���
�� 
ret � o   � ���
�� 
ret � m   � ��� ��� � U n a b l e   t o   d e t e r m i n e   N E T B I O S   d o m a i n   n a m e .   T h i s   c o m p u t e r   m a y   n o t   b e   b o u n d   t o   A c t i v e   D i r e c t o r y .� ����
�� 
disp� m   � ���
�� stic    � ����
�� 
btns� J   � ��� ���� m   � ��� ���  O K��  � ����
�� 
dflt� J   � ��� ���� m   � ��� ���  O K��  � �����
�� 
appr� m   � ��� ��� , O u t l o o k   E x c h a n g e   S e t u p��  � ���� R   � ������
�� .ascrerr ****      � ****��  � �����
�� 
errn� m   � ���������  ��  � ��� l  � ���������  ��  ��  � ��� l  � �������  � 7 1 read full user information from Active Directory   � ��� b   r e a d   f u l l   u s e r   i n f o r m a t i o n   f r o m   A c t i v e   D i r e c t o r y� ��� l  � ���������  ��  ��  � ��� Q   �E���� k   � ��� ��� r   � ���� J   � ��� ���� m   � ��� ���  :  ��  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ���� r   � ���� I  � ������
�� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� m   � ��� ��� B / u s r / b i n / d s c l   " / A c t i v e   D i r e c t o r y /� o   � ����� 0 netbiosdomain netbiosDomain� m   � ��� ���� / A l l   D o m a i n s / "   - r e a d   / U s e r s / $ U S E R   A u t h e n t i c a t i o n A u t h o r i t y   C i t y   c o   c o m p a n y   d e p a r t m e n t   p h y s i c a l D e l i v e r y O f f i c e N a m e   s A M A c c o u n t N a m e   w W W H o m e P a g e   E M a i l A d d r e s s   F A X N u m b e r   F i r s t N a m e   J o b T i t l e   L a s t N a m e   M o b i l e N u m b e r   P h o n e N u m b e r   P o s t a l C o d e   R e a l N a m e   S t a t e   S t r e e t��  � o      ���� "0 userinformation userInformation��  � R      ������
�� .ascrerr ****      � ****��  ��  � k  E�� ��� l ��������  ��  ��  � ��� l ������  �   something went wrong   � ��� *   s o m e t h i n g   w e n t   w r o n g� ��� l ��������  ��  ��  � ��� I :�� 
�� .sysodlogaskr        TEXT  b   b   b   o  ���� 0 errormessage errorMessage o  ��
�� 
ret  o  ��
�� 
ret  m   �		 n U n a b l e   t o   r e a d   u s e r   i n f o r m a t i o n   f r o m   n e t w o r k   d i r e c t o r y . ��

�� 
disp
 m  ��
�� stic     ��
�� 
btns J  !& �� m  !$ �  O K��   ��
�� 
dflt J  ). �� m  ), �  O K��   ����
�� 
appr m  14 � , O u t l o o k   E x c h a n g e   S e t u p��  � �� R  ;E����
�� .ascrerr ****      � ****��   ����
�� 
errn m  ?B��������  ��  �  l FF��������  ��  ��    !  Y  F�"��#$��" k  Z�%% &'& l ZZ��������  ��  ��  ' ()( r  Zg*+* J  Z_,, -��- m  Z].. �//  :  ��  + n     010 1  bf��
�� 
txdl1 1  _b��
�� 
ascr) 232 Z  h�45����4 C ht676 n  hp898 4  kp��:
�� 
cpar: o  no���� 0 i  9 o  hk���� "0 userinformation userInformation7 m  ps;; �<<  E M a i l A d d r e s s :5 Q  w�=>?= r  z�@A@ n  z�BCB 4  ����D
�� 
citmD m  ���� C n  z�EFE 4  }��~G
�~ 
cparG o  ���}�} 0 i  F o  z}�|�| "0 userinformation userInformationA o      �{�{ 0 emailaddress emailAddress> R      �z�y�x
�z .ascrerr ****      � ****�y  �x  ? k  ��HH IJI r  ��KLK J  ��MM N�wN m  ��OO �PP  �w  L n     QRQ 1  ���v
�v 
txdlR 1  ���u
�u 
ascrJ S�tS r  ��TUT c  ��VWV n  ��XYX 7���sZ[
�s 
cha Z m  ���r�r [  ;  ��Y n  ��\]\ 4  ���q^
�q 
cpar^ l ��_�p�o_ [  ��`a` o  ���n�n 0 i  a m  ���m�m �p  �o  ] o  ���l�l "0 userinformation userInformationW m  ���k
�k 
TEXTU o      �j�j 0 emailaddress emailAddress�t  ��  ��  3 bcb l ���i�h�g�i  �h  �g  c ded r  ��fgf J  ��hh i�fi m  ��jj �kk  :  �f  g n     lml 1  ���e
�e 
txdlm 1  ���d
�d 
ascre non Z  �+pq�c�bp C ��rsr n  ��tut 4  ���av
�a 
cparv o  ���`�` 0 i  u o  ���_�_ "0 userinformation userInformations m  ��ww �xx ( d s A t t r T y p e N a t i v e : c o :q Q  �'yz{y r  ��|}| n  ��~~ 4  ���^�
�^ 
citm� m  ���]�]  n  ����� 4  ���\�
�\ 
cpar� o  ���[�[ 0 i  � o  ���Z�Z "0 userinformation userInformation} o      �Y�Y 0 usercountry userCountryz R      �X�W�V
�X .ascrerr ****      � ****�W  �V  { k  �'�� ��� r  �	��� J  ��� ��U� m  ���� ���  �U  � n     ��� 1  �T
�T 
txdl� 1  �S
�S 
ascr� ��R� r  
'��� c  
#��� n  
��� 7�Q��
�Q 
cha � m  �P�P �  ;  � n  
��� 4  �O�
�O 
cpar� l ��N�M� [  ��� o  �L�L 0 i  � m  �K�K �N  �M  � o  
�J�J "0 userinformation userInformation� m  "�I
�I 
TEXT� o      �H�H 0 usercountry userCountry�R  �c  �b  o ��� l ,,�G�F�E�G  �F  �E  � ��� r  ,9��� J  ,1�� ��D� m  ,/�� ���  :  �D  � n     ��� 1  48�C
�C 
txdl� 1  14�B
�B 
ascr� ��� Z  :����A�@� C :F��� n  :B��� 4  =B�?�
�? 
cpar� o  @A�>�> 0 i  � o  :=�=�= "0 userinformation userInformation� m  BE�� ��� 2 d s A t t r T y p e N a t i v e : c o m p a n y :� Q  I����� r  L[��� n  LY��� 4  TY�<�
�< 
citm� m  WX�;�; � n  LT��� 4  OT�:�
�: 
cpar� o  RS�9�9 0 i  � o  LO�8�8 "0 userinformation userInformation� o      �7�7 0 usercompany userCompany� R      �6�5�4
�6 .ascrerr ****      � ****�5  �4  � k  c��� ��� r  cp��� J  ch�� ��3� m  cf�� ���  �3  � n     ��� 1  ko�2
�2 
txdl� 1  hk�1
�1 
ascr� ��0� r  q���� c  q���� n  q���� 7{��/��
�/ 
cha � m  ���.�. �  ;  ��� n  q{��� 4  t{�-�
�- 
cpar� l wz��,�+� [  wz��� o  wx�*�* 0 i  � m  xy�)�) �,  �+  � o  qt�(�( "0 userinformation userInformation� m  ���'
�' 
TEXT� o      �&�& 0 usercompany userCompany�0  �A  �@  � ��� l ���%�$�#�%  �$  �#  � ��� r  ����� J  ���� ��"� m  ���� ���  :  �"  � n     ��� 1  ���!
�! 
txdl� 1  ��� 
�  
ascr� ��� Z  ������� C ����� n  ����� 4  ����
� 
cpar� o  ���� 0 i  � o  ���� "0 userinformation userInformation� m  ���� ��� 8 d s A t t r T y p e N a t i v e : d e p a r t m e n t :� Q  ������ r  ����� n  ����� 4  ����
� 
citm� m  ���� � n  ����� 4  ����
� 
cpar� o  ���� 0 i  � o  ���� "0 userinformation userInformation� o      ��  0 userdepartment userDepartment� R      ���
� .ascrerr ****      � ****�  �  � k  ���� ��� r  ��� � J  �� � m  �� �  �    n      1  ���
� 
txdl 1  ���
� 
ascr� � r  ��	 c  ��

 n  �� 7���
� 
cha  m  ����   ;  �� n  �� 4  ���
� 
cpar l ���
�	 [  �� o  ���� 0 i   m  ���� �
  �	   o  ���� "0 userinformation userInformation m  ���
� 
TEXT	 o      ��  0 userdepartment userDepartment�  �  �  �  l ������  �  �    r  � J  �� �  m  �� �  :  �    n      !  1  ���
�� 
txdl! 1  ����
�� 
ascr "#" Z  Z$%����$ C &'& n  ()( 4  ��*
�� 
cpar* o  
���� 0 i  ) o  ���� "0 userinformation userInformation' m  ++ �,, X d s A t t r T y p e N a t i v e : p h y s i c a l D e l i v e r y O f f i c e N a m e :% Q  V-./- r  %010 n  #232 4  #��4
�� 
citm4 m  !"���� 3 n  565 4  ��7
�� 
cpar7 o  ���� 0 i  6 o  ���� "0 userinformation userInformation1 o      ���� 0 
useroffice 
userOffice. R      ������
�� .ascrerr ****      � ****��  ��  / k  -V88 9:9 r  -:;<; J  -2== >��> m  -0?? �@@  ��  < n     ABA 1  59��
�� 
txdlB 1  25��
�� 
ascr: C��C r  ;VDED c  ;TFGF n  ;PHIH 7EP��JK
�� 
cha J m  KM���� K  ;  NOI n  ;ELML 4  >E��N
�� 
cparN l ADO����O [  ADPQP o  AB���� 0 i  Q m  BC���� ��  ��  M o  ;>���� "0 userinformation userInformationG m  PS��
�� 
TEXTE o      ���� 0 
useroffice 
userOffice��  ��  ��  # RSR l [[��������  ��  ��  S TUT r  [hVWV J  [`XX Y��Y m  [^ZZ �[[  :  ��  W n     \]\ 1  cg��
�� 
txdl] 1  `c��
�� 
ascrU ^_^ Z  i�`a����` C iubcb n  iqded 4  lq��f
�� 
cparf o  op���� 0 i  e o  il���� "0 userinformation userInformationc m  qtgg �hh @ d s A t t r T y p e N a t i v e : s A M A c c o u n t N a m e :a Q  x�ijki r  {�lml n  {�non 4  ����p
�� 
citmp m  ������ o n  {�qrq 4  ~���s
�� 
cpars o  ������ 0 i  r o  {~���� "0 userinformation userInformationm o      ���� 0 usershortname userShortNamej R      ������
�� .ascrerr ****      � ****��  ��  k k  ��tt uvu r  ��wxw J  ��yy z��z m  ��{{ �||  ��  x n     }~} 1  ����
�� 
txdl~ 1  ����
�� 
ascrv �� r  ����� c  ����� n  ����� 7������
�� 
cha � m  ������ �  ;  ��� n  ����� 4  �����
�� 
cpar� l �������� [  ����� o  ������ 0 i  � m  ������ ��  ��  � o  ������ "0 userinformation userInformation� m  ����
�� 
TEXT� o      ���� 0 usershortname userShortName��  ��  ��  _ ��� l ����������  ��  ��  � ��� r  ����� J  ���� ���� m  ���� ���  :  ��  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� Z  �,������� C ����� n  ����� 4  �����
�� 
cpar� o  ������ 0 i  � o  ������ "0 userinformation userInformation� m  ���� ��� : d s A t t r T y p e N a t i v e : w W W H o m e P a g e :� Q  �(���� r  ����� n  ����� 4  �����
�� 
citm� m  ������ � n  ����� 4  �����
�� 
cpar� o  ������ 0 i  � o  ������ "0 userinformation userInformation� o      ���� 0 userwebpage userWebPage� R      ������
�� .ascrerr ****      � ****��  ��  � k  �(�� ��� r  �
��� J  ��� ���� m  � �� ���  ��  � n     ��� 1  	��
�� 
txdl� 1  ��
�� 
ascr� ���� r  (��� c  $��� n   ��� 7 ����
�� 
cha � m  ���� �  ;  � n  ��� 4  ���
�� 
cpar� l ������ [  ��� o  ���� 0 i  � m  ���� ��  ��  � o  ���� "0 userinformation userInformation� m   #��
�� 
TEXT� o      ���� 0 userwebpage userWebPage��  ��  ��  � ��� l --��������  ��  ��  � ��� r  -:��� J  -2�� ���� m  -0�� ���  :  ��  � n     ��� 1  59��
�� 
txdl� 1  25��
�� 
ascr� ��� Z  ;�������� C ;G��� n  ;C��� 4  >C���
�� 
cpar� o  AB���� 0 i  � o  ;>���� "0 userinformation userInformation� m  CF�� ��� 
 C i t y :� Q  J����� r  M^��� n  MZ��� 4  UZ���
�� 
citm� m  XY���� � n  MU��� 4  PU���
�� 
cpar� o  ST���� 0 i  � o  MP���� "0 userinformation userInformation� o      ���� 0 usercity userCity� R      ������
�� .ascrerr ****      � ****��  ��  � k  f��� ��� r  fs��� J  fk�� ���� m  fi�� ���  ��  � n     ��� 1  nr��
�� 
txdl� 1  kn��
�� 
ascr� ���� r  t���� c  t���� n  t���� 7~�����
�� 
cha � m  ������ �  ;  ��� n  t~   4  w~��
�� 
cpar l z}���� [  z} o  z{���� 0 i   m  {|�� ��  ��   o  tw�~�~ "0 userinformation userInformation� m  ���}
�} 
TEXT� o      �|�| 0 usercity userCity��  ��  ��  �  l ���{�z�y�{  �z  �y   	 r  ��

 J  �� �x m  �� �  :  �x   n      1  ���w
�w 
txdl 1  ���v
�v 
ascr	  Z  ���u�t C �� n  �� 4  ���s
�s 
cpar o  ���r�r 0 i   o  ���q�q "0 userinformation userInformation m  �� �  F A X N u m b e r : Q  �� r  �� !  n  ��"#" 4  ���p$
�p 
citm$ m  ���o�o # n  ��%&% 4  ���n'
�n 
cpar' o  ���m�m 0 i  & o  ���l�l "0 userinformation userInformation! o      �k�k 0 userfax userFax R      �j�i�h
�j .ascrerr ****      � ****�i  �h   k  ��(( )*) r  ��+,+ J  ��-- .�g. m  ��// �00  �g  , n     121 1  ���f
�f 
txdl2 1  ���e
�e 
ascr* 3�d3 r  ��454 c  ��676 n  ��898 7���c:;
�c 
cha : m  ���b�b ;  ;  ��9 n  ��<=< 4  ���a>
�a 
cpar> l ��?�`�_? [  ��@A@ o  ���^�^ 0 i  A m  ���]�] �`  �_  = o  ���\�\ "0 userinformation userInformation7 m  ���[
�[ 
TEXT5 o      �Z�Z 0 userfax userFax�d  �u  �t   BCB l ���Y�X�W�Y  �X  �W  C DED r  �FGF J  � HH I�VI m  ��JJ �KK  :  �V  G n     LML 1  �U
�U 
txdlM 1   �T
�T 
ascrE NON Z  	_PQ�S�RP C 	RSR n  	TUT 4  �QV
�Q 
cparV o  �P�P 0 i  U o  	�O�O "0 userinformation userInformationS m  WW �XX  F i r s t N a m e :Q Q  [YZ[Y r  *\]\ n  (^_^ 4  #(�N`
�N 
citm` m  &'�M�M _ n  #aba 4  #�Lc
�L 
cparc o  !"�K�K 0 i  b o  �J�J "0 userinformation userInformation] o      �I�I 0 userfirstname userFirstNameZ R      �H�G�F
�H .ascrerr ****      � ****�G  �F  [ k  2[dd efe r  2?ghg J  27ii j�Ej m  25kk �ll  �E  h n     mnm 1  :>�D
�D 
txdln 1  7:�C
�C 
ascrf o�Bo r  @[pqp c  @Yrsr n  @Utut 7JU�Avw
�A 
cha v m  PR�@�@ w  ;  STu n  @Jxyx 4  CJ�?z
�? 
cparz l FI{�>�={ [  FI|}| o  FG�<�< 0 i  } m  GH�;�; �>  �=  y o  @C�:�: "0 userinformation userInformations m  UX�9
�9 
TEXTq o      �8�8 0 userfirstname userFirstName�B  �S  �R  O ~~ l ``�7�6�5�7  �6  �5   ��� r  `m��� J  `e�� ��4� m  `c�� ���  :  �4  � n     ��� 1  hl�3
�3 
txdl� 1  eh�2
�2 
ascr� ��� Z  n����1�0� C nz��� n  nv��� 4  qv�/�
�/ 
cpar� o  tu�.�. 0 i  � o  nq�-�- "0 userinformation userInformation� m  vy�� ���  J o b T i t l e :� Q  }����� r  ����� n  ����� 4  ���,�
�, 
citm� m  ���+�+ � n  ����� 4  ���*�
�* 
cpar� o  ���)�) 0 i  � o  ���(�( "0 userinformation userInformation� o      �'�' 0 	usertitle 	userTitle� R      �&�%�$
�& .ascrerr ****      � ****�%  �$  � k  ���� ��� r  ����� J  ���� ��#� m  ���� ���  �#  � n     ��� 1  ���"
�" 
txdl� 1  ���!
�! 
ascr� �� � r  ����� c  ����� n  ����� 7�����
� 
cha � m  ���� �  ;  ��� n  ����� 4  ����
� 
cpar� l ������ [  ����� o  ���� 0 i  � m  ���� �  �  � o  ���� "0 userinformation userInformation� m  ���
� 
TEXT� o      �� 0 	usertitle 	userTitle�   �1  �0  � ��� l ������  �  �  � ��� r  ����� J  ���� ��� m  ���� ���  :  �  � n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� Z  �-����� C ����� n  ����� 4  ����
� 
cpar� o  ���� 0 i  � o  ���� "0 userinformation userInformation� m  ���� ���  L a s t N a m e :� Q  �)���� r  ����� n  ����� 4  ���
�
�
 
citm� m  ���	�	 � n  ����� 4  ����
� 
cpar� o  ���� 0 i  � o  ���� "0 userinformation userInformation� o      �� 0 userlastname userLastName� R      ���
� .ascrerr ****      � ****�  �  � k   )�� ��� r   ��� J   �� ��� m   �� ���  �  � n     ��� 1  � 
�  
txdl� 1  ��
�� 
ascr� ���� r  )��� c  '��� n  #��� 7#����
�� 
cha � m   ���� �  ;  !"� n  ��� 4  ���
�� 
cpar� l ������ [  ��� o  ���� 0 i  � m  ���� ��  ��  � o  ���� "0 userinformation userInformation� m  #&��
�� 
TEXT� o      ���� 0 userlastname userLastName��  �  �  � ��� l ..��������  ��  ��  � ��� r  .;��� J  .3�� ���� m  .1�� ���  :  ��  � n        1  6:��
�� 
txdl 1  36��
�� 
ascr�  Z  <����� C <H n  <D	 4  ?D��

�� 
cpar
 o  BC���� 0 i  	 o  <?���� "0 userinformation userInformation m  DG �  M o b i l e N u m b e r : Q  K� r  N] n  N[ 4  V[��
�� 
citm m  YZ����  n  NV 4  QV��
�� 
cpar o  TU���� 0 i   o  NQ���� "0 userinformation userInformation o      ���� 0 
usermobile 
userMobile R      ������
�� .ascrerr ****      � ****��  ��   k  e�  r  er J  ej �� m  eh �    ��   n     !"! 1  mq��
�� 
txdl" 1  jm��
�� 
ascr #��# r  s�$%$ c  s�&'& n  s�()( 7}���*+
�� 
cha * m  ������ +  ;  ��) n  s},-, 4  v}��.
�� 
cpar. l y|/����/ [  y|010 o  yz���� 0 i  1 m  z{���� ��  ��  - o  sv���� "0 userinformation userInformation' m  ����
�� 
TEXT% o      ���� 0 
usermobile 
userMobile��  ��  ��   232 l ����������  ��  ��  3 454 r  ��676 J  ��88 9��9 m  ��:: �;;  :  ��  7 n     <=< 1  ����
�� 
txdl= 1  ����
�� 
ascr5 >?> Z  ��@A����@ C ��BCB n  ��DED 4  ����F
�� 
cparF o  ������ 0 i  E o  ������ "0 userinformation userInformationC m  ��GG �HH  P h o n e N u m b e r :A Q  ��IJKI r  ��LML n  ��NON 4  ����P
�� 
citmP m  ������ O n  ��QRQ 4  ����S
�� 
cparS o  ������ 0 i  R o  ������ "0 userinformation userInformationM o      ���� 0 userworkphone userWorkPhoneJ R      ������
�� .ascrerr ****      � ****��  ��  K k  ��TT UVU r  ��WXW J  ��YY Z��Z m  ��[[ �\\  ��  X n     ]^] 1  ����
�� 
txdl^ 1  ����
�� 
ascrV _��_ r  ��`a` c  ��bcb n  ��ded 7����fg
�� 
cha f m  ������ g  ;  ��e n  ��hih 4  ����j
�� 
cparj l ��k����k [  ��lml o  ������ 0 i  m m  ������ ��  ��  i o  ������ "0 userinformation userInformationc m  ����
�� 
TEXTa o      ���� 0 userworkphone userWorkPhone��  ��  ��  ? non l ����������  ��  ��  o pqp r  �rsr J  ��tt u��u m  ��vv �ww  :  ��  s n     xyx 1   ��
�� 
txdly 1  � ��
�� 
ascrq z{z Z  `|}����| C ~~ n  ��� 4  	���
�� 
cpar� o  ���� 0 i  � o  	���� "0 userinformation userInformation m  �� ���  P o s t a l C o d e :} Q  \���� r  )��� n  %��� 4   %���
�� 
citm� m  #$���� � n   ��� 4   ���
�� 
cpar� o  ���� 0 i  � o  ���� "0 userinformation userInformation� o      ����  0 userpostalcode userPostalCode� R      ������
�� .ascrerr ****      � ****��  ��  � k  1\�� ��� r  1>��� J  16�� ���� m  14�� ���  ��  � n     ��� 1  9=��
�� 
txdl� 1  69��
�� 
ascr� ���� r  ?\��� c  ?X��� n  ?T��� 7IT����
�� 
cha � m  OQ���� �  ;  RS� n  ?I��� 4  BI���
�� 
cpar� l EH������ [  EH��� o  EF���� 0 i  � m  FG���� ��  ��  � o  ?B���� "0 userinformation userInformation� m  TW��
�� 
TEXT� o      ����  0 userpostalcode userPostalCode��  ��  ��  { ��� l aa��������  ��  ��  � ��� r  an��� J  af�� ���� m  ad�� ���  :  ��  � n     ��� 1  im��
�� 
txdl� 1  fi��
�� 
ascr� ��� Z  o�������� C o{��� n  ow��� 4  rw���
�� 
cpar� o  uv���� 0 i  � o  or���� "0 userinformation userInformation� m  wz�� ���  R e a l N a m e :� Q  ~����� r  ����� n  ����� 4  �����
�� 
citm� m  ������ � n  ����� 4  �����
�� 
cpar� o  ���� 0 i  � o  ���~�~ "0 userinformation userInformation� o      �}�} 0 userfullname userFullName� R      �|�{�z
�| .ascrerr ****      � ****�{  �z  � k  ���� ��� r  ����� J  ���� ��y� m  ���� ���  �y  � n     ��� 1  ���x
�x 
txdl� 1  ���w
�w 
ascr� ��v� r  ����� c  ����� n  ����� 7���u��
�u 
cha � m  ���t�t �  ;  ��� n  ����� 4  ���s�
�s 
cpar� l ����r�q� [  ����� o  ���p�p 0 i  � m  ���o�o �r  �q  � o  ���n�n "0 userinformation userInformation� m  ���m
�m 
TEXT� o      �l�l 0 userfullname userFullName�v  ��  ��  � ��� l ���k�j�i�k  �j  �i  � ��� r  ����� J  ���� ��h� m  ���� ���  :  �h  � n     ��� 1  ���g
�g 
txdl� 1  ���f
�f 
ascr� ��� Z  �2���e�d� C ����� n  ����� 4  ���c�
�c 
cpar� o  ���b�b 0 i  � o  ���a�a "0 userinformation userInformation� m  ���� ���  S t a t e :� Q  �.���� r  ��   n  �� 4  ���`
�` 
citm m  ���_�_  n  �� 4  ���^
�^ 
cpar o  ���]�] 0 i   o  ���\�\ "0 userinformation userInformation o      �[�[ 0 	userstate 	userState� R      �Z�Y�X
�Z .ascrerr ****      � ****�Y  �X  � k  . 	
	 r   J   �W m   �  �W   n      1  �V
�V 
txdl 1  �U
�U 
ascr
 �T r  . c  * n  & 7&�S
�S 
cha  m  !#�R�R   ;  $% n   4  �Q
�Q 
cpar l �P�O [   !  o  �N�N 0 i  ! m  �M�M �P  �O   o  �L�L "0 userinformation userInformation m  &)�K
�K 
TEXT o      �J�J 0 	userstate 	userState�T  �e  �d  � "#" l 33�I�H�G�I  �H  �G  # $%$ r  3@&'& J  38(( )�F) m  36** �++  :  �F  ' n     ,-, 1  ;?�E
�E 
txdl- 1  8;�D
�D 
ascr% ./. Z  A�01�C�B0 C AM232 n  AI454 4  DI�A6
�A 
cpar6 o  GH�@�@ 0 i  5 o  AD�?�? "0 userinformation userInformation3 m  IL77 �88  S t r e e t :1 Q  P�9:;9 r  Sd<=< n  S`>?> 4  [`�>@
�> 
citm@ m  ^_�=�= ? n  S[ABA 4  V[�<C
�< 
cparC o  YZ�;�; 0 i  B o  SV�:�: "0 userinformation userInformation= o      �9�9 0 
userstreet 
userStreet: R      �8�7�6
�8 .ascrerr ****      � ****�7  �6  ; k  l�DD EFE r  lyGHG J  lqII J�5J m  loKK �LL  �5  H n     MNM 1  tx�4
�4 
txdlN 1  qt�3
�3 
ascrF O�2O r  z�PQP c  z�RSR n  z�TUT 7���1VW
�1 
cha V m  ���0�0 W  ;  ��U n  z�XYX 4  }��/Z
�/ 
cparZ l ��[�.�-[ [  ��\]\ o  ���,�, 0 i  ] m  ���+�+ �.  �-  Y o  z}�*�* "0 userinformation userInformationS m  ���)
�) 
TEXTQ o      �(�( 0 
userstreet 
userStreet�2  �C  �B  / ^�'^ l ���&�%�$�&  �%  �$  �'  �� 0 i  # m  IJ�#�# $ I JU�"_�!
�" .corecnte****       ****_ n JQ`a` 2 MQ� 
�  
cpara o  JM�� "0 userinformation userInformation�!  ��  ! bcb l ������  �  �  c ded r  ��fgf J  ��hh iji m  ��kk �ll  ; K e r b e r o s v 5 ; ;j m�m m  ��nn �oo  ;�  g n     pqp 1  ���
� 
txdlq 1  ���
� 
ascre rsr l ������  �  �  s tut Q  ��vw�v r  ��xyx n  ��z{z 4  ���|
� 
citm| m  ���� { o  ���� "0 userinformation userInformationy o      �� &0 userkerberosrealm userKerberosRealmw R      ���
� .ascrerr ****      � ****�  �  �  u }~} l ������  �  �  ~ � r  ����� J  ���� ��
� m  ���� ���  �
  � n     ��� 1  ���	
�	 
txdl� 1  ���
� 
ascr� ��� l ������  �  �  � ��� Z  �	'����� = ����� o  ���� 0 emailaddress emailAddress� m  ���� ���  � k  �	#�� ��� l ���� ���  �   ��  � ��� l ��������  �   something went wrong   � ��� *   s o m e t h i n g   w e n t   w r o n g� ��� l ����������  ��  ��  � ��� I �	����
�� .sysodlogaskr        TEXT� b  ����� b  ����� b  ����� o  ������ 0 errormessage errorMessage� o  ����
�� 
ret � o  ����
�� 
ret � m  ���� ��� h U n a b l e   t o   r e a d   e m a i l   a d d r e s s   f r o m   n e t w o r k   d i r e c t o r y .� ����
�� 
disp� m  ����
�� stic    � ����
�� 
btns� J  �	�� ���� m  �	�� ���  O K��  � ����
�� 
dflt� J  		�� ���� m  		
�� ���  O K��  � �����
�� 
appr� m  		�� ��� , O u t l o o k   E x c h a n g e   S e t u p��  � ���� R  		#�����
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  		 ��������  ��  �  �  � ���� l 	(	(��������  ��  ��  ��  s ��� F  	,	A��� = 	,	3��� o  	,	1���� 0 emailformat emailFormat� m  	1	2���� � = 	6	=��� o  	6	;���� 0 displayname displayName� m  	;	<���� � ��� k  	D	��� ��� l 	D	D��������  ��  ��  � ��� l 	D	D������  � P J Pull user information from the account settings of the local user account   � ��� �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t� ��� l 	D	D��������  ��  ��  � ��� r  	D	Q��� n  	D	M��� 1  	I	M��
�� 
sisn� l 	D	I������ I 	D	I������
�� .sysosigtsirr   ��� null��  ��  ��  ��  � o      ���� 0 usershortname userShortName� ��� r  	R	_��� n  	R	[��� 1  	W	[��
�� 
siln� l 	R	W������ I 	R	W������
�� .sysosigtsirr   ��� null��  ��  ��  ��  � o      ���� 0 userfullname userFullName� ��� l 	`	`��������  ��  ��  � ��� l 	`	`������  � D > first.last@domain.com and full name displays as "Last, First"   � ��� |   f i r s t . l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "� ��� l 	`	`��������  ��  ��  � ��� r  	`	k��� m  	`	c�� ���  ,  � n     ��� 1  	f	j��
�� 
txdl� 1  	c	f��
�� 
ascr� ��� r  	l	v��� n  	l	t��� 4 	o	t���
�� 
citm� m  	r	s������� o  	l	o���� 0 userfullname userFullName� o      ���� 0 userfirstname userFirstName� ��� r  	w	���� n  	w	���� 4  		����
�� 
cwor� m  	�	����� � n  	w	� � 4  	z	��
�� 
citm m  	}	~����   o  	w	z���� 0 userfullname userFullName� o      ���� 0 userlastname userLastName�  r  	�	� m  	�	� �   n     	 1  	�	���
�� 
txdl	 1  	�	���
�� 
ascr 

 r  	�	� b  	�	� b  	�	� b  	�	� b  	�	� o  	�	����� 0 userfirstname userFirstName m  	�	� �  . o  	�	����� 0 userlastname userLastName m  	�	� �  @ o  	�	����� 0 
domainname 
domainName o      ���� 0 emailaddress emailAddress �� l 	�	���������  ��  ��  ��  �  F  	�	� = 	�	�  o  	�	����� 0 emailformat emailFormat  m  	�	�����  = 	�	�!"! o  	�	����� 0 displayname displayName" m  	�	�����  #$# k  	�
+%% &'& l 	�	���������  ��  ��  ' ()( l 	�	���*+��  * P J Pull user information from the account settings of the local user account   + �,, �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t) -.- l 	�	���������  ��  ��  . /0/ r  	�	�121 n  	�	�343 1  	�	���
�� 
sisn4 l 	�	�5����5 I 	�	�������
�� .sysosigtsirr   ��� null��  ��  ��  ��  2 o      ���� 0 usershortname userShortName0 676 r  	�	�898 n  	�	�:;: 1  	�	���
�� 
siln; l 	�	�<����< I 	�	�������
�� .sysosigtsirr   ��� null��  ��  ��  ��  9 o      ���� 0 userfullname userFullName7 =>= l 	�	���������  ��  ��  > ?@? l 	�	���AB��  A C = first.last@domain.com and full name displays as "First Last"   B �CC z   f i r s t . l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "@ DED l 	�	���������  ��  ��  E FGF r  	�	�HIH m  	�	�JJ �KK   I n     LML 1  	�	���
�� 
txdlM 1  	�	���
�� 
ascrG NON r  	�	�PQP n  	�	�RSR 4  	�	���T
�� 
cworT m  	�	����� S n  	�	�UVU 4  	�	���W
�� 
citmW m  	�	����� V o  	�	����� 0 userfullname userFullNameQ o      ���� 0 userfirstname userFirstNameO XYX r  	�
Z[Z n  	�
\]\ 4 
 
��^
�� 
citm^ m  

������] o  	�
 ���� 0 userfullname userFullName[ o      ���� 0 userlastname userLastNameY _`_ r  

aba m  

cc �dd  b n     efe 1  

��
�� 
txdlf 1  

��
�� 
ascr` ghg r  

)iji b  

%klk b  

mnm b  

opo b  

qrq o  

���� 0 userfirstname userFirstNamer m  

ss �tt  .p o  

�� 0 userlastname userLastNamen m  

uu �vv  @l o  

$�~�~ 0 
domainname 
domainNamej o      �}�} 0 emailaddress emailAddressh w�|w l 
*
*�{�z�y�{  �z  �y  �|  $ xyx F  
.
Cz{z = 
.
5|}| o  
.
3�x�x 0 emailformat emailFormat} m  
3
4�w�w { = 
8
?~~ o  
8
=�v�v 0 displayname displayName m  
=
>�u�u y ��� k  
F
��� ��� l 
F
F�t�s�r�t  �s  �r  � ��� l 
F
F�q���q  � P J Pull user information from the account settings of the local user account   � ��� �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t� ��� l 
F
F�p�o�n�p  �o  �n  � ��� r  
F
S��� n  
F
O��� 1  
K
O�m
�m 
sisn� l 
F
K��l�k� I 
F
K�j�i�h
�j .sysosigtsirr   ��� null�i  �h  �l  �k  � o      �g�g 0 usershortname userShortName� ��� r  
T
a��� n  
T
]��� 1  
Y
]�f
�f 
siln� l 
T
Y��e�d� I 
T
Y�c�b�a
�c .sysosigtsirr   ��� null�b  �a  �e  �d  � o      �`�` 0 userfullname userFullName� ��� l 
b
b�_�^�]�_  �^  �]  � ��� l 
b
b�\���\  � ? 9 first@domain.com and full name displays as "Last, First"   � ��� r   f i r s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "� ��� l 
b
b�[�Z�Y�[  �Z  �Y  � ��� r  
b
m��� m  
b
e�� ���  ,  � n     ��� 1  
h
l�X
�X 
txdl� 1  
e
h�W
�W 
ascr� ��� r  
n
x��� n  
n
v��� 4 
q
v�V�
�V 
citm� m  
t
u�U�U��� o  
n
q�T�T 0 userfullname userFullName� o      �S�S 0 userfirstname userFirstName� ��� r  
y
���� n  
y
���� 4  
�
��R�
�R 
cwor� m  
�
��Q�Q � n  
y
���� 4  
|
��P�
�P 
citm� m  

��O�O � o  
y
|�N�N 0 userfullname userFullName� o      �M�M 0 userlastname userLastName� ��� r  
�
���� m  
�
��� ���  � n     ��� 1  
�
��L
�L 
txdl� 1  
�
��K
�K 
ascr� ��� r  
�
���� b  
�
���� b  
�
���� o  
�
��J�J 0 userfirstname userFirstName� m  
�
��� ���  @� o  
�
��I�I 0 
domainname 
domainName� o      �H�H 0 emailaddress emailAddress� ��G� l 
�
��F�E�D�F  �E  �D  �G  � ��� F  
�
���� = 
�
���� o  
�
��C�C 0 emailformat emailFormat� m  
�
��B�B � = 
�
���� o  
�
��A�A 0 displayname displayName� m  
�
��@�@ � ��� k  
�!�� ��� l 
�
��?�>�=�?  �>  �=  � ��� l 
�
��<���<  � P J Pull user information from the account settings of the local user account   � ��� �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t� ��� l 
�
��;�:�9�;  �:  �9  � ��� r  
�
���� n  
�
���� 1  
�
��8
�8 
sisn� l 
�
���7�6� I 
�
��5�4�3
�5 .sysosigtsirr   ��� null�4  �3  �7  �6  � o      �2�2 0 usershortname userShortName� ��� r  
�
���� n  
�
���� 1  
�
��1
�1 
siln� l 
�
���0�/� I 
�
��.�-�,
�. .sysosigtsirr   ��� null�-  �,  �0  �/  � o      �+�+ 0 userfullname userFullName� ��� l 
�
��*�)�(�*  �)  �(  � ��� l 
�
��'���'  � = 7 first@domain.com if full name displays as "First Last"   � ��� n   f i r s t @ d o m a i n . c o m   i f   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "� ��� l 
�
��&�%�$�&  �%  �$  � ��� r  
�
���� m  
�
��� ���   � n     	 		  1  
�
��#
�# 
txdl	 1  
�
��"
�" 
ascr� 			 r  
�
�			 n  
�
�			 4  
�
��!	
�! 
cwor	 m  
�
�� �  	 n  
�
�			
		 4  
�
��	
� 
citm	 m  
�
��� 	
 o  
�
��� 0 userfullname userFullName	 o      �� 0 userfirstname userFirstName	 			 r  
�			 n  
�			 4 
��	
� 
citm	 m  
� ����	 o  
�
��� 0 userfullname userFullName	 o      �� 0 userlastname userLastName	 			 r  			 m  		 �		  	 n     			 1  
�
� 
txdl	 1  
�
� 
ascr	 			 r  			 b  		 	 b  	!	"	! o  �� 0 userfirstname userFirstName	" m  	#	# �	$	$  @	  o  �� 0 
domainname 
domainName	 o      �� 0 emailaddress emailAddress	 	%�	% l   ����  �  �  �  � 	&	'	& F  $9	(	)	( = $+	*	+	* o  $)�� 0 emailformat emailFormat	+ m  )*�� 	) = .5	,	-	, o  .3�� 0 displayname displayName	- m  34�� 	' 	.	/	. k  <�	0	0 	1	2	1 l <<�
�	��
  �	  �  	2 	3	4	3 l <<�	5	6�  	5 P J Pull user information from the account settings of the local user account   	6 �	7	7 �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t	4 	8	9	8 l <<����  �  �  	9 	:	;	: r  <I	<	=	< n  <E	>	?	> 1  AE�
� 
sisn	? l <A	@��	@ I <A� ����
�  .sysosigtsirr   ��� null��  ��  �  �  	= o      ���� 0 usershortname userShortName	; 	A	B	A r  JW	C	D	C n  JS	E	F	E 1  OS��
�� 
siln	F l JO	G����	G I JO������
�� .sysosigtsirr   ��� null��  ��  ��  ��  	D o      ���� 0 userfullname userFullName	B 	H	I	H l XX��������  ��  ��  	I 	J	K	J l XX��	L	M��  	L ? 9 flast@domain.com and full name displays as "Last, First"   	M �	N	N r   f l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "	K 	O	P	O l XX��������  ��  ��  	P 	Q	R	Q r  Xc	S	T	S m  X[	U	U �	V	V  ,  	T n     	W	X	W 1  ^b��
�� 
txdl	X 1  [^��
�� 
ascr	R 	Y	Z	Y r  dn	[	\	[ n  dl	]	^	] 4 gl��	_
�� 
citm	_ m  jk������	^ o  dg���� 0 userfullname userFullName	\ o      ���� 0 userfirstname userFirstName	Z 	`	a	` r  o~	b	c	b n  o|	d	e	d 4  w|��	f
�� 
cwor	f m  z{���� 	e n  ow	g	h	g 4  rw��	i
�� 
citm	i m  uv���� 	h o  or���� 0 userfullname userFullName	c o      ���� 0 userlastname userLastName	a 	j	k	j r  �	l	m	l m  �	n	n �	o	o  	m n     	p	q	p 1  ����
�� 
txdl	q 1  ����
�� 
ascr	k 	r	s	r r  ��	t	u	t b  ��	v	w	v b  ��	x	y	x b  ��	z	{	z l ��	|����	| n  ��	}	~	} 4  ����	
�� 
cha 	 m  ������ 	~ o  ������ 0 userfirstname userFirstName��  ��  	{ o  ������ 0 userlastname userLastName	y m  ��	�	� �	�	�  @	w o  ������ 0 
domainname 
domainName	u o      ���� 0 emailaddress emailAddress	s 	���	� l ����������  ��  ��  ��  	/ 	�	�	� F  ��	�	�	� = ��	�	�	� o  ������ 0 emailformat emailFormat	� m  ������ 	� = ��	�	�	� o  ������ 0 displayname displayName	� m  ������ 	� 	�	�	� k  �%	�	� 	�	�	� l ����������  ��  ��  	� 	�	�	� l ����	�	���  	� P J Pull user information from the account settings of the local user account   	� �	�	� �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t	� 	�	�	� l ����������  ��  ��  	� 	�	�	� r  ��	�	�	� n  ��	�	�	� 1  ����
�� 
sisn	� l ��	�����	� I ��������
�� .sysosigtsirr   ��� null��  ��  ��  ��  	� o      ���� 0 usershortname userShortName	� 	�	�	� r  ��	�	�	� n  ��	�	�	� 1  ����
�� 
siln	� l ��	�����	� I ��������
�� .sysosigtsirr   ��� null��  ��  ��  ��  	� o      ���� 0 userfullname userFullName	� 	�	�	� l ����������  ��  ��  	� 	�	�	� l ����	�	���  	� > 8 flast@domain.com and full name displays as "First Last"   	� �	�	� p   f l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "	� 	�	�	� l ����������  ��  ��  	� 	�	�	� r  ��	�	�	� m  ��	�	� �	�	�   	� n     	�	�	� 1  ����
�� 
txdl	� 1  ����
�� 
ascr	� 	�	�	� r  ��	�	�	� n  ��	�	�	� 4  ����	�
�� 
cwor	� m  ������ 	� n  ��	�	�	� 4  ����	�
�� 
citm	� m  ������ 	� o  ������ 0 userfullname userFullName	� o      ���� 0 userfirstname userFirstName	� 	�	�	� r  � 	�	�	� n  ��	�	�	� 4 ����	�
�� 
citm	� m  ��������	� o  ������ 0 userfullname userFullName	� o      ���� 0 userlastname userLastName	� 	�	�	� r  	�	�	� m  	�	� �	�	�  	� n     	�	�	� 1  ��
�� 
txdl	� 1  ��
�� 
ascr	� 	�	�	� r  #	�	�	� l 	�����	� b  	�	�	� b  	�	�	� b  	�	�	� n  	�	�	� 4  ��	�
�� 
cha 	� m  ���� 	� o  ���� 0 userfirstname userFirstName	� o  ���� 0 userlastname userLastName	� m  	�	� �	�	�  @	� o  ���� 0 
domainname 
domainName��  ��  	� o      ���� 0 emailaddress emailAddress	� 	���	� l $$��������  ��  ��  ��  	� 	�	�	� F  (?	�	�	� = (1	�	�	� o  (-���� 0 emailformat emailFormat	� m  -0���� 	� = 4;	�	�	� o  49���� 0 displayname displayName	� m  9:���� 	� 	�	�	� k  B�	�	� 	�	�	� l BB��������  ��  ��  	� 	�	�	� l BB��	�	���  	� P J Pull user information from the account settings of the local user account   	� �	�	� �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t	� 	�	�	� l BB��������  ��  ��  	� 	�	�	� r  BO	�	�	� n  BK	�	�	� 1  GK��
�� 
sisn	� l BG	�����	� I BG������
�� .sysosigtsirr   ��� null��  ��  ��  ��  	� o      ���� 0 usershortname userShortName	� 	�	�	� r  P]	�	�	� n  PY	�
 	� 1  UY��
�� 
siln
  l PU
����
 I PU������
�� .sysosigtsirr   ��� null��  ��  ��  ��  	� o      ���� 0 userfullname userFullName	� 


 l ^^�������  ��  �  
 


 l ^^�~

�~  
 C = shortName@domain.com and full name displays as "Last, First"   
 �

 z   s h o r t N a m e @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "
 
	


	 l ^^�}�|�{�}  �|  �{  

 


 r  ^i


 m  ^a

 �

  ,  
 n     


 1  dh�z
�z 
txdl
 1  ad�y
�y 
ascr
 


 r  jt


 n  jr


 4 mr�x

�x 
citm
 m  pq�w�w��
 o  jm�v�v 0 userfullname userFullName
 o      �u�u 0 userfirstname userFirstName
 


 r  u�


 n  u�


 4  }��t
 
�t 
cwor
  m  ���s�s 
 n  u}
!
"
! 4  x}�r
#
�r 
citm
# m  {|�q�q 
" o  ux�p�p 0 userfullname userFullName
 o      �o�o 0 userlastname userLastName
 
$
%
$ r  ��
&
'
& m  ��
(
( �
)
)  
' n     
*
+
* 1  ���n
�n 
txdl
+ 1  ���m
�m 
ascr
% 
,
-
, r  ��
.
/
. b  ��
0
1
0 b  ��
2
3
2 o  ���l�l 0 usershortname userShortName
3 m  ��
4
4 �
5
5  @
1 o  ���k�k 0 
domainname 
domainName
/ o      �j�j 0 emailaddress emailAddress
- 
6�i
6 l ���h�g�f�h  �g  �f  �i  	� 
7
8
7 F  ��
9
:
9 = ��
;
<
; o  ���e�e 0 emailformat emailFormat
< m  ���d�d 
: = ��
=
>
= o  ���c�c 0 displayname displayName
> m  ���b�b 
8 
?�a
? k  �#
@
@ 
A
B
A l ���`�_�^�`  �_  �^  
B 
C
D
C l ���]
E
F�]  
E P J Pull user information from the account settings of the local user account   
F �
G
G �   P u l l   u s e r   i n f o r m a t i o n   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   l o c a l   u s e r   a c c o u n t
D 
H
I
H l ���\�[�Z�\  �[  �Z  
I 
J
K
J r  ��
L
M
L n  ��
N
O
N 1  ���Y
�Y 
sisn
O l ��
P�X�W
P I ���V�U�T
�V .sysosigtsirr   ��� null�U  �T  �X  �W  
M o      �S�S 0 usershortname userShortName
K 
Q
R
Q r  ��
S
T
S n  ��
U
V
U 1  ���R
�R 
siln
V l ��
W�Q�P
W I ���O�N�M
�O .sysosigtsirr   ��� null�N  �M  �Q  �P  
T o      �L�L 0 userfullname userFullName
R 
X
Y
X l ���K�J�I�K  �J  �I  
Y 
Z
[
Z l ���H
\
]�H  
\ B < shortName@domain.com and full name displays as "First Last"   
] �
^
^ x   s h o r t N a m e @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "
[ 
_
`
_ l ���G�F�E�G  �F  �E  
` 
a
b
a r  ��
c
d
c m  ��
e
e �
f
f   
d n     
g
h
g 1  ���D
�D 
txdl
h 1  ���C
�C 
ascr
b 
i
j
i r  ��
k
l
k n  ��
m
n
m 4  ���B
o
�B 
cwor
o m  ���A�A 
n n  ��
p
q
p 4  ���@
r
�@ 
citm
r m  ���?�? 
q o  ���>�> 0 userfullname userFullName
l o      �=�= 0 userfirstname userFirstName
j 
s
t
s r  �
u
v
u n  �
w
x
w 4 ��<
y
�< 
citm
y m  � �;�;��
x o  ���:�: 0 userfullname userFullName
v o      �9�9 0 userlastname userLastName
t 
z
{
z r  
|
}
| m  
~
~ �

  
} n     
�
�
� 1  
�8
�8 
txdl
� 1  
�7
�7 
ascr
{ 
�
�
� r  !
�
�
� b  
�
�
� b  
�
�
� o  �6�6 0 usershortname userShortName
� m  
�
� �
�
�  @
� o  �5�5 0 
domainname 
domainName
� o      �4�4 0 emailaddress emailAddress
� 
��3
� l ""�2�1�0�2  �1  �0  �3  �a  t k  &f
�
� 
�
�
� l &&�/�.�-�/  �.  �-  
� 
�
�
� l &&�,
�
��,  
�   something went wrong   
� �
�
� *   s o m e t h i n g   w e n t   w r o n g
� 
�
�
� l &&�+�*�)�+  �*  �)  
� 
�
�
� I &Y�(
�
�
�( .sysodlogaskr        TEXT
� b  &7
�
�
� b  &3
�
�
� b  &/
�
�
� o  &+�'�' 0 errormessage errorMessage
� o  +.�&
�& 
ret 
� o  /2�%
�% 
ret 
� m  36
�
� �
�
� x U n a b l e   t o   p a r s e   a c c o u n t   i n f o r m a t i o n   f r o m   l o c a l   O S   X   a c c o u n t .
� �$
�
�
�$ 
disp
� m  :=�#
�# stic    
� �"
�
�
�" 
btns
� J  @E
�
� 
��!
� m  @C
�
� �
�
�  O K�!  
� � 
�
�
�  
dflt
� J  HM
�
� 
��
� m  HK
�
� �
�
�  O K�  
� �
��
� 
appr
� m  PS
�
� �
�
� , O u t l o o k   E x c h a n g e   S e t u p�  
� 
�
�
� R  Zd��
�
� .ascrerr ****      � ****�  
� �
��
� 
errn
� m  ^a�����  
� 
��
� l ee����  �  �  �  ��  ��  o 
�
�
� l     ����  �  �  
� 
�
�
� l     �
�
��  
� 0 *------------------------------------------   
� �
�
� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
� 
�
�
� l     �
�
��  
� &   End collecting user information   
� �
�
� @   E n d   c o l l e c t i n g   u s e r   i n f o r m a t i o n
� 
�
�
� l     �
�
��  
� 0 *------------------------------------------   
� �
�
� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
� 
�
�
� l     ����  �  �  
� 
�
�
� l     �

�
��
  
� 0 *------------------------------------------   
� �
�
� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
� 
�
�
� l     �	
�
��	  
�   Begin account setup   
� �
�
� (   B e g i n   a c c o u n t   s e t u p
� 
�
�
� l     �
�
��  
� 0 *------------------------------------------   
� �
�
� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
� 
�
�
� l     ����  �  �  
� 
�
�
� l ge
���
� O  ge
�
�
� k  md
�
� 
�
�
� I mr��� 
� .miscactvnull��� ��� null�  �   
� 
�
�
� l ss��������  ��  ��  
� 
�
�
� Q  s�
�
���
� r  v�
�
�
� o  v{���� 0 unifiedinbox unifiedInbox
� 1  {���
�� 
GrpF
� R      ������
�� .ascrerr ****      � ****��  ��  ��  
� 
�
�
� l ����������  ��  ��  
� 
�
�
� Q  ��
�
���
� r  ��
�
�
� o  ������ 20 hideonmycomputerfolders hideOnMyComputerFolders
� 1  ����
�� 
hOMC
� R      ������
�� .ascrerr ****      � ****��  ��  ��  
� 
�
�
� l ����������  ��  ��  
� 
�
�
� Z  ��
�
�����
� = ��
�
�
� o  ������ (0 verifyemailaddress verifyEMailAddress
� m  ����
�� boovtrue
� k  ��
�
� 
�
�
� r  ��   I ����
�� .sysodlogaskr        TEXT m  �� � X P l e a s e   v e r i f y   y o u r   e m a i l   a d d r e s s   i s   c o r r e c t . ��
�� 
dtxt o  ������ 0 emailaddress emailAddress ��	
�� 
disp m  ������ 	 ��

�� 
appr
 m  �� � , O u t l o o k   E x c h a n g e   S e t u p ��
�� 
btns J  ��  m  �� �  C a n c e l �� m  �� �  V e r i f y��   ����
�� 
dflt J  �� �� m  �� �  V e r i f y��  ��   o      ���� 0 verifyemail verifyEmail
� �� r  �� n  �� !  1  ����
�� 
ttxt! o  ������ 0 verifyemail verifyEmail o      ���� 0 emailaddress emailAddress��  ��  ��  
� "#" l ����������  ��  ��  # $%$ Z  �<&'����& = ��()( o  ������ *0 verifyserveraddress verifyServerAddress) m  ����
�� boovtrue' k  �8** +,+ r  �*-.- I �&��/0
�� .sysodlogaskr        TEXT/ m  ��11 �22 f P l e a s e   v e r i f y   y o u r   E x c h a n g e   S e r v e r   n a m e   i s   c o r r e c t .0 ��34
�� 
dtxt3 o  �����  0 exchangeserver ExchangeServer4 ��56
�� 
disp5 m  ���� 6 ��78
�� 
appr7 m  
99 �:: , O u t l o o k   E x c h a n g e   S e t u p8 ��;<
�� 
btns; J  == >?> m  @@ �AA  C a n c e l? B��B m  CC �DD  V e r i f y��  < ��E��
�� 
dfltE J   FF G��G m  HH �II  V e r i f y��  ��  . o      ���� 0 verifyserver verifyServer, J��J r  +8KLK n  +2MNM 1  .2��
�� 
ttxtN o  +.���� 0 verifyserver verifyServerL o      ����  0 exchangeserver ExchangeServer��  ��  ��  % OPO l ==��������  ��  ��  P QRQ l ==��ST��  S "  create the Exchange account   T �UU 8   c r e a t e   t h e   E x c h a n g e   a c c o u n tR VWV l ==��������  ��  ��  W XYX Q  =Z[\Z r  @�]^] I @�����_
�� .corecrel****      � null��  _ ��`a
�� 
kocl` m  DG��
�� 
Eacta ��b��
�� 
prdtb l 	J�c����c K  J�dd ��ef
�� 
pname b  MTghg m  MPii �jj  M a i l b o x   -  h o  PS���� 0 userfullname userFullNamef ��kl
�� 
unmek b  W`mnm o  W\���� 0 domainprefix domainPrefixn o  \_���� 0 usershortname userShortNamel ��op
�� 
fnamo o  cf���� 0 userfullname userFullNamep ��qr
�� 
emadq o  il���� 0 emailaddress emailAddressr ��st
�� 
hosts o  ot����  0 exchangeserver ExchangeServert ��uv
�� 
usssu o  w|���� 60 exchangeserverrequiresssl ExchangeServerRequiresSSLv ��wx
�� 
portw o  ����� .0 exchangeserversslport ExchangeServerSSLPortx ��yz
�� 
ExLSy o  ������ "0 directoryserver DirectoryServerz ��{|
�� 
LDAu{ o  ������ N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication| ��}~
�� 
LDSL} o  ������ 80 directoryserverrequiresssl DirectoryServerRequiresSSL~ ���
�� 
LDMX o  ������ >0 directoryservermaximumresults DirectoryServerMaximumResults� ����
�� 
LDSB� o  ������ 60 directoryserversearchbase DirectoryServerSearchBase� ����
�� 
ExPm� o  ������ *0 downloadheadersonly downloadHeadersOnly� �����
�� 
pBAD� o  ������ *0 disableautodiscover disableAutodiscover��  ��  ��  ��  ^ o      ���� (0 newexchangeaccount newExchangeAccount[ R      ������
�� .ascrerr ****      � ****��  ��  \ k  ��� ��� l ����������  ��  ��  � ��� l ��������  �   something went wrong   � ��� *   s o m e t h i n g   w e n t   w r o n g� ��� l ����������  ��  ��  � ��� I �����
�� .sysodlogaskr        TEXT� b  ����� b  ����� b  ����� o  ������ 0 errormessage errorMessage� o  ����
�� 
ret � o  ����
�� 
ret � m  ���� ��� D U n a b l e   t o   c r e a t e   E x c h a n g e   a c c o u n t .� ����
�� 
disp� m  ����
�� stic    � ����
�� 
btns� J  ���� ���� m  ���� ���  O K��  � ���
� 
dflt� J  ���� ��~� m  ���� ���  O K�~  � �}��|
�} 
appr� m  ���� ��� , O u t l o o k   E x c h a n g e   S e t u p�|  � ��� R  �{�z�
�{ .ascrerr ****      � ****�z  � �y��x
�y 
errn� m  
�w�w���x  � ��v� l �u�t�s�u  �t  �s  �v  Y ��� l �r�q�p�r  �q  �p  � ��� l �o���o  � e _ The following lines enable Kerberos support if the userKerberos property above is set to true.   � ��� �   T h e   f o l l o w i n g   l i n e s   e n a b l e   K e r b e r o s   s u p p o r t   i f   t h e   u s e r K e r b e r o s   p r o p e r t y   a b o v e   i s   s e t   t o   t r u e .� ��� l �n�m�l�n  �m  �l  � ��� Z  ����k�j� = ��� o  �i�i 0 usekerberos useKerberos� m  �h
�h boovtrue� Q  ����� k   9�� ��� r   -��� o   %�g�g 0 usekerberos useKerberos� n      ��� 1  (,�f
�f 
Kerb� o  %(�e�e (0 newexchangeaccount newExchangeAccount� ��d� r  .9��� o  .1�c�c &0 userkerberosrealm userKerberosRealm� n      ��� 1  48�b
�b 
ExGI� o  14�a�a (0 newexchangeaccount newExchangeAccount�d  � R      �`�_�^
�` .ascrerr ****      � ****�_  �^  � k  A��� ��� l AA�]�\�[�]  �\  �[  � ��� l AA�Z���Z  �   something went wrong   � ��� *   s o m e t h i n g   w e n t   w r o n g� ��� l AA�Y�X�W�Y  �X  �W  � ��� I At�V��
�V .sysodlogaskr        TEXT� b  AR��� b  AN��� b  AJ��� o  AF�U�U 0 errormessage errorMessage� o  FI�T
�T 
ret � o  JM�S
�S 
ret � m  NQ�� ��� ^ U n a b l e   t o   s e t   E x c h a n g e   a c c o u n t   t o   u s e   K e r b e r o s .� �R��
�R 
disp� m  UX�Q
�Q stic    � �P��
�P 
btns� J  [`�� ��O� m  [^�� ���  O K�O  � �N��
�N 
dflt� J  ch�� ��M� m  cf�� ���  O K�M  � �L��K
�L 
appr� m  kn�� ��� , O u t l o o k   E x c h a n g e   S e t u p�K  � ��� R  u�J�I�
�J .ascrerr ****      � ****�I  � �H��G
�H 
errn� m  y|�F�F���G  � ��E� l ���D�C�B�D  �C  �B  �E  �k  �j  � ��� l ���A�@�?�A  �@  �?  � ��� l ���> �>    M G The Me Contact record is automatically created with the first account.    � �   T h e   M e   C o n t a c t   r e c o r d   i s   a u t o m a t i c a l l y   c r e a t e d   w i t h   t h e   f i r s t   a c c o u n t .�  l ���=�=   a [ Set the first name, last name, email address and other information using Active Directory.    � �   S e t   t h e   f i r s t   n a m e ,   l a s t   n a m e ,   e m a i l   a d d r e s s   a n d   o t h e r   i n f o r m a t i o n   u s i n g   A c t i v e   D i r e c t o r y . 	 l ���<�;�:�<  �;  �:  	 

 r  �� o  ���9�9 0 userfirstname userFirstName n       1  ���8
�8 
pFrN 1  ���7
�7 
meCn  r  �� o  ���6�6 0 userlastname userLastName n       1  ���5
�5 
pLsN 1  ���4
�4 
meCn  r  �� K  �� �3
�3 
radd o  ���2�2 0 emailaddress emailAddress �1�0
�1 
type m  ���/
�/ EATyeWrk�0   n       1  ���.
�. 
EmAd 1  ���-
�- 
meCn  !  r  ��"#" o  ���,�,  0 userdepartment userDepartment# n      $%$ 1  ���+
�+ 
Dptm% 1  ���*
�* 
meCn! &'& r  ��()( o  ���)�) 0 
useroffice 
userOffice) n      *+* 1  ���(
�( 
Ofic+ 1  ���'
�' 
meCn' ,-, r  ��./. o  ���&�& 0 usercompany userCompany/ n      010 1  ���%
�% 
Cmpy1 1  ���$
�$ 
meCn- 232 r  ��454 o  ���#�# 0 userworkphone userWorkPhone5 n      676 1  ���"
�" 
bsNm7 1  ���!
�! 
meCn3 898 r  ��:;: o  ��� �  0 
usermobile 
userMobile; n      <=< 1  ���
� 
mbNm= 1  ���
� 
meCn9 >?> r  � @A@ o  ���� 0 userfax userFaxA n      BCB 1  ���
� 
bFaxC 1  ���
� 
meCn? DED r  FGF o  �� 0 	usertitle 	userTitleG n      HIH 1  	�
� 
pTtlI 1  	�
� 
meCnE JKJ r  LML o  �� 0 
userstreet 
userStreetM n      NON 1  �
� 
bStAO 1  �
� 
meCnK PQP r  *RSR o   �� 0 usercity userCityS n      TUT 1  %)�
� 
bCtyU 1   %�
� 
meCnQ VWV r  +8XYX o  +.�� 0 	userstate 	userStateY n      Z[Z 1  37�
� 
bSta[ 1  .3�
� 
meCnW \]\ r  9F^_^ o  9<��  0 userpostalcode userPostalCode_ n      `a` 1  AE�
� 
bZipa 1  <A�
� 
meCn] bcb r  GTded o  GJ�� 0 usercountry userCountrye n      fgf 1  OS�

�
 
bCoug 1  JO�	
�	 
meCnc hih r  Ubjkj o  UX�� 0 userwebpage userWebPagek n      lml 1  ]a�
� 
bsWPm 1  X]�
� 
meCni non l cc����  �  �  o pqp l cc�rs�  r   We're done.   s �tt    W e ' r e   d o n e .q u�u l cc� �����   ��  ��  �  
� m  gjvv�                                                                                  OPIM  alis    x  Macintosh HD               ���H+  	K<+Microsoft Outlook.app                                          
T���`h�        ����  	                Applications    �1      �`�     	K<+  0Macintosh HD:Applications: Microsoft Outlook.app  ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  "Applications/Microsoft Outlook.app  / ��  �  �  
� wxw l     ��������  ��  ��  x yzy l fm{����{ I fm��|��
�� .sysoexecTEXT���     TEXT| m  fi}} �~~ � / b i n / r m   $ H O M E / L i b r a r y / L a u n c h A g e n t s / n e t . t a l k i n g m o o s e . O u t l o o k E x c h a n g e S e t u p 5 . 0 . p l i s t��  ��  ��  z � l nu������ I nu�����
�� .sysoexecTEXT���     TEXT� m  nq�� ��� | / b i n / l a u n c h c t l   r e m o v e   n e t . t a l k i n g m o o s e . O u t l o o k E x c h a n g e S e t u p 5 . 0��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  �   End account setup   � ��� $   E n d   a c c o u n t   s e t u p� ���� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -��       ����� 8���� b�������� ��� �����D������������������  � �������������������������������������������������� 0 usekerberos useKerberos��  0 exchangeserver ExchangeServer�� 60 exchangeserverrequiresssl ExchangeServerRequiresSSL�� .0 exchangeserversslport ExchangeServerSSLPort�� "0 directoryserver DirectoryServer�� N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication�� 80 directoryserverrequiresssl DirectoryServerRequiresSSL�� 00 directoryserversslport DirectoryServerSSLPort�� >0 directoryservermaximumresults DirectoryServerMaximumResults�� 60 directoryserversearchbase DirectoryServerSearchBase�� N0 %getuserinformationfromactivedirectory %getUserInformationFromActiveDirectory�� 0 
domainname 
domainName�� 0 emailformat emailFormat�� 0 displayname displayName�� 0 domainprefix domainPrefix�� (0 verifyemailaddress verifyEMailAddress�� *0 verifyserveraddress verifyServerAddress�� *0 displaydomainprefix displayDomainPrefix�� *0 downloadheadersonly downloadHeadersOnly�� 20 hideonmycomputerfolders hideOnMyComputerFolders�� 0 unifiedinbox unifiedInbox�� *0 disableautodiscover disableAutodiscover�� 0 errormessage errorMessage
�� .aevtoappnull  �   � ****
�� boovtrue
�� boovtrue���
�� boovtrue
�� boovtrue������
�� boovtrue�� �� 
�� boovfals
�� boovfals
�� boovfals
�� boovfals
�� boovfals
�� boovfals
�� boovfals� �����������
�� .aevtoappnull  �   � ****� k    u�� �� 
�� �� �� �� &�� -�� 4�� ;�� B�� I�� P�� W�� ^�� e�� n�� 
��� y�� ����  ��  ��  � ���� 0 i  � ���������$��+��2��9��@��G��N��U��\��c��j��������������������������������������������������.;����O����jw������+?Zg��{������/JWk�������:G[v���������*7Kkn�������������������Jcsu����		#	U	n	�	�	�	���

(
4
e
~
�
�
�
�
�v��������������19@CH����������i����~�}�|�{�z�y�x�w�v�u�t�s�r�q�����p�o�����n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[}��� 0 userfirstname userFirstName�� 0 userlastname userLastName��  0 userdepartment userDepartment�� 0 
useroffice 
userOffice�� 0 usercompany userCompany�� 0 userworkphone userWorkPhone�� 0 
usermobile 
userMobile�� 0 userfax userFax�� 0 	usertitle 	userTitle�� 0 
userstreet 
userStreet�� 0 usercity userCity�� 0 	userstate 	userState��  0 userpostalcode userPostalCode�� 0 usercountry userCountry�� 0 userwebpage userWebPage
�� .sysoexecTEXT���     TEXT�� 0 netbiosdomain netbiosDomain��  ��  
�� 
ret 
�� 
disp
�� stic    
�� 
btns
�� 
dflt
�� 
appr�� 
�� .sysodlogaskr        TEXT
�� 
errn����
�� 
ascr
�� 
txdl�� "0 userinformation userInformation
�� 
cpar
�� .corecnte****       ****
�� 
citm�� 0 emailaddress emailAddress
�� 
cha 
�� 
TEXT�� 0 usershortname userShortName�� 0 userfullname userFullName�� &0 userkerberosrealm userKerberosRealm
�� 
bool
�� .sysosigtsirr   ��� null
�� 
sisn
�� 
siln
�� 
cwor�� 
�� .miscactvnull��� ��� null
�� 
GrpF
�� 
hOMC
�� 
dtxt�� 
�� 0 verifyemail verifyEmail
�� 
ttxt�� 0 verifyserver verifyServer
�� 
kocl
�� 
Eact
�� 
prdt
�� 
pnam
�� 
unme
� 
fnam
�~ 
emad
�} 
host
�| 
usss
�{ 
port
�z 
ExLS
�y 
LDAu
�x 
LDSL
�w 
LDMX
�v 
LDSB
�u 
ExPm
�t 
pBAD�s 
�r .corecrel****      � null�q (0 newexchangeaccount newExchangeAccount
�p 
Kerb
�o 
ExGI
�n 
meCn
�m 
pFrN
�l 
pLsN
�k 
radd
�j 
type
�i EATyeWrk
�h 
EmAd
�g 
Dptm
�f 
Ofic
�e 
Cmpy
�d 
bsNm
�c 
mbNm
�b 
bFax
�a 
pTtl
�` 
bStA
�_ 
bCty
�^ 
bSta
�] 
bZip
�\ 
bCou
�[ 
bsWP��v�E�O�E�O�E�O�E�O�E�O�E�O�E�O�E�Oa E` Oa E` Oa E` Oa E` Oa E` Oa E` Oa E` Ob  
e � 4a j E`  Ob  e  _  a !%Ec  Y a "Ec  W EX # $b  _ %%_ %%a &%a 'a (a )a *kva +a ,kva -a .a / 0O)a 1a 2lhO &a 3kv_ 4a 5,FOa 6_  %a 7%j E` 8W EX # $b  _ %%_ %%a 9%a 'a (a )a :kva +a ;kva -a <a / 0O)a 1a 2lhO[k_ 8a =-j >kh  a ?kv_ 4a 5,FO_ 8a =�/a @ L _ 8a =�/a Al/E` BW 2X # $a Ckv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E` BY hOa Fkv_ 4a 5,FO_ 8a =�/a G L _ 8a =�/a Al/E` W 2X # $a Hkv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E` Y hOa Ikv_ 4a 5,FO_ 8a =�/a J H _ 8a =�/a Al/E�W 0X # $a Kkv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E�Y hOa Lkv_ 4a 5,FO_ 8a =�/a M H _ 8a =�/a Al/E�W 0X # $a Nkv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E�Y hOa Okv_ 4a 5,FO_ 8a =�/a P H _ 8a =�/a Al/E�W 0X # $a Qkv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E�Y hOa Rkv_ 4a 5,FO_ 8a =�/a S L _ 8a =�/a Al/E` TW 2X # $a Ukv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E` TY hOa Vkv_ 4a 5,FO_ 8a =�/a W L _ 8a =�/a Al/E` W 2X # $a Xkv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E` Y hOa Ykv_ 4a 5,FO_ 8a =�/a Z L _ 8a =�/a Al/E` W 2X # $a [kv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E` Y hOa \kv_ 4a 5,FO_ 8a =�/a ] H _ 8a =�/a Al/E�W 0X # $a ^kv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E�Y hOa _kv_ 4a 5,FO_ 8a =�/a ` H _ 8a =�/a Al/E�W 0X # $a akv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E�Y hOa bkv_ 4a 5,FO_ 8a =�/a c L _ 8a =�/a Al/E` W 2X # $a dkv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E` Y hOa ekv_ 4a 5,FO_ 8a =�/a f H _ 8a =�/a Al/E�W 0X # $a gkv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E�Y hOa hkv_ 4a 5,FO_ 8a =�/a i H _ 8a =�/a Al/E�W 0X # $a jkv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E�Y hOa kkv_ 4a 5,FO_ 8a =�/a l H _ 8a =�/a Al/E�W 0X # $a mkv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E�Y hOa nkv_ 4a 5,FO_ 8a =�/a o L _ 8a =�/a Al/E` W 2X # $a pkv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E` Y hOa qkv_ 4a 5,FO_ 8a =�/a r L _ 8a =�/a Al/E` sW 2X # $a tkv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E` sY hOa ukv_ 4a 5,FO_ 8a =�/a v L _ 8a =�/a Al/E` W 2X # $a wkv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E` Y hOa xkv_ 4a 5,FO_ 8a =�/a y L _ 8a =�/a Al/E` W 2X # $a zkv_ 4a 5,FO_ 8a =�k/[a D\[Zl\62a E&E` Y hOP[OY��Oa {a |lv_ 4a 5,FO _ 8a Al/E` }W X # $hOa ~kv_ 4a 5,FO_ Ba   Cb  _ %%_ %%a �%a 'a (a )a �kva +a �kva -a �a / 0O)a 1a 2lhY hOPY<b  k 	 b  k a �& k*j �a �,E` TO*j �a �,E` sOa �_ 4a 5,FO_ sa Ai/E�O_ sa Ak/a �k/E�Oa �_ 4a 5,FO�a �%�%a �%b  %E` BOPY�b  k 	 b  l a �& k*j �a �,E` TO*j �a �,E` sOa �_ 4a 5,FO_ sa Ak/a �k/E�O_ sa Ai/E�Oa �_ 4a 5,FO�a �%�%a �%b  %E` BOPY:b  l 	 b  k a �& e*j �a �,E` TO*j �a �,E` sOa �_ 4a 5,FO_ sa Ai/E�O_ sa Ak/a �k/E�Oa �_ 4a 5,FO�a �%b  %E` BOPY�b  l 	 b  l a �& e*j �a �,E` TO*j �a �,E` sOa �_ 4a 5,FO_ sa Ak/a �k/E�O_ sa Ai/E�Oa �_ 4a 5,FO�a �%b  %E` BOPYDb  m 	 b  k a �& l*j �a �,E` TO*j �a �,E` sOa �_ 4a 5,FO_ sa Ai/E�O_ sa Ak/a �k/E�Oa �_ 4a 5,FO�a Dk/�%a �%b  %E` BOPY�b  m 	 b  l a �& l*j �a �,E` TO*j �a �,E` sOa �_ 4a 5,FO_ sa Ak/a �k/E�O_ sa Ai/E�Oa �_ 4a 5,FO�a Dk/�%a �%b  %E` BOPY@b  a � 	 b  k a �& g*j �a �,E` TO*j �a �,E` sOa �_ 4a 5,FO_ sa Ai/E�O_ sa Ak/a �k/E�Oa �_ 4a 5,FO_ Ta �%b  %E` BOPY �b  a � 	 b  l a �& g*j �a �,E` TO*j �a �,E` sOa �_ 4a 5,FO_ sa Ak/a �k/E�O_ sa Ai/E�Oa �_ 4a 5,FO_ Ta �%b  %E` BOPY Bb  _ %%_ %%a �%a 'a (a )a �kva +a �kva -a �a / 0O)a 1a 2lhOPOa ��*j �O b  *a �,FW X # $hO b  *a �,FW X # $hOb  e  Aa �a �_ Ba 'ka -a �a )a �a �lva +a �kva � 0E` �O_ �a �,E` BY hOb  e  Ea �a �b  a 'ka -a �a )a �a �lva +a �kva � 0E` �O_ �a �,Ec  Y hO �*a �a �a �a �a �_ s%a �b  _ T%a �_ sa �_ Ba �b  a �b  a �b  a �b  a �b  a �b  a �b  a �b  	a �b  a �b  a �a � �E` �W GX # $b  _ %%_ %%a �%a 'a (a )a �kva +a �kva -a �a / 0O)a 1a 2lhOPOb   e  i b   _ �a �,FO_ }_ �a �,FW GX # $b  _ %%_ %%a �%a 'a (a )a �kva +a �kva -a �a / 0O)a 1a 2lhOPY hO�*a �,a �,FO�*a �,a �,FOa �_ Ba �a �a �*a �,a �,FO�*a �,a �,FO�*a �,a �,FO�*a �,a �,FO�*a �,a �,FO�*a �,a �,FO�*a �,a �,FO_ *a �,a �,FO_ *a �,a �,FO_ *a �,a �,FO_ *a �,a �,FO_ *a �,a �,FO_ *a �,a �,FO_ *a �,a �,FOPUOa �j Oa �j ascr  ��ޭ