Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f53.google.com ([209.85.160.53])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UM0mH-0000kP-Se
 for barebox@lists.infradead.org; Sat, 30 Mar 2013 18:45:22 +0000
Received: by mail-pb0-f53.google.com with SMTP id un1so645518pbc.12
 for <barebox@lists.infradead.org>; Sat, 30 Mar 2013 11:45:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <m3ip49gmds.fsf@intrepid.localdomain>
References: <m3r4ixgmok.fsf@intrepid.localdomain>
 <m3ip49gmds.fsf@intrepid.localdomain>
Date: Sat, 30 Mar 2013 22:45:19 +0400
Message-ID: <CAA4bVAGZgx2fWaemn1v2TP1APqWEHBXCczYknbfpE0epSCzn8Q@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6205620069136401647=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Implement ALTERNATE memory layout.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox <barebox@lists.infradead.org>

--===============6205620069136401647==
Content-Type: multipart/alternative; boundary=047d7b10c7d522bf5f04d928ca6d

--047d7b10c7d522bf5f04d928ca6d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 30 March 2013 15:25, Krzysztof Halasa <khc@pm.waw.pl> wrote:

> Signed-off-by: Krzysztof Ha=C5=82asa <khc@pm.waw.pl>
>
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -58,7 +58,6 @@ static noinline __noreturn void __start(uint32_t
> membase, uint32_t memsize,
>         endmem -=3D STACK_SIZE; /* Stack */
>
>         if (IS_ENABLED(CONFIG_MMU_EARLY)) {
> -
>                 endmem &=3D ~0x3fff;
>                 endmem -=3D SZ_16K; /* ttb */


This is a formatting change not functional change. Please, move it to a
separate patch.


>


> @@ -66,6 +65,9 @@ static noinline __noreturn void __start(uint32_t
> membase, uint32_t memsize,
>                         mmu_early_enable(membase, memsize, endmem);
>         }
>
> +#ifdef CONFIG_MEMORY_LAYOUT_ALTERNATE
> +               malloc_end =3D endmem;
> +#else
>         if ((unsigned long)_text > membase + memsize ||
>                         (unsigned long)_text < membase)
>                 /*
> @@ -76,15 +78,21 @@ static noinline __noreturn void __start(uint32_t
> membase, uint32_t memsize,
>                 malloc_end =3D endmem;
>         else
>                 malloc_end =3D (unsigned long)_text;
> +#endif
>
>         /*
>          * Maximum malloc space is the Kconfig value if given
>          * or 64MB.
>          */
>         if (MALLOC_SIZE > 0) {
> -               malloc_start =3D malloc_end - MALLOC_SIZE;
> -               if (malloc_start < membase)
> +               if (malloc_end > membase + MALLOC_SIZE)
> +                       malloc_start =3D malloc_end - MALLOC_SIZE;
> +               else
>                         malloc_start =3D membase;
> +               if (malloc_start < (unsigned long)_end &&
> +                   malloc_end > (unsigned long)_text)
> +                       /* malloc area follows text */
> +                       malloc_start =3D (unsigned long)_end;
>         } else {
>                 malloc_start =3D malloc_end - (malloc_end - membase) / 2;
>                 if (malloc_end - malloc_start > SZ_64M)
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -161,7 +161,7 @@ choice
>  config MEMORY_LAYOUT_DEFAULT
>         bool "use default memory layout"
>         help
> -         select this option to use bareboxs standard memory layout:
> +         select this option to use barebox's standard memory layout:
>
>
This is a "fix typo" change. Please, move it to a separate patch.

          stack
>           -----
> @@ -169,6 +169,17 @@ config MEMORY_LAYOUT_DEFAULT
>           -----
>           TEXT_BASE
>
> +config MEMORY_LAYOUT_ALTERNATE
> +       bool "use alternate memory layout"
> +       help
> +         select this option to use barebox's alternate memory layout:
> +
> +         TEXT_BASE
> +         -----
> +         malloc heap
> +         -----
> +         stack
> +
>  config MEMORY_LAYOUT_FIXED
>         bool "manually assign a memory layout"
>         help
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>



--=20
Best regards,
  Antony Pavlov

--047d7b10c7d522bf5f04d928ca6d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On 30 March 2013 15:25, Krzysztof Halasa <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:khc@pm.waw.pl" target=3D"_blank">khc@pm.waw.pl</a>&gt;</span>=
 wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px;=
margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-color=
:rgb(204,204,204);border-left-style:solid;padding-left:1ex">Signed-off-by: =
Krzysztof Ha=C5=82asa &lt;<a href=3D"mailto:khc@pm.waw.pl">khc@pm.waw.pl</a=
>&gt;<br>

<br>
--- a/arch/arm/cpu/start.c<br>
+++ b/arch/arm/cpu/start.c<br>
@@ -58,7 +58,6 @@ static noinline __noreturn void __start(uint32_t membase,=
 uint32_t memsize,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 endmem -=3D STACK_SIZE; /* Stack */<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (IS_ENABLED(CONFIG_MMU_EARLY)) {<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 endmem &amp;=3D ~0x=
3fff;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 endmem -=3D SZ_16K;=
 /* ttb */</blockquote><div><br></div><div style>This is a formatting chang=
e not functional change. Please, move it to a separate patch.</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-r=
ight:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-l=
eft-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
=C2=A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margin-top:0p=
x;margin-right:0px;margin-bottom:0px;margin-left:0.8ex;border-left-width:1p=
x;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1=
ex">
<br>
@@ -66,6 +65,9 @@ static noinline __noreturn void __start(uint32_t membase,=
 uint32_t memsize,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 mmu_early_enable(membase, memsize, endmem);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
+#ifdef CONFIG_MEMORY_LAYOUT_ALTERNATE<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 malloc_end =3D endmem;<b=
r>
+#else<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if ((unsigned long)_text &gt; membase + memsize=
 ||<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 (unsigned long)_text &lt; membase)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /*<br>
@@ -76,15 +78,21 @@ static noinline __noreturn void __start(uint32_t membas=
e, uint32_t memsize,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 malloc_end =3D endm=
em;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 malloc_end =3D (uns=
igned long)_text;<br>
+#endif<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /*<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* Maximum malloc space is the Kconfig val=
ue if given<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* or 64MB.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (MALLOC_SIZE &gt; 0) {<br>
- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 malloc_start =3D malloc_=
end - MALLOC_SIZE;<br>
- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (malloc_start &lt; me=
mbase)<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (malloc_end &gt; memb=
ase + MALLOC_SIZE)<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 malloc_start =3D malloc_end - MALLOC_SIZE;<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 malloc_start =3D membase;<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (malloc_start &lt; (u=
nsigned long)_end &amp;&amp;<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 malloc_end=
 &gt; (unsigned long)_text)<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 /* malloc area follows text */<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 malloc_start =3D (unsigned long)_end;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 malloc_start =3D ma=
lloc_end - (malloc_end - membase) / 2;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (malloc_end - ma=
lloc_start &gt; SZ_64M)<br>
--- a/common/Kconfig<br>
+++ b/common/Kconfig<br>
@@ -161,7 +161,7 @@ choice<br>
=C2=A0config MEMORY_LAYOUT_DEFAULT<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool &quot;use default memory layout&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 help<br>
- =C2=A0 =C2=A0 =C2=A0 =C2=A0 select this option to use bareboxs standard m=
emory layout:<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 select this option to use barebox&#39;s stand=
ard memory layout:<br>
<br></blockquote><div style><br></div><div style>This is a &quot;fix typo&q=
uot; change. Please, move it to a separate patch.</div><div style><br></div=
><blockquote class=3D"gmail_quote" style=3D"margin-top:0px;margin-right:0px=
;margin-bottom:0px;margin-left:0.8ex;border-left-width:1px;border-left-colo=
r:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 stack<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -----<br>
@@ -169,6 +169,17 @@ config MEMORY_LAYOUT_DEFAULT<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -----<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TEXT_BASE<br>
<br>
+config MEMORY_LAYOUT_ALTERNATE<br>
+ =C2=A0 =C2=A0 =C2=A0 bool &quot;use alternate memory layout&quot;<br>
+ =C2=A0 =C2=A0 =C2=A0 help<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 select this option to use barebox&#39;s alter=
nate memory layout:<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 TEXT_BASE<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 -----<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 malloc heap<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 -----<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 stack<br>
+<br>
=C2=A0config MEMORY_LAYOUT_FIXED<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool &quot;manually assign a memory layout&quot=
;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 help<br>
<br>
_______________________________________________<br>
barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead.org<=
/a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=3D"_=
blank">http://lists.infradead.org/mailman/listinfo/barebox</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Best regards=
,<br>=C2=A0 Antony Pavlov
</div></div>

--047d7b10c7d522bf5f04d928ca6d--


--===============6205620069136401647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6205620069136401647==--
