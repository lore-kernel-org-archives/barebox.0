Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZJ3h-0004uu-SA
 for barebox@lists.infradead.org; Tue, 29 May 2012 09:49:48 +0000
Received: by yhjj52 with SMTP id j52so2427561yhj.36
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 02:49:44 -0700 (PDT)
MIME-Version: 1.0
From: Roberto Nibali <rnibali@gmail.com>
Date: Tue, 29 May 2012 11:49:24 +0200
Message-ID: <CAONxwYP5Eu59tpndafUpJrbHNMgZTF_3JaJ2pr5i8ptDugdpBQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4907156826989261408=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [BUG: barebox-git] failure at common/block.c:248/block_put()!
To: barebox@lists.infradead.org

--===============4907156826989261408==
Content-Type: multipart/alternative; boundary=14dae934082719da5a04c129c1bf

--14dae934082719da5a04c129c1bf
Content-Type: text/plain; charset=ISO-8859-1

Hi

Barebox barfs if I try to copy a file inside a mounted MMC fat partition.

Steps to reproduce:

1.) Load barebox (configured as internal boot MMC) as a second stage boot
loader from uboot.
2.) Mount MMC fat partition
3.) Try to copy file to the same partition

This results in this nice BUG():

Board: SID1 NOAH
registered netconsole as cs1
noah_read_ccm_regs: CCM CRDR = 00000000
noah_read_ccm_regs: CCM RCSR = 01020820
noah_read_ccm_regs: Booting from WEIM: NOR
imx-esdhc@mci0: registered as mci0
mci@mci0: registered disk0
imx25_devices_init: Adding NOR flash device
cfi_flash@cfi_flash0: cfi flash (id=01000000 vend=000002 manu=000001
devid=00007E extid=002301) at a0000000, size 64MB
imx25_devices_init: Adding initial NOR flash partitions
ehci@ehci0: USB EHCI 1.00
Malloc space: 0x83b00000 -> 0x83efffff (size  4 MB)
Stack space : 0x83af8000 -> 0x83b00000 (size 32 kB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Hit any key to stop autoboot:  5

type update_kernel nor [<imagename>] to update kernel into flash
type update_root nor [<imagename>] to update rootfs into flash

sid1-noah:/ mkdir /mnt
sid1-noah:/ mount /dev/disk0.0 fat /mnt
sid1-noah:/ time cp /mnt/console_image.jffs2 /mnt/console_image.jffs2-backup
BUG: failure at common/block.c:248/block_put()!
BUG!
[<83f347b4>] (unwind_backtrace+0x0/0x8c) from [<83f1bea4>] (panic+0x28/0x3c)
[<83f1bea4>] (panic+0x28/0x3c) from [<83f058a0>] (block_put+0x48/0x8c)
[<83f058a0>] (block_put+0x48/0x8c) from [<83f0598c>]
(block_write+0xa8/0x120)
[<83f0598c>] (block_write+0xa8/0x120) from [<83f2d288>]
(cdev_write+0x30/0x34)
[<83f2d288>] (cdev_write+0x30/0x34) from [<83f30780>] (disk_write+0x24/0x30)
[<83f30780>] (disk_write+0x24/0x30) from [<83f2f8cc>] (f_write+0x160/0x27c)
[<83f2f8cc>] (f_write+0x160/0x27c) from [<83f30540>] (fat_write+0x18/0x30)
[<83f30540>] (fat_write+0x18/0x30) from [<83f31030>] (write+0xac/0xd0)
[<83f31030>] (write+0xac/0xd0) from [<83f21674>] (copy_file+0xec/0x17c)
[<83f21674>] (copy_file+0xec/0x17c) from [<83f18ff0>] (do_cp+0x124/0x158)
[<83f18ff0>] (do_cp+0x124/0x158) from [<83f07b50>]
(execute_command+0x38/0x7c)
[<83f07b50>] (execute_command+0x38/0x7c) from [<83f03b84>]
(run_list_real+0x8a0/0x998)
[<83f03b84>] (run_list_real+0x8a0/0x998) from [<83f03dc0>]
(parse_stream_outer+0x144/0x240)
[<83f03dc0>] (parse_stream_outer+0x144/0x240) from [<83f0327c>]
(parse_string_outer+0x9c/0x104)
[<83f0327c>] (parse_string_outer+0x9c/0x104) from [<83f04164>]
(run_command+0x18/0x30)
[<83f04164>] (run_command+0x18/0x30) from [<83f1aaa4>] (do_time+0x8c/0xf0)
[<83f1aaa4>] (do_time+0x8c/0xf0) from [<83f07b50>]
(execute_command+0x38/0x7c)
[<83f07b50>] (execute_command+0x38/0x7c) from [<83f03b84>]
(run_list_real+0x8a0/0x998)
[<83f03b84>] (run_list_real+0x8a0/0x998) from [<83f03dc0>]
(parse_stream_outer+0x144/0x240)
[<83f03dc0>] (parse_stream_outer+0x144/0x240) from [<83f041b8>]
(run_shell+0x3c/0x5c)
[<83f041b8>] (run_shell+0x3c/0x5c) from [<83f095e0>]
(start_barebox+0xd4/0x110)
[<83f095e0>] (start_barebox+0xd4/0x110) from [<8010206c>] (0x8010206c)

I reckon it might be something I shouldn't be doing, however I thought I
still report it here.

Cheers
Roberto

--14dae934082719da5a04c129c1bf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<div><br></div><div>Barebox barfs if I try to copy a file inside a mounte=
d MMC fat partition.</div><div><br></div><div>Steps to reproduce:=A0</div><=
div><br></div><div>1.) Load barebox (configured as internal boot MMC) as a =
second stage boot loader from uboot.</div>

<div>2.) Mount MMC fat partition</div><div>3.) Try to copy file to the same=
 partition</div><div><br></div><div>This results in this nice BUG():</div><=
div><br></div><div><div>Board: SID1 NOAH</div><div>registered netconsole as=
 cs1</div>

<div>noah_read_ccm_regs: CCM CRDR =3D 00000000</div><div>noah_read_ccm_regs=
: CCM RCSR =3D 01020820</div><div>noah_read_ccm_regs: Booting from WEIM: NO=
R</div><div>imx-esdhc@mci0: registered as mci0</div><div>mci@mci0: register=
ed disk0</div>

<div>imx25_devices_init: Adding NOR flash device</div><div>cfi_flash@cfi_fl=
ash0: cfi flash (id=3D01000000 vend=3D000002 manu=3D000001 devid=3D00007E e=
xtid=3D002301) at a0000000, size 64MB</div><div>imx25_devices_init: Adding =
initial NOR flash partitions</div>

<div>ehci@ehci0: USB EHCI 1.00</div><div>Malloc space: 0x83b00000 -&gt; 0x8=
3efffff (size =A04 MB)</div><div>Stack space : 0x83af8000 -&gt; 0x83b00000 =
(size 32 kB)</div><div>envfs: wrong magic on /dev/env0</div><div>no valid e=
nvironment found on /dev/env0. Using default environment</div>

<div>running /env/bin/init...</div><div><br></div><div>Hit any key to stop =
autoboot: =A05</div><div><br></div><div>type update_kernel nor [&lt;imagena=
me&gt;] to update kernel into flash</div><div>type update_root nor [&lt;ima=
gename&gt;] to update rootfs into flash</div>

<div><br></div><div>sid1-noah:/ mkdir /mnt</div><div>sid1-noah:/ mount /dev=
/disk0.0 fat /mnt</div><div>sid1-noah:/ time cp /mnt/console_image.jffs2 /m=
nt/console_image.jffs2-backup</div><div>BUG: failure at common/block.c:248/=
block_put()!</div>

<div>BUG!</div><div>[&lt;83f347b4&gt;] (unwind_backtrace+0x0/0x8c) from [&l=
t;83f1bea4&gt;] (panic+0x28/0x3c)</div><div>[&lt;83f1bea4&gt;] (panic+0x28/=
0x3c) from [&lt;83f058a0&gt;] (block_put+0x48/0x8c)</div><div>[&lt;83f058a0=
&gt;] (block_put+0x48/0x8c) from [&lt;83f0598c&gt;] (block_write+0xa8/0x120=
)</div>

<div>[&lt;83f0598c&gt;] (block_write+0xa8/0x120) from [&lt;83f2d288&gt;] (c=
dev_write+0x30/0x34)</div><div>[&lt;83f2d288&gt;] (cdev_write+0x30/0x34) fr=
om [&lt;83f30780&gt;] (disk_write+0x24/0x30)</div><div>[&lt;83f30780&gt;] (=
disk_write+0x24/0x30) from [&lt;83f2f8cc&gt;] (f_write+0x160/0x27c)</div>

<div>[&lt;83f2f8cc&gt;] (f_write+0x160/0x27c) from [&lt;83f30540&gt;] (fat_=
write+0x18/0x30)</div><div>[&lt;83f30540&gt;] (fat_write+0x18/0x30) from [&=
lt;83f31030&gt;] (write+0xac/0xd0)</div><div>[&lt;83f31030&gt;] (write+0xac=
/0xd0) from [&lt;83f21674&gt;] (copy_file+0xec/0x17c)</div>

<div>[&lt;83f21674&gt;] (copy_file+0xec/0x17c) from [&lt;83f18ff0&gt;] (do_=
cp+0x124/0x158)</div><div>[&lt;83f18ff0&gt;] (do_cp+0x124/0x158) from [&lt;=
83f07b50&gt;] (execute_command+0x38/0x7c)</div><div>[&lt;83f07b50&gt;] (exe=
cute_command+0x38/0x7c) from [&lt;83f03b84&gt;] (run_list_real+0x8a0/0x998)=
</div>

<div>[&lt;83f03b84&gt;] (run_list_real+0x8a0/0x998) from [&lt;83f03dc0&gt;]=
 (parse_stream_outer+0x144/0x240)</div><div>[&lt;83f03dc0&gt;] (parse_strea=
m_outer+0x144/0x240) from [&lt;83f0327c&gt;] (parse_string_outer+0x9c/0x104=
)</div>

<div>[&lt;83f0327c&gt;] (parse_string_outer+0x9c/0x104) from [&lt;83f04164&=
gt;] (run_command+0x18/0x30)</div><div>[&lt;83f04164&gt;] (run_command+0x18=
/0x30) from [&lt;83f1aaa4&gt;] (do_time+0x8c/0xf0)</div><div>[&lt;83f1aaa4&=
gt;] (do_time+0x8c/0xf0) from [&lt;83f07b50&gt;] (execute_command+0x38/0x7c=
)</div>

<div>[&lt;83f07b50&gt;] (execute_command+0x38/0x7c) from [&lt;83f03b84&gt;]=
 (run_list_real+0x8a0/0x998)</div><div>[&lt;83f03b84&gt;] (run_list_real+0x=
8a0/0x998) from [&lt;83f03dc0&gt;] (parse_stream_outer+0x144/0x240)</div>

<div>[&lt;83f03dc0&gt;] (parse_stream_outer+0x144/0x240) from [&lt;83f041b8=
&gt;] (run_shell+0x3c/0x5c)</div><div>[&lt;83f041b8&gt;] (run_shell+0x3c/0x=
5c) from [&lt;83f095e0&gt;] (start_barebox+0xd4/0x110)</div><div>[&lt;83f09=
5e0&gt;] (start_barebox+0xd4/0x110) from [&lt;8010206c&gt;] (0x8010206c)</d=
iv>

</div><div><br></div><div>I reckon it might be something I shouldn&#39;t be=
 doing, however I thought I still report it here.</div><div><br></div><div>=
Cheers</div><div>Roberto</div>

--14dae934082719da5a04c129c1bf--


--===============4907156826989261408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4907156826989261408==--
