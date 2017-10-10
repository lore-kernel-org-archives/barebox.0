Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e1tci-0002dX-Oh
 for barebox@lists.infradead.org; Tue, 10 Oct 2017 12:27:06 +0000
Received: by mail-lf0-x241.google.com with SMTP id j73so11012847lfg.0
 for <barebox@lists.infradead.org>; Tue, 10 Oct 2017 05:26:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 10 Oct 2017 15:26:29 +0300
Message-Id: <20171010122631.9421-4-antonynpavlov@gmail.com>
In-Reply-To: <20171010122631.9421-1-antonynpavlov@gmail.com>
References: <20171010122631.9421-1-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] sandbox: parse libftdi options
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/Makefile    |  2 +-
 arch/sandbox/os/common.c | 12 ++++++--
 arch/sandbox/os/ftdi.c   | 79 +++++++++++++++++++++++++++++++++++++++++++++++-
 3 files changed, 89 insertions(+), 4 deletions(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 85c70b5e80..95ef7c84fb 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -23,7 +23,7 @@ CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dglob=barebox_glob -Dglobfree=barebox_globfree \
 		-Dioctl=barebox_ioctl -Dfstat=barebox_fstat \
 		-Dopendir=barebox_opendir -Dreaddir=barebox_readdir \
-		-Dclosedir=barebox_closedir
+		-Dclosedir=barebox_closedir -Dstrdup=barebox_strdup
 
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 665e8194ef..161ea5c849 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -51,6 +51,8 @@ int sdl_yres;
 static struct termios term_orig, term_vi;
 static char erase_char;	/* the users erase character */
 
+const char *libftdi_options;
+
 static void rawmode(void)
 {
 	tcgetattr(0, &term_orig);
@@ -322,10 +324,11 @@ static struct option long_options[] = {
 	{"stdinout", 1, 0, 'B'},
 	{"xres",     1, 0, 'x'},
 	{"yres",     1, 0, 'y'},
+	{"libftdi",  1, 0, 'f'},
 	{0, 0, 0, 0},
 };
 
-static const char optstring[] = "hm:i:e:d:O:I:B:x:y:";
+static const char optstring[] = "hm:i:e:d:O:I:B:x:y:f:";
 
 int main(int argc, char *argv[])
 {
@@ -367,6 +370,9 @@ int main(int argc, char *argv[])
 		case 'y':
 			sdl_yres = strtoul(optarg, NULL, 0);
 			break;
+		case 'f':
+			libftdi_options = strdup(optarg);
+			break;
 		default:
 			break;
 		}
@@ -495,7 +501,9 @@ static void print_usage(const char *prgname)
 "                       stdin and stdout. <filein> and <fileout> can be regular\n"
 "                       files or FIFOs.\n"
 "  -x, --xres=<res>     SDL width.\n"
-"  -y, --yres=<res>     SDL height.\n",
+"  -y, --yres=<res>     SDL height.\n"
+"  -f, --libftdi=<opts> libftdi options, e.g.\n"
+"                       --libftdi=vendor_id=0x1234,device_id=0x5678,serial=AB0055\n",
 	prgname
 	);
 }
diff --git a/arch/sandbox/os/ftdi.c b/arch/sandbox/os/ftdi.c
index 34e9165787..e3e46ed12d 100644
--- a/arch/sandbox/os/ftdi.c
+++ b/arch/sandbox/os/ftdi.c
@@ -20,6 +20,7 @@
 #include <unistd.h>
 #include <ftdi.h>
 #include <errno.h>
+#include <string.h>
 #include <mach/linux.h>
 
 #define FTDI_VID		0x0403	/* Vendor Id */
@@ -38,6 +39,8 @@ struct ft2232_bitbang {
 
 static struct ft2232_bitbang ftbb;
 
+extern const char *libftdi_options;
+
 static inline int ftdi_flush(struct ftdi_context *ftdi)
 {
 	uint8_t buf[1];
@@ -116,6 +119,67 @@ void barebox_libftdi1_gpio_set_value(struct ft2232_bitbang *ftbb,
 		ftbb->odata &= ~BIT(off);
 }
 
+/* This is a somewhat hacked function similar in some ways to strtok().
+ * It will look for needle with a subsequent '=' in haystack, return a copy of
+ * needle and remove everything from the first occurrence of needle to the next
+ * delimiter from haystack.
+ */
+static char *extract_param(const char *const *haystack, const char *needle,
+			const char *delim)
+{
+	char *param_pos, *opt_pos, *rest;
+	char *opt = NULL;
+	int optlen;
+	int needlelen;
+
+	needlelen = strlen(needle);
+	if (!needlelen) {
+		printf("%s: empty needle!\n", __func__);
+		return NULL;
+	}
+	if (*haystack == NULL)
+		return NULL;
+	param_pos = strstr(*haystack, needle);
+	do {
+		if (!param_pos)
+			return NULL;
+		/* Needle followed by '='? */
+		if (param_pos[needlelen] == '=') {
+
+			/* Beginning of the string? */
+			if (param_pos == *haystack)
+				break;
+			/* After a delimiter? */
+			if (strchr(delim, *(param_pos - 1)))
+				break;
+		}
+		/* Continue searching. */
+		param_pos++;
+		param_pos = strstr(param_pos, needle);
+	} while (1);
+
+	if (param_pos) {
+		/* Get the string after needle and '='. */
+		opt_pos = param_pos + needlelen + 1;
+		optlen = strcspn(opt_pos, delim);
+		/* Return an empty string if the parameter was empty. */
+		opt = malloc(optlen + 1);
+		if (!opt) {
+			printf("Out of memory!\n");
+			exit(1);
+		}
+		strncpy(opt, opt_pos, optlen);
+		opt[optlen] = '\0';
+		rest = opt_pos + optlen;
+		/* Skip all delimiters after the current parameter. */
+		rest += strspn(rest, delim);
+		memmove(param_pos, rest, strlen(rest) + 1);
+		/* We could shrink haystack, but the effort is not worth it. */
+	}
+
+	return opt;
+}
+
 int barebox_libftdi1_init(void)
 {
 	struct ftdi_context *ftdi;
@@ -123,6 +187,9 @@ int barebox_libftdi1_init(void)
 	/* default FT2232 values */
 	uint16_t vendor_id = FTDI_VID;
 	uint16_t device_id = FTDI_8U2232C_PID;
+	char *serial;
+
+	char *arg;
 
 	ftdi = ftdi_new();
 	if (!ftdi) {
@@ -130,7 +197,17 @@ int barebox_libftdi1_init(void)
 		goto error;
 	}
 
-	ret = ftdi_usb_open(ftdi, vendor_id, device_id);
+	arg = extract_param(&libftdi_options, "device_id", ",");
+	if (arg)
+		device_id = strtoul(arg, NULL, 0);
+
+	arg = extract_param(&libftdi_options, "vendor_id", ",");
+	if (arg)
+		vendor_id = strtoul(arg, NULL, 0);
+
+	serial = extract_param(&libftdi_options, "serial", ",");
+
+	ret = ftdi_usb_open_desc(ftdi, vendor_id, device_id, NULL, serial);
 	if (ret < 0 && ret != -5) {
 		fprintf(stderr, "unable to open ftdi device: %d (%s)\n",
 			ret, ftdi_get_error_string(ftdi));
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
