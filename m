Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZKu6-00036B-4v
 for barebox@lists.infradead.org; Tue, 29 May 2012 11:47:59 +0000
Received: by yenr9 with SMTP id r9so2190071yen.36
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 04:47:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAONxwYN5yj9wVnmpXQAkgnwZ-zdDxETKMr4x6CFcUjiN_ih5Nw@mail.gmail.com>
References: <CAONxwYP5Eu59tpndafUpJrbHNMgZTF_3JaJ2pr5i8ptDugdpBQ@mail.gmail.com>
 <20120529101450.GS30400@pengutronix.de>
 <CAONxwYN5yj9wVnmpXQAkgnwZ-zdDxETKMr4x6CFcUjiN_ih5Nw@mail.gmail.com>
From: Roberto Nibali <rnibali@gmail.com>
Date: Tue, 29 May 2012 13:47:36 +0200
Message-ID: <CAONxwYPuBCkUE2M6MgpgG7sJQjsYJ8WYhgfhaGUju4f7xcL89g@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0746746708851299886=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [BUG: barebox-git] failure at common/block.c:248/block_put()!
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============0746746708851299886==
Content-Type: multipart/alternative; boundary=14dae9340cffd51ed004c12b67ff

--14dae9340cffd51ed004c12b67ff
Content-Type: text/plain; charset=ISO-8859-1

G'day


>> sid1-noah:/ mount /dev/disk0.0 fat /mnt
> block_cache: blk->ops->read returned 0
> sid1-noah:/ cp /mnt/coblock_cache: blk->ops->read returned 0
> nsole_image.jffs2 /mnt/console_image.jffs2-backup
> block_cache: blk->ops->read returned 0
> block_cache: blk->ops->read returned 0
> block_cache: blk->ops->read returned 0
> block_cache: blk->ops->read returned 0
> block_cache: blk->ops->read returned 0
> block_cache: blk->ops->read returned 0
>  block_cache: blk->ops->read returned -110
>

Since I have seen this in the kernel as well, I suspect there is something
wrong with my eSDHC interface or we're missing some mx25 errata quirks that
are present in the kernel. So I went ahead and enabled PIO mode and also
DEBUG in drivers/mci/imx-esdhc.c, which got me this:

barebox 2012.05.0-00200-g23273ec-dirty #7 Tue May 29 13:35:43 CEST 2012


Board: SID1 NOAH
registered netconsole as cs1
noah_read_ccm_regs: CCM CRDR = 00000000
noah_read_ccm_regs: CCM RCSR = 01020820
noah_read_ccm_regs: Booting from WEIM: NOR
imx-esdhc@mci0: registered as mci0
imx-esdhc@imx-esdhc0: set clock: wanted: 400000 got: 377840
imx-esdhc@imx-esdhc0: pre_div: 8 div: 10
imx-esdhc@imx-esdhc0: set clock: wanted: 200000 got: 188920
imx-esdhc@imx-esdhc0: pre_div: 16 div: 10
imx-esdhc@imx-esdhc0: set clock: wanted: 200000 got: 188920
imx-esdhc@imx-esdhc0: pre_div: 16 div: 10
imx-esdhc@imx-esdhc0: set clock: wanted: 200000 got: 188920
imx-esdhc@imx-esdhc0: pre_div: 16 div: 10
imx-esdhc@imx-esdhc0: set clock: wanted: 50000000 got: 33250000
imx-esdhc@imx-esdhc0: pre_div: 0 div: 1
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

Hit any key to stop autoboot:  2

type update_kernel nor [<imagename>] to update kernel into flash
type update_root nor [<imagename>] to update rootfs into flash

sid1-noah:/ mkdir /nmnt
sid1-noah:/ mkdir /mnt
sid1-noah:/ mount /dev/disk0.0 fat /mnt
block_cache: blk->ops->read returned 0
sid1-noah:/ cp /mnt/block_cache: blk->ops->read returned 0

/mnt/barebox-mmc.bin
/mnt/barebox-nor.bin
/mnt/console_image.jffs2
/mnt/console_image.jffs2-2
/mnt/console_image.jffs2-backup
/mnt/kernel-sid1-noah.tgz
/mnt/u-boot.bin
/mnt/uImage
/mnt/uImage-2.6.39.3-hotfix-2012-04-noah-stable.bin
/mnt/uImage-linux-3.3.4-noah-stable.bin
/mnt/uimage.bin
sid1-noah:/ cp /mnt/console_image.jffs2 /mnt/console_image.jffs2-backup
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0

Data Write Failed in PIO Mode.imx-esdhc@imx-esdhc0: timeout 2
imx-esdhc@imx-esdhc0: timeout 1
imx-esdhc@imx-esdhc0: timeout 1
imx-esdhc@imx-esdhc0: timeout 1
block_cache: blk->ops->read returned -110
BUG: failure at common/block.c:249/block_put()!
BUG!
[<83f348f0>] (unwind_backtrace+0x0/0x90) from [<83f1bfe0>] (panic+0x28/0x3c)
[<83f1bfe0>] (panic+0x28/0x3c) from [<83f05900>] (block_put+0x48/0x8c)
[<83f05900>] (block_put+0x48/0x8c) from [<83f059ec>]
(block_write+0xa8/0x120)
[<83f059ec>] (block_write+0xa8/0x120) from [<83f2d3c4>]
(cdev_write+0x30/0x34)
[<83f2d3c4>] (cdev_write+0x30/0x34) from [<83f308bc>] (disk_write+0x24/0x30)
[<83f308bc>] (disk_write+0x24/0x30) from [<83f2fa08>] (f_write+0x160/0x27c)
[<83f2fa08>] (f_write+0x160/0x27c) from [<83f3067c>] (fat_write+0x18/0x30)
[<83f3067c>] (fat_write+0x18/0x30) from [<83f3116c>] (write+0xac/0xd0)
[<83f3116c>] (write+0xac/0xd0) from [<83f217b0>] (copy_file+0xec/0x17c)
[<83f217b0>] (copy_file+0xec/0x17c) from [<83f1912c>] (do_cp+0x124/0x158)
[<83f1912c>] (do_cp+0x124/0x158) from [<83f07bb0>]
(execute_command+0x38/0x7c)
[<83f07bb0>] (execute_command+0x38/0x7c) from [<83f03bc8>]
(run_list_real+0x8a0/0x998)
[<83f03bc8>] (run_list_real+0x8a0/0x998) from [<83f03e04>]
(parse_stream_outer+0x144/0x240)
[<83f03e04>] (parse_stream_outer+0x144/0x240) from [<83f041fc>]
(run_shell+0x3c/0x5c)
[<83f041fc>] (run_shell+0x3c/0x5c) from [<83f09640>]
(start_barebox+0xd4/0x110)
[<83f09640>] (start_barebox+0xd4/0x110) from [<8010206c>] (0x8010206c)

I am pretty sure we need to switch to 1BIT transfer and/or using the
SDHCI_BROKEN_TIMEOUT_VAL
quirk. I'll try to find out if I can add this functionality to barebox,
unless you believe there's something else which causes this behaviour.

I'll keep investigating ...

Cheers
Roberto

--14dae9340cffd51ed004c12b67ff
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

G&#39;day<div><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div class=3D"gmail_quote"><div class=3D"im"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">

<div><div><br></div></div></blockquote></div><div><div class=3D"im"><div>si=
d1-noah:/ mount /dev/disk0.0 fat /mnt</div></div><div>block_cache: blk-&gt;=
ops-&gt;read returned 0</div><div>
sid1-noah:/ cp /mnt/coblock_cache: blk-&gt;ops-&gt;read returned 0</div><di=
v>nsole_image.jffs2 /mnt/console_image.jffs2-backup</div><div>block_cache: =
blk-&gt;ops-&gt;read returned 0</div><div>block_cache: blk-&gt;ops-&gt;read=
 returned 0</div>


<div>block_cache: blk-&gt;ops-&gt;read returned 0</div><div>block_cache: bl=
k-&gt;ops-&gt;read returned 0</div><div>block_cache: blk-&gt;ops-&gt;read r=
eturned 0</div><div>block_cache: blk-&gt;ops-&gt;read returned 0</div>

<div>
block_cache: blk-&gt;ops-&gt;read returned -110</div></div></div></blockquo=
te><div><br></div><div>Since I have seen this in the kernel as well, I susp=
ect there is something wrong with my eSDHC interface or we&#39;re missing s=
ome mx25 errata quirks that are present in the kernel. So I went ahead and =
enabled PIO mode and also DEBUG in drivers/mci/imx-esdhc.c, which got me th=
is:</div>

<div><br></div><div><div>barebox 2012.05.0-00200-g23273ec-dirty #7 Tue May =
29 13:35:43 CEST 2012</div><div><br></div><div><br></div><div>Board: SID1 N=
OAH</div><div>registered netconsole as cs1</div><div>noah_read_ccm_regs: CC=
M CRDR =3D 00000000</div>

<div>noah_read_ccm_regs: CCM RCSR =3D 01020820</div><div>noah_read_ccm_regs=
: Booting from WEIM: NOR</div><div>imx-esdhc@mci0: registered as mci0</div>=
<div>imx-esdhc@imx-esdhc0: set clock: wanted: 400000 got: 377840</div><div>

imx-esdhc@imx-esdhc0: pre_div: 8 div: 10</div><div>imx-esdhc@imx-esdhc0: se=
t clock: wanted: 200000 got: 188920</div><div>imx-esdhc@imx-esdhc0: pre_div=
: 16 div: 10</div><div>imx-esdhc@imx-esdhc0: set clock: wanted: 200000 got:=
 188920</div>

<div>imx-esdhc@imx-esdhc0: pre_div: 16 div: 10</div><div>imx-esdhc@imx-esdh=
c0: set clock: wanted: 200000 got: 188920</div><div>imx-esdhc@imx-esdhc0: p=
re_div: 16 div: 10</div><div>imx-esdhc@imx-esdhc0: set clock: wanted: 50000=
000 got: 33250000</div>

<div>imx-esdhc@imx-esdhc0: pre_div: 0 div: 1</div><div>mci@mci0: registered=
 disk0</div><div>imx25_devices_init: Adding NOR flash device</div><div>cfi_=
flash@cfi_flash0: cfi flash (id=3D01000000 vend=3D000002 manu=3D000001 devi=
d=3D00007E extid=3D002301) at a0000000, size 64MB</div>

<div>imx25_devices_init: Adding initial NOR flash partitions</div><div>ehci=
@ehci0: USB EHCI 1.00</div><div>Malloc space: 0x83b00000 -&gt; 0x83efffff (=
size =A04 MB)</div><div>Stack space : 0x83af8000 -&gt; 0x83b00000 (size 32 =
kB)</div>

<div>envfs: wrong magic on /dev/env0</div><div>no valid environment found o=
n /dev/env0. Using default environment</div><div>running /env/bin/init...</=
div><div><br></div><div>Hit any key to stop autoboot: =A02</div><div><br>

</div><div>type update_kernel nor [&lt;imagename&gt;] to update kernel into=
 flash</div><div>type update_root nor [&lt;imagename&gt;] to update rootfs =
into flash</div><div><br></div><div>sid1-noah:/ mkdir /nmnt</div><div>
sid1-noah:/ mkdir /mnt</div>
<div>sid1-noah:/ mount /dev/disk0.0 fat /mnt</div><div>block_cache: blk-&gt=
;ops-&gt;read returned 0</div><div>sid1-noah:/ cp /mnt/block_cache: blk-&gt=
;ops-&gt;read returned 0</div><div><br></div><div>/mnt/barebox-mmc.bin</div=
>

<div>/mnt/barebox-nor.bin</div><div>/mnt/console_image.jffs2</div><div>/mnt=
/console_image.jffs2-2</div><div>/mnt/console_image.jffs2-backup</div><div>=
/mnt/kernel-sid1-noah.tgz</div><div>/mnt/u-boot.bin</div><div>/mnt/uImage</=
div>

<div>/mnt/uImage-2.6.39.3-hotfix-2012-04-noah-stable.bin</div><div>/mnt/uIm=
age-linux-3.3.4-noah-stable.bin</div><div>/mnt/uimage.bin</div><div>sid1-no=
ah:/ cp /mnt/console_image.jffs2 /mnt/console_image.jffs2-backup</div>
<div>
block_cache: blk-&gt;ops-&gt;read returned 0</div><div>block_cache: blk-&gt=
;ops-&gt;read returned 0</div><div>block_cache: blk-&gt;ops-&gt;read return=
ed 0</div><div>block_cache: blk-&gt;ops-&gt;read returned 0</div><div>
block_cache: blk-&gt;ops-&gt;read returned 0</div>
<div>block_cache: blk-&gt;ops-&gt;read returned 0</div><div><br></div><div>=
Data Write Failed in PIO Mode.imx-esdhc@imx-esdhc0: timeout 2</div><div>imx=
-esdhc@imx-esdhc0: timeout 1</div><div>imx-esdhc@imx-esdhc0: timeout 1</div=
>

<div>imx-esdhc@imx-esdhc0: timeout 1</div><div>block_cache: blk-&gt;ops-&gt=
;read returned -110</div><div>BUG: failure at common/block.c:249/block_put(=
)!</div><div>BUG!</div><div>[&lt;83f348f0&gt;] (unwind_backtrace+0x0/0x90) =
from [&lt;83f1bfe0&gt;] (panic+0x28/0x3c)</div>

<div>[&lt;83f1bfe0&gt;] (panic+0x28/0x3c) from [&lt;83f05900&gt;] (block_pu=
t+0x48/0x8c)</div><div>[&lt;83f05900&gt;] (block_put+0x48/0x8c) from [&lt;8=
3f059ec&gt;] (block_write+0xa8/0x120)</div><div>[&lt;83f059ec&gt;] (block_w=
rite+0xa8/0x120) from [&lt;83f2d3c4&gt;] (cdev_write+0x30/0x34)</div>

<div>[&lt;83f2d3c4&gt;] (cdev_write+0x30/0x34) from [&lt;83f308bc&gt;] (dis=
k_write+0x24/0x30)</div><div>[&lt;83f308bc&gt;] (disk_write+0x24/0x30) from=
 [&lt;83f2fa08&gt;] (f_write+0x160/0x27c)</div><div>[&lt;83f2fa08&gt;] (f_w=
rite+0x160/0x27c) from [&lt;83f3067c&gt;] (fat_write+0x18/0x30)</div>

<div>[&lt;83f3067c&gt;] (fat_write+0x18/0x30) from [&lt;83f3116c&gt;] (writ=
e+0xac/0xd0)</div><div>[&lt;83f3116c&gt;] (write+0xac/0xd0) from [&lt;83f21=
7b0&gt;] (copy_file+0xec/0x17c)</div><div>[&lt;83f217b0&gt;] (copy_file+0xe=
c/0x17c) from [&lt;83f1912c&gt;] (do_cp+0x124/0x158)</div>

<div>[&lt;83f1912c&gt;] (do_cp+0x124/0x158) from [&lt;83f07bb0&gt;] (execut=
e_command+0x38/0x7c)</div><div>[&lt;83f07bb0&gt;] (execute_command+0x38/0x7=
c) from [&lt;83f03bc8&gt;] (run_list_real+0x8a0/0x998)</div><div>[&lt;83f03=
bc8&gt;] (run_list_real+0x8a0/0x998) from [&lt;83f03e04&gt;] (parse_stream_=
outer+0x144/0x240)</div>

<div>[&lt;83f03e04&gt;] (parse_stream_outer+0x144/0x240) from [&lt;83f041fc=
&gt;] (run_shell+0x3c/0x5c)</div><div>[&lt;83f041fc&gt;] (run_shell+0x3c/0x=
5c) from [&lt;83f09640&gt;] (start_barebox+0xd4/0x110)</div><div>[&lt;83f09=
640&gt;] (start_barebox+0xd4/0x110) from [&lt;8010206c&gt;] (0x8010206c)</d=
iv>

</div><div>=A0</div><div>I am pretty sure we need to switch to 1BIT transfe=
r and/or using the=A0<span style=3D"background-color:rgb(255,255,255);font-=
family:Verdana,Arial,Helvetica">SDHCI_BROKEN_TIMEOUT_VAL quirk. I&#39;ll tr=
y to find out if I can add this functionality to barebox, unless you believ=
e there&#39;s something else which causes this behaviour.</span></div>

<div><span style=3D"background-color:rgb(255,255,255);font-family:Verdana,A=
rial,Helvetica"><br></span></div><div><span style=3D"background-color:rgb(2=
55,255,255);font-family:Verdana,Arial,Helvetica">I&#39;ll keep investigatin=
g ...</span></div>

<div><span style=3D"background-color:rgb(255,255,255);font-family:Verdana,A=
rial,Helvetica"><br></span></div><div><span style=3D"background-color:rgb(2=
55,255,255);font-family:Verdana,Arial,Helvetica">Cheers</span></div><div><s=
pan style=3D"background-color:rgb(255,255,255);font-family:Verdana,Arial,He=
lvetica">Roberto</span></div>

</div></div>

--14dae9340cffd51ed004c12b67ff--


--===============0746746708851299886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0746746708851299886==--
