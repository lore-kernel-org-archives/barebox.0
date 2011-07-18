Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QinqK-0006Im-G1
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 13:26:44 +0000
Received: by iwn35 with SMTP id 35so3456104iwn.36
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2011 06:26:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1310994370-28444-1-git-send-email-antonynpavlov@gmail.com>
References: <1310994370-28444-1-git-send-email-antonynpavlov@gmail.com>
Date: Mon, 18 Jul 2011 15:26:33 +0200
Message-ID: <CAJfOKByNkqH8UKB6OU_rh67oG3c43=fW_7wRa=+Lc0Rf7HrcBw@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1316204224=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/2] debug_ll.h: add PUTS_LL() function
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

--===============1316204224==
Content-Type: multipart/alternative; boundary=20cf303f6a6ca9aac204a857f2c5

--20cf303f6a6ca9aac204a857f2c5
Content-Type: text/plain; charset=ISO-8859-1

2011/7/18 Antony Pavlov <antonynpavlov@gmail.com>

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/debug_ll.h |   13 +++++++++++++
>  1 files changed, 13 insertions(+), 0 deletions(-)
>
> diff --git a/include/debug_ll.h b/include/debug_ll.h
> index e99ae7d..6b1b174 100644
> --- a/include/debug_ll.h
> +++ b/include/debug_ll.h
> @@ -35,9 +35,22 @@
>                             ch = ((v >> (i*4)) & 0xf);\
>                             ch += (ch >= 10) ? 'a' - 10 : '0';\
>                             PUTC_LL (ch); }})
> +
> +static __inline__ void PUTS_LL(char * str)
> +{
> +       while (*str) {
> +               if (*str == '\n') {
> +                       PUTC_LL('\r');
> +               }
> +               PUTC_LL(*str);
> +               str++;
> +       }
> +}
> +
>  #else
>  # define PUTC_LL(c) do {} while (0)
>  # define PUTHEX_LL(v) do {} while (0)
> +# define PUTS_LL(c) do {} while (0)
>
>  #endif
>
> --
> 1.7.5.4
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



Hello,

Could we add an entry for CONFIG_DEBUG_LL in the debugging menu
(common/Kconfig) ?
This file makes barebox not compile if we are not on arm arch due to the
<mach/debug_ll.h> inclusion.

I know it's not related to your patch :)

Franck.

--20cf303f6a6ca9aac204a857f2c5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">2011/7/18 Antony Pavlov <span dir=3D"ltr=
">&lt;<a href=3D"mailto:antonynpavlov@gmail.com">antonynpavlov@gmail.com</a=
>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex;">
Signed-off-by: Antony Pavlov &lt;<a href=3D"mailto:antonynpavlov@gmail.com"=
>antonynpavlov@gmail.com</a>&gt;<br>
---<br>
=A0include/debug_ll.h | =A0 13 +++++++++++++<br>
=A01 files changed, 13 insertions(+), 0 deletions(-)<br>
<br>
diff --git a/include/debug_ll.h b/include/debug_ll.h<br>
index e99ae7d..6b1b174 100644<br>
--- a/include/debug_ll.h<br>
+++ b/include/debug_ll.h<br>
@@ -35,9 +35,22 @@<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ch =3D ((v &gt;&gt=
; (i*4)) &amp; 0xf);\<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ch +=3D (ch &gt;=
=3D 10) ? &#39;a&#39; - 10 : &#39;0&#39;;\<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 PUTC_LL (ch); }})<=
br>
+<br>
+static __inline__ void PUTS_LL(char * str)<br>
+{<br>
+ =A0 =A0 =A0 while (*str) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (*str =3D=3D &#39;\n&#39;) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 PUTC_LL(&#39;\r&#39;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 PUTC_LL(*str);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 str++;<br>
+ =A0 =A0 =A0 }<br>
+}<br>
+<br>
=A0#else<br>
=A0# define PUTC_LL(c) do {} while (0)<br>
=A0# define PUTHEX_LL(v) do {} while (0)<br>
+# define PUTS_LL(c) do {} while (0)<br>
<br>
=A0#endif<br>
<font color=3D"#888888"><br>
--<br>
1.7.5.4<br>
<br>
<br>
_______________________________________________<br>
barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead.org<=
/a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=3D"_=
blank">http://lists.infradead.org/mailman/listinfo/barebox</a></font></bloc=
kquote><div><br></div><div><br></div><div>Hello,</div><div><br></div><div>
Could we add an entry for CONFIG_DEBUG_LL in the debugging menu (common/Kco=
nfig) ?</div><div>This file makes barebox not compile if we are not on arm =
arch due to the &lt;mach/debug_ll.h&gt; inclusion.</div><div><br></div>
<div>I know it&#39;s not related to your patch :)</div><div><br></div><div>=
Franck.</div></div><br>

--20cf303f6a6ca9aac204a857f2c5--


--===============1316204224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1316204224==--
