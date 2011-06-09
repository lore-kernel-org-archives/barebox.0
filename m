Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vx0-f177.google.com ([209.85.220.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QUnzV-00075e-Mk
	for barebox@lists.infradead.org; Thu, 09 Jun 2011 22:46:18 +0000
Received: by vxd2 with SMTP id 2so2119152vxd.36
	for <barebox@lists.infradead.org>; Thu, 09 Jun 2011 15:46:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110609145028.GH17584@game.jcrosoft.org>
References: <20110609145028.GH17584@game.jcrosoft.org>
Date: Fri, 10 Jun 2011 00:46:13 +0200
Message-ID: <BANLkTikwVwFUzZFRUJCS72SxmNSjw-KRtw@mail.gmail.com>
From: Hubert Feurstein <h.feurstein@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: pull request complete support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

I've tested it in the sandbox and get an access violation when I type
"dev<TAB>". Here is the backtrace:

#0  0x0040dd1b in strlen (s=3D0x0) at lib/string.c:228
#1  0x00404652 in device_param_complete (begin=3D0 '\000',
dev=3D0xb763fa94, sl=3D0xbfffefe0, instr=3D0x0) at common/complete.c:115
#2  0x00404a24 in env_param_complete (sl=3D0xbfffefe0, instr=3D0x426160
"dev", eval=3D0) at common/complete.c:209
#3  0x00404c59 in complete (instr=3D0x426160 "dev", outstr=3D0xbffff064)
at common/complete.c:282
#4  0x00415687 in readline (prompt=3D0x426ac0 "barebox:/ ", buf=3D0x426160
"dev", len=3D1024) at lib/readline.c:209
#5  0x00401363 in get_user_input (i=3D0xbffff1c8) at common/hush.c:414
#6  0x004014c2 in file_get (i=3D0xbffff1c8) at common/hush.c:463
#7  0x00402e4f in parse_stream (dest=3D0xbffff154, ctx=3D0xbffff198,
input=3D0xbffff1c8, end_trigger=3D10) at common/hush.c:1278
#8  0x00402fd2 in parse_stream_outer (ctx=3D0xbffff198, inp=3D0xbffff1c8,
flag=3D2) at common/hush.c:1428
#9  0x00403770 in run_shell () at common/hush.c:1647
#10 0x00407d6a in start_barebox () at common/startup.c:167
#11 0x0041f082 in main ()

Best Regards
Hubert

2011/6/9 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>:
> Hi,
>
> =A0 =A0 =A0 =A0This patch series add the support of the complete for :
> =A0 =A0 =A0 =A0- var and device param (set and get)
> =A0 =A0 =A0 =A0- generic command complete framework
> =A0 =A0 =A0 =A0- devinfo
> =A0 =A0 =A0 =A0- help
> =A0 =A0 =A0 =A0- empty command complete
> =A0 =A0 =A0 =A0- eth interface
>
> =A0 =A0 =A0 =A0this will also include the move driver and bus code to dri=
vers/base
> =A0 =A0 =A0 =A0patch as this series depend on it
>
> =A0 =A0 =A0 =A0Please pull
> The following changes since commit 6e27bfb15e4e2446753fe9affcc3128772205c=
ec:
>
> =A0Merge branch 'next' (2011-06-06 11:29:45 +0200)
>
> are available in the git repository at:
>
> =A0git://uboot.jcrosoft.org/barebox.git complete
>
> Jean-Christophe PLAGNIOL-VILLARD (7):
> =A0 =A0 =A0move driver and bus code to drivers/base
> =A0 =A0 =A0complete: add var and device param complete support
> =A0 =A0 =A0complete: add generic command complete framework
> =A0 =A0 =A0complete: add device name complete support for devinfo
> =A0 =A0 =A0complete: add help complete support
> =A0 =A0 =A0complete: add empty complete support
> =A0 =A0 =A0complete: add eth interface complete support
>
> =A0arch/arm/cpu/cpuinfo.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A02 +
> =A0arch/arm/mach-imx/speed.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A02 +
> =A0arch/arm/mach-mxs/imx.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A02 +
> =A0commands/clear.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 =A02 +
> =A0commands/false.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 =A02 +
> =A0commands/help.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =
=A0 =A02 +
> =A0commands/login.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 =A02 +
> =A0commands/lsmod.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 =A02 +
> =A0commands/meminfo.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A02 +
> =A0commands/net.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A02 +
> =A0commands/passwd.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 =A02 +
> =A0commands/pwd.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A02 +
> =A0commands/reginfo.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A02 +
> =A0commands/reset.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 =A02 +
> =A0commands/true.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =
=A0 =A02 +
> =A0commands/usb.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A02 +
> =A0commands/version.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A02 +
> =A0common/complete.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
183 ++++++++++++++++++++++++++++--
> =A0drivers/Makefile =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 =A01 +
> =A0drivers/base/Makefile =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0=
2 +
> =A0{lib =3D> drivers/base}/driver.c =A0 =A0 =A0 =A0 =A0 | =A0 =A02 +
> =A0lib/bus.c =3D> drivers/base/platform_bus.c | =A0 =A00
> =A0drivers/usb/gadget/u_serial.c =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A02 +
> =A0include/command.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 =A08 ++
> =A0include/complete.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A07 +
> =A0lib/Makefile =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |=
 =A0 =A02 -
> =A0net/dhcp.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0 =A02 +
> =A0net/eth.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0 23 ++++
> =A028 files changed, 253 insertions(+), 13 deletions(-)
> =A0create mode 100644 drivers/base/Makefile
> =A0rename {lib =3D> drivers/base}/driver.c (99%)
> =A0rename lib/bus.c =3D> drivers/base/platform_bus.c (100%)
>
> Best Regards,
> J.
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
