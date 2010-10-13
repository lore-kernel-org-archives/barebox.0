Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5zIA-0002qY-CX
	for barebox@lists.infradead.org; Wed, 13 Oct 2010 11:14:44 +0000
Date: Wed, 13 Oct 2010 13:14:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101013111439.GO28242@pengutronix.de>
References: <1286963684-16359-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1286963684-16359-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] unbreak bootm
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 13, 2010 at 11:54:44AM +0200, Eric B=E9nard wrote:
> commit a3c1e5d888d0ee317ffc7635694684bb71213c9c was
> not tested as all the tests are wrong and it breaks bootm
> =


:-(

How about the following patch (currently untested)?


[PATCH] image: remove confusing image_check_* functions

The function names do not make it clear what return value
is expected and do not save a single line of code. Put
the code inline and unbreak the wrong checks introduced
with a3c1e5d888d0ee317ffc7635694684bb71213c9c.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c        |    2 +-
 arch/m68k/lib/m68k-linuxboot.c |    2 +-
 arch/ppc/lib/ppclinux.c        |    2 +-
 commands/bootm.c               |    8 +++---
 common/image.c                 |    7 +++--
 include/image.h                |   55 ------------------------------------=
----
 6 files changed, 11 insertions(+), 65 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 7c2cbf9..f690fef 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -212,7 +212,7 @@ int do_bootm_linux(struct image_data *data)
 	void (*theKernel)(int zero, int arch, void *params);
 	image_header_t *os_header =3D &data->os->header;
 =

-	if (image_check_type(os_header, IH_TYPE_MULTI)) {
+	if (image_get_type(os_header) =3D=3D IH_TYPE_MULTI) {
 		printf("Multifile images not handled at the moment\n");
 		return -1;
 	}
diff --git a/arch/m68k/lib/m68k-linuxboot.c b/arch/m68k/lib/m68k-linuxboot.c
index e5e90a8..144d5a3 100644
--- a/arch/m68k/lib/m68k-linuxboot.c
+++ b/arch/m68k/lib/m68k-linuxboot.c
@@ -109,7 +109,7 @@ static int do_bootm_linux(struct image_data *data)
 	const char *commandline =3D getenv ("bootargs");
 	uint32_t loadaddr,loadsize;
 =

-	if (image_check_type(os_header, IH_TYPE_MULTI)) {
+	if (image_get_type(os_header) =3D=3D IH_TYPE_MULTI) {
 		printf("Multifile images not handled at the moment\n");
 		return -1;
 	}
diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index 5ee908d..fc22a87 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -45,7 +45,7 @@ static int do_bootm_linux(struct image_data *idata)
 	printf("entering %s: os_header: %p initrd_header: %p oftree: %s\n",
 			__FUNCTION__, os_header, initrd_header, idata->oftree);
 =

-	if (image_check_type(os_header, IH_TYPE_MULTI)) {
+	if (image_get_type(os_header) =3D=3D IH_TYPE_MULTI) {
 		unsigned long *data =3D (unsigned long *)(idata->os->data);
 		unsigned long len1 =3D 0, len2 =3D 0;
 =

diff --git a/commands/bootm.c b/commands/bootm.c
index 83d36d3..a7cbfb9 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -167,7 +167,7 @@ struct image_handle *map_image(const char *filename, in=
t verify)
 		goto err_out;
 	}
 =

-	if (image_check_magic(header)) {
+	if (image_get_magic(header) !=3D IH_MAGIC) {
 		puts ("Bad Magic Number\n");
 		goto err_out;
 	}
@@ -332,7 +332,7 @@ static int do_bootm(struct command *cmdtp, int argc, ch=
ar *argv[])
 =

 	os_header =3D &os_handle->header;
 =

-	if (image_check_arch(os_header, IH_ARCH)) {
+	if (image_get_arch(os_header) !=3D IH_ARCH) {
 		printf("Unsupported Architecture 0x%x\n",
 		       image_get_arch(os_header));
 		goto err_out;
@@ -350,7 +350,7 @@ static int do_bootm(struct command *cmdtp, int argc, ch=
ar *argv[])
 =

 	/* loop through the registered handlers */
 	list_for_each_entry(handler, &handler_list, list) {
-		if (image_check_os(os_header, handler->image_type)) {
+		if (image_get_os(hdr) =3D=3D handler->image_type) {
 			handler->bootm(&data);
 			printf("handler returned!\n");
 			goto err_out;
@@ -409,7 +409,7 @@ static int image_info (ulong addr)
 	/* Copy header so we can blank CRC field for re-calculation */
 	memmove (&header, (char *)addr, image_get_header_size());
 =

-	if (image_check_magic(hdr)) {
+	if (image_get_magic(hdr) !=3D IH_MAGIC) {
 		puts ("   Bad Magic Number\n");
 		return 1;
 	}
diff --git a/common/image.c b/common/image.c
index 104446a..2b2c410 100644
--- a/common/image.c
+++ b/common/image.c
@@ -266,6 +266,7 @@ void image_print_contents(const void *ptr)
 {
 	const image_header_t *hdr =3D (const image_header_t *)ptr;
 	const char *p;
+	int type;
 =

 #ifdef __BAREBOX__
 	p =3D "   ";
@@ -285,8 +286,8 @@ void image_print_contents(const void *ptr)
 	printf ("%sLoad Address: %08x\n", p, image_get_load(hdr));
 	printf ("%sEntry Point:  %08x\n", p, image_get_ep(hdr));
 =

-	if (image_check_type(hdr, IH_TYPE_MULTI) ||
-			image_check_type(hdr, IH_TYPE_SCRIPT)) {
+	type =3D image_get_type(hdr);
+	if (type !=3D IH_TYPE_MULTI || type !=3D IH_TYPE_SCRIPT) {
 		int i;
 		ulong data, len;
 		ulong count =3D image_multi_count(hdr);
@@ -298,7 +299,7 @@ void image_print_contents(const void *ptr)
 			printf("%s   Image %d: ", p, i);
 			image_print_size(len);
 =

-			if (image_check_type(hdr, IH_TYPE_SCRIPT) && i > 0) {
+			if (image_get_type(hdr) !=3D IH_TYPE_SCRIPT && i > 0) {
 				/*
 				 * the user may need to know offsets
 				 * if planning to do something with
diff --git a/include/image.h b/include/image.h
index 2c5956d..a42d06b 100644
--- a/include/image.h
+++ b/include/image.h
@@ -320,61 +320,6 @@ static inline void image_set_name(image_header_t *hdr,=
 const char *name)
 	strncpy(image_get_name(hdr), name, IH_NMLEN);
 }
 =

-static inline int image_check_magic(const image_header_t *hdr)
-{
-	return (image_get_magic(hdr) =3D=3D IH_MAGIC);
-}
-static inline int image_check_type(const image_header_t *hdr, uint8_t type)
-{
-	return (image_get_type(hdr) =3D=3D type);
-}
-static inline int image_check_arch(const image_header_t *hdr, uint8_t arch)
-{
-	return (image_get_arch(hdr) =3D=3D arch);
-}
-static inline int image_check_os(const image_header_t *hdr, uint8_t os)
-{
-	return (image_get_os(hdr) =3D=3D os);
-}
-
-#ifdef __BAREBOX__
-static inline int image_check_target_arch(const image_header_t *hdr)
-{
-#if defined(__ARM__)
-	if (!image_check_arch(hdr, IH_ARCH_ARM))
-#elif defined(__avr32__)
-	if (!image_check_arch(hdr, IH_ARCH_AVR32))
-#elif defined(__bfin__)
-	if (!image_check_arch(hdr, IH_ARCH_BLACKFIN))
-#elif defined(__I386__)
-	if (!image_check_arch(hdr, IH_ARCH_I386))
-#elif defined(__m68k__)
-	if (!image_check_arch(hdr, IH_ARCH_M68K))
-#elif defined(__microblaze__)
-	if (!image_check_arch(hdr, IH_ARCH_MICROBLAZE))
-#elif defined(__mips__)
-	if (!image_check_arch(hdr, IH_ARCH_MIPS))
-#elif defined(__nios__)
-	if (!image_check_arch(hdr, IH_ARCH_NIOS))
-#elif defined(__nios2__)
-	if (!image_check_arch(hdr, IH_ARCH_NIOS2))
-#elif defined(__PPC__)
-	if (!image_check_arch(hdr, IH_ARCH_PPC))
-#elif defined(__sh__)
-	if (!image_check_arch(hdr, IH_ARCH_SH))
-#elif defined(__sparc__)
-	if (!image_check_arch(hdr, IH_ARCH_SPARC))
-#elif defined(CONFIG_LINUX)
-	if (!image_check_arch(hdr, IH_ARCH_LINUX))
-#else
-# error Unknown CPU type
-#endif
-		return 0;
-
-	return 1;
-}
-#endif
-
 ulong image_multi_count(const image_header_t *hdr);
 void image_multi_getimg(const image_header_t *hdr, ulong idx,
 			ulong *data, ulong *len);
-- =

1.7.2.3


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
