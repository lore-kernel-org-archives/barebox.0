Delivery-date: Tue, 29 Jun 2021 08:39:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ly7PA-0008M8-Pi
	for lore@lore.pengutronix.de; Tue, 29 Jun 2021 08:39:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ly7P9-0003Wj-20
	for lore@pengutronix.de; Tue, 29 Jun 2021 08:39:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/p0wojsJsOd4gZ9uw59bm7uFVMiLesVw7eZFy9DZkM4=; b=Zug3+RKYrTvrGE
	RHcwk4G5yVUd8xMNrKpm27Ij9P9ZFw3LTKmXqKxKJLP4xX/3FHUVsjaiTgdT1aXLGfiBMvNZNswXc
	+LqApdyqbDKzPIz8Q72StsoZxkC58djIXjgjhyutHNZpWzp9MAZBarkew41qDqah4lxkRrT+8TedK
	5j0eyeXeoD2+278JH2EDcoSX6ehyVnP5pPIJ24ciTgmMhzSeIEvFh1D90v5h5Hm0qptfkfogDptyP
	YJ10Gz+p3mdDzHDAvAR4REu9hjjdDBGfpU6Y4wOPOesT/ZwVMAIOpr9yraJyswNVHm0fXDx9r4TrK
	JS7x9QcyTb1HqedPz9og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ly7NP-009wtD-F2; Tue, 29 Jun 2021 06:37:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ly7NI-009wrr-0b
 for barebox@lists.infradead.org; Tue, 29 Jun 2021 06:37:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ly7NE-0003Pd-Mk; Tue, 29 Jun 2021 08:37:32 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ly7NE-0002Cb-54; Tue, 29 Jun 2021 08:37:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 29 Jun 2021 08:37:30 +0200
Message-Id: <20210629063730.7001-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_233736_432355_90351199 
X-CRM114-Status: GOOD (  25.10  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] sandbox: ship sample environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The idea of the stickypage was to have a 4K memory region persistent
over resets. This region was implemented as mmap of a temporary hostfile,
which was created on first barebox start and maintained over resets.

Usability was a bit lacking however:
  - The temporary files weren't deleted
  - state always showed warnings and errors on first boot. The banner
    telling users to ignore this wasn't best user experience
  - In the same vein, the power driver had logic to handle a fresh
    (zeroed) stickypage and interpret that as POR boot

We can avoid all that, by just shipping a default stickypage and
referencing that from DT. Do that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - compile stickypage at build time instead of shipping it in binary
    form. Sascha reports issues with binary patche handling outside git.
---
 .gitignore                                    |  1 +
 Makefile                                      |  2 +-
 arch/sandbox/Makefile                         |  7 ++
 arch/sandbox/board/Makefile                   |  2 +
 arch/sandbox/board/env/init/state             | 13 ---
 arch/sandbox/board/hostfile.c                 | 19 +++--
 arch/sandbox/board/power.c                    |  2 -
 arch/sandbox/board/stickypage.S               | 26 ++++++
 arch/sandbox/dts/sandbox.dts                  |  1 +
 .../sandbox/mach-sandbox/include/mach/linux.h |  1 +
 arch/sandbox/os/common.c                      | 83 ++++++++-----------
 11 files changed, 86 insertions(+), 71 deletions(-)
 delete mode 100644 arch/sandbox/board/env/init/state
 create mode 100644 arch/sandbox/board/stickypage.S

diff --git a/.gitignore b/.gitignore
index d7a37b3c9b39..529bcfc2128e 100644
--- a/.gitignore
+++ b/.gitignore
@@ -42,6 +42,7 @@ Module.symvers
 /TAGS
 /barebox*
 /System.map
+/stickypage.bin
 
 #
 # git files that we don't want to ignore even it they are dot-files
diff --git a/Makefile b/Makefile
index f3a1bcc04cdd..6715a44d1e9e 100644
--- a/Makefile
+++ b/Makefile
@@ -1123,7 +1123,7 @@ endif # CONFIG_MODULES
 
 # Directories & files removed with 'make clean'
 CLEAN_DIRS  += $(MODVERDIR)
-CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
+CLEAN_FILES +=	barebox System.map stickypage.bin include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map \
 		.tmp_kallsyms* barebox.ldr compile_commands.json \
 		scripts/bareboxenv-target barebox-flash-image \
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 5fc7e227be67..ba2614ea5f44 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -75,3 +75,10 @@ common-y += $(BOARD) arch/sandbox/os/ arch/sandbox/lib/
 common-$(CONFIG_OFTREE) += arch/sandbox/dts/
 
 CLEAN_FILES += $(BOARD)/barebox.lds
+
+OBJCOPYFLAGS_stickypage.bin = -O binary
+
+stickypage.bin: arch/sandbox/board/stickypage.o
+	$(call if_changed,objcopy)
+
+all: stickypage.bin
diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index ffb1dbc21ebf..59fece60ef50 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -10,3 +10,5 @@ obj-y += watchdog.o
 obj-$(CONFIG_LED) += led.o
 
 extra-y += barebox.lds
+
+extra-y += stickypage.o
diff --git a/arch/sandbox/board/env/init/state b/arch/sandbox/board/env/init/state
deleted file mode 100644
index b8a2b42a53ea..000000000000
--- a/arch/sandbox/board/env/init/state
+++ /dev/null
@@ -1,13 +0,0 @@
-if [ "x$state.dirty" != "x1" -o $global.system.reset != "POR" ]; then
-    exit
-fi
-
-source /env/data/ansi-colors
-
-echo -e $CYAN
-echo "*******************************************************"
-echo "***   Inconsistent barebox state buckets detected   ***"
-echo "***         This is normal for a first boot         ***"
-echo "*** barebox will repair them on next poweroff/reset ***"
-echo "*******************************************************"
-echo -e -n $NC
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 0346590889ed..f11062197934 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -232,12 +232,21 @@ static int of_hostfile_map_fixup(struct device_node *root, void *ctx)
 	for_each_compatible_node_from(node, root, NULL, hostfile_dt_ids->compatible) {
 		struct hf_info hf = {};
 		uint64_t reg[2] = {};
-		bool no_filename;
 
 		hf.devname = node->name;
 
 		ret = of_property_read_string(node, "barebox,filename", &hf.filename);
-		no_filename = ret;
+		if (ret) {
+			pr_err("skipping nameless hostfile %s\n", hf.devname);
+			continue;
+		}
+
+		if (memcmp(hf.filename, "$build/", 7) == 0) {
+			char *fullpath = xasprintf("%s/%s", linux_get_builddir(),
+					           hf.filename + sizeof "$build/" - 1);
+
+			hf.filename = fullpath;
+		}
 
 		hf.is_blockdev = of_property_read_bool(node, "barebox,blockdev");
 		hf.is_cdev = of_property_read_bool(node, "barebox,cdev");
@@ -263,12 +272,6 @@ static int of_hostfile_map_fixup(struct device_node *root, void *ctx)
 		if (ret)
 			goto out;
 
-		if (no_filename) {
-			ret = of_property_write_string(node, "barebox,filename", hf.filename);
-			if (ret)
-				goto out;
-		}
-
 		ret = of_property_write_u32(node, "barebox,fd", hf.fd);
 out:
 		if (ret)
diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
index 57801c8c3dc4..3112c80348e7 100644
--- a/arch/sandbox/board/power.c
+++ b/arch/sandbox/board/power.c
@@ -64,8 +64,6 @@ static int sandbox_power_probe(struct device_d *dev)
 
 	rst = nvmem_cell_read(power->reset_source_cell, &len);
 	if (!IS_ERR(rst)) {
-		if (*rst == 0)
-			*rst = RESET_POR;
 		reset_source_set_prinst(*rst, RESET_SOURCE_DEFAULT_PRIORITY, 0);
 
 		free(rst);
diff --git a/arch/sandbox/board/stickypage.S b/arch/sandbox/board/stickypage.S
new file mode 100644
index 000000000000..f1915ab986fd
--- /dev/null
+++ b/arch/sandbox/board/stickypage.S
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+.globl stickypage;
+stickypage:
+
+/* nvmem */ .org 0x300
+.byte 0x01
+
+/*  env  */ .org 0x400
+.byte 0x79, 0xba, 0x8f, 0x79, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
+.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0c, 0x69, 0x9c, 0x7f, 0x00, 0x00, 0x00, 0x00
+
+/* state */ .org 0xC00
+.byte 0xf3, 0xfd, 0x54, 0x23, 0x18, 0x00, 0x00, 0x00, 0xa6, 0x86, 0x3b, 0xaa, 0x00, 0x00, 0x08, 0x00
+.byte 0x19, 0x70, 0x3d, 0xbb, 0x64, 0x89, 0x3b, 0x31, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
+.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
+.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
+.byte 0xf3, 0xfd, 0x54, 0x23, 0x18, 0x00, 0x00, 0x00, 0xa6, 0x86, 0x3b, 0xaa, 0x00, 0x00, 0x08, 0x00
+.byte 0x19, 0x70, 0x3d, 0xbb, 0x64, 0x89, 0x3b, 0x31, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
+.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
+.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
+.byte 0xf3, 0xfd, 0x54, 0x23, 0x18, 0x00, 0x00, 0x00, 0xa6, 0x86, 0x3b, 0xaa, 0x00, 0x00, 0x08, 0x00
+.byte 0x19, 0x70, 0x3d, 0xbb, 0x64, 0x89, 0x3b, 0x31, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
+
+.fill 4096-(.-stickypage), 1, 0
+.size stickypage, 4096
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index 595a1e8eae73..5b2cab219e2a 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -55,6 +55,7 @@
 
 	stickypage: stickypage {
 		compatible = "barebox,hostfile", "syscon", "simple-mfd";
+		barebox,filename = "$build/stickypage.bin";
 		reg = <0 0 0 4096>;
 		barebox,cdev; /* no caching allowed */
 
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 831e170d90ef..453813952e55 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -13,6 +13,7 @@ int linux_register_device(const char *name, void *start, void *end);
 int tap_alloc(const char *dev);
 uint64_t linux_get_time(void);
 int linux_open(const char *filename, int readwrite);
+const char *linux_get_builddir(void);
 int linux_open_hostfile(struct hf_info *hf);
 int linux_read(int fd, void *buf, size_t count);
 int linux_read_nonblock(int fd, void *buf, size_t count);
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 4eb6d37fffc1..e36e3972bc0d 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -127,9 +127,23 @@ void __attribute__((noreturn)) linux_exit(void)
 	exit(0);
 }
 
-static size_t saved_argv_len;
 static char **saved_argv;
 
+static int selfpath(char *buf, size_t len)
+{
+	int ret;
+
+	/* we must follow the symlink, so we can exec an updated executable */
+	ret = readlink("/proc/self/exe", buf, len - 1);
+	if (ret < 0)
+		return ret;
+
+	if (0 < ret && ret < len - 1)
+		buf[ret] = '\0';
+
+	return ret;
+}
+
 void linux_reexec(void)
 {
 	char buf[4097];
@@ -138,9 +152,8 @@ void linux_reexec(void)
 	cookmode();
 
 	/* we must follow the symlink, so we can exec an updated executable */
-	ret = readlink("/proc/self/exe", buf, sizeof(buf) - 1);
-	if (0 < ret && ret < sizeof(buf) - 1) {
-		buf[ret] = '\0';
+	ret = selfpath(buf, sizeof(buf));
+	if (ret > 0) {
 		execv(buf, saved_argv);
 		if (!strcmp(&buf[ret - DELETED_OFFSET], " (deleted)")) {
 			printf("barebox image on disk changed. Loading new.\n");
@@ -317,6 +330,21 @@ static int add_image(const char *_str, char *devname_template, int *devname_numb
 	return ret;
 }
 
+const char *linux_get_builddir(void)
+{
+	static char path[4097];
+	int ret;
+
+	if (!path[0]) {
+		ret = selfpath(path, sizeof(path));
+		if (ret < 0)
+			return NULL;
+		dirname(path);
+	}
+
+	return path;
+}
+
 int linux_open_hostfile(struct hf_info *hf)
 {
 	char *buf = NULL;
@@ -327,45 +355,10 @@ int linux_open_hostfile(struct hf_info *hf)
 	       hf->filename ? "" : "initially un", hf->filename ?: "",
 	       hf->is_readonly ? "(ro)" : "");
 
-	if (hf->filename) {
-		fd = hf->fd = open(hf->filename, (hf->is_readonly ? O_RDONLY : O_RDWR) | O_CLOEXEC);
-	} else {
-		char *filename;
-		int ret;
-
-		ret = asprintf(&buf, "--image=%s=/tmp/barebox-hostfileXXXXXX", hf->devname);
-		if (ret < 0) {
-			perror("asprintf");
-			goto err_out;
-		}
-
-		filename = buf + strlen("--image==") + strlen(hf->devname);
-
-		fd = hf->fd = mkstemp(filename);
-		if (fd >= 0) {
-			ret = fcntl(fd, F_SETFD, FD_CLOEXEC);
-			if (ret < 0) {
-				perror("fcntl");
-				goto err_out;
-			}
-
-			ret = ftruncate(fd, hf->size);
-			if (ret < 0) {
-				perror("ftruncate");
-				goto err_out;
-			}
-
-			hf->filename = filename;
-
-			saved_argv = realloc(saved_argv,
-					     ++saved_argv_len * sizeof(*saved_argv));
-			if (!saved_argv)
-				exit(1);
-			saved_argv[saved_argv_len - 2] = buf;
-			saved_argv[saved_argv_len - 1] = NULL;
-		}
-	}
+	if (!hf->filename)
+		return -ENOENT;
 
+	fd = hf->fd = open(hf->filename, (hf->is_readonly ? O_RDONLY : O_RDWR) | O_CLOEXEC);
 	if (fd < 0) {
 		perror("open");
 		goto err_out;
@@ -517,11 +510,7 @@ int main(int argc, char *argv[])
 		}
 	}
 
-	saved_argv_len = argc + 1;
-	saved_argv = calloc(saved_argv_len, sizeof(*saved_argv));
-	if (!saved_argv)
-		exit(1);
-	memcpy(saved_argv, argv, saved_argv_len * sizeof(*saved_argv));
+	saved_argv = argv;
 
 	ram = malloc(malloc_size);
 	if (!ram) {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

