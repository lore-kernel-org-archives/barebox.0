Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXXUN-0001fM-Hk
 for barebox@lists.infradead.org; Thu, 24 May 2012 12:50:00 +0000
Received: by yhjj52 with SMTP id j52so8779007yhj.36
 for <barebox@lists.infradead.org>; Thu, 24 May 2012 05:49:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120523134733.6164c4fb@eb-e6520>
References: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
 <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
 <20120523134733.6164c4fb@eb-e6520>
From: Roberto Nibali <rnibali@gmail.com>
Date: Thu, 24 May 2012 14:49:36 +0200
Message-ID: <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4012078933103045157=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

--===============4012078933103045157==
Content-Type: multipart/alternative; boundary=14dae934124164448d04c0c7b0ff

--14dae934124164448d04c0c7b0ff
Content-Type: text/plain; charset=ISO-8859-1

Hi


> > Set the switches to boot from SD on the mx25 device and power on. It
> > successfully loads barebox and I can mount the fat partition (of course
> the
> > other partition is unmountable, because there is no ext2/3 support in
> > barebox). Booting from my environment currently fails, but I reckon it
> has
> > to do with my configuration settings. Here is where it gets so far:
> > .../...
> > [  103.029081] VFS: Unable to mount root fs via NFS, trying floppy.
> > [  103.036763] VFS: Cannot open root device "nfs" or unknown-block(2,0)
> > [  103.043157] Please append a correct "root=" boot option; here are the
> > available partitions:
> > [  103.052007] b300         1955840 mmcblk0  driver: mmcblk
> > [  103.057512]   b301            1024 mmcblk0p1
> > 00000000-0000-0000-0000-000000000mmcblk0p1
> > [  103.065670]   b302          524288 mmcblk0p2
> > 00000000-0000-0000-0000-000000000mmcblk0p2
> > [  103.073744]   b303         1429504 mmcblk0p3
> > 00000000-0000-0000-0000-000000000mmcblk0p3
> > .../...
> > Thank you very much for your pointers.
> >
> add to your bootargs root=/dev/mmcblk0p3 rootfstype=ext3 or something
> like this
>
>
I haven't found a combination of root/rootfstype yet that permits me to
boot from barebox either from NFS, TFTP, MMC/SD or NOR yet. No matter what
I try, the kernel spits back at me.

Also I have the problem that my NOR is only detected when using barebox as
a second stage boot loader from uboot. If booting from SD into barebox, the
NOR is not detected. I have added the following changes to figure out
what's going on:

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 654e647..7884ca4 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -990,13 +990,17 @@ static int cfi_probe (struct device_d *dev)
        info->size = flash_get_size(info);

        if (info->flash_id == FLASH_UNKNOWN) {
-               printf ("## Unknown FLASH on Bank at 0x%08x - Size =
0x%08lx = %ld MB\n",
+               printf("## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx
= %ld MB\n",
                        dev->resource[0].start, info->size, info->size <<
20);
+               printf("cfi flash (id=%08lX vend=%06X manu=%06X devid=%06X
extid=%06X)\n",
+                       info->flash_id, info->vendor,
info->manufacturer_id, info->device_id,
+                       info->device_id2);
                return -ENODEV;
        }

-       dev_info(dev, "found cfi flash at %p, size %ld\n",
-                       info->base, info->size);
+       dev_info(dev, "cfi flash (id=%08lX vend=%06X manu=%06X devid=%06X
extid=%06X) at %p, size %ldMB
+                       info->flash_id, info->vendor,
info->manufacturer_id, info->device_id,
+                       info->device_id2, info->base, info->size/1024/1024);

        info->cdev.name = asprintf("nor%d", dev->id);
        info->cdev.size = info->size;

Loading barebox as second stage bootloader gives me following output:

[...]
cfi_flash@cfi_flash0: cfi flash (id=01000000 vend=000002 manu=000001
devid=00007E extid=002301) at a0000000, size 64MB
[...]

Loading barebox as a first stage bootloader directly from SD card results
in the following:

[...]
## Unknown FLASH on Bank at 0xa0000000 - Size = 0x00000000 = 0 MB
cfi flash (id=0000FFFF vend=000000 manu=000000 devid=000000 extid=000000)
[...]

What's going on here?

Best regards
Roberto

--14dae934124164448d04c0c7b0ff
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote"><div>Hi</div><div>=A0</div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div class=3D"im">&gt; Set the switches to boot from SD on the mx=
25 device and power on. It<br>


&gt; successfully loads barebox and I can mount the fat partition (of cours=
e the<br>
&gt; other partition is unmountable, because there is no ext2/3 support in<=
br>
&gt; barebox). Booting from my environment currently fails, but I reckon it=
 has<br>
&gt; to do with my configuration settings. Here is where it gets so far:<br=
>
</div>&gt; .../...<br>
<div class=3D"im">&gt; [ =A0103.029081] VFS: Unable to mount root fs via NF=
S, trying floppy.<br>
&gt; [ =A0103.036763] VFS: Cannot open root device &quot;nfs&quot; or unkno=
wn-block(2,0)<br>
&gt; [ =A0103.043157] Please append a correct &quot;root=3D&quot; boot opti=
on; here are the<br>
&gt; available partitions:<br>
&gt; [ =A0103.052007] b300 =A0 =A0 =A0 =A0 1955840 mmcblk0 =A0driver: mmcbl=
k<br>
&gt; [ =A0103.057512] =A0 b301 =A0 =A0 =A0 =A0 =A0 =A01024 mmcblk0p1<br>
&gt; 00000000-0000-0000-0000-000000000mmcblk0p1<br>
&gt; [ =A0103.065670] =A0 b302 =A0 =A0 =A0 =A0 =A0524288 mmcblk0p2<br>
&gt; 00000000-0000-0000-0000-000000000mmcblk0p2<br>
&gt; [ =A0103.073744] =A0 b303 =A0 =A0 =A0 =A0 1429504 mmcblk0p3<br>
&gt; 00000000-0000-0000-0000-000000000mmcblk0p3<br>
</div>&gt; .../...<br>
<div class=3D"im">&gt; Thank you very much for your pointers.<br>
&gt;<br>
</div>add to your bootargs root=3D/dev/mmcblk0p3 rootfstype=3Dext3 or somet=
hing<br>
like this<br><br></blockquote><div><br></div><div>I haven&#39;t found a com=
bination of root/rootfstype yet that permits me to boot from barebox either=
 from NFS, TFTP, MMC/SD or NOR yet. No matter what I try, the kernel spits =
back at me.</div>

<div><br></div><div>Also I have the problem that my NOR is only detected wh=
en using barebox as a second stage boot loader from uboot. If booting from =
SD into barebox, the NOR is not detected. I have added the following change=
s to figure out what&#39;s going on:</div>

<div><br></div><div>diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_=
flash.c</div><div>index 654e647..7884ca4 100644</div><div>--- a/drivers/nor=
/cfi_flash.c</div><div>+++ b/drivers/nor/cfi_flash.c</div><div>@@ -990,13 +=
990,17 @@ static int cfi_probe (struct device_d *dev)</div>

<div>=A0 =A0 =A0 =A0 info-&gt;size =3D flash_get_size(info);</div><div>=A0<=
/div><div>=A0 =A0 =A0 =A0 if (info-&gt;flash_id =3D=3D FLASH_UNKNOWN) {</di=
v><div>- =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf (&quot;## Unknown FLASH on Bank=
 at 0x%08x - Size =3D 0x%08lx =3D %ld MB\n&quot;,</div>

<div>+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot;## Unknown FLASH on Bank at=
 0x%08x - Size =3D 0x%08lx =3D %ld MB\n&quot;,</div><div>=A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev-&gt;resource[0].start, info-&gt;size, i=
nfo-&gt;size &lt;&lt; 20);</div><div>+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&=
quot;cfi flash (id=3D%08lX vend=3D%06X manu=3D%06X devid=3D%06X extid=3D%06=
X)\n&quot;,</div>

<div>+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 info-&gt;flash_id, info-=
&gt;vendor, info-&gt;manufacturer_id, info-&gt;device_id,</div><div>+ =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 info-&gt;device_id2);</div><div>=A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -ENODEV;</div><div>=A0 =A0 =A0 =A0 }</d=
iv>

<div>=A0</div><div>- =A0 =A0 =A0 dev_info(dev, &quot;found cfi flash at %p,=
 size %ld\n&quot;,</div><div>- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
info-&gt;base, info-&gt;size);</div><div>+ =A0 =A0 =A0 dev_info(dev, &quot;=
cfi flash (id=3D%08lX vend=3D%06X manu=3D%06X devid=3D%06X extid=3D%06X) at=
 %p, size %ldMB</div>

<div>+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 info-&gt;flash_id, info-=
&gt;vendor, info-&gt;manufacturer_id, info-&gt;device_id,</div><div>+ =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 info-&gt;device_id2, info-&gt;base,=
 info-&gt;size/1024/1024);</div><div>=A0</div>

<div>=A0 =A0 =A0 =A0 info-&gt;<a href=3D"http://cdev.name">cdev.name</a> =
=3D asprintf(&quot;nor%d&quot;, dev-&gt;id);</div><div>=A0 =A0 =A0 =A0 info=
-&gt;cdev.size =3D info-&gt;size;</div><div><br></div><div>Loading barebox =
as second stage bootloader gives me following output:</div>

<div><br></div><div>[...]</div><div>cfi_flash@cfi_flash0: cfi flash (id=3D0=
1000000 vend=3D000002 manu=3D000001 devid=3D00007E extid=3D002301) at a0000=
000, size 64MB</div><div>[...]</div><div><br></div><div>Loading barebox as =
a first stage bootloader directly from SD card results in the following:</d=
iv>

<div><div><br></div><div>[...]</div></div><div>## Unknown FLASH on Bank at =
0xa0000000 - Size =3D 0x00000000 =3D 0 MB</div><div>cfi flash (id=3D0000FFF=
F vend=3D000000 manu=3D000000 devid=3D000000 extid=3D000000)</div><div>[...=
]</div><div>

<br></div><div>What&#39;s going on here?</div><div><br></div><div>Best rega=
rds</div><div>Roberto</div></div>

--14dae934124164448d04c0c7b0ff--


--===============4012078933103045157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4012078933103045157==--
