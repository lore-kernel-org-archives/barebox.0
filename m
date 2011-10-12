Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RDuKs-00044r-3x
	for barebox@lists.infradead.org; Wed, 12 Oct 2011 08:38:47 +0000
Received: by mail-ww0-f49.google.com with SMTP id 14so419375wwp.18
	for <barebox@lists.infradead.org>; Wed, 12 Oct 2011 01:38:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGiJk9cnibz1M-FEyxo956b4PF0e3V06FH-vTxbZ=FogADSogQ@mail.gmail.com>
References: <CAGiJk9cnibz1M-FEyxo956b4PF0e3V06FH-vTxbZ=FogADSogQ@mail.gmail.com>
Date: Wed, 12 Oct 2011 10:38:45 +0200
Message-ID: <CAJeSw6A7fSXznW8v_hWXBinGw4VDpn_8-_k1qx3TH6B1cQR3tQ@mail.gmail.com>
From: Fabian van der Werf <fvanderwerf@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1129290728=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Pandaboard boot problems persist (was: [PATCH] Fixed unaligned
	access)
To: Samuel Stirtzel <s.stirtzel@googlemail.com>
Cc: barebox@lists.infradead.org

--===============1129290728==
Content-Type: multipart/alternative; boundary=001517447946ba3aca04af15f382

--001517447946ba3aca04af15f382
Content-Type: text/plain; charset=ISO-8859-1

Hi,


I noted that the latest merge of branch 'next' also broke barebox on my
pandaboard. I suggest you get release v2011.10 and apply the unalignment
patch on that release.


Kind regards,

Fabian

On Wed, Oct 12, 2011 at 10:32 AM, Samuel Stirtzel <s.stirtzel@googlemail.com
> wrote:

> Hi,
> today I built the latest Barebox version for Pandaboard, which
> includes the 'Fixed unaligned access' patch, but I still won't get it
> to boot.
>
> Maybe I'm missing some configurations that differ from the defaults,
> anyone had success booting Barebox on the Pandaboard?
>
>
> At power on I get the following message:
>
> -
> Texas Instruments X-Loader 1.5.1 (Sep  6 2011 - 13:37:48)
> Reading boot sector
> Loading u-boot.bin from mmc
>
>
> barebox 2011.10.0-00092-gc3d7a97 (Oct 12 2011 - 09:55:05)
>
> Board: Texas Instrument's Panda
> PandaBoard Revision: 003
> unable to handle NULL pointer dereference at address 0x00000000
> pc : [<8f018044>]    lr : [<8f018020>]
> sp : 8cffff38  ip : 8d006158  fp : 00100103
> r10: 00000000  r9 : 12345678  r8 : 00000001
> r7 : 8d006170  r6 : 8f03d07c  r5 : 8d006170  r4 : 8d0061e8
> r3 : 00000000  r2 : 00000000  r1 : 00000000  r0 : 8d0061e8
> Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
> [<8f018044>] (omap_mmc_probe+0x6c/0x94) from [<8f005708>]
> (platform_probe+0x10/0x14)
> [<8f005708>] (platform_probe+0x10/0x14) from [<8f004f80>] (match+0x54/0x98)
> [<8f004f80>] (match+0x54/0x98) from [<8f005460>]
> (register_device+0xc0/0xf4)
> [<8f005460>] (register_device+0xc0/0xf4) from [<8f005778>]
> (add_generic_device_res+0x44/0x4c)
> [<8f005778>] (add_generic_device_res+0x44/0x4c) from [<8f029a08>]
> (panda_devices_init+0xf4/0x1e4)
> [<8f029a08>] (panda_devices_init+0xf4/0x1e4) from [<8f004bc4>]
> (start_barebox+0x1c/0x118)
> [<8f004bc4>] (start_barebox+0x1c/0x118) from [<80e80084>] (0x80e80084)
> -
>
> Is this error directly related to the current issues with Barebox on
> the Pandaboard?
>
> --
> Regards
> Samuel
>

--001517447946ba3aca04af15f382
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br><br>I noted that the latest merge of branch &#39;next&#39; also =
broke barebox on my pandaboard. I suggest you get release v2011.10 and appl=
y the unalignment patch on that release.<br><br><br>Kind regards,<br><br>
Fabian<br><br><div class=3D"gmail_quote">On Wed, Oct 12, 2011 at 10:32 AM, =
Samuel Stirtzel <span dir=3D"ltr">&lt;<a href=3D"mailto:s.stirtzel@googlema=
il.com">s.stirtzel@googlemail.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px soli=
d rgb(204, 204, 204); padding-left: 1ex;">
Hi,<br>
today I built the latest Barebox version for Pandaboard, which<br>
includes the &#39;Fixed unaligned access&#39; patch, but I still won&#39;t =
get it<br>
to boot.<br>
<br>
Maybe I&#39;m missing some configurations that differ from the defaults,<br=
>
anyone had success booting Barebox on the Pandaboard?<br>
<br>
<br>
At power on I get the following message:<br>
<br>
-<br>
Texas Instruments X-Loader 1.5.1 (Sep =A06 2011 - 13:37:48)<br>
Reading boot sector<br>
Loading u-boot.bin from mmc<br>
<br>
<br>
barebox 2011.10.0-00092-gc3d7a97 (Oct 12 2011 - 09:55:05)<br>
<br>
Board: Texas Instrument&#39;s Panda<br>
PandaBoard Revision: 003<br>
unable to handle NULL pointer dereference at address 0x00000000<br>
pc : [&lt;8f018044&gt;] =A0 =A0lr : [&lt;8f018020&gt;]<br>
sp : 8cffff38 =A0ip : 8d006158 =A0fp : 00100103<br>
r10: 00000000 =A0r9 : 12345678 =A0r8 : 00000001<br>
r7 : 8d006170 =A0r6 : 8f03d07c =A0r5 : 8d006170 =A0r4 : 8d0061e8<br>
r3 : 00000000 =A0r2 : 00000000 =A0r1 : 00000000 =A0r0 : 8d0061e8<br>
Flags: nZCv =A0IRQs off =A0FIQs off =A0Mode SVC_32<br>
[&lt;8f018044&gt;] (omap_mmc_probe+0x6c/0x94) from [&lt;8f005708&gt;]<br>
(platform_probe+0x10/0x14)<br>
[&lt;8f005708&gt;] (platform_probe+0x10/0x14) from [&lt;8f004f80&gt;] (matc=
h+0x54/0x98)<br>
[&lt;8f004f80&gt;] (match+0x54/0x98) from [&lt;8f005460&gt;] (register_devi=
ce+0xc0/0xf4)<br>
[&lt;8f005460&gt;] (register_device+0xc0/0xf4) from [&lt;8f005778&gt;]<br>
(add_generic_device_res+0x44/0x4c)<br>
[&lt;8f005778&gt;] (add_generic_device_res+0x44/0x4c) from [&lt;8f029a08&gt=
;]<br>
(panda_devices_init+0xf4/0x1e4)<br>
[&lt;8f029a08&gt;] (panda_devices_init+0xf4/0x1e4) from [&lt;8f004bc4&gt;]<=
br>
(start_barebox+0x1c/0x118)<br>
[&lt;8f004bc4&gt;] (start_barebox+0x1c/0x118) from [&lt;80e80084&gt;] (0x80=
e80084)<br>
-<br>
<br>
Is this error directly related to the current issues with Barebox on<br>
the Pandaboard?<br>
<font color=3D"#888888"><br>
--<br>
Regards<br>
Samuel<br>
</font></blockquote></div><br>

--001517447946ba3aca04af15f382--


--===============1129290728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1129290728==--
