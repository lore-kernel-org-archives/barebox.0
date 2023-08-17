Delivery-date: Thu, 17 Aug 2023 09:41:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWXcu-007fvN-NI
	for lore@lore.pengutronix.de; Thu, 17 Aug 2023 09:41:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWXcs-0006tA-2g
	for lore@pengutronix.de; Thu, 17 Aug 2023 09:41:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b2sJxVOHW3rCe6WMe3QzvZUwcd68keicJ9S5zcD0Qt0=; b=TeogpdMoZhOD98QAJ41aaCByWr
	gT8Od/j6XtPZ+Lb8aCdUkzmaSuCx2XPpM0v9roTj6aS8+nvrSfjsjq8BgDze9qExYr/cQseV4YY2i
	TuPxm5Es1lphBJMpGqhFPerbY2f/E55M2HF0/kgALY6ObpQd+bPLdGom1Svu5UXX7pGR/TaESodSA
	/sUZ8VhtX+gZZkxAPc3hPFe+h3QC1kuL67MLkp5GSaYqkBmFyouYvPQELQLBz4RZPz3zqKj+5HhFO
	6UVTCvZIr0/UV0ms7tgF+uFKlc2QjJxzlGR481Y9vYGtreHlFsuVwGKUWHXtxdg30sDjd7iDYHH6/
	Pm/d5fYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWXbk-005jrq-1i;
	Thu, 17 Aug 2023 07:39:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWXbg-005jrK-1m
	for barebox@lists.infradead.org;
	Thu, 17 Aug 2023 07:39:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qWXbc-0006U5-Ne; Thu, 17 Aug 2023 09:39:44 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qWXbc-001Dfd-38; Thu, 17 Aug 2023 09:39:44 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qWXbb-005I8d-2L;
	Thu, 17 Aug 2023 09:39:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 17 Aug 2023 09:39:41 +0200
Message-Id: <20230817073941.1261154-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230817073941.1261154-1-a.fatoum@pengutronix.de>
References: <20230817073941.1261154-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_003948_783554_AAEFD9D6 
X-CRM114-Status: GOOD (  20.71  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] sandbox: store stickypage in runtime dir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The stickypage is a hack to have a 4K hostfile persist over reboot. This
was so far done by compiling the stickypage separately and referencing
it from the device tree via the magic $build variable that expands to
the working directory.

This breaks a number of assumptions:
  - KBUILD_IMAGE: should only have a single entry, e.g.
    barebox-flash-images ends up with two files per one line

  - stickypage must be writable, which may fail if barebox is installed,
    e.g. in r/o Nix Store

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .gitignore                                    |  2 -
 Makefile                                      |  2 +-
 arch/sandbox/Makefile                         |  9 +--
 arch/sandbox/board/.gitignore                 |  1 -
 arch/sandbox/board/Makefile                   |  7 +-
 arch/sandbox/board/hostfile.c                 | 22 ++++--
 arch/sandbox/board/stickypage.S               |  3 +
 arch/sandbox/dts/sandbox.dts                  |  3 +-
 .../sandbox/mach-sandbox/include/mach/linux.h |  2 +-
 arch/sandbox/os/common.c                      | 76 +++++++++++++++----
 10 files changed, 87 insertions(+), 40 deletions(-)

diff --git a/.gitignore b/.gitignore
index d2487d548376..3b9cd6a25aff 100644
--- a/.gitignore
+++ b/.gitignore
@@ -45,7 +45,6 @@ Module.symvers
 /TAGS
 /barebox*
 /System.map
-/stickypage.bin
 
 #
 # git files that we don't want to ignore even it they are dot-files
@@ -95,4 +94,3 @@ GTAGS
 /allrandom.config
 /allyes.config
 /compile_commands.json
-/stickypage.bin
diff --git a/Makefile b/Makefile
index 1efe90f41ce7..9777a4d0c5ec 100644
--- a/Makefile
+++ b/Makefile
@@ -1141,7 +1141,7 @@ endif # CONFIG_MODULES
 
 # Directories & files removed with 'make clean'
 CLEAN_DIRS  += $(MODVERDIR)
-CLEAN_FILES +=	barebox System.map stickypage.bin include/generated/barebox_default_env.h \
+CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map \
 		.tmp_kallsyms* barebox.ldr compile_commands.json \
 		barebox-flash-image \
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 04fa426b1a61..c2906c0b1c0c 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -31,7 +31,8 @@ KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dclosedir=barebox_closedir -Dreadlink=barebox_readlink \
 		-Doptarg=barebox_optarg -Doptind=barebox_optind \
 		-Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp \
-		-Dputchar=barebox_putchar
+		-Dmkdir=barebox_mkdir -Ddirname=barebox_dirname \
+		-Dremove=barebox_remove -Dputchar=barebox_putchar
 
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
@@ -75,11 +76,7 @@ cmd_barebox__ = $(CC) -o $@ $(BAREBOX_LDFLAGS)
 
 common-y += $(BOARD) arch/sandbox/os/ arch/sandbox/lib/
 
-stickypage.bin:
-	@$(kecho) "  LN      stickypage.bin"
-	@ln -fs arch/sandbox/board/stickypage.bin stickypage.bin
-
-KBUILD_IMAGE := barebox stickypage.bin
+KBUILD_IMAGE := barebox
 
 common-$(CONFIG_OFTREE) += arch/sandbox/dts/
 
diff --git a/arch/sandbox/board/.gitignore b/arch/sandbox/board/.gitignore
index c0acd24b98b5..03987a700942 100644
--- a/arch/sandbox/board/.gitignore
+++ b/arch/sandbox/board/.gitignore
@@ -1,4 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 barebox.lds
-stickypage.bin
diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index 11688c5aba45..b4bab02163fb 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -13,9 +13,4 @@ obj-$(CONFIG_LED) += led.o
 
 extra-y += barebox.lds
 
-extra-y += stickypage.bin
-
-OBJCOPYFLAGS_stickypage.bin = -O binary
-
-%.bin: %.o
-	$(call if_changed,objcopy)
+obj-y += stickypage.o
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index ca21703544af..225617fe910f 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -248,7 +248,20 @@ static int of_hostfile_map_fixup(struct device_node *root, void *ctx)
 	struct device_node *node;
 	int ret;
 
-	for_each_compatible_node_from(node, root, NULL, hostfile_dt_ids->compatible) {
+	for_each_compatible_node_from(node, root, NULL, "barebox,stickypage") {
+		char *filename;
+
+		filename = linux_get_stickypage_path();
+		if (!filename) {
+			pr_err("error allocating stickypage\n");
+			continue;
+		}
+
+		of_property_write_string(node, "barebox,filename", filename);
+		of_property_write_string(node, "compatible", "barebox,hostfile");
+	}
+
+	for_each_compatible_node_from(node, root, NULL, "barebox,hostfile") {
 		struct hf_info hf = {};
 		uint64_t reg[2] = {};
 
@@ -260,13 +273,6 @@ static int of_hostfile_map_fixup(struct device_node *root, void *ctx)
 			continue;
 		}
 
-		if (memcmp(hf.filename, "$build/", 7) == 0) {
-			char *fullpath = xasprintf("%s/%s", linux_get_builddir(),
-					           hf.filename + sizeof "$build/" - 1);
-
-			hf.filename = fullpath;
-		}
-
 		hf.is_blockdev = of_property_read_bool(node, "barebox,blockdev");
 		hf.is_cdev = of_property_read_bool(node, "barebox,cdev");
 		hf.is_readonly = of_property_read_bool(node, "barebox,read-only");
diff --git a/arch/sandbox/board/stickypage.S b/arch/sandbox/board/stickypage.S
index f1915ab986fd..1d3861c373f0 100644
--- a/arch/sandbox/board/stickypage.S
+++ b/arch/sandbox/board/stickypage.S
@@ -1,5 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 
+.section .note.GNU-stack,"",%progbits
+.section .rodata.stickypage,"a"
+
 .globl stickypage;
 stickypage:
 
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index 6a0ae77d65bd..f3fe6ce65c08 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -56,8 +56,7 @@ y {
 	};
 
 	stickypage: stickypage {
-		compatible = "barebox,hostfile", "syscon";
-		barebox,filename = "$build/stickypage.bin";
+		compatible = "barebox,stickypage", "syscon";
 		reg = <0 0 0 4096>;
 		barebox,cdev; /* no caching allowed */
 		barebox,feature-controller;
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 028bc2fa9087..f4d91f08de8e 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -15,7 +15,7 @@ int linux_register_device(const char *name, void *start, void *end);
 int tap_alloc(const char *dev);
 uint64_t linux_get_time(void);
 int linux_open(const char *filename, int readwrite);
-const char *linux_get_builddir(void);
+char *linux_get_stickypage_path(void);
 int linux_open_hostfile(struct hf_info *hf);
 int linux_read(int fd, void *buf, size_t count);
 int linux_read_nonblock(int fd, void *buf, size_t count);
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 2878eda29e08..3446074f99d0 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -75,6 +75,15 @@ static void cookmode(void)
 	tcsetattr(0, TCSANOW, &term_orig);
 }
 
+static char *stickypage_path;
+
+static void prepare_exit(void)
+{
+	cookmode();
+	if (stickypage_path)
+		remove(stickypage_path);
+}
+
 int linux_tstc(int fd)
 {
 	struct timeval tv = {
@@ -122,7 +131,7 @@ uint64_t linux_get_time(void)
 
 void __attribute__((noreturn)) linux_exit(void)
 {
-	cookmode();
+	prepare_exit();
 	exit(0);
 }
 
@@ -167,7 +176,7 @@ void linux_reexec(void)
 
 void linux_hang(void)
 {
-	cookmode();
+	prepare_exit();
 	/* falls through to generic hang() */
 }
 
@@ -329,19 +338,60 @@ static int add_image(const char *_str, char *devname_template, int *devname_numb
 	return ret;
 }
 
-const char *linux_get_builddir(void)
-{
-	static char path[4097];
-	int ret;
+extern uint8_t stickypage[4096];
 
-	if (!path[0]) {
-		ret = selfpath(path, sizeof(path));
-		if (ret < 0)
-			return NULL;
-		dirname(path);
+char *linux_get_stickypage_path(void)
+{
+	size_t nwritten;
+	ssize_t ret;
+	int fd;
+
+	ret = asprintf(&stickypage_path, "%s/barebox/stickypage.%lu",
+		       getenv("XDG_RUNTIME_DIR") ?: "/run", (long)getpid());
+	if (ret < 0)
+		goto err_asprintf;
+
+	ret = mkdir(dirname(stickypage_path), 0755);
+	if (ret < 0 && errno != EEXIST) {
+		perror("mkdir");
+		goto err_creat;
 	}
 
-	return path;
+	stickypage_path[strlen(stickypage_path)] = '/';
+
+	fd = open(stickypage_path, O_CREAT | O_WRONLY | O_TRUNC | O_EXCL, 0644);
+	if (fd < 0) {
+		if (errno == EEXIST)
+			return stickypage_path;
+
+		perror("open");
+		goto err_creat;
+	}
+
+	for (nwritten = 0; nwritten < sizeof(stickypage); ) {
+		ret = write(fd, &stickypage[nwritten], sizeof(stickypage) - nwritten);
+		if (ret < 0) {
+			if (errno == EINTR || errno == EAGAIN)
+				continue;
+			perror("write");
+			goto err_write;
+		}
+
+		nwritten += ret;
+	}
+
+	close(fd);
+
+	return stickypage_path;
+
+err_write:
+	close(fd);
+err_creat:
+	free(stickypage_path);
+err_asprintf:
+	stickypage_path = NULL;
+
+	return NULL;
 }
 
 int linux_open_hostfile(struct hf_info *hf)
@@ -469,7 +519,7 @@ int main(int argc, char *argv[])
 	char *aux;
 
 #ifdef CONFIG_ASAN
-	__sanitizer_set_death_callback(cookmode);
+	__sanitizer_set_death_callback(prepare_exit);
 #endif
 
 	while (1) {
-- 
2.39.2



