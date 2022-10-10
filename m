Delivery-date: Mon, 10 Oct 2022 08:13:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm2S-0033gU-6B
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:13:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm2O-0001Dt-MH
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:13:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5sA33YBhI2t1DT58ApMSeo8A1BCFNNmGmKXzIvFCE98=; b=vaUbAXrMAAAjYxAaySTYN4TlIh
	Pb37WP/PwfBNumZgsnVzB+OMH/DT3Ota/TKxHirv8uNprzMNuPzBVchlFEnGNKxuricp0L+CcvKte
	lVjuHRvyoGPKGGnbd3/Doe9K8YO4ygb849ySPV4hlKfSt/l8M0BjczAN/EwMgFn6ofxSmH5hsfxx/
	m+DB4xMXEXdr2BYIaNSE0nHhHsyJpS+eKXS9tGD/JG9zbgw1usAaKMy/UpKkWYtPhDowNxD3Io5y8
	Dg2+qac173Lbmnv+gqhLl86zWCodePp3+pu8bN3oMbHZzJE8GufVCLKaBO5mYSy1cfyrV2R5cgmOk
	teR9APIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm10-00HAk5-EY; Mon, 10 Oct 2022 06:11:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0d-00HAWe-Mx
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:11:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0c-0000Y6-Dm; Mon, 10 Oct 2022 08:11:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0b-000d9u-N8; Mon, 10 Oct 2022 08:11:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0a-008kAl-4D; Mon, 10 Oct 2022 08:11:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:11:14 +0200
Message-Id: <20221010061122.2084009-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
References: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231128_099147_FF56C93C 
X-CRM114-Status: GOOD (  16.85  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/10] treewide: replace errno_str() with %m printf format specifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Both errno_str() and printf("%m" end up calling strerror(). %m is
more convenient to use, so switch over all instances to it.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/boot_test_cmd.c      |  2 +-
 arch/arm/mach-omap/am33xx_bbu_emmc.c    | 15 +++++++--------
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c |  6 +++---
 commands/cat.c                          |  2 +-
 commands/edit.c                         |  4 ++--
 commands/flash.c                        |  8 ++++----
 commands/ls.c                           |  3 +--
 commands/mkdir.c                        |  2 +-
 commands/rm.c                           |  2 +-
 commands/rmdir.c                        |  2 +-
 common/elf.c                            | 13 ++++++-------
 common/envfs-core.c                     |  3 +--
 common/environment.c                    | 11 +++++------
 common/firmware.c                       |  5 ++---
 common/misc.c                           |  2 +-
 common/uimage.c                         |  4 ++--
 fs/bpkfs.c                              |  6 +++---
 fs/uimagefs.c                           |  4 ++--
 lib/libfile.c                           |  6 +++---
 19 files changed, 47 insertions(+), 53 deletions(-)

diff --git a/arch/arm/mach-at91/boot_test_cmd.c b/arch/arm/mach-at91/boot_test_cmd.c
index 7bb40f2e4026..9a5c0e3e4e06 100644
--- a/arch/arm/mach-at91/boot_test_cmd.c
+++ b/arch/arm/mach-at91/boot_test_cmd.c
@@ -57,7 +57,7 @@ static int do_at91_boot_test(int argc, char *argv[])
 
 	fd = open(sram, O_WRONLY);
 	if (fd < 0) {
-		printf("could not open %s: %s\n", sram, errno_str());
+		printf("could not open %s: %m\n", sram);
 		ret = fd;
 		goto err;
 	}
diff --git a/arch/arm/mach-omap/am33xx_bbu_emmc.c b/arch/arm/mach-omap/am33xx_bbu_emmc.c
index 29e13de778aa..c3d4f9c42236 100644
--- a/arch/arm/mach-omap/am33xx_bbu_emmc.c
+++ b/arch/arm/mach-omap/am33xx_bbu_emmc.c
@@ -42,16 +42,15 @@ static int emmc_mlo_handler(struct bbu_handler *handler, struct bbu_data *data)
 
 	fd = open(handler->devicefile, O_RDWR);
 	if (fd < 0) {
-		pr_err("could not open %s: %s\n", handler->devicefile,
-			errno_str());
+		pr_err("could not open %s: %m\n", handler->devicefile);
 		return fd;
 	}
 
 	/* save the partition table */
 	ret = pread(fd, part_table, PART_TABLE_SIZE, PART_TABLE_OFFSET);
 	if (ret < 0) {
-		pr_err("could not read partition table from fd %s: %s\n",
-			handler->devicefile, errno_str());
+		pr_err("could not read partition table from fd %s: %m\n",
+			handler->devicefile);
 		goto error;
 	}
 
@@ -59,8 +58,8 @@ static int emmc_mlo_handler(struct bbu_handler *handler, struct bbu_data *data)
 	for (i = 0; i < 4; i++) {
 		ret = pwrite(fd, image, size, i * 0x20000);
 		if (ret < 0) {
-			pr_err("could not write MLO %i/4 to fd %s: %s\n",
-				i + 1, handler->devicefile, errno_str());
+			pr_err("could not write MLO %i/4 to fd %s: %m\n",
+				i + 1, handler->devicefile);
 			goto error_save_part_table;
 		}
 	}
@@ -69,8 +68,8 @@ error_save_part_table:
 	/* write the partition table back */
 	ret = pwrite(fd, part_table, PART_TABLE_SIZE, PART_TABLE_OFFSET);
 	if (ret < 0)
-		pr_err("could not write partition table to fd %s: %s\n",
-			handler->devicefile, errno_str());
+		pr_err("could not write partition table to fd %s: %m\n",
+			handler->devicefile);
 
 error:
 	close(fd);
diff --git a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
index 7d2ef1f0f225..f36c2c3bf02b 100644
--- a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
+++ b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
@@ -51,7 +51,7 @@ static int spi_nor_mlo_handler(struct bbu_handler *handler,
 
 	ret = stat(data->devicefile, &s);
 	if (ret) {
-		printf("could not open %s: %s", data->devicefile, errno_str());
+		printf("could not open %s: %m", data->devicefile);
 		return ret;
 	}
 
@@ -66,14 +66,14 @@ static int spi_nor_mlo_handler(struct bbu_handler *handler,
 
 	dstfd = open(data->devicefile, O_WRONLY);
 	if (dstfd < 0) {
-		printf("could not open %s: %s", data->devicefile, errno_str());
+		printf("could not open %s: %m", data->devicefile);
 		ret = dstfd;
 		goto out;
 	}
 
 	ret = erase(dstfd, ERASE_SIZE_ALL, 0);
 	if (ret < 0) {
-		printf("could not erase %s: %s", data->devicefile, errno_str());
+		printf("could not erase %s: %m", data->devicefile);
 		goto out1;
 	}
 
diff --git a/commands/cat.c b/commands/cat.c
index 17c31ed08368..503520dc64a5 100644
--- a/commands/cat.c
+++ b/commands/cat.c
@@ -40,7 +40,7 @@ static int do_cat(int argc, char *argv[])
 		fd = open(argv[args], O_RDONLY);
 		if (fd < 0) {
 			err = 1;
-			printf("could not open %s: %s\n", argv[args], errno_str());
+			printf("could not open %s: %m\n", argv[args]);
 			goto out;
 		}
 
diff --git a/commands/edit.c b/commands/edit.c
index 12695d39e4fd..dea383aae7a6 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -185,7 +185,7 @@ static int edit_read_file(const char *path)
 	if (!stat(path, &s)) {
 		filebuffer = read_file(path, NULL);
 		if (!filebuffer) {
-			printf("could not read %s: %s\n", path, errno_str());
+			printf("could not read %s: %m\n", path);
 			return -1;
 		}
 
@@ -249,7 +249,7 @@ static int save_file(const char *path)
 
 	fd = open(path, O_WRONLY | O_TRUNC | O_CREAT);
 	if (fd < 0) {
-		printf("could not open file for writing: %s\n", errno_str());
+		printf("could not open file for writing: %m\n");
 		return fd;
 	}
 
diff --git a/commands/flash.c b/commands/flash.c
index 3d7c8fd5773d..5b7060aeadfb 100644
--- a/commands/flash.c
+++ b/commands/flash.c
@@ -25,7 +25,7 @@ static int do_flerase(int argc, char *argv[])
 	filename = argv[1];
 
 	if (stat(filename, &s)) {
-		printf("stat %s: %s\n", filename, errno_str());
+		printf("stat %s: %m\n", filename);
 		return 1;
 	}
 
@@ -33,7 +33,7 @@ static int do_flerase(int argc, char *argv[])
 
 	fd = open(filename, O_WRONLY);
 	if (fd < 0) {
-		printf("open %s: %s\n", filename, errno_str());
+		printf("open %s: %m\n", filename);
 		return 1;
 	}
 
@@ -89,7 +89,7 @@ static int do_protect(int argc, char *argv[])
 		prot = 0;
 
 	if (stat(filename, &s)) {
-		printf("stat %s: %s\n", filename, errno_str());
+		printf("stat %s: %m\n", filename);
 		return 1;
 	}
 
@@ -97,7 +97,7 @@ static int do_protect(int argc, char *argv[])
 
 	fd = open(filename, O_WRONLY);
 	if (fd < 0) {
-		printf("open %s: %s\n", filename, errno_str());
+		printf("open %s: %m\n", filename);
 		return 1;
 	}
 
diff --git a/commands/ls.c b/commands/ls.c
index 1192aed971cf..09a20e0a2342 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -164,8 +164,7 @@ static int do_ls(int argc, char *argv[])
 	while (o < argc) {
 		ret = stat(argv[o], &s);
 		if (ret) {
-			printf("%s: %s: %s\n", argv[0],
-					argv[o], errno_str());
+			printf("%s: %s: %m\n", argv[0], argv[o]);
 			o++;
 			exitcode = COMMAND_ERROR;
 			continue;
diff --git a/commands/mkdir.c b/commands/mkdir.c
index e7153b8732c5..01fc0b083b1a 100644
--- a/commands/mkdir.c
+++ b/commands/mkdir.c
@@ -37,7 +37,7 @@ static int do_mkdir(int argc, char *argv[])
 			ret = mkdir(argv[optind], 0);
 		}
 		if (ret) {
-			printf("could not create %s: %s\n", argv[optind], errno_str());
+			printf("could not create %s: %m\n", argv[optind]);
 			return 1;
 		}
 		optind++;
diff --git a/commands/rm.c b/commands/rm.c
index ba52b185cb34..be5c19222141 100644
--- a/commands/rm.c
+++ b/commands/rm.c
@@ -37,7 +37,7 @@ static int do_rm(int argc, char *argv[])
 		else
 			ret = unlink(argv[i]);
 		if (ret) {
-			printf("could not remove %s: %s\n", argv[i], errno_str());
+			printf("could not remove %s: %m\n", argv[i]);
 			return 1;
 		}
 		i++;
diff --git a/commands/rmdir.c b/commands/rmdir.c
index 9b2938a5563c..44793ca56e7f 100644
--- a/commands/rmdir.c
+++ b/commands/rmdir.c
@@ -14,7 +14,7 @@ static int do_rmdir(int argc, char *argv[])
 
 	while (i < argc) {
 		if (rmdir(argv[i])) {
-			printf("could not remove %s: %s\n", argv[i], errno_str());
+			printf("could not remove %s: %m\n", argv[i]);
 			return 1;
 		}
 		i++;
diff --git a/common/elf.c b/common/elf.c
index f10fb7795325..eec62cad6141 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -109,7 +109,7 @@ static int load_elf_to_memory(struct elf_image *elf)
 	if (elf->filename) {
 		fd = open(elf->filename, O_RDONLY);
 		if (fd < 0) {
-			pr_err("could not open: %s\n", errno_str());
+			pr_err("could not open: %m\n");
 			return -errno;
 		}
 	}
@@ -133,8 +133,7 @@ static int load_elf_to_memory(struct elf_image *elf)
 			}
 
 			if (read_full(fd, dst, p_filesz) < 0) {
-				pr_err("could not read elf segment: %s\n",
-				       errno_str());
+				pr_err("could not read elf segment: %m\n");
 				close(fd);
 				return -errno;
 			}
@@ -256,13 +255,13 @@ static struct elf_image *elf_check_init(const char *filename)
 	/* First pass is to read elf header only */
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
-		pr_err("could not open: %s\n", errno_str());
+		pr_err("could not open: %m\n");
 		ret = -errno;
 		goto err_free_elf;
 	}
 
 	if (read_full(fd, &hdr, sizeof(hdr)) < 0) {
-		pr_err("could not read elf header: %s\n", errno_str());
+		pr_err("could not read elf header: %m\n");
 		close(fd);
 		ret = -errno;
 		goto err_free_elf;
@@ -290,13 +289,13 @@ static struct elf_image *elf_check_init(const char *filename)
 	 */
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
-		pr_err("could not open: %s\n", errno_str());
+		pr_err("could not open: %m\n");
 		ret = -errno;
 		goto err_free_hdr_buf;
 	}
 
 	if (read_full(fd, elf->hdr_buf, hdr_size) < 0) {
-		pr_err("could not read elf program headers: %s\n", errno_str());
+		pr_err("could not read elf program headers: %m\n");
 		ret = -errno;
 		close(fd);
 		goto err_free_hdr_buf;
diff --git a/common/envfs-core.c b/common/envfs-core.c
index 0984d538734f..20b3e647d3c3 100644
--- a/common/envfs-core.c
+++ b/common/envfs-core.c
@@ -24,7 +24,6 @@
 #include <environment.h>
 #include <libfile.h>
 #else
-# define errno_str(x) ("void")
 #define pr_info(fmt, ...)	printf(pr_fmt(fmt), ##__VA_ARGS__)
 #define pr_warn(fmt, ...)	printf(pr_fmt(fmt), ##__VA_ARGS__)
 #endif
@@ -151,7 +150,7 @@ int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
 			fd = open(str, O_WRONLY | O_CREAT | O_TRUNC, 0644);
 			free(str);
 			if (fd < 0) {
-				printf("Open %s\n", errno_str());
+				printf("Open %m\n");
 				ret = fd;
 				goto out;
 			}
diff --git a/common/environment.c b/common/environment.c
index 0d31f5b4f786..e8c487c1a2e2 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -27,7 +27,6 @@
 #include <globalvar.h>
 #include <libfile.h>
 #else
-# define errno_str(x) ("void")
 #define EXPORT_SYMBOL(x)
 #endif
 
@@ -297,7 +296,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 
 	envfd = open(filename, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
 	if (envfd < 0) {
-		printf("could not open %s: %s\n", filename, errno_str());
+		printf("could not open %s: %m\n", filename);
 		ret = -errno;
 		goto out1;
 	}
@@ -306,7 +305,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 
 	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it */
 	if (ret && errno != ENOSYS && errno != EOPNOTSUPP) {
-		printf("could not unprotect %s: %s\n", filename, errno_str());
+		printf("could not unprotect %s: %m\n", filename);
 		goto out;
 	}
 
@@ -314,7 +313,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 
 	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it */
 	if (ret && errno != ENOSYS && errno != EOPNOTSUPP) {
-		printf("could not erase %s: %s\n", filename, errno_str());
+		printf("could not erase %s: %m\n", filename);
 		goto out;
 	}
 
@@ -337,7 +336,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 
 	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it */
 	if (ret && errno != ENOSYS && errno != EOPNOTSUPP) {
-		printf("could not protect %s: %s\n", filename, errno_str());
+		printf("could not protect %s: %m\n", filename);
 		goto out;
 	}
 
@@ -385,7 +384,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 
 	envfd = open(filename, O_RDONLY);
 	if (envfd < 0) {
-		printf("environment load %s: %s\n", filename, errno_str());
+		printf("environment load %s: %m\n", filename);
 		if (errno == ENOENT)
 			printf("Maybe you have to create the partition.\n");
 		return -1;
diff --git a/common/firmware.c b/common/firmware.c
index b87d7da38fa7..e4ad6ac867b0 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -272,8 +272,7 @@ int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 
 	firmwarefd = open(firmware, O_RDONLY);
 	if (firmwarefd < 0) {
-		printf("could not open %s: %s\n", firmware,
-		       errno_str());
+		printf("could not open %s: %m\n", firmware);
 		ret = firmwarefd;
 		goto out;
 	}
@@ -282,7 +281,7 @@ int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 
 	devicefd = open(dst, O_WRONLY);
 	if (devicefd < 0) {
-		printf("could not open %s: %s\n", dst, errno_str());
+		printf("could not open %s: %m\n", dst);
 		ret = devicefd;
 		goto out;
 	}
diff --git a/common/misc.c b/common/misc.c
index e0e32f47c59d..0c4bbe361db6 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -114,7 +114,7 @@ EXPORT_SYMBOL(errno_str);
 void perror(const char *s)
 {
 #ifdef CONFIG_ERRNO_MESSAGES
-	printf("%s: %s\n", s, errno_str());
+	printf("%s: %m\n", s);
 #else
 	printf("%s returned with %d\n", s, errno);
 #endif
diff --git a/common/uimage.c b/common/uimage.c
index 42e9d9023f3f..72c37b7d15dd 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -98,7 +98,7 @@ struct uimage_handle *uimage_open(const char *filename)
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
-		printf("could not open: %s\n", errno_str());
+		printf("could not open: %m\n");
 		free(copy);
 		return NULL;
 	}
@@ -109,7 +109,7 @@ struct uimage_handle *uimage_open(const char *filename)
 	handle->copy = copy;
 
 	if (read(fd, header, sizeof(*header)) < 0) {
-		printf("could not read: %s\n", errno_str());
+		printf("could not read: %m\n");
 		goto err_out;
 	}
 
diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 8fc4df65de09..147f4735d9ea 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -381,7 +381,7 @@ static int bpkfs_probe(struct device_d *dev)
 
 	ret = read(fd, header, sizeof(*header));
 	if (ret < 0) {
-		dev_err(dev, "could not read: %s (ret = %d)\n", errno_str(), ret);
+		dev_err(dev, "could not read: %m\n");
 		goto err;
 	}
 
@@ -407,7 +407,7 @@ static int bpkfs_probe(struct device_d *dev)
 
 		ret = read(fd, &data_header, sizeof(data_header));
 		if (ret < 0) {
-			dev_err(dev, "could not read: %s\n", errno_str());
+			dev_err(dev, "could not read: %m\n");
 			goto err;
 		} else if (ret == 0) {
 			dev_err(dev, "EOF: to_read %llu\n", size);
@@ -456,7 +456,7 @@ static int bpkfs_probe(struct device_d *dev)
 		priv->nb_data_entries++;
 
 		if (lseek(fd, d->size, SEEK_CUR) != d->size) {
-			dev_err(dev, "could not seek: %s\n", errno_str());
+			dev_err(dev, "could not seek: %m\n");
 			ret = -errno;
 			goto err;
 		}
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index daaa3ad24bae..8de2b8881f8e 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -373,7 +373,7 @@ static int __uimage_open(struct uimagefs_handle *priv)
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
-		printf("could not open: %s\n", errno_str());
+		printf("could not open: %m\n");
 		return fd;
 	}
 
@@ -381,7 +381,7 @@ static int __uimage_open(struct uimagefs_handle *priv)
 
 	ret = read(fd, header, sizeof(*header));
 	if (ret < 0) {
-		printf("could not read: %s\n", errno_str());
+		printf("could not read: %m\n");
 		goto err_out;
 	}
 	offset += sizeof(*header);
diff --git a/lib/libfile.c b/lib/libfile.c
index 3b7985fbcabb..b967232d198e 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -387,7 +387,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 
 	srcfd = open(src, O_RDONLY);
 	if (srcfd < 0) {
-		printf("could not open %s: %s\n", src, errno_str());
+		printf("could not open %s: %m\n", src);
 		ret = srcfd;
 		goto out;
 	}
@@ -396,7 +396,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 
 	s = stat(dst, &dststat);
 	if (s && s != -ENOENT) {
-		printf("could not stat %s: %s\n", dst, errno_str());
+		printf("could not stat %s: %m\n", dst);
 		ret = s;
 		goto out;
 	}
@@ -407,7 +407,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 
 	dstfd = open(dst, mode);
 	if (dstfd < 0) {
-		printf("could not open %s: %s\n", dst, errno_str());
+		printf("could not open %s: %m\n", dst);
 		ret = dstfd;
 		goto out;
 	}
-- 
2.30.2



