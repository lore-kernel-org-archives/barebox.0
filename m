Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z5uDa-0004Pg-Im
 for barebox@lists.infradead.org; Fri, 19 Jun 2015 11:12:19 +0000
MIME-Version: 1.0
In-Reply-To: <OF8A4A9DD7.EAA49236-ONC1257E69.002CEC59-C1257E69.002CEC64@o0802.rafi.inhouse>
References: <OF8A4A9DD7.EAA49236-ONC1257E69.002CEC59-C1257E69.002CEC64@o0802.rafi.inhouse>
From: andreas.willig@rafi.de
Message-ID: <OFCBE64D2D.49C56E9D-ONC1257E69.003D79AA-C1257E69.003D79B5@o0802.rafi.inhouse>
Date: Fri, 19 Jun 2015 13:11:28 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: USB Host i.Mx6S
To: Barebox List <barebox@lists.infradead.org>

Soon after posting, I found the problem myself :)

USB H1 requires to have VBus fead into controller to power the USBPHY. Afte=
r adding a 0 Ohm resistor on the right place, the D- semi voltage disappear=
s and enumeration works.

Maybe this is helpfull for someone hitting similar problem (even if hardwar=
e is slightly off-Topic here)



Mit freundlichen Gr=FC=DFen aus Berg/ With kind regards

i.A. Andreas Willig
Dipl.-Ing. (FH)
Entwicklung Elektronik

RAFI GmbH & Co. KG
Postfach 2060
88276 Ravensburg
Tel.: +49 (0) 751 89-6142

mailto:andreas.willig@rafi.de, http://www.rafi.de

Kommanditgesellschaft: Sitz Berg, Amtsgericht Ulm, HRA 550059
Komplement=E4r: RAFI Beteiligungs-GmbH, Sitz Berg, Amtsgericht Ulm HRB 5500=
74
Gesch=E4ftsf=FChrer: Albert Wasmeier, Dipl.-Kfm. Gerhard Schenk
USt-Ident.-Nr.: DE 146 392 319, Steuer-Nr.: 77079/00291


-----"barebox" <barebox-bounces@lists.infradead.org> schrieb: ----- =

An: Barebox List <barebox@lists.infradead.org>
Von: andreas.willig@rafi.de
Gesendet von: "barebox" =

Datum: 19.06.2015 10:11
Betreff: USB Host i.Mx6S


Hi everyone

did anyone get a USB Stick Mass Storage to run, connected to i.MX6 Solo USB=
 H1? I can get it running on OTG Pure Host, but not on USB H1. It runs into=
 a timeout on issuieng GetDescriptor during usb_rescan. =


Using a scope i don't see any traffic on D+/D-, what i observe is a drop of=
 D- to 1.3V where i expect 3.3V, which i see on Connection to USB OTG (USB =
stick is a low Speed device, therefore D- High).

Any ideas? Is there an additional Setting for UTMI/USBPhy required?


Mit freundlichen Gr=FC=DFen aus Berg/ With kind regards

i.A. Andreas Willig
Dipl.-Ing. (FH)
Entwicklung Elektronik

RAFI GmbH & Co. KG
Postfach 2060
88276 Ravensburg
Tel.: +49 (0) 751 89-6142

mailto:andreas.willig@rafi.de, http://www.rafi.de

Kommanditgesellschaft: Sitz Berg, Amtsgericht Ulm, HRA 550059
Komplement=E4r: RAFI Beteiligungs-GmbH, Sitz Berg, Amtsgericht Ulm HRB 5500=
74
Gesch=E4ftsf=FChrer: Albert Wasmeier, Dipl.-Kfm. Gerhard Schenk
USt-Ident.-Nr.: DE 146 392 319, Steuer-Nr.: 77079/00291

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
