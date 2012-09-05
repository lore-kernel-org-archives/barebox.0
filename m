Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9KjE-0004iO-SK
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 18:53:35 +0000
Received: by lbbgf7 with SMTP id gf7so595928lbb.36
 for <barebox@lists.infradead.org>; Wed, 05 Sep 2012 11:53:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1346858724.3388.24.camel@coredoba.hi.pengutronix.de>
References: <1346651881-3765-1-git-send-email-alex.aring@gmail.com>
 <1346858724.3388.24.camel@coredoba.hi.pengutronix.de>
Date: Wed, 5 Sep 2012 20:53:29 +0200
Message-ID: <CAB_54W5c4tBoaoiRoRM6vOXJGZwfXg+zhiSyb3A4hPGo0o+10A@mail.gmail.com>
From: Alexander Aring <alex.aring@googlemail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0917977351229309341=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] mtd: fix compiler warnings
To: =?UTF-8?Q?Jan_L=C3=BCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============0917977351229309341==
Content-Type: multipart/alternative; boundary=f46d042d05b4057fed04c8f8e4c0

--f46d042d05b4057fed04c8f8e4c0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I saw it on sandbox platform. Does this depend on 32 bit or 64 bit system?

I found this for __kernel_size_t:
arch/sandbox/include/asm/posix_types.h:18:typedef unsigned long
__kernel_size_t;

so we need to change this to:
typedef unsigned int    __kernel_size_t;

but in mips arch there is unsigned long, too.

Regards
Alex

2012/9/5 Jan L=C3=BCbbe <jlu@pengutronix.de>

> Hi,
>
> On Mon, 2012-09-03 at 07:58 +0200, Alexander Aring wrote:
> > Fix some compiler warnings.
> > --- a/drivers/mtd/core.c
> > +++ b/drivers/mtd/core.c
> > @@ -79,7 +79,7 @@ static ssize_t mtd_write(struct cdev* cdev, const voi=
d
> *buf, size_t _count,
> >               return -EINVAL;
> >       }
> >
> > -     dev_dbg(cdev->dev, "write: 0x%08lx 0x%08x\n", offset, count);
> > +     dev_dbg(cdev->dev, "write: 0x%08lx 0x%08lx\n", offset, count);
> >       while (count) {
>
> This causes some new warnings for me:
> drivers/mtd/core.c: In function 'mtd_write':
> drivers/mtd/core.c:82:2: warning: format '%08lx' expects type 'long
> unsigned int', but argument 5 has type 'size_t'
> drivers/mtd/core.c:102:4: warning: format '%08lx' expects type 'long
> unsigned int', but argument 5 has type 'size_t'
> drivers/mtd/core.c:102:4: warning: format '%08lx' expects type 'long
> unsigned int', but argument 6 has type 'size_t'
>
> They go away when reverting this. It seems that different achitectures
> have different ideas about size_t:
> ./include/linux/types.h:54:typedef __kernel_size_t              size_t;
> ./arch/ppc/include/asm/posix_types.h:17:typedef unsigned int
>  __kernel_size_t;
> ./arch/blackfin/include/asm/posix_types.h:45:typedef unsigned int
> __kernel_size_t;
> ./arch/mips/include/asm/posix_types.h:34:typedef unsigned int
> __kernel_size_t;
> ./arch/mips/include/asm/posix_types.h:39:typedef unsigned long
>  __kernel_size_t;
> ./arch/x86/include/asm/posix_types.h:34:typedef unsigned int
>  __kernel_size_t;
> ./arch/sandbox/include/asm/posix_types.h:18:typedef unsigned long
> __kernel_size_t;
> ./arch/nios2/include/asm/posix_types.h:30:typedef unsigned int
>  __kernel_size_t;
> ./arch/openrisc/include/asm/posix_types.h:28:typedef unsigned int
> __kernel_size_t;
> ./arch/arm/include/asm/posix_types.h:30:typedef unsigned int
>  __kernel_size_t;
>
> On which arch did you see the warnings with the original code?
>
> Regards,
> Jan
> --
> Pengutronix e.K.                           |                             =
|
> Industrial Linux Solutions                 | http://www.pengutronix.de/  =
|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>
>

--f46d042d05b4057fed04c8f8e4c0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I saw it on sandbox platform. Does this depend on 32 bit or 64 b=
it system?<br><br>I found this for __kernel_size_t:<br>arch/sandbox/include=
/asm/posix_types.h:18:typedef unsigned long=C2=A0=C2=A0=C2=A0 __kernel_size=
_t;<br><br>so we need to change this to:<br>
typedef unsigned int =C2=A0=C2=A0 __kernel_size_t;<br><br>but in mips arch =
there is unsigned long, too.<br><br>Regards<br>Alex<br><br><div class=3D"gm=
ail_quote">2012/9/5 Jan L=C3=BCbbe <span dir=3D"ltr">&lt;<a href=3D"mailto:=
jlu@pengutronix.de" target=3D"_blank">jlu@pengutronix.de</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<div class=3D"im"><br>
On Mon, 2012-09-03 at 07:58 +0200, Alexander Aring wrote:<br>
&gt; Fix some compiler warnings.<br>
</div><div class=3D"im">&gt; --- a/drivers/mtd/core.c<br>
&gt; +++ b/drivers/mtd/core.c<br>
&gt; @@ -79,7 +79,7 @@ static ssize_t mtd_write(struct cdev* cdev, const vo=
id *buf, size_t _count,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EINVAL;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;<br>
&gt; - =C2=A0 =C2=A0 dev_dbg(cdev-&gt;dev, &quot;write: 0x%08lx 0x%08x\n&qu=
ot;, offset, count);<br>
&gt; + =C2=A0 =C2=A0 dev_dbg(cdev-&gt;dev, &quot;write: 0x%08lx 0x%08lx\n&q=
uot;, offset, count);<br>
&gt; =C2=A0 =C2=A0 =C2=A0 while (count) {<br>
<br>
</div>This causes some new warnings for me:<br>
drivers/mtd/core.c: In function &#39;mtd_write&#39;:<br>
drivers/mtd/core.c:82:2: warning: format &#39;%08lx&#39; expects type &#39;=
long unsigned int&#39;, but argument 5 has type &#39;size_t&#39;<br>
drivers/mtd/core.c:102:4: warning: format &#39;%08lx&#39; expects type &#39=
;long unsigned int&#39;, but argument 5 has type &#39;size_t&#39;<br>
drivers/mtd/core.c:102:4: warning: format &#39;%08lx&#39; expects type &#39=
;long unsigned int&#39;, but argument 6 has type &#39;size_t&#39;<br>
<br>
They go away when reverting this. It seems that different achitectures<br>
have different ideas about size_t:<br>
./include/linux/types.h:54:typedef __kernel_size_t =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0size_t;<br>
./arch/ppc/include/asm/posix_types.h:17:typedef unsigned int =C2=A0 =C2=A0_=
_kernel_size_t;<br>
./arch/blackfin/include/asm/posix_types.h:45:typedef unsigned int __kernel_=
size_t;<br>
./arch/mips/include/asm/posix_types.h:34:typedef unsigned int =C2=A0 __kern=
el_size_t;<br>
./arch/mips/include/asm/posix_types.h:39:typedef unsigned long =C2=A0__kern=
el_size_t;<br>
./arch/x86/include/asm/posix_types.h:34:typedef unsigned int =C2=A0 =C2=A0_=
_kernel_size_t;<br>
./arch/sandbox/include/asm/posix_types.h:18:typedef unsigned long =C2=A0 =
=C2=A0 =C2=A0 __kernel_size_t;<br>
./arch/nios2/include/asm/posix_types.h:30:typedef unsigned int =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0__kernel_size_t;<br>
./arch/openrisc/include/asm/posix_types.h:28:typedef unsigned int =C2=A0 =
=C2=A0 =C2=A0 __kernel_size_t;<br>
./arch/arm/include/asm/posix_types.h:30:typedef unsigned int =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0__kernel_size_t;<br>
<br>
On which arch did you see the warnings with the original code?<br>
<br>
Regards,<br>
Jan<br>
<div class=3D"HOEnZb"><div class=3D"h5">--<br>
Pengutronix e.K. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>
Industrial Linux Solutions =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 | <a href=3D"http://www.pengutronix.de/" target=3D"_blank">http://w=
ww.pengutronix.de/</a> =C2=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: <a href=3D"tel:%2B49-51=
21-206917-0" value=3D"+4951212069170">+49-5121-206917-0</a> =C2=A0 =C2=A0|<=
br>
Amtsgericht Hildesheim, HRA 2686 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | Fax: =
=C2=A0 <a href=3D"tel:%2B49-5121-206917-5555" value=3D"+4951212069175555">+=
49-5121-206917-5555</a> |<br>
<br>
</div></div></blockquote></div><br>

--f46d042d05b4057fed04c8f8e4c0--


--===============0917977351229309341==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0917977351229309341==--
