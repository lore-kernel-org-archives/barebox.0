Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f175.google.com ([209.85.212.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TxFBx-00013B-Hc
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 11:05:33 +0000
Received: by mail-wi0-f175.google.com with SMTP id hm11so7018479wib.2
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2013 03:04:16 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1358764040-10690-8-git-send-email-plagnioj@jcrosoft.com>
References: <20130121102319.GE26329@game.jcrosoft.org>
 <1358764040-10690-1-git-send-email-plagnioj@jcrosoft.com>
 <1358764040-10690-8-git-send-email-plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 12:04:16 +0100
Message-ID: <CAB_54W76DctVP5c_aeghd+Bh+7Lr86sGLJ=BdGQrg40npCTnYA@mail.gmail.com>
From: Alexander Aring <alex.aring@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0688326851371528376=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/10] introduce common bootstrap code
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

--===============0688326851371528376==
Content-Type: multipart/alternative; boundary=089e0122896c071ca104d3ca6c60

--089e0122896c071ca104d3ca6c60
Content-Type: text/plain; charset=UTF-8

hi,

found a little 'things'. Maybe it's matter.

2013/1/21 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

> This will allow to have a generic code to create different bootstrap
>
> As example
> Barebox as TI Xloader
> Barebox as AT91 Bootstrap
>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/bootstrap.h    |   34 ++++++++++++++
>  lib/Kconfig            |    2 +
>  lib/Makefile           |    1 +
>  lib/bootstrap/Kconfig  |   13 ++++++
>  lib/bootstrap/Makefile |    3 ++
>  lib/bootstrap/common.c |   21 +++++++++
>  lib/bootstrap/devfs.c  |  118
> ++++++++++++++++++++++++++++++++++++++++++++++++
>  lib/bootstrap/disk.c   |   37 +++++++++++++++
>  8 files changed, 229 insertions(+)
>  create mode 100644 include/bootstrap.h
>  create mode 100644 lib/bootstrap/Kconfig
>  create mode 100644 lib/bootstrap/Makefile
>  create mode 100644 lib/bootstrap/common.c
>  create mode 100644 lib/bootstrap/devfs.c
>  create mode 100644 lib/bootstrap/disk.c
>
> diff --git a/include/bootstrap.h b/include/bootstrap.h
> new file mode 100644
> index 0000000..26e9dbc
> --- /dev/null
> +++ b/include/bootstrap.h
> @@ -0,0 +1,34 @@
> +/*
> + * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <
> plagnio@jcrosoft.com>
> + *
> + * Under GPLv2
> + */
> +
> +#ifndef __BOOSTRAP_H__
> +#define __BOOSTRAP_H__
> +
> +#define bootstrap_err(fmt, arg...) printf(fmt, ##arg)
> +
> +void bootstrap_boot(int (*func)(void), bool barebox);
> +
> +#ifdef CONFIG_BOOTSTRAP_DEVFS
> +void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
> +                          int default_size, int max_size);
> +#else
> +static inline void* bootstrap_read_devfs(char *devname, bool use_bb, int
> offset,
> +                          int default_size, int max_size)
> +{
> +       return NULL;
> +}
> +#endif
> +
> +#ifdef CONFIG_BOOTSTRAP_DISK
> +void* bootstrap_read_disk(char *devname);
> +#else
> +static inline void* bootstrap_read_disk(char *devname)
> +{
> +       return NULL;
> +}
> +#endif
> +
> +#endif /* __BOOSTRAP_H__ */
> diff --git a/lib/Kconfig b/lib/Kconfig
> index db8a6ad..4578353 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -52,4 +52,6 @@ config LIBMTD
>
>  source lib/gui/Kconfig
>
> +source lib/bootstrap/Kconfig
> +
>  endmenu
> diff --git a/lib/Makefile b/lib/Makefile
> index 85f4ec9..43f6ea3 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -1,3 +1,4 @@
> +obj-$(CONFIG_BOOTSTRAP)        += bootstrap/
>  obj-y                  += ctype.o
>  obj-y                  += rbtree.o
>  obj-y                  += display_options.o
> diff --git a/lib/bootstrap/Kconfig b/lib/bootstrap/Kconfig
> new file mode 100644
> index 0000000..558da00
> --- /dev/null
> +++ b/lib/bootstrap/Kconfig
> @@ -0,0 +1,13 @@
> +menuconfig BOOTSTRAP
> +       bool "Library bootstrap routines           "
> +       depends on SHELL_NONE
> +
> +if BOOTSTRAP
> +
> +config BOOTSTRAP_DEVFS
> +       bool "devfs support"
> +
> +config BOOTSTRAP_DISK
> +       bool "disk support"
> +
> +endif
> diff --git a/lib/bootstrap/Makefile b/lib/bootstrap/Makefile
> new file mode 100644
> index 0000000..cbaa49f
> --- /dev/null
> +++ b/lib/bootstrap/Makefile
> @@ -0,0 +1,3 @@
> +obj-y                          += common.o
> +obj-$(CONFIG_BOOTSTRAP_DEVFS)  += devfs.o
> +obj-$(CONFIG_BOOTSTRAP_DISK)   += disk.o
> diff --git a/lib/bootstrap/common.c b/lib/bootstrap/common.c
> new file mode 100644
> index 0000000..3652698
> --- /dev/null
> +++ b/lib/bootstrap/common.c
> @@ -0,0 +1,21 @@
> +/*
> + * Copyright (C) 2011 Sascha Hauer, Pengutronix
> + * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <
> plagnio@jcrosoft.com>
> + *
> + * Under GPLv2
> + */
> +
> +#include <common.h>
> +#include <bootstrap.h>
> +#include <filetype.h>
> +
> +void bootstrap_boot(int (*func)(void), bool barebox)
> +{
> +       if (barebox && !is_barebox_head((void*)func))
> +               return;
> +
> +       shutdown_barebox();
> +       func();
> +
> +       while (1);
> +}
> diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
> new file mode 100644
> index 0000000..25d07c7
> --- /dev/null
> +++ b/lib/bootstrap/devfs.c
> @@ -0,0 +1,118 @@
> +/*
> + * Copyright (C) 2011 Sascha Hauer, Pengutronix
> + * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <
> plagnio@jcrosoft.com>
> + *
> + * Under GPLv2
> + */
> +
> +#include <common.h>
> +#include <partition.h>
> +#include <nand.h>
> +#include <driver.h>
> +#include <linux/mtd/mtd.h>
> +#include <fcntl.h>
> +#include <filetype.h>
> +#include <sizes.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <bootstrap.h>
> +
> +#if defined(CONFIG_ARM) || defined(CONFIG_MIPS)
> +#if defined(CONFIG_ARM)
> +#define BAREBOX_HEAD_SIZE              ARM_HEAD_SIZE
> +#define BAREBOX_HEAD_SIZE_OFFSET       ARM_HEAD_SIZE_OFFSET
> +#elif defined(CONFIG_MIPS)
> +#define BAREBOX_HEAD_SIZE              MIPS_HEAD_SIZE
> +#define BAREBOX_HEAD_SIZE_OFFSET       MIPS_HEAD_SIZE_OFFSET
> +#endif
> +
> +static void *read_image_head(const char *name)
> +{
> +       void *header = xmalloc(BAREBOX_HEAD_SIZE);
> +       struct cdev *cdev;
> +       int ret;
> +
> +       cdev = cdev_open(name, O_RDONLY);
> +       if (!cdev) {
> +               bootstrap_err("failed to open partition\n");
> +               return NULL;
> +       }
> +
> +       ret = cdev_read(cdev, header, BAREBOX_HEAD_SIZE, 0, 0);
>
check on error here?


> +       cdev_close(cdev);
> +
> +       if (ret != BAREBOX_HEAD_SIZE) {
> +               bootstrap_err("failed to read from partition\n");
> +               return NULL;
> +       }
> +
> +       return header;
> +}
> +
> +static unsigned int get_image_size(void *head)
> +{
> +       unsigned int ret = 0;
> +       unsigned int *psize = head + BAREBOX_HEAD_SIZE_OFFSET;
> +
> +       if (is_barebox_head(head))
> +               ret = *psize;
> +       debug("Detected barebox image size %u\n", ret);
> +
> +       return ret;
> +}
> +#else
> +static void *read_image_head(const char *name)
> +{
> +       return NULL;
> +}
> +
> +static unsigned int get_image_size(void *head)
> +{
> +       return 0;
> +}
> +#endif
> +
> +void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
> +                          int default_size, int max_size)
> +{
> +       int ret;
> +       int size = 0;
> +       void *to, *header;
> +       struct cdev *cdev;
> +       char *partname = "x";
> +
> +       devfs_add_partition(devname, offset, max_size,
> DEVFS_PARTITION_FIXED, partname);
> +       if (use_bb) {
> +               dev_add_bb_dev(partname, "bbx");
> +               partname = "bbx";
> +       }
> +
> +       header = read_image_head(partname);
> +       if (header) {
> +               size = get_image_size(header);
> +               if (!size)
> +                       bootstrap_err("%s: failed to get image size\n",
> devname);
> +       }
> +
> +       if (!size) {
> +               size = default_size;
> +               bootstrap_err("%s: failed to detect barebox and it's image
> size so use %d\n",
> +                        devname, size);
> +       }
> +
> +       to = xmalloc(size);
>
check on null here?


> +
> +       cdev = cdev_open(partname, O_RDONLY);
> +       if (!cdev) {
> +               bootstrap_err("%s: failed to open %s\n", devname,
> partname);
> +               return NULL;
> +       }
> +
> +       ret = cdev_read(cdev, to, size, 0, 0);
> +       if (ret != size) {
> +               bootstrap_err("%s: failed to read from %s\n", devname,
> partname);
> +               return NULL;
> +       }
> +
> +       return to;
> +}
> diff --git a/lib/bootstrap/disk.c b/lib/bootstrap/disk.c
> new file mode 100644
> index 0000000..fad8990
> --- /dev/null
> +++ b/lib/bootstrap/disk.c
> @@ -0,0 +1,37 @@
> +/*
> + * Copyright (C) 2011 Sascha Hauer, Pengutronix
> + * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <
> plagnio@jcrosoft.com>
> + *
> + * Under GPLv2
> + */
> +
> +#include <common.h>
> +#include <fs.h>
> +#include <fcntl.h>
> +#include <sizes.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <bootstrap.h>
> +
> +void* bootstrap_read_disk(char *dev)
> +{
> +       int ret;
> +       void *buf;
> +       int len;
> +       char *path = "/";
> +
> +       ret = mount(dev, "fat", path);
> +       if (ret) {
> +               bootstrap_err("mounting %s failed with %d\n", dev, ret);
> +               return NULL;
> +       }
> +
> +       buf = read_file("/barebox.bin", &len);
>
Can be set to read_file("/barebox.bin", null);


> +       if (!buf) {
> +               bootstrap_err("could not read barebox.bin from %s\n", dev);
> +               umount(path);
> +               return NULL;
> +       }
> +
> +       return buf;
> +}
> --
> 1.7.10.4
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

--089e0122896c071ca104d3ca6c60
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi,<br><div class=3D"gmail_extra"><br>found a little &#39;=
things&#39;. Maybe it&#39;s matter.<br><br><div class=3D"gmail_quote">2013/=
1/21 Jean-Christophe PLAGNIOL-VILLARD <span dir=3D"ltr">&lt;<a href=3D"mail=
to:plagnioj@jcrosoft.com" target=3D"_blank">plagnioj@jcrosoft.com</a>&gt;</=
span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">This will allow to have a generic code to cr=
eate different bootstrap<br>
<br>
As example<br>
Barebox as TI Xloader<br>
Barebox as AT91 Bootstrap<br>
<br>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD &lt;<a href=3D"mailto:plagn=
ioj@jcrosoft.com">plagnioj@jcrosoft.com</a>&gt;<br>
---<br>
=C2=A0include/bootstrap.h =C2=A0 =C2=A0| =C2=A0 34 ++++++++++++++<br>
=C2=A0lib/Kconfig =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A02=
 +<br>
=C2=A0lib/Makefile =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A01 +<br=
>
=C2=A0lib/bootstrap/Kconfig =C2=A0| =C2=A0 13 ++++++<br>
=C2=A0lib/bootstrap/Makefile | =C2=A0 =C2=A03 ++<br>
=C2=A0lib/bootstrap/common.c | =C2=A0 21 +++++++++<br>
=C2=A0lib/bootstrap/devfs.c =C2=A0| =C2=A0118 +++++++++++++++++++++++++++++=
+++++++++++++++++++<br>
=C2=A0lib/bootstrap/disk.c =C2=A0 | =C2=A0 37 +++++++++++++++<br>
=C2=A08 files changed, 229 insertions(+)<br>
=C2=A0create mode 100644 include/bootstrap.h<br>
=C2=A0create mode 100644 lib/bootstrap/Kconfig<br>
=C2=A0create mode 100644 lib/bootstrap/Makefile<br>
=C2=A0create mode 100644 lib/bootstrap/common.c<br>
=C2=A0create mode 100644 lib/bootstrap/devfs.c<br>
=C2=A0create mode 100644 lib/bootstrap/disk.c<br>
<br>
diff --git a/include/bootstrap.h b/include/bootstrap.h<br>
new file mode 100644<br>
index 0000000..26e9dbc<br>
--- /dev/null<br>
+++ b/include/bootstrap.h<br>
@@ -0,0 +1,34 @@<br>
+/*<br>
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD &lt;<a href=3D"mail=
to:plagnio@jcrosoft.com">plagnio@jcrosoft.com</a>&gt;<br>
+ *<br>
+ * Under GPLv2<br>
+ */<br>
+<br>
+#ifndef __BOOSTRAP_H__<br>
+#define __BOOSTRAP_H__<br>
+<br>
+#define bootstrap_err(fmt, arg...) printf(fmt, ##arg)<br>
+<br>
+void bootstrap_boot(int (*func)(void), bool barebox);<br>
+<br>
+#ifdef CONFIG_BOOTSTRAP_DEVFS<br>
+void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0int default_size, int max_size);<br>
+#else<br>
+static inline void* bootstrap_read_devfs(char *devname, bool use_bb, int o=
ffset,<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0int default_size, int max_size)<br>
+{<br>
+ =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+}<br>
+#endif<br>
+<br>
+#ifdef CONFIG_BOOTSTRAP_DISK<br>
+void* bootstrap_read_disk(char *devname);<br>
+#else<br>
+static inline void* bootstrap_read_disk(char *devname)<br>
+{<br>
+ =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+}<br>
+#endif<br>
+<br>
+#endif /* __BOOSTRAP_H__ */<br>
diff --git a/lib/Kconfig b/lib/Kconfig<br>
index db8a6ad..4578353 100644<br>
--- a/lib/Kconfig<br>
+++ b/lib/Kconfig<br>
@@ -52,4 +52,6 @@ config LIBMTD<br>
<br>
=C2=A0source lib/gui/Kconfig<br>
<br>
+source lib/bootstrap/Kconfig<br>
+<br>
=C2=A0endmenu<br>
diff --git a/lib/Makefile b/lib/Makefile<br>
index 85f4ec9..43f6ea3 100644<br>
--- a/lib/Makefile<br>
+++ b/lib/Makefile<br>
@@ -1,3 +1,4 @@<br>
+obj-$(CONFIG_BOOTSTRAP) =C2=A0 =C2=A0 =C2=A0 =C2=A0+=3D bootstrap/<br>
=C2=A0obj-y =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+=
=3D ctype.o<br>
=C2=A0obj-y =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+=
=3D rbtree.o<br>
=C2=A0obj-y =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+=
=3D display_options.o<br>
diff --git a/lib/bootstrap/Kconfig b/lib/bootstrap/Kconfig<br>
new file mode 100644<br>
index 0000000..558da00<br>
--- /dev/null<br>
+++ b/lib/bootstrap/Kconfig<br>
@@ -0,0 +1,13 @@<br>
+menuconfig BOOTSTRAP<br>
+ =C2=A0 =C2=A0 =C2=A0 bool &quot;Library bootstrap routines =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &quot;<br>
+ =C2=A0 =C2=A0 =C2=A0 depends on SHELL_NONE<br>
+<br>
+if BOOTSTRAP<br>
+<br>
+config BOOTSTRAP_DEVFS<br>
+ =C2=A0 =C2=A0 =C2=A0 bool &quot;devfs support&quot;<br>
+<br>
+config BOOTSTRAP_DISK<br>
+ =C2=A0 =C2=A0 =C2=A0 bool &quot;disk support&quot;<br>
+<br>
+endif<br>
diff --git a/lib/bootstrap/Makefile b/lib/bootstrap/Makefile<br>
new file mode 100644<br>
index 0000000..cbaa49f<br>
--- /dev/null<br>
+++ b/lib/bootstrap/Makefile<br>
@@ -0,0 +1,3 @@<br>
+obj-y =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0+=3D common.o<br>
+obj-$(CONFIG_BOOTSTRAP_DEVFS) =C2=A0+=3D devfs.o<br>
+obj-$(CONFIG_BOOTSTRAP_DISK) =C2=A0 +=3D disk.o<br>
diff --git a/lib/bootstrap/common.c b/lib/bootstrap/common.c<br>
new file mode 100644<br>
index 0000000..3652698<br>
--- /dev/null<br>
+++ b/lib/bootstrap/common.c<br>
@@ -0,0 +1,21 @@<br>
+/*<br>
+ * Copyright (C) 2011 Sascha Hauer, Pengutronix<br>
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD &lt;<a href=3D"mail=
to:plagnio@jcrosoft.com">plagnio@jcrosoft.com</a>&gt;<br>
+ *<br>
+ * Under GPLv2<br>
+ */<br>
+<br>
+#include &lt;common.h&gt;<br>
+#include &lt;bootstrap.h&gt;<br>
+#include &lt;filetype.h&gt;<br>
+<br>
+void bootstrap_boot(int (*func)(void), bool barebox)<br>
+{<br>
+ =C2=A0 =C2=A0 =C2=A0 if (barebox &amp;&amp; !is_barebox_head((void*)func)=
)<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 shutdown_barebox();<br>
+ =C2=A0 =C2=A0 =C2=A0 func();<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 while (1);<br>
+}<br>
diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c<br>
new file mode 100644<br>
index 0000000..25d07c7<br>
--- /dev/null<br>
+++ b/lib/bootstrap/devfs.c<br>
@@ -0,0 +1,118 @@<br>
+/*<br>
+ * Copyright (C) 2011 Sascha Hauer, Pengutronix<br>
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD &lt;<a href=3D"mail=
to:plagnio@jcrosoft.com">plagnio@jcrosoft.com</a>&gt;<br>
+ *<br>
+ * Under GPLv2<br>
+ */<br>
+<br>
+#include &lt;common.h&gt;<br>
+#include &lt;partition.h&gt;<br>
+#include &lt;nand.h&gt;<br>
+#include &lt;driver.h&gt;<br>
+#include &lt;linux/mtd/mtd.h&gt;<br>
+#include &lt;fcntl.h&gt;<br>
+#include &lt;filetype.h&gt;<br>
+#include &lt;sizes.h&gt;<br>
+#include &lt;errno.h&gt;<br>
+#include &lt;malloc.h&gt;<br>
+#include &lt;bootstrap.h&gt;<br>
+<br>
+#if defined(CONFIG_ARM) || defined(CONFIG_MIPS)<br>
+#if defined(CONFIG_ARM)<br>
+#define BAREBOX_HEAD_SIZE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
ARM_HEAD_SIZE<br>
+#define BAREBOX_HEAD_SIZE_OFFSET =C2=A0 =C2=A0 =C2=A0 ARM_HEAD_SIZE_OFFSET=
<br>
+#elif defined(CONFIG_MIPS)<br>
+#define BAREBOX_HEAD_SIZE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
MIPS_HEAD_SIZE<br>
+#define BAREBOX_HEAD_SIZE_OFFSET =C2=A0 =C2=A0 =C2=A0 MIPS_HEAD_SIZE_OFFSE=
T<br>
+#endif<br>
+<br>
+static void *read_image_head(const char *name)<br>
+{<br>
+ =C2=A0 =C2=A0 =C2=A0 void *header =3D xmalloc(BAREBOX_HEAD_SIZE);<br>
+ =C2=A0 =C2=A0 =C2=A0 struct cdev *cdev;<br>
+ =C2=A0 =C2=A0 =C2=A0 int ret;<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 cdev =3D cdev_open(name, O_RDONLY);<br>
+ =C2=A0 =C2=A0 =C2=A0 if (!cdev) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bootstrap_err(&quot;fail=
ed to open partition\n&quot;);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+ =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 ret =3D cdev_read(cdev, header, BAREBOX_HEAD_SIZE, 0=
, 0);<br></blockquote><div>check on error here?<br>=C2=A0<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">

+ =C2=A0 =C2=A0 =C2=A0 cdev_close(cdev);<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 if (ret !=3D BAREBOX_HEAD_SIZE) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bootstrap_err(&quot;fail=
ed to read from partition\n&quot;);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+ =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 return header;<br>
+}<br>
+<br>
+static unsigned int get_image_size(void *head)<br>
+{<br>
+ =C2=A0 =C2=A0 =C2=A0 unsigned int ret =3D 0;<br>
+ =C2=A0 =C2=A0 =C2=A0 unsigned int *psize =3D head + BAREBOX_HEAD_SIZE_OFF=
SET;<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 if (is_barebox_head(head))<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D *psize;<br>
+ =C2=A0 =C2=A0 =C2=A0 debug(&quot;Detected barebox image size %u\n&quot;, =
ret);<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 return ret;<br>
+}<br>
+#else<br>
+static void *read_image_head(const char *name)<br>
+{<br>
+ =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+}<br>
+<br>
+static unsigned int get_image_size(void *head)<br>
+{<br>
+ =C2=A0 =C2=A0 =C2=A0 return 0;<br>
+}<br>
+#endif<br>
+<br>
+void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0int default_size, int max_size)<br>
+{<br>
+ =C2=A0 =C2=A0 =C2=A0 int ret;<br>
+ =C2=A0 =C2=A0 =C2=A0 int size =3D 0;<br>
+ =C2=A0 =C2=A0 =C2=A0 void *to, *header;<br>
+ =C2=A0 =C2=A0 =C2=A0 struct cdev *cdev;<br>
+ =C2=A0 =C2=A0 =C2=A0 char *partname =3D &quot;x&quot;;<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 devfs_add_partition(devname, offset, max_size, DEVFS=
_PARTITION_FIXED, partname);<br>
+ =C2=A0 =C2=A0 =C2=A0 if (use_bb) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_add_bb_dev(partname,=
 &quot;bbx&quot;);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 partname =3D &quot;bbx&q=
uot;;<br>
+ =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 header =3D read_image_head(partname);<br>
+ =C2=A0 =C2=A0 =C2=A0 if (header) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size =3D get_image_size(=
header);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!size)<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 bootstrap_err(&quot;%s: failed to get image size\n&quot;, devname);<br>
+ =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 if (!size) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size =3D default_size;<b=
r>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bootstrap_err(&quot;%s: =
failed to detect barebox and it&#39;s image size so use %d\n&quot;,<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0devname, size);<br>
+ =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 to =3D xmalloc(size);<br></blockquote><div>check on =
null here?<br>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
+<br>
+ =C2=A0 =C2=A0 =C2=A0 cdev =3D cdev_open(partname, O_RDONLY);<br>
+ =C2=A0 =C2=A0 =C2=A0 if (!cdev) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bootstrap_err(&quot;%s: =
failed to open %s\n&quot;, devname, partname);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+ =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 ret =3D cdev_read(cdev, to, size, 0, 0);<br>
+ =C2=A0 =C2=A0 =C2=A0 if (ret !=3D size) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bootstrap_err(&quot;%s: =
failed to read from %s\n&quot;, devname, partname);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+ =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 return to;<br>
+}<br>
diff --git a/lib/bootstrap/disk.c b/lib/bootstrap/disk.c<br>
new file mode 100644<br>
index 0000000..fad8990<br>
--- /dev/null<br>
+++ b/lib/bootstrap/disk.c<br>
@@ -0,0 +1,37 @@<br>
+/*<br>
+ * Copyright (C) 2011 Sascha Hauer, Pengutronix<br>
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD &lt;<a href=3D"mail=
to:plagnio@jcrosoft.com">plagnio@jcrosoft.com</a>&gt;<br>
+ *<br>
+ * Under GPLv2<br>
+ */<br>
+<br>
+#include &lt;common.h&gt;<br>
+#include &lt;fs.h&gt;<br>
+#include &lt;fcntl.h&gt;<br>
+#include &lt;sizes.h&gt;<br>
+#include &lt;errno.h&gt;<br>
+#include &lt;malloc.h&gt;<br>
+#include &lt;bootstrap.h&gt;<br>
+<br>
+void* bootstrap_read_disk(char *dev)<br>
+{<br>
+ =C2=A0 =C2=A0 =C2=A0 int ret;<br>
+ =C2=A0 =C2=A0 =C2=A0 void *buf;<br>
+ =C2=A0 =C2=A0 =C2=A0 int len;<br>
+ =C2=A0 =C2=A0 =C2=A0 char *path =3D &quot;/&quot;;<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 ret =3D mount(dev, &quot;fat&quot;, path);<br>
+ =C2=A0 =C2=A0 =C2=A0 if (ret) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bootstrap_err(&quot;moun=
ting %s failed with %d\n&quot;, dev, ret);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+ =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 buf =3D read_file(&quot;/barebox.bin&quot;, &amp;len=
);<br></blockquote><div>Can be set to read_file(&quot;/barebox.bin&quot;, n=
ull);<br>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

+ =C2=A0 =C2=A0 =C2=A0 if (!buf) {<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bootstrap_err(&quot;coul=
d not read barebox.bin from %s\n&quot;, dev);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 umount(path);<br>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
+ =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+ =C2=A0 =C2=A0 =C2=A0 return buf;<br>
+}<br>
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

--089e0122896c071ca104d3ca6c60--


--===============0688326851371528376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0688326851371528376==--
