Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHog3-0000WE-FW
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 13:37:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 15:37:47 +0200
Message-Id: <20200914133748.5988-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200914133748.5988-1-a.fatoum@pengutronix.de>
References: <20200914133748.5988-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] sandbox: implement actual sandbox reset via exec(2)
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>, Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <ahmad@a3f.at>

On Linux, /proc/self/exe is a symlink to the originally exec(2)d
executable. We can exec that with the original argv to simulate
a reset. This is useful for shorter development cycles on sandbox
and in future, could be used to test barebox behavior around resets
(e.g. reset reason can be passed through via libc environment).

We leave the original hanging reset in place though, because:

 - Many boards have multiple reset providers and incoming patches
    will allow users to select a specific one. Having this on
    sandbox as well makes testing easier.

 - /proc/self/exe is Linux-specific and wouldn't work when being
   run on e.g. BSDs or macOS

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig                          |  7 +++
 arch/sandbox/Makefile                         |  2 +-
 arch/sandbox/board/poweroff.c                 | 13 ++++++
 .../sandbox/mach-sandbox/include/mach/linux.h |  1 +
 arch/sandbox/os/common.c                      | 43 ++++++++++++++++---
 arch/sandbox/os/tap.c                         |  2 +-
 6 files changed, 59 insertions(+), 9 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index c4d0ab4dbcde..b5213c662b1b 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -24,6 +24,13 @@ config SANDBOX_UNWIND
 	select ARCH_HAS_STACK_DUMP
 	depends on KASAN
 
+config SANDBOX_REEXEC
+	prompt "exec(2) reset handler"
+	def_bool y
+	help
+	  The normal reset handler hangs barebox. On Linux, barebox
+	  instead can exec itself to simulate a reset.
+
 config PHYS_ADDR_T_64BIT
 	bool
 
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 27021222dc48..eb678b72dbcd 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -25,7 +25,7 @@ KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dglob=barebox_glob -Dglobfree=barebox_globfree \
 		-Dioctl=barebox_ioctl -Dfstat=barebox_fstat \
 		-Dopendir=barebox_opendir -Dreaddir=barebox_readdir \
-		-Dclosedir=barebox_closedir \
+		-Dclosedir=barebox_closedir -Dreadlink=barebox_readlink \
 		-Doptarg=barebox_optarg -Doptind=barebox_optind
 
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
diff --git a/arch/sandbox/board/poweroff.c b/arch/sandbox/board/poweroff.c
index 5072b756e108..8ce739af72c1 100644
--- a/arch/sandbox/board/poweroff.c
+++ b/arch/sandbox/board/poweroff.c
@@ -19,11 +19,24 @@ static struct restart_handler rst_hang = {
 	.restart = sandbox_rst_hang
 };
 
+static void sandbox_rst_reexec(struct restart_handler *rst)
+{
+	linux_reexec();
+}
+
+static struct restart_handler rst_reexec = {
+	.name = "reexec", .priority = 200,
+	.restart = sandbox_rst_reexec,
+};
+
 static int poweroff_register_feature(void)
 {
 	poweroff_handler_register_fn(sandbox_poweroff);
 	restart_handler_register(&rst_hang);
 
+	if (IS_ENABLED(CONFIG_SANDBOX_REEXEC))
+		restart_handler_register(&rst_reexec);
+
 	return 0;
 }
 coredevice_initcall(poweroff_register_feature);
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index f0a3a7b510fc..1ab48e52a00a 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -18,6 +18,7 @@ off_t linux_lseek(int fildes, off_t offset);
 int linux_tstc(int fd);
 void __attribute__((noreturn)) linux_exit(void);
 void linux_hang(void);
+void linux_reexec(void);
 
 int linux_execve(const char * filename, char *const argv[], char *const envp[]);
 
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index bbab3bd2312d..63839a1ccc68 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -44,6 +44,8 @@
 #include <mach/linux.h>
 #include <mach/hostfile.h>
 
+#define DELETED_OFFSET (sizeof(" (deleted)") - 1)
+
 void __sanitizer_set_death_callback(void (*callback)(void));
 
 int sdl_xres;
@@ -122,6 +124,31 @@ void __attribute__((noreturn)) linux_exit(void)
 	exit(0);
 }
 
+static char **saved_argv;
+
+void linux_reexec(void)
+{
+	char buf[4097];
+	ssize_t ret;
+
+	cookmode();
+
+	/* we must follow the symlink, so we can exec an updated executable */
+	ret = readlink("/proc/self/exe", buf, sizeof(buf) - 1);
+	if (0 < ret && ret < sizeof(buf) - 1) {
+		buf[ret] = '\0';
+		execv(buf, saved_argv);
+		if (!strcmp(&buf[ret - DELETED_OFFSET], " (deleted)")) {
+			printf("barebox image on disk changed. Loading new.\n");
+			buf[ret - DELETED_OFFSET] = '\0';
+			execv(buf, saved_argv);
+		}
+	}
+
+	printf("exec(%s) failed: %d\n", buf, errno);
+	/* falls through to generic hang() */
+}
+
 void linux_hang(void)
 {
 	cookmode();
@@ -130,7 +157,7 @@ void linux_hang(void)
 
 int linux_open(const char *filename, int readwrite)
 {
-	return open(filename, readwrite ? O_RDWR : O_RDONLY);
+	return open(filename, (readwrite ? O_RDWR : O_RDONLY) | O_CLOEXEC);
 }
 
 int linux_read(int fd, void *buf, size_t count)
@@ -252,7 +279,7 @@ static int add_image(char *str, char *devname_template, int *devname_number)
 	printf("add %s backed by file %s%s\n", devname,
 	       filename, readonly ? "(ro)" : "");
 
-	fd = open(filename, readonly ? O_RDONLY : O_RDWR);
+	fd = open(filename, (readonly ? O_RDONLY : O_RDWR) | O_CLOEXEC);
 	hf->fd = fd;
 	hf->filename = filename;
 
@@ -303,7 +330,7 @@ static int add_dtb(const char *file)
 	void *dtb = NULL;
 	int fd;
 
-	fd = open(file, O_RDONLY);
+	fd = open(file, O_RDONLY | O_CLOEXEC);
 	if (fd < 0) {
 		perror("open");
 		goto err_out;
@@ -363,6 +390,8 @@ int main(int argc, char *argv[])
 	__sanitizer_set_death_callback(cookmode);
 #endif
 
+	saved_argv = argv;
+
 	while (1) {
 		option_index = 0;
 		opt = getopt_long(argc, argv, optstring,
@@ -434,7 +463,7 @@ int main(int argc, char *argv[])
 				exit(1);
 			break;
 		case 'O':
-			fd = open(optarg, O_WRONLY);
+			fd = open(optarg, O_WRONLY | O_CLOEXEC);
 			if (fd < 0) {
 				perror("open");
 				exit(1);
@@ -443,7 +472,7 @@ int main(int argc, char *argv[])
 			barebox_register_console(-1, fd);
 			break;
 		case 'I':
-			fd = open(optarg, O_RDWR);
+			fd = open(optarg, O_RDWR | O_CLOEXEC);
 			if (fd < 0) {
 				perror("open");
 				exit(1);
@@ -459,7 +488,7 @@ int main(int argc, char *argv[])
 			}
 
 			/* open stdout file */
-			fd = open(aux + 1, O_WRONLY);
+			fd = open(aux + 1, O_WRONLY | O_CLOEXEC);
 			if (fd < 0) {
 				perror("open stdout");
 				exit(1);
@@ -467,7 +496,7 @@ int main(int argc, char *argv[])
 
 			/* open stdin file */
 			aux = strndup(optarg, aux - optarg);
-			fd2 = open(aux, O_RDWR);
+			fd2 = open(aux, O_RDWR | O_CLOEXEC);
 			if (fd2 < 0) {
 				perror("open stdin");
 				exit(1);
diff --git a/arch/sandbox/os/tap.c b/arch/sandbox/os/tap.c
index 72b7fbb5ac4b..83b97ffd49c7 100644
--- a/arch/sandbox/os/tap.c
+++ b/arch/sandbox/os/tap.c
@@ -30,7 +30,7 @@ int tap_alloc(const char *dev)
 	struct ifreq ifr;
 	int fd, err;
 
-	if ((fd = open("/dev/net/tun", O_RDWR)) < 0) {
+	if ((fd = open("/dev/net/tun", O_RDWR | O_CLOEXEC)) < 0) {
 		perror("could not open /dev/net/tun");
 		return -1;
 	}
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
