Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZJca-0004AX-A5
 for barebox@lists.infradead.org; Tue, 29 May 2012 10:25:49 +0000
Received: by yhjj52 with SMTP id j52so2446922yhj.36
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 03:25:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120529101450.GS30400@pengutronix.de>
References: <CAONxwYP5Eu59tpndafUpJrbHNMgZTF_3JaJ2pr5i8ptDugdpBQ@mail.gmail.com>
 <20120529101450.GS30400@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Tue, 29 May 2012 12:25:26 +0200
Message-ID: <CAONxwYN5yj9wVnmpXQAkgnwZ-zdDxETKMr4x6CFcUjiN_ih5Nw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5765075778429067927=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [BUG: barebox-git] failure at common/block.c:248/block_put()!
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============5765075778429067927==
Content-Type: multipart/alternative; boundary=bcaec517cb4efb1ff804c12a412c

--bcaec517cb4efb1ff804c12a412c
Content-Type: text/plain; charset=ISO-8859-1

Hi

> noah_read_ccm_regs: Booting from WEIM: NOR
> > imx-esdhc@mci0: registered as mci0
> > mci@mci0: registered disk0
> > imx25_devices_init: Adding NOR flash device
> > cfi_flash@cfi_flash0: cfi flash (id=01000000 vend=000002 manu=000001
> > devid=00007E extid=002301) at a0000000, size 64MB
>

BTW, see this beautiful NOR support when booting as a second stage boot
loader? :)


> > sid1-noah:/ mkdir /mnt
> > sid1-noah:/ mount /dev/disk0.0 fat /mnt
> > sid1-noah:/ time cp /mnt/console_image.jffs2
> /mnt/console_image.jffs2-backup
> > BUG: failure at common/block.c:248/block_put()!
> > BUG!
>
> to BUG here seems a bit harsh. block_put calls block_get and then BUGs
> when block_get fails. Presumely block_cache fails here. Can you add a
> printf int block_cache after blk->ops->read and print the error value?
>

sid1-noah:/ mount /dev/disk0.0 fat /mnt
block_cache: blk->ops->read returned 0
sid1-noah:/ cp /mnt/coblock_cache: blk->ops->read returned 0
nsole_image.jffs2 /mnt/console_image.jffs2-backup
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned 0
block_cache: blk->ops->read returned -110
BUG: failure at common/block.c:249/block_put()!
BUG!
[<83f34814>] (unwind_backtrace+0x0/0x8c) from [<83f1bf04>] (panic+0x28/0x3c)
[<83f1bf04>] (panic+0x28/0x3c) from [<83f05900>] (block_put+0x48/0x8c)
[<83f05900>] (block_put+0x48/0x8c) from [<83f059ec>]
(block_write+0xa8/0x120)
[<83f059ec>] (block_write+0xa8/0x120) from [<83f2d2e8>]
(cdev_write+0x30/0x34)
[<83f2d2e8>] (cdev_write+0x30/0x34) from [<83f307e0>] (disk_write+0x24/0x30)
[<83f307e0>] (disk_write+0x24/0x30) from [<83f2f92c>] (f_write+0x160/0x27c)
[<83f2f92c>] (f_write+0x160/0x27c) from [<83f305a0>] (fat_write+0x18/0x30)
[<83f305a0>] (fat_write+0x18/0x30) from [<83f31090>] (write+0xac/0xd0)
[<83f31090>] (write+0xac/0xd0) from [<83f216d4>] (copy_file+0xec/0x17c)
[<83f216d4>] (copy_file+0xec/0x17c) from [<83f19050>] (do_cp+0x124/0x158)
[<83f19050>] (do_cp+0x124/0x158) from [<83f07bb0>]
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

Those dreaded -110.


> I just saw that there's room for optimization. In block_put we call
> block_get which reads from the device, just to overwrite the data
> afterwards.


Yep, good point.

Let me know if I you need more printf()'s sprinkled over your code.

Regards
Roberto

--bcaec517cb4efb1ff804c12a412c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<br><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div cl=
ass=3D"HOEnZb"><div class=3D"h5">&gt; noah_read_ccm_regs: Booting from WEIM=
: NOR<br>


&gt; imx-esdhc@mci0: registered as mci0<br>
&gt; mci@mci0: registered disk0<br>
&gt; imx25_devices_init: Adding NOR flash device<br>
&gt; cfi_flash@cfi_flash0: cfi flash (id=3D01000000 vend=3D000002 manu=3D00=
0001<br>
&gt; devid=3D00007E extid=3D002301) at a0000000, size 64MB<br>
</div></div></blockquote><div><br></div><div>BTW, see this beautiful NOR su=
pport when booting as a second stage boot loader? :)</div><div>=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">

<div class=3D"HOEnZb"><div class=3D"h5">&gt; sid1-noah:/ mkdir /mnt<br>
&gt; sid1-noah:/ mount /dev/disk0.0 fat /mnt<br>
&gt; sid1-noah:/ time cp /mnt/console_image.jffs2 /mnt/console_image.jffs2-=
backup<br>
&gt; BUG: failure at common/block.c:248/block_put()!<br>
&gt; BUG!<br>
<br>
</div></div>to BUG here seems a bit harsh. block_put calls block_get and th=
en BUGs<br>
when block_get fails. Presumely block_cache fails here. Can you add a<br>
printf int block_cache after blk-&gt;ops-&gt;read and print the error value=
?<br></blockquote><div><br></div><div><div>sid1-noah:/ mount /dev/disk0.0 f=
at /mnt</div><div>block_cache: blk-&gt;ops-&gt;read returned 0</div><div>

sid1-noah:/ cp /mnt/coblock_cache: blk-&gt;ops-&gt;read returned 0</div><di=
v>nsole_image.jffs2 /mnt/console_image.jffs2-backup</div><div>block_cache: =
blk-&gt;ops-&gt;read returned 0</div><div>block_cache: blk-&gt;ops-&gt;read=
 returned 0</div>

<div>block_cache: blk-&gt;ops-&gt;read returned 0</div><div>block_cache: bl=
k-&gt;ops-&gt;read returned 0</div><div>block_cache: blk-&gt;ops-&gt;read r=
eturned 0</div><div>block_cache: blk-&gt;ops-&gt;read returned 0</div>
<div>
block_cache: blk-&gt;ops-&gt;read returned -110</div><div>BUG: failure at c=
ommon/block.c:249/block_put()!</div><div>BUG!</div><div>[&lt;83f34814&gt;] =
(unwind_backtrace+0x0/0x8c) from [&lt;83f1bf04&gt;] (panic+0x28/0x3c)</div>

<div>[&lt;83f1bf04&gt;] (panic+0x28/0x3c) from [&lt;83f05900&gt;] (block_pu=
t+0x48/0x8c)</div><div>[&lt;83f05900&gt;] (block_put+0x48/0x8c) from [&lt;8=
3f059ec&gt;] (block_write+0xa8/0x120)</div><div>[&lt;83f059ec&gt;] (block_w=
rite+0xa8/0x120) from [&lt;83f2d2e8&gt;] (cdev_write+0x30/0x34)</div>

<div>[&lt;83f2d2e8&gt;] (cdev_write+0x30/0x34) from [&lt;83f307e0&gt;] (dis=
k_write+0x24/0x30)</div><div>[&lt;83f307e0&gt;] (disk_write+0x24/0x30) from=
 [&lt;83f2f92c&gt;] (f_write+0x160/0x27c)</div><div>[&lt;83f2f92c&gt;] (f_w=
rite+0x160/0x27c) from [&lt;83f305a0&gt;] (fat_write+0x18/0x30)</div>

<div>[&lt;83f305a0&gt;] (fat_write+0x18/0x30) from [&lt;83f31090&gt;] (writ=
e+0xac/0xd0)</div><div>[&lt;83f31090&gt;] (write+0xac/0xd0) from [&lt;83f21=
6d4&gt;] (copy_file+0xec/0x17c)</div><div>[&lt;83f216d4&gt;] (copy_file+0xe=
c/0x17c) from [&lt;83f19050&gt;] (do_cp+0x124/0x158)</div>

<div>[&lt;83f19050&gt;] (do_cp+0x124/0x158) from [&lt;83f07bb0&gt;] (execut=
e_command+0x38/0x7c)</div><div>[&lt;83f07bb0&gt;] (execute_command+0x38/0x7=
c) from [&lt;83f03bc8&gt;] (run_list_real+0x8a0/0x998)</div><div>[&lt;83f03=
bc8&gt;] (run_list_real+0x8a0/0x998) from [&lt;83f03e04&gt;] (parse_stream_=
outer+0x144/0x240)</div>

<div>[&lt;83f03e04&gt;] (parse_stream_outer+0x144/0x240) from [&lt;83f041fc=
&gt;] (run_shell+0x3c/0x5c)</div><div>[&lt;83f041fc&gt;] (run_shell+0x3c/0x=
5c) from [&lt;83f09640&gt;] (start_barebox+0xd4/0x110)</div><div>[&lt;83f09=
640&gt;] (start_barebox+0xd4/0x110) from [&lt;8010206c&gt;] (0x8010206c)</d=
iv>

</div><div><br></div><div>Those dreaded -110.</div><div>=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">
I just saw that there&#39;s room for optimization. In block_put we call<br>
block_get which reads from the device, just to overwrite the data<br>
afterwards.</blockquote><div><br></div><div>Yep, good point.</div><div><br>=
</div><div>Let me know if I you need more printf()&#39;s sprinkled over you=
r code.</div><div><br></div><div>Regards</div><div>Roberto</div></div>


--bcaec517cb4efb1ff804c12a412c--


--===============5765075778429067927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5765075778429067927==--
