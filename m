Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout2.freenet.de ([2001:748:100:40::2:4])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYtSr-0000VZ-7r
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 07:02:18 +0000
Received: from [195.4.92.141] (helo=mjail1.freenet.de)
 by mout2.freenet.de with esmtpa (ID g.gebhardt@gg-sw-systems.de) (port 25)
 (Exim 4.76 #1) id 1TYtSc-0007Oq-RO
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 08:02:02 +0100
Received: from localhost ([::1]:44119 helo=mjail1.freenet.de)
 by mjail1.freenet.de with esmtpa (ID g.gebhardt@gg-sw-systems.de) (Exim 4.76
 #1) id 1TYtSc-0002l7-N7
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 08:02:02 +0100
Received: from [195.4.92.21] (port=45554 helo=11.mx.freenet.de)
 by mjail1.freenet.de with esmtpa (ID g.gebhardt@gg-sw-systems.de) (Exim 4.76
 #1) id 1TYtQ9-00020n-NK
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 07:59:29 +0100
Received: from p4fced1a1.dip.t-dialin.net ([79.206.209.161]:64849
 helo=linux-xmcx.localnet)
 by 11.mx.freenet.de with esmtpsa (ID g.gebhardt@gg-sw-systems.de)
 (TLSv1:AES256-SHA:256) (port 25) (Exim 4.76 #1) id 1TYtQ9-00067o-8C
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 07:59:29 +0100
From: =?ISO-8859-1?Q?G=FCnter?= Gebhardt <guenter.gebhardt@freenet.de>
Date: Thu, 15 Nov 2012 07:59:22 +0100
Message-ID: <4801591.VRVUpK1jDH@linux-xmcx>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1764935725224909580=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: TX53-8030 Memory Speed
To: barebox@lists.infradead.org


--===============1764935725224909580==
Content-Type: multipart/alternative; boundary="nextPart10741650.miWonnNIOt"
Content-Transfer-Encoding: 7Bit


--nextPart10741650.miWonnNIOt
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="iso-8859-1"

Hello,

we integrated KARO TX53-8030 support into our barebox 2012.07.0 some month 
ago.

We measured the performance of memcpy() and found that the throughput is only 
19MB/s. We expected it to be something like 10 times faster.

We saw that there is support for the TX-53 in general within the head of 
barebox.

Within the file arch/arm/boards/karo-tx53/flash_header.c it 
is stated that it only supports TX53 1011 (i.e. 1GB RAM).

Do You have settings applicable to our device? 

What throughput do You expect from this device? 

Are there some things to be aware of?

Kind Regard,
Guenter Gebhadt
--nextPart10741650.miWonnNIOt
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="iso-8859-1"

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/=
REC-html40/strict.dtd">
<html><head><meta name=3D"qrichtext" content=3D"1" /><style type=3D"tex=
t/css">
p, li { white-space: pre-wrap; }
</style></head><body style=3D" font-family:'Sans Serif'; font-size:9pt;=
 font-weight:400; font-style:normal;">
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Hel=
lo,</p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px=
; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0p=
x; ">&nbsp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><sp=
an style=3D" font-style:italic; color:#008000; background-color:#ffffff=
;">we integrated KARO TX53-8030 support into our barebox 2012.07.0 some=
 month ago.</span></p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px=
; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0p=
x; ">&nbsp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><sp=
an style=3D" font-style:italic; color:#008000; background-color:#ffffff=
;">We measured the performance of memcpy() and found that the throughpu=
t is only 19MB/s.=A0We expected it to be something like 10 times faster=
.</span></p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px=
; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0p=
x; ">&nbsp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><sp=
an style=3D" font-style:italic; color:#008000;">We saw that there is su=
pport for the TX-53 in general within the head of=A0</span></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><sp=
an style=3D" font-style:italic; color:#008000;">barebox.</span></p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px=
; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0p=
x; ">&nbsp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><sp=
an style=3D" font-style:italic; color:#008000;">Within the file arch/ar=
m/boards/karo-tx53/flash_header.c it=A0</span></p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><sp=
an style=3D" font-style:italic; color:#008000;">is stated that it only =
supports TX53 1011 (i.e. 1GB RAM).</span></p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px=
; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0p=
x; ">&nbsp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><sp=
an style=3D" font-style:italic; color:#008000;">Do You have settings ap=
plicable to our device?=A0</span></p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px=
; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0p=
x; ">&nbsp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><sp=
an style=3D" font-style:italic; color:#008000;">What throughput do You =
expect from this device?=A0</span></p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px=
; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0p=
x; ">&nbsp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><sp=
an style=3D" font-style:italic; color:#008000;">Are there some things t=
o be aware of?</span></p>
<p style=3D"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px=
; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0p=
x; ">&nbsp;</p>
<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><sp=
an style=3D" font-style:italic; color:#008000;">Kind Regard,</span></p>=

<p style=3D" margin-top:0px; margin-bottom:0px; margin-left:0px; margin=
-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><sp=
an style=3D" font-style:italic; color:#008000;">Guenter Gebhadt</span><=
/p></body></html>
--nextPart10741650.miWonnNIOt--



--===============1764935725224909580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1764935725224909580==--
