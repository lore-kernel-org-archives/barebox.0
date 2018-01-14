Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eapkQ-0005u5-JN
 for barebox@lists.infradead.org; Sun, 14 Jan 2018 21:23:27 +0000
Received: by mail-lf0-x241.google.com with SMTP id h137so11169392lfe.8
 for <barebox@lists.infradead.org>; Sun, 14 Jan 2018 13:23:12 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 15 Jan 2018 00:22:52 +0300
Message-Id: <20180114212252.29682-8-antonynpavlov@gmail.com>
In-Reply-To: <20180114212252.29682-1-antonynpavlov@gmail.com>
References: <20180114212252.29682-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 7/7] sandbox: parse libftdi options
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/Makefile    |  2 +-
 arch/sandbox/os/common.c | 12 ++++++++++--
 arch/sandbox/os/ftdi.c   | 14 +++++++++++++-
 3 files changed, 24 insertions(+), 4 deletions(-)

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
index 7302dd0989..d69bc43180 100644
--- a/arch/sandbox/os/ftdi.c
+++ b/arch/sandbox/os/ftdi.c
@@ -34,6 +34,11 @@ struct ft2232_bitbang {
 
 static struct ft2232_bitbang ftbb;
 
+extern const char *libftdi_options;
+
+extern void parseopt_u16(const char *options, const char *opt, uint16_t *val);
+extern void parseopt_str(const char *options, const char *opt, char **val);
+
 static inline int ftdi_flush(struct ftdi_context *ftdi)
 {
 	uint8_t buf[1];
@@ -119,6 +124,7 @@ static int barebox_libftdi1_init(void)
 	/* default FT2232 values */
 	uint16_t vendor_id = FTDI_VID;
 	uint16_t device_id = FTDI_8U2232C_PID;
+	char *serial = NULL;
 
 	ftdi = ftdi_new();
 	if (!ftdi) {
@@ -126,7 +132,13 @@ static int barebox_libftdi1_init(void)
 		goto error;
 	}
 
-	ret = ftdi_usb_open(ftdi, vendor_id, device_id);
+	if (libftdi_options) {
+		parseopt_u16(libftdi_options, "device_id", &device_id);
+		parseopt_u16(libftdi_options, "vendor_id", &vendor_id);
+		parseopt_str(libftdi_options, "serial", &serial);
+	}
+
+	ret = ftdi_usb_open_desc(ftdi, vendor_id, device_id, NULL, serial);
 	if (ret < 0 && ret != -5) {
 		fprintf(stderr, "unable to open ftdi device: %d (%s)\n",
 			ret, ftdi_get_error_string(ftdi));
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
