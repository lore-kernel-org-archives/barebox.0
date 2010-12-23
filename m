Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PVsvl-0001vv-Mb
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 21:42:38 +0000
Received: by eyd9 with SMTP id 9so4316365eyd.36
	for <barebox@lists.infradead.org>; Thu, 23 Dec 2010 13:42:34 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 23 Dec 2010 22:42:34 +0100
Message-ID: <AANLkTik+7KJrf3H6ZW3i9pA115p2Gn=k=CXYHg5YJwRY@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2050211041=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Add a board specific fancy banner
To: barebox@lists.infradead.org

--===============2050211041==
Content-Type: multipart/alternative; boundary=0015174bef2860bcdf04981abf28

--0015174bef2860bcdf04981abf28
Content-Type: text/plain; charset=ISO-8859-1

Hello,

This is the first time I'm using git and submit a patch so if I made a
mistake be cool :)
This is a small patch allowing the user to define a fancy banner for
barebox. I don't know
if you'll use it but it's kind of an experience for me.

I have ported barebox to the altera nios2 processor. I think I'll submit the
corresponding patch
on january. However, I'll need some advices to generate such a big (or lot
of small) patch.

Thanks,
Franck.

-----

from: franck JULLIEN <franck.jullien@gmail.com>
Date: Thu, 23 Dec 2010 22:31:22 +0100
Subject: [PATCH] Add a board specific fancy banner

---
 common/Kconfig   |    6 ++++++
 common/console.c |   10 ++++++++++
 2 files changed, 16 insertions(+), 0 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 617f640..d46c8fc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -248,6 +248,12 @@ config HUSH_FANCY_PROMPT
   Allow to set PS1 from the command line. PS1 can have several escaped
commands
   like \h for CONFIG_BOARDINFO or \w for the current working directory.

+config BOARD_BANNER
+ bool
+ prompt "allow a board specific fancy banner"
+ help
+  Allow to define a custom board banner (you must define BOARD_BANNER in
your config.h)
+
 config HUSH_GETOPT
  bool
  depends on SHELL_HUSH
diff --git a/common/console.c b/common/console.c
index 82786f2..8a830e3 100644
--- a/common/console.c
+++ b/common/console.c
@@ -46,7 +46,17 @@ EXPORT_SYMBOL(console_list);
 static void display_banner (void)
 {
  printf (RELOC("\n\n%s\n\n"), RELOC_VAR(version_string));
+#ifdef CONFIG_BOARD_BANNER
+#ifdef BOARD_BANNER
+ printf(RELOC(BOARD_BANNER));
+#else
+#define VT100_YELLOW "\033[1;33m"
+#define VT100_RESET "\033[1;0m"
+ printf(RELOC("Board: " VT100_YELLOW CONFIG_BOARDINFO VT100_RESET "\n"));
+#endif
+#else
  printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
+#endif
 }

 static int __early_initdata initialized = 0;
-- 
1.7.0.4

--0015174bef2860bcdf04981abf28
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<div><br></div><div>This is the first time I&#39;m using git and subm=
it a patch so if I made a mistake be cool :)</div><div>This is a small patc=
h allowing the user to define a fancy banner for barebox. I don&#39;t know<=
/div>
<div>if you&#39;ll use it but it&#39;s kind of an experience for me.</div><=
div><br></div><div>I have ported barebox to the altera nios2 processor. I t=
hink I&#39;ll submit the corresponding patch</div><div>on january. However,=
 I&#39;ll need some advices to generate such a big (or lot of small) patch.=
</div>
<div><br></div><div>Thanks,</div><div>Franck.</div><div><br></div><div>----=
-<br><div><br></div><div><div>from: franck JULLIEN &lt;<a href=3D"mailto:fr=
anck.jullien@gmail.com">franck.jullien@gmail.com</a>&gt;</div><div>Date: Th=
u, 23 Dec 2010 22:31:22 +0100</div>
<div>Subject: [PATCH] Add a board specific fancy banner</div><div><br></div=
><div>---</div><div>=A0common/Kconfig =A0 | =A0 =A06 ++++++</div><div>=A0co=
mmon/console.c | =A0 10 ++++++++++</div><div>=A02 files changed, 16 inserti=
ons(+), 0 deletions(-)</div>
<div><br></div><div>diff --git a/common/Kconfig b/common/Kconfig</div><div>=
index 617f640..d46c8fc 100644</div><div>--- a/common/Kconfig</div><div>+++ =
b/common/Kconfig</div><div>@@ -248,6 +248,12 @@ config HUSH_FANCY_PROMPT</d=
iv>
<div>=A0<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> =
=A0Allow to set PS1 from the command line. PS1 can have several escaped com=
mands</div><div>=A0<span class=3D"Apple-tab-span" style=3D"white-space:pre"=
>	</span> =A0like \h for CONFIG_BOARDINFO or \w for the current working dir=
ectory.</div>
<div>=A0</div><div>+config BOARD_BANNER</div><div>+<span class=3D"Apple-tab=
-span" style=3D"white-space:pre">	</span>bool</div><div>+<span class=3D"App=
le-tab-span" style=3D"white-space:pre">	</span>prompt &quot;allow a board s=
pecific fancy banner&quot;</div>
<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>help=
</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</spa=
n> =A0Allow to define a custom board banner (you must define BOARD_BANNER i=
n your config.h)</div>
<div>+</div><div>=A0config HUSH_GETOPT</div><div>=A0<span class=3D"Apple-ta=
b-span" style=3D"white-space:pre">	</span>bool</div><div>=A0<span class=3D"=
Apple-tab-span" style=3D"white-space:pre">	</span>depends on SHELL_HUSH</di=
v><div>diff --git a/common/console.c b/common/console.c</div>
<div>index 82786f2..8a830e3 100644</div><div>--- a/common/console.c</div><d=
iv>+++ b/common/console.c</div><div>@@ -46,7 +46,17 @@ EXPORT_SYMBOL(consol=
e_list);</div><div>=A0static void display_banner (void)</div><div>=A0{</div=
>
<div>=A0<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>pr=
intf (RELOC(&quot;\n\n%s\n\n&quot;), RELOC_VAR(version_string));</div><div>=
+#ifdef CONFIG_BOARD_BANNER</div><div>+#ifdef BOARD_BANNER</div><div>+<span=
 class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>printf(RELOC(BO=
ARD_BANNER));</div>
<div>+#else</div><div>+#define VT100_YELLOW<span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">	</span>&quot;\033[1;33m&quot;</div><div>+#define =
VT100_RESET<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>&quot;\033[1;0m&quot;</div>
<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>prin=
tf(RELOC(&quot;Board: &quot; VT100_YELLOW CONFIG_BOARDINFO VT100_RESET &quo=
t;\n&quot;));</div><div>+#endif</div><div>+#else</div><div>=A0<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>printf(RELOC(&quot;Bo=
ard: &quot; CONFIG_BOARDINFO &quot;\n&quot;));</div>
<div>+#endif</div><div>=A0}</div><div>=A0</div><div>=A0static int __early_i=
nitdata initialized =3D 0;</div><div>--=A0</div><div>1.7.0.4</div><div><br>=
</div></div></div>

--0015174bef2860bcdf04981abf28--


--===============2050211041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2050211041==--
