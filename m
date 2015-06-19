Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rafi.de ([178.15.151.14])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z5rOC-0007bl-5X
 for barebox@lists.infradead.org; Fri, 19 Jun 2015 08:11:05 +0000
MIME-Version: 1.0
In-Reply-To: 
References: 
From: andreas.willig@rafi.de
Message-ID: <OF8A4A9DD7.EAA49236-ONC1257E69.002CEC59-C1257E69.002CEC64@o0802.rafi.inhouse>
Date: Fri, 19 Jun 2015 10:10:41 +0200
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
Subject: USB Host i.Mx6S
To: Barebox List <barebox@lists.infradead.org>

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
