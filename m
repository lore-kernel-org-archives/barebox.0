Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qas3B-0005vs-Jp
	for barebox@lists.infradead.org; Sun, 26 Jun 2011 16:19:11 +0000
Received: by eyh6 with SMTP id 6so1515918eyh.36
	for <barebox@lists.infradead.org>; Sun, 26 Jun 2011 09:16:24 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 26 Jun 2011 09:16:24 -0700
Message-ID: <BANLkTikjQPPzar_CmJsoh9=2BOGOUY83Vg@mail.gmail.com>
From: "drscott can't tell" <drscott50s@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1844163532=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: booting issues with PandaBoard
To: barebox@lists.infradead.org

--===============1844163532==
Content-Type: multipart/alternative; boundary=0016364c6e9d8f86bd04a69fc1ab

--0016364c6e9d8f86bd04a69fc1ab
Content-Type: text/plain; charset=ISO-8859-1

I have more data to add regarding the PandaBoard boot issue referenced by
Belisko Marek:

1.  In our group we have two PandaBoards - both rev A3 but bought 1 1/2
months apart.  The latest PandaBoard boots just fine with the stock June
barebox.  The earlier board does not.
2.  All of the comments below are relative to the earlier A3 board...
3. If I copy MLO from the Angstrom distribution and then compile using
panda_defconfig and copy barebox.bin as u-boot.bin - barebox hangs after
displaying board revision (03).
4. Using panda_defconfig and if I comment out the two lines:
     //register_device(&hsmmc_dev);
    //panda_ehci_init();
in board.c then barebox boots up properly, obviously without usb and sd card
support:
5. If I rebuild same image using panda_xload_defconfig and copy the
barebox.bin.ift as MLO and the generated barebox.bin to the card, the
booting hangs after following displayed:

barebox 2011.06.0 (Jun 26 2011 - 08:45:43)

Board: Texas Instrument's Panda
PandaBoard Revision: 003
Malloc space: 0x84000000 -> 0x86000000 (size 32 MB)
Stack space : 0x8f000000 -> 0x8f008000 (size 32 kB)

It would appear to me that there is a subtle startup issue between MLO
startup and barebox startup.  The fact that one board behaves properly and
the other doesn't at the same rev level indicates some sort of 'on the edge'
in-stability.  I will feed back any other findings as I test more...

Scott Tilden, PhD
U of Arizona

--0016364c6e9d8f86bd04a69fc1ab
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I have more data to add regarding the PandaBoard boot issue referenced by B=
elisko Marek:<br><br>1.=A0 In our group we have two PandaBoards - both rev =
A3 but bought 1 1/2 months apart.=A0 The latest PandaBoard boots just fine =
with the stock June barebox.=A0 The earlier board does not.<br>
2.=A0 All of the comments below are relative to the earlier A3 board...<br>=
3. If I copy MLO from the Angstrom distribution and then compile using pand=
a_defconfig and copy barebox.bin as u-boot.bin - barebox hangs after displa=
ying board revision (03).<br>
4. Using panda_defconfig and if I comment out the two lines:<br>=A0=A0=A0=
=A0 //register_device(&amp;hsmmc_dev);<br>
=A0=A0=A0 //panda_ehci_init();<br>in board.c then barebox boots up properly=
, obviously without usb and sd card support:<br>5. If I rebuild same image =
using panda_xload_defconfig and copy the barebox.bin.ift as MLO and the gen=
erated barebox.bin to the card, the booting hangs after following displayed=
:<br>
<br>barebox 2011.06.0 (Jun 26 2011 - 08:45:43)<br><br>Board: Texas Instrume=
nt&#39;s Panda<br>PandaBoard Revision: 003<br>Malloc space: 0x84000000 -&gt=
; 0x86000000 (size 32 MB)<br>Stack space : 0x8f000000 -&gt; 0x8f008000 (siz=
e 32 kB)<br>
<br>It would appear to me that there is a subtle startup issue between MLO =
startup and barebox startup.=A0 The fact that one board behaves properly an=
d the other doesn&#39;t at the same rev level indicates some sort of &#39;o=
n the edge&#39; in-stability.=A0 I will feed back any other findings as I t=
est more...<br>
<br>Scott Tilden, PhD<br>U of Arizona<br>

--0016364c6e9d8f86bd04a69fc1ab--


--===============1844163532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1844163532==--
