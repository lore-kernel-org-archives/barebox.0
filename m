Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWq4i-0005RT-QJ
 for barebox@lists.infradead.org; Tue, 22 May 2012 14:28:37 +0000
Received: by ggcs5 with SMTP id s5so6192515ggc.36
 for <barebox@lists.infradead.org>; Tue, 22 May 2012 07:28:35 -0700 (PDT)
MIME-Version: 1.0
From: Roberto Nibali <rnibali@gmail.com>
Date: Tue, 22 May 2012 16:28:14 +0200
Message-ID: <CAONxwYMN4tDV-0vcophuLRA0rJC_T6OaLNyZM22yoso09cJFRg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1290838516986168356=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: SD card probe failure
To: barebox@lists.infradead.org

--===============1290838516986168356==
Content-Type: multipart/alternative; boundary=e89a8f3bac1f6bc4fb04c0a0d590

--e89a8f3bac1f6bc4fb04c0a0d590
Content-Type: text/plain; charset=ISO-8859-1

Hi

I'm loading barebox as a second stage bootloader, because I haven't figured
out yet how to boot it from SD card directly. It seems though as if barebox
in general is not happy with the SD card:


barebox 2012.05.0-00194-g38d361d-dirty #0 Mon May 14 10:52:47 CEST 2012


Board: SID1 NOAH
registered netconsole as cs1
imx-esdhc@mci0: registered as mci0
imx-esdhc@imx-esdhc0: timeout 1
Cannot reset the SD/MMC card
ehci@ehci0: USB EHCI 1.00
cfi_flash@cfi_flash0: found cfi flash at a0000000, size 67108864
Malloc space: 0x83b00000 -> 0x83efffff (size  4 MB)
Stack space : 0x83af8000 -> 0x83b00000 (size 32 kB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit any key to stop autoboot:  5

type update_kernel nor [<imagename>] to update kernel into flash
type update_root nor [<imagename>] to update rootfs into flash

sid1-noah:/
sid1-noah:/ devinfo mci0
resources:
driver: mci

 No information available:
  MCI card not probed yet
Parameters:
           probe = 0
sid1-noah:/ mci0.probe=1
imx-esdhc@imx-esdhc0: timeout 1
Cannot reset the SD/MMC card
set parameter: Connection timed out
sid1-noah:/

Any ideas? What are possible causes of this?

Regards
Roberto

--e89a8f3bac1f6bc4fb04c0a0d590
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<div><br></div><div>I&#39;m loading barebox as a second stage bootloader,=
 because I haven&#39;t figured out yet how to boot it from SD card directly=
. It seems though as if barebox in general is not happy with the SD card:</=
div>

<div><br></div><div><br></div><div>barebox 2012.05.0-00194-g38d361d-dirty #=
0 Mon May 14 10:52:47 CEST 2012</div><div><br></div><div><br></div><div>Boa=
rd: SID1 NOAH</div><div>registered netconsole as cs1</div><div>imx-esdhc@mc=
i0: registered as mci0</div>

<div>imx-esdhc@imx-esdhc0: timeout 1</div><div>Cannot reset the SD/MMC card=
</div><div>ehci@ehci0: USB EHCI 1.00</div><div>cfi_flash@cfi_flash0: found =
cfi flash at a0000000, size 67108864</div><div>Malloc space: 0x83b00000 -&g=
t; 0x83efffff (size =A04 MB)</div>

<div>Stack space : 0x83af8000 -&gt; 0x83b00000 (size 32 kB)</div><div>envfs=
: wrong magic on /dev/env0</div><div>no valid environment found on /dev/env=
0. Using default environment</div><div>running /env/bin/init...</div><div>

<br></div><div>Hit any key to stop autoboot: =A05</div><div><br></div><div>=
type update_kernel nor [&lt;imagename&gt;] to update kernel into flash</div=
><div>type update_root nor [&lt;imagename&gt;] to update rootfs into flash<=
/div>

<div><br></div><div>sid1-noah:/</div><div>sid1-noah:/ devinfo mci0</div><di=
v>resources:</div><div>driver: mci</div><div><br></div><div>=A0No informati=
on available:</div><div>=A0 MCI card not probed yet</div><div>Parameters:</=
div>

<div>=A0 =A0 =A0 =A0 =A0 =A0probe =3D 0</div><div>sid1-noah:/ mci0.probe=3D=
1</div><div>imx-esdhc@imx-esdhc0: timeout 1</div><div>Cannot reset the SD/M=
MC card</div><div>set parameter: Connection timed out</div><div>sid1-noah:/=
=A0</div><div>

<br></div><div>Any ideas? What are possible causes of this?</div><div><br><=
/div><div>Regards</div><div>Roberto</div>

--e89a8f3bac1f6bc4fb04c0a0d590--


--===============1290838516986168356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1290838516986168356==--
