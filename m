Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f179.google.com ([209.85.212.179])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ttx2r-0001NP-36
 for barebox@lists.infradead.org; Sat, 12 Jan 2013 09:06:30 +0000
Received: by mail-wi0-f179.google.com with SMTP id o1so303398wic.0
 for <barebox@lists.infradead.org>; Sat, 12 Jan 2013 01:06:26 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1357976708-9010-1-git-send-email-marc@cpdesign.com.au>
References: <1357976708-9010-1-git-send-email-marc@cpdesign.com.au>
Date: Sat, 12 Jan 2013 10:06:26 +0100
Message-ID: <CAB_54W4qZX0P6NcSgJmhvR-DJaqmcL4rxJ=zveAVzUkzKetXxw@mail.gmail.com>
From: Alexander Aring <alex.aring@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6231798600896400565=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands: mtest: add iteration count parameter for mtest
 command
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox <barebox@lists.infradead.org>

--===============6231798600896400565==
Content-Type: multipart/alternative; boundary=047d7ba975c811416e04d313ba96

--047d7ba975c811416e04d313ba96
Content-Type: text/plain; charset=UTF-8

Hi,

I actually work on a patch series to improve|rewrite the memtest command.
This will add a iteration argument, too.

I will try to find some time this weekend to make it done.

Regards
Alexander Aring

2013/1/12 Marc Reilly <marc@cpdesign.com.au>

> The number of test iterations can be specified so that the test
> does not continue forever without manual intervention.
>
> This enables better use of mtest via scripts.
>
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  commands/memtest.c |   30 +++++++++++++++++++-----------
>  1 files changed, 19 insertions(+), 11 deletions(-)
>
> diff --git a/commands/memtest.c b/commands/memtest.c
> index 651a195..f3fe5e5 100644
> --- a/commands/memtest.c
> +++ b/commands/memtest.c
> @@ -34,7 +34,7 @@
>   * sub-tests.
>   */
>  #ifdef CONFIG_CMD_MTEST_ALTERNATIVE
> -static int mem_test(ulong _start, ulong _end, ulong pattern_unused)
> +static int mem_test(ulong _start, ulong _end, ulong pattern_unused, ulong
> iter_count)
>  {
>         vu_long *start = (vu_long *)_start;
>         vu_long *end   = (vu_long *)_end;
> @@ -68,13 +68,17 @@ static int mem_test(ulong _start, ulong _end, ulong
> pattern_unused)
>         };
>
>         /* XXX: enforce alignment of start and end? */
> -       for (;;) {
> +       while (!iter_count || (iterations <= iter_count)) {
>                 if (ctrlc()) {
>                         putchar ('\n');
>                         return 1;
>                 }
>
> -               printf("Iteration: %6d\r", iterations);
> +               printf("Iteration: %6d", iterations);
> +               if (iter_count)
> +                       printf(" of %6lu", iter_count);
> +               printf("\r");
> +
>                 iterations++;
>
>                 /*
> @@ -262,9 +266,10 @@ static int mem_test(ulong _start, ulong _end, ulong
> pattern_unused)
>                 }
>         }
>
> +       return 0;
>  }
>  #else
> -static int mem_test(ulong _start, ulong _end, ulong pattern)
> +static int mem_test(ulong _start, ulong _end, ulong pattern, ulong
> iter_count)
>  {
>         vu_long *addr;
>         vu_long *start = (vu_long *)_start;
> @@ -273,9 +278,10 @@ static int mem_test(ulong _start, ulong _end, ulong
> pattern)
>         ulong   readback;
>         ulong   incr;
>         int rcode;
> +       int iterations = 1;
>
>         incr = 1;
> -       for (;;) {
> +       while (!iter_count || (iterations <= iter_count)) {
>                 if (ctrlc()) {
>                         putchar('\n');
>                         return 1;
> @@ -317,6 +323,8 @@ static int mem_test(ulong _start, ulong _end, ulong
> pattern)
>                         pattern = ~pattern;
>                 }
>                 incr = -incr;
> +
> +               ++iterations;
>         }
>         return rcode;
>  }
> @@ -324,7 +332,7 @@ static int mem_test(ulong _start, ulong _end, ulong
> pattern)
>
>  static int do_mem_mtest(int argc, char *argv[])
>  {
> -       ulong start, end, pattern = 0;
> +       ulong start, end, pattern = 0, iterations = 0;
>
>         if (argc < 3)
>                 return COMMAND_ERROR_USAGE;
> @@ -335,16 +343,16 @@ static int do_mem_mtest(int argc, char *argv[])
>         if (argc > 3)
>                 pattern = simple_strtoul(argv[3], NULL, 0);
>
> +       if (argc > 4)
> +               iterations = simple_strtoul(argv[4], NULL, 0);
> +
>         printf ("Testing 0x%08x ... 0x%08x:\n", (uint)start, (uint)end);
>
> -       return mem_test(start, end, pattern);
> +       return mem_test(start, end, pattern, iterations);
>  }
>
>  static const __maybe_unused char cmd_mtest_help[] =
> -"Usage: <start> <end> "
> -#ifdef CONFIG_CMD_MTEST_ALTERNATIVE
> -"[pattern]"
> -#endif
> +"Usage: <start> <end> [pattern] [iterations]"
>

What's with [pattern]?
It's only available in MTEST_ALTERNATIVE.


>  "\nsimple RAM read/write test\n";
>
>  BAREBOX_CMD_START(mtest)
> --
> 1.7.7
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

--047d7ba975c811416e04d313ba96
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I actually work on a patch series to improve|re=
write the memtest command.<br>This will add a iteration argument, too.<br><=
br>I will try to find some time this weekend to make it done.<br><div class=
=3D"gmail_extra">
<br>Regards<br>Alexander Aring<br><br><div class=3D"gmail_quote">2013/1/12 =
Marc Reilly <span dir=3D"ltr">&lt;<a href=3D"mailto:marc@cpdesign.com.au" t=
arget=3D"_blank">marc@cpdesign.com.au</a>&gt;</span><br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
The number of test iterations can be specified so that the test<br>
does not continue forever without manual intervention.<br>
<br>
This enables better use of mtest via scripts.<br>
<br>
Signed-off-by: Marc Reilly &lt;<a href=3D"mailto:marc@cpdesign.com.au">marc=
@cpdesign.com.au</a>&gt;<br>
---<br>
=C2=A0commands/memtest.c | =C2=A0 30 +++++++++++++++++++-----------<br>
=C2=A01 files changed, 19 insertions(+), 11 deletions(-)<br>
<br>
diff --git a/commands/memtest.c b/commands/memtest.c<br>
index 651a195..f3fe5e5 100644<br>
--- a/commands/memtest.c<br>
+++ b/commands/memtest.c<br>
@@ -34,7 +34,7 @@<br>
=C2=A0 * sub-tests.<br>
=C2=A0 */<br>
=C2=A0#ifdef CONFIG_CMD_MTEST_ALTERNATIVE<br>
-static int mem_test(ulong _start, ulong _end, ulong pattern_unused)<br>
+static int mem_test(ulong _start, ulong _end, ulong pattern_unused, ulong =
iter_count)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 vu_long *start =3D (vu_long *)_start;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 vu_long *end =C2=A0 =3D (vu_long *)_end;<br>
@@ -68,13 +68,17 @@ static int mem_test(ulong _start, ulong _end, ulong pat=
tern_unused)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 };<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* XXX: enforce alignment of start and end? */<=
br>
- =C2=A0 =C2=A0 =C2=A0 for (;;) {<br>
+ =C2=A0 =C2=A0 =C2=A0 while (!iter_count || (iterations &lt;=3D iter_count=
)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ctrlc()) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 putchar (&#39;\n&#39;);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return 1;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf(&quot;Iteration: =
%6d\r&quot;, iterations);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf(&quot;Iteration: =
%6d&quot;, iterations);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (iter_count)<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 printf(&quot; of %6lu&quot;, iter_count);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf(&quot;\r&quot;);<=
br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 iterations++;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /*<br>
@@ -262,9 +266,10 @@ static int mem_test(ulong _start, ulong _end, ulong pa=
ttern_unused)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
+ =C2=A0 =C2=A0 =C2=A0 return 0;<br>
=C2=A0}<br>
=C2=A0#else<br>
-static int mem_test(ulong _start, ulong _end, ulong pattern)<br>
+static int mem_test(ulong _start, ulong _end, ulong pattern, ulong iter_co=
unt)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 vu_long *addr;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 vu_long *start =3D (vu_long *)_start;<br>
@@ -273,9 +278,10 @@ static int mem_test(ulong _start, ulong _end, ulong pa=
ttern)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ulong =C2=A0 readback;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ulong =C2=A0 incr;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int rcode;<br>
+ =C2=A0 =C2=A0 =C2=A0 int iterations =3D 1;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 incr =3D 1;<br>
- =C2=A0 =C2=A0 =C2=A0 for (;;) {<br>
+ =C2=A0 =C2=A0 =C2=A0 while (!iter_count || (iterations &lt;=3D iter_count=
)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ctrlc()) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 putchar(&#39;\n&#39;);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return 1;<br>
@@ -317,6 +323,8 @@ static int mem_test(ulong _start, ulong _end, ulong pat=
tern)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 pattern =3D ~pattern;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 incr =3D -incr;<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ++iterations;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return rcode;<br>
=C2=A0}<br>
@@ -324,7 +332,7 @@ static int mem_test(ulong _start, ulong _end, ulong pat=
tern)<br>
<br>
=C2=A0static int do_mem_mtest(int argc, char *argv[])<br>
=C2=A0{<br>
- =C2=A0 =C2=A0 =C2=A0 ulong start, end, pattern =3D 0;<br>
+ =C2=A0 =C2=A0 =C2=A0 ulong start, end, pattern =3D 0, iterations =3D 0;<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (argc &lt; 3)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return COMMAND_ERRO=
R_USAGE;<br>
@@ -335,16 +343,16 @@ static int do_mem_mtest(int argc, char *argv[])<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (argc &gt; 3)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pattern =3D simple_=
strtoul(argv[3], NULL, 0);<br>
<br>
+ =C2=A0 =C2=A0 =C2=A0 if (argc &gt; 4)<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 iterations =3D simple_st=
rtoul(argv[4], NULL, 0);<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 printf (&quot;Testing 0x%08x ... 0x%08x:\n&quot=
;, (uint)start, (uint)end);<br>
<br>
- =C2=A0 =C2=A0 =C2=A0 return mem_test(start, end, pattern);<br>
+ =C2=A0 =C2=A0 =C2=A0 return mem_test(start, end, pattern, iterations);<br=
>
=C2=A0}<br>
<br>
=C2=A0static const __maybe_unused char cmd_mtest_help[] =3D<br>
-&quot;Usage: &lt;start&gt; &lt;end&gt; &quot;<br>
-#ifdef CONFIG_CMD_MTEST_ALTERNATIVE<br>
-&quot;[pattern]&quot;<br>
-#endif<br>
+&quot;Usage: &lt;start&gt; &lt;end&gt; [pattern] [iterations]&quot;<br></b=
lockquote><div><br>What&#39;s with [pattern]?<br>It&#39;s only available in=
 MTEST_ALTERNATIVE.<br>=C2=A0<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

=C2=A0&quot;\nsimple RAM read/write test\n&quot;;<br>
<br>
=C2=A0BAREBOX_CMD_START(mtest)<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.7<br>
<br>
<br>
_______________________________________________<br>
barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead.org<=
/a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=3D"_=
blank">http://lists.infradead.org/mailman/listinfo/barebox</a><br>
</font></span></blockquote></div><br></div></div>

--047d7ba975c811416e04d313ba96--


--===============6231798600896400565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6231798600896400565==--
