Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rafi.de ([178.15.151.14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WID2C-0007N5-Gz
 for barebox@lists.infradead.org; Tue, 25 Feb 2014 08:06:37 +0000
MIME-Version: 1.0
In-Reply-To: 
References: 
From: andreas.willig@rafi.de
Message-ID: <OFD3A2CF6E.C8D085C1-ONC1257C8A.002B9472-C1257C8A.002B9476@o0802.rafi.inhouse>
Date: Tue, 25 Feb 2014 08:56:00 +0100
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
Subject: Barebox TFTP FS
To: barebox@lists.infradead.org

Hi all, =


i could not find it currently, is the a problem in TFTP Put implementation?=
 For me it looks like tftp put (tftp -p) is redirected to a TFTP FS mount a=
nd a copy command into this "temporary mount". Unfortunately the implementa=
tion of copy command (cp) issues a file truncate (O_TRUNC option) which is =
not supported by TFTP FS (ENOSYS), which causes TFPT Put to fail. =


Simply the question: is this well known? is there a work around? Is a fix n=
eeded? =


Thanks in advance
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
