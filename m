Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f53.google.com ([74.125.82.53])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TxFBt-00013L-IR
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 11:05:32 +0000
Received: by mail-wg0-f53.google.com with SMTP id fn15so3558921wgb.8
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2013 03:04:19 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1358764040-10690-4-git-send-email-plagnioj@jcrosoft.com>
References: <20130121102319.GE26329@game.jcrosoft.org>
 <1358764040-10690-1-git-send-email-plagnioj@jcrosoft.com>
 <1358764040-10690-4-git-send-email-plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 12:04:19 +0100
Message-ID: <CAB_54W5-9sNc7cdLWo_RHK0y7qinJP-0-gGVK9=6rwEtLuya7A@mail.gmail.com>
From: Alexander Aring <alex.aring@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8769840020172532683=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 04/10] at91: add test commamd to emulate bootrom boot
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

--===============8769840020172532683==
Content-Type: multipart/alternative; boundary=047d7bfd046e3554f904d3ca6c5f

--047d7bfd046e3554f904d3ca6c5f
Content-Type: text/plain; charset=UTF-8

hi


2013/1/21 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-at91/Kconfig         |    6 +++
>  arch/arm/mach-at91/Makefile        |    1 +
>  arch/arm/mach-at91/boot_test_cmd.c |   95
> ++++++++++++++++++++++++++++++++++++
>  3 files changed, 102 insertions(+)
>  create mode 100644 arch/arm/mach-at91/boot_test_cmd.c
>
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 0fd9122..2815d5f 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -485,6 +485,12 @@ config CMD_AT91MUX
>         bool "at91mux dump command"
>         default y
>
> +config CMD_AT91_BOOT_TEST
> +       bool "at91_boot_test"
> +       help
> +         allow to upload a boot binary to sram and execute it
> +         usefull to test bootstrap or barebox lowlevel init
> +
>  endif
>
>  endif
> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> index 53b4dd8..4404d23 100644
> --- a/arch/arm/mach-at91/Makefile
> +++ b/arch/arm/mach-at91/Makefile
> @@ -1,4 +1,5 @@
>  obj-y += setup.o clock.o gpio.o
> +obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
>
>  lowlevel_init-y = at91sam926x_lowlevel_init.o
>  lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
> diff --git a/arch/arm/mach-at91/boot_test_cmd.c
> b/arch/arm/mach-at91/boot_test_cmd.c
> new file mode 100644
> index 0000000..90093d8
> --- /dev/null
> +++ b/arch/arm/mach-at91/boot_test_cmd.c
> @@ -0,0 +1,95 @@
> +/*
> + * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <
> plagnioj@jcrosoft.com>
> + *
> + * Under GPLv2 only
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <libbb.h>
> +#include <getopt.h>
> +#include <fs.h>
> +#include <fcntl.h>
> +#include <malloc.h>
> +#include <errno.h>
> +
> +static int do_at91_boot_test(int argc, char *argv[])
> +{
> +       int opt;
> +       u32 *buf32;
> +       void *buf;
> +       void (*jump)(void) = NULL;
> +       int fd;
> +       int ret = 1;
> +       char *sram = "/dev/sram0";
> +       u32 read_size, write_size;
> +       u32 tmp = 0;
> +
> +       while ((opt = getopt(argc, argv, "j:s:")) > 0) {
> +               switch (opt) {
> +               case 'j':
> +                       jump = (void*)simple_strtoul(optarg, NULL, 0);
> +                       break;
> +               case 's':
> +                       sram = optarg;
> +                       break;
> +               default:
> +                       return COMMAND_ERROR_USAGE;
> +               }
> +       }
> +
> +       if (argc < optind + 1)
> +               return COMMAND_ERROR_USAGE;
> +
> +       buf32 = buf = read_file(argv[optind], &read_size);
> +       if (!buf)
> +               return -EINVAL;
> +
> +       write_size = buf32[5];
> +
> +       printf("size of the size %d\n", read_size);
> +       printf("size to load in sram %d\n", write_size);
> +
> +       if (write_size > read_size) {
> +               printf("file smaller than requested sram loading size (%d
> < %d)\n", write_size, read_size);
> +               goto err;
> +       }
> +
> +       fd = open(sram, O_WRONLY);
> +       if (fd < 0) {
> +               printf("could not open %s: %s\n", sram, errno_str());
> +               ret = fd;
> +               goto err;
> +       }
> +
> +       while(write_size) {
>
while (foo)


> +               tmp = write(fd, buf, write_size);
> +               if (tmp < 0) {
> +                       perror("write");
> +                       goto err_open;
> +               }
> +               buf += tmp;
> +               write_size -= tmp;
> +       }
> +
> +       shutdown_barebox();
> +
> +       jump();
> +
> +err_open:
> +       close(fd);
> +err:
> +       free(buf);
> +       return ret;
> +}
> +
> +BAREBOX_CMD_HELP_START(at91_boot_test)
> +BAREBOX_CMD_HELP_USAGE("at91_boot_test [-j <jump addr>] [-s <sram>]
> file\n")
> +BAREBOX_CMD_HELP_SHORT("upload the binary to sram and jump as will do the
> romcode\n")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(at91_boot_test)
> +       .cmd            = do_at91_boot_test,
> +       .usage          = "upload the binary to sram and jump as will do
> the romcode",
> +       BAREBOX_CMD_HELP(cmd_at91_boot_test_help)
> +BAREBOX_CMD_END
> --
> 1.7.10.4
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

--047d7bfd046e3554f904d3ca6c5f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi<br><div class=3D"gmail_extra"><br><br><div class=3D"gma=
il_quote">2013/1/21 Jean-Christophe PLAGNIOL-VILLARD <span dir=3D"ltr">&lt;=
<a href=3D"mailto:plagnioj@jcrosoft.com" target=3D"_blank">plagnioj@jcrosof=
t.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Signed-off-by: Jean-Christophe PLAGNIOL-VILL=
ARD &lt;<a href=3D"mailto:plagnioj@jcrosoft.com">plagnioj@jcrosoft.com</a>&=
gt;<br>

---<br>
=C2=A0arch/arm/mach-at91/Kconfig =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=
=A06 +++<br>
=C2=A0arch/arm/mach-at91/Makefile =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=
=A01 +<br>
=C2=A0arch/arm/mach-at91/boot_test_cmd.c | =C2=A0 95 ++++++++++++++++++++++=
++++++++++++++<br>
=C2=A03 files changed, 102 insertions(+)<br>
=C2=A0create mode 100644 arch/arm/mach-at91/boot_test_cmd.c<br>
<br>
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig<br>
index 0fd9122..2815d5f 100644<br>
--- a/arch/arm/mach-at91/Kconfig<br>
+++ b/arch/arm/mach-at91/Kconfig<br>
@@ -485,6 +485,12 @@ config CMD_AT91MUX<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool &quot;at91mux dump command&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 default y<br>
<br>
+config CMD_AT91_BOOT_TEST<br>
+ =C2=A0 =C2=A0 =C2=A0 bool &quot;at91_boot_test&quot;<br>
+ =C2=A0 =C2=A0 =C2=A0 help<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 allow to upload a boot binary to sram and exe=
cute it<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 usefull to test bootstrap or barebox lowlevel=
 init<br>
+<br>
=C2=A0endif<br>
<br>
=C2=A0endif<br>
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile<br>
index 53b4dd8..4404d23 100644<br>
--- a/arch/arm/mach-at91/Makefile<br>
+++ b/arch/arm/mach-at91/Makefile<br>
@@ -1,4 +1,5 @@<br>
=C2=A0obj-y +=3D setup.o clock.o gpio.o<br>
+obj-$(CONFIG_CMD_AT91_BOOT_TEST) +=3D boot_test_cmd.o<br>
<br>
=C2=A0lowlevel_init-y =3D at91sam926x_lowlevel_init.o<br>
=C2=A0lowlevel_init-$(CONFIG_ARCH_AT91RM9200) =3D at91rm9200_lowlevel_init.=
o<br>
diff --git a/arch/arm/mach-at91/boot_test_cmd.c b/arch/arm/mach-at91/boot_t=
est_cmd.c<br>
new file mode 100644<br>
index 0000000..90093d8<br>
--- /dev/null<br>
+++ b/arch/arm/mach-at91/boot_test_cmd.c<br>
@@ -0,0 +1,95 @@<br>
+/*<br>
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD &lt;<a href=3D"mail=
to:plagnioj@jcrosoft.com">plagnioj@jcrosoft.com</a>&gt;<br>
+ *<br>
+ * Under GPLv2 only<br>
+ */<br>
+<br>
+#include &lt;common.h&gt;<br>
+#include &lt;command.h&gt;<br>
+#include &lt;libbb.h&gt;<br>
+#include &lt;getopt.h&gt;<br>
+#include &lt;fs.h&gt;<br>
+#include &lt;fcntl.h&gt;<br>
+#include &lt;malloc.h&gt;<br>
+#include &lt;errno.h&gt;<br>
+<br>
+static int do_at91_boot_test(int argc, char *argv[])<br>
+{<br>
+ =C2=A0 =C2=A0 =C2=A0 int opt;<br>
+ =C2=A0 =C2=A0 =C2=A0 u32 *buf32;<br>
+ =C2=A0 =C2=A0 =C2=A0 void *buf;<br>
+ =C2=A0 =C2=A0 =C2=A0 void (*jump)(void) =3D NULL;<br>
+ =C2=A0 =C2=A0 =C2=A0 int fd;<br>
+ =C2=A0 =C2=A0 =C2=A0 int ret =3D 1;<br>
+ =C2=A0 =C2=A0 =C2=A0 char *sram =3D &quot;/dev/sram0&quot;;<br>
+ =C2=A0 =C2=A0 =C2=A0 u32 read_size, write_size;<br>
+ =C2=A0 =C2=A0 =C2=A0 u32 tmp =3D 0;<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 while ((opt =3D getopt(argc, argv, &quot;j:s:&quot;)=
) &gt; 0) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 switch (opt) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 case &#39;j&#39;:<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 jump =3D (void*)simple_strtoul(optarg, NULL, 0);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 break;<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 case &#39;s&#39;:<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 sram =3D optarg;<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 break;<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 default:<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 return COMMAND_ERROR_USAGE;<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+ =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 if (argc &lt; optind + 1)<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return COMMAND_ERROR_USA=
GE;<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 buf32 =3D buf =3D read_file(argv[optind], &amp;read_=
size);<br>
+ =C2=A0 =C2=A0 =C2=A0 if (!buf)<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EINVAL;<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 write_size =3D buf32[5];<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 printf(&quot;size of the size %d\n&quot;, read_size)=
;<br>
+ =C2=A0 =C2=A0 =C2=A0 printf(&quot;size to load in sram %d\n&quot;, write_=
size);<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 if (write_size &gt; read_size) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf(&quot;file smalle=
r than requested sram loading size (%d &lt; %d)\n&quot;, write_size, read_s=
ize);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto err;<br>
+ =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 fd =3D open(sram, O_WRONLY);<br>
+ =C2=A0 =C2=A0 =C2=A0 if (fd &lt; 0) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf(&quot;could not o=
pen %s: %s\n&quot;, sram, errno_str());<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D fd;<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto err;<br>
+ =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 while(write_size) {<br></blockquote><div>while (foo)=
<br>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tmp =3D write(fd, buf, w=
rite_size);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (tmp &lt; 0) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 perror(&quot;write&quot;);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 goto err_open;<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 buf +=3D tmp;<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 write_size -=3D tmp;<br>
+ =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 shutdown_barebox();<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 jump();<br>
+<br>
+err_open:<br>
+ =C2=A0 =C2=A0 =C2=A0 close(fd);<br>
+err:<br>
+ =C2=A0 =C2=A0 =C2=A0 free(buf);<br>
+ =C2=A0 =C2=A0 =C2=A0 return ret;<br>
+}<br>
+<br>
+BAREBOX_CMD_HELP_START(at91_boot_test)<br>
+BAREBOX_CMD_HELP_USAGE(&quot;at91_boot_test [-j &lt;jump addr&gt;] [-s &lt=
;sram&gt;] file\n&quot;)<br>
+BAREBOX_CMD_HELP_SHORT(&quot;upload the binary to sram and jump as will do=
 the romcode\n&quot;)<br>
+BAREBOX_CMD_HELP_END<br>
+<br>
+BAREBOX_CMD_START(at91_boot_test)<br>
+ =C2=A0 =C2=A0 =C2=A0 .cmd =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D do=
_at91_boot_test,<br>
+ =C2=A0 =C2=A0 =C2=A0 .usage =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;u=
pload the binary to sram and jump as will do the romcode&quot;,<br>
+ =C2=A0 =C2=A0 =C2=A0 BAREBOX_CMD_HELP(cmd_at91_boot_test_help)<br>
+BAREBOX_CMD_END<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.10.4<br>
<br>
<br>
_______________________________________________<br>
barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead.org<=
/a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=3D"_=
blank">http://lists.infradead.org/mailman/listinfo/barebox</a><br>
</font></span></blockquote></div><br></div></div>

--047d7bfd046e3554f904d3ca6c5f--


--===============8769840020172532683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8769840020172532683==--
