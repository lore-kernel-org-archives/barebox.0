Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-f49.google.com ([209.85.219.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TO13I-0004NU-Q7
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 06:54:57 +0000
Received: by mail-oa0-f49.google.com with SMTP id l10so6158213oag.36
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2012 23:54:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20121015221514.GS27665@pengutronix.de>
References: <1350307362-20052-1-git-send-email-a.aring@phytec.de>
 <1350307362-20052-5-git-send-email-a.aring@phytec.de>
 <20121015221514.GS27665@pengutronix.de>
Date: Tue, 16 Oct 2012 08:54:55 +0200
Message-ID: <CAB_54W5BG_scCB1WuNCx+PQro5rjDoZa55Zv3JvTmxZkUJiL-A@mail.gmail.com>
From: Alexander Aring <alex.aring@googlemail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8041203843844348511=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/4] memory: fix memory calculation
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============8041203843844348511==
Content-Type: multipart/alternative; boundary=e89a8fb20732af1b1204cc27a15a

--e89a8fb20732af1b1204cc27a15a
Content-Type: text/plain; charset=UTF-8

Hi,

Thanks, I will do this changes.
Move fixes as first and separte the fix calculation patch in fixes for
'request_sdram_region' and 'printouts of iomem at boottime', which is only
necessary for correct eyecandy.

Sry, It's true to get all information from iomem, never used this command :)
I got ideas to improve my other patches... I will try to insert it, too.

I send this mail from my private mail address...
My phytec address doesn't work with the barebox mailinglist.

Regards
Alexander Aring

2012/10/16 Sascha Hauer <s.hauer@pengutronix.de>

> On Mon, Oct 15, 2012 at 03:22:42PM +0200, Alexander Aring wrote:
> > Fix memory calculation.
> >
> > Signed-off-by: Alexander Aring <a.aring@phytec.de>
> > ---
> >  common/meminfo.c |    8 ++++----
> >  common/memory.c  |    4 ++--
> >  2 files changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/common/meminfo.c b/common/meminfo.c
> > index b2b09da..13633a2 100644
> > --- a/common/meminfo.c
> > +++ b/common/meminfo.c
> > @@ -15,9 +15,9 @@ static int display_meminfo(void)
> >  #endif
> >
> >       debug("barebox code: 0x%p -> 0x%p (size 0x%08lx)\n",
> > -                     _stext, _etext, text_size);
> > +                     _stext, _etext - 1, text_size);
> >       debug("bss segment:  0x%p -> 0x%p (size 0x%08lx)\n",
> > -             __bss_start, __bss_stop, bss_size);
> > +             __bss_start, __bss_stop - 1, bss_size);
> >  #ifdef DEBUG
> >       printf("malloc space: 0x%08lx -> 0x%08lx (size 0x%08lx)\n",
> >               mstart, mend, msize);
> > @@ -28,11 +28,11 @@ static int display_meminfo(void)
> >  #ifdef CONFIG_ARM
> >  #ifdef DEBUG
> >       printf("stack space:  0x%08x -> 0x%08x (size 0x%08x)\n",
> > -             STACK_BASE, STACK_BASE + STACK_SIZE,
> > +             STACK_BASE, STACK_BASE + STACK_SIZE - 1,
> >               STACK_SIZE);
> >  #else
> >       printf("stack space:  0x%08x -> 0x%08x (size %s)\n",
> > -             STACK_BASE, STACK_BASE + STACK_SIZE,
> > +             STACK_BASE, STACK_BASE + STACK_SIZE - 1,
> >               size_human_readable(STACK_SIZE));
>
> Hm, you copied wrong code in an earlier patch in this series which
> you fix afterwards. That's not good, fixes, should always come first.
> This for example makes it possible to apply the fix to the master
> branch and feature additions to -next.
>
> Besides, printing the exact values for the debug case and
> size_human_readable otherwise is unnecessary churn. All the
> information above can be retrieved using the iomem command
> anyway, so removing the code altogether seems more useful.
>
> >  #endif
> >  #endif
> > diff --git a/common/memory.c b/common/memory.c
> > index 8919ab1..6bf4af6 100644
> > --- a/common/memory.c
> > +++ b/common/memory.c
> > @@ -74,11 +74,11 @@ static int mem_malloc_resource(void)
> >       request_sdram_region("barebox",
> >                       (unsigned long)&_stext,
> >                       (unsigned long)&_etext -
> > -                     (unsigned long)&_stext + 1);
> > +                     (unsigned long)&_stext);
> >       request_sdram_region("bss",
> >                       (unsigned long)&__bss_start,
> >                       (unsigned long)&__bss_stop -
> > -                     (unsigned long)&__bss_start + 1);
> > +                     (unsigned long)&__bss_start);
>
> That's a useful fix. Can we have this as a separate patch?
>
> Sascha
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

--e89a8fb20732af1b1204cc27a15a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>Thanks, I will do this changes.<br>Move fixes as first and separ=
te the fix calculation patch in fixes for &#39;request_sdram_region&#39; an=
d &#39;printouts of iomem at boottime&#39;, which is only necessary for cor=
rect eyecandy.<br>
<br>Sry, It&#39;s true to get all information from iomem, never used this c=
ommand :)<br>I got ideas to improve my other patches... I will try to inser=
t it, too.<br><br>I send this mail from my private mail address...<br>My ph=
ytec address doesn&#39;t work with the barebox mailinglist.<br>
<br>Regards<br>Alexander Aring<br><br><div class=3D"gmail_quote">2012/10/16=
 Sascha Hauer <span dir=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.d=
e" target=3D"_blank">s.hauer@pengutronix.de</a>&gt;</span><br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">
On Mon, Oct 15, 2012 at 03:22:42PM +0200, Alexander Aring wrote:<br>
&gt; Fix memory calculation.<br>
&gt;<br>
&gt; Signed-off-by: Alexander Aring &lt;<a href=3D"mailto:a.aring@phytec.de=
">a.aring@phytec.de</a>&gt;<br>
&gt; ---<br>
&gt; =C2=A0common/meminfo.c | =C2=A0 =C2=A08 ++++----<br>
&gt; =C2=A0common/memory.c =C2=A0| =C2=A0 =C2=A04 ++--<br>
&gt; =C2=A02 files changed, 6 insertions(+), 6 deletions(-)<br>
&gt;<br>
&gt; diff --git a/common/meminfo.c b/common/meminfo.c<br>
&gt; index b2b09da..13633a2 100644<br>
&gt; --- a/common/meminfo.c<br>
&gt; +++ b/common/meminfo.c<br>
&gt; @@ -15,9 +15,9 @@ static int display_meminfo(void)<br>
&gt; =C2=A0#endif<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 debug(&quot;barebox code: 0x%p -&gt; 0x%p (size 0=
x%08lx)\n&quot;,<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 _stext, _etext, text_size);<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 _stext, _etext - 1, text_size);<br>
&gt; =C2=A0 =C2=A0 =C2=A0 debug(&quot;bss segment: =C2=A00x%p -&gt; 0x%p (s=
ize 0x%08lx)\n&quot;,<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __bss_start, __bss_stop, b=
ss_size);<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 __bss_start, __bss_stop - =
1, bss_size);<br>
&gt; =C2=A0#ifdef DEBUG<br>
&gt; =C2=A0 =C2=A0 =C2=A0 printf(&quot;malloc space: 0x%08lx -&gt; 0x%08lx =
(size 0x%08lx)\n&quot;,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mstart, mend, msize);=
<br>
&gt; @@ -28,11 +28,11 @@ static int display_meminfo(void)<br>
&gt; =C2=A0#ifdef CONFIG_ARM<br>
&gt; =C2=A0#ifdef DEBUG<br>
&gt; =C2=A0 =C2=A0 =C2=A0 printf(&quot;stack space: =C2=A00x%08x -&gt; 0x%0=
8x (size 0x%08x)\n&quot;,<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 STACK_BASE, STACK_BASE + S=
TACK_SIZE,<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 STACK_BASE, STACK_BASE + S=
TACK_SIZE - 1,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 STACK_SIZE);<br>
&gt; =C2=A0#else<br>
&gt; =C2=A0 =C2=A0 =C2=A0 printf(&quot;stack space: =C2=A00x%08x -&gt; 0x%0=
8x (size %s)\n&quot;,<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 STACK_BASE, STACK_BASE + S=
TACK_SIZE,<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 STACK_BASE, STACK_BASE + S=
TACK_SIZE - 1,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size_human_readable(S=
TACK_SIZE));<br>
<br>
Hm, you copied wrong code in an earlier patch in this series which<br>
you fix afterwards. That&#39;s not good, fixes, should always come first.<b=
r>
This for example makes it possible to apply the fix to the master<br>
branch and feature additions to -next.<br>
<br>
Besides, printing the exact values for the debug case and<br>
size_human_readable otherwise is unnecessary churn. All the<br>
information above can be retrieved using the iomem command<br>
anyway, so removing the code altogether seems more useful.<br>
<br>
&gt; =C2=A0#endif<br>
&gt; =C2=A0#endif<br>
&gt; diff --git a/common/memory.c b/common/memory.c<br>
&gt; index 8919ab1..6bf4af6 100644<br>
&gt; --- a/common/memory.c<br>
&gt; +++ b/common/memory.c<br>
&gt; @@ -74,11 +74,11 @@ static int mem_malloc_resource(void)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 request_sdram_region(&quot;barebox&quot;,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (unsigned long)&amp;_stext,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (unsigned long)&amp;_etext -<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (unsigned long)&amp;_stext + 1);<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (unsigned long)&amp;_stext);<br>
&gt; =C2=A0 =C2=A0 =C2=A0 request_sdram_region(&quot;bss&quot;,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (unsigned long)&amp;__bss_start,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (unsigned long)&amp;__bss_stop -<br>
&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (unsigned long)&amp;__bss_start + 1);<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (unsigned long)&amp;__bss_start);<br>
<br>
That&#39;s a useful fix. Can we have this as a separate patch?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Sascha<br>
<br>
<br>
--<br>
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
_______________________________________________<br>
barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead.org<=
/a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=3D"_=
blank">http://lists.infradead.org/mailman/listinfo/barebox</a><br>
</font></span></blockquote></div><br>

--e89a8fb20732af1b1204cc27a15a--


--===============8041203843844348511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8041203843844348511==--
