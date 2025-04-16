Delivery-date: Wed, 16 Apr 2025 12:38:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u509u-001QNW-33
	for lore@lore.pengutronix.de;
	Wed, 16 Apr 2025 12:38:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u509u-0004T7-8s
	for lore@pengutronix.de; Wed, 16 Apr 2025 12:38:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VuSfAFcFhU6YfQlBEcOuuQeUk2TRfAKjffP0e+RgLnU=; b=SOHpr2fBRt0k6B2PHlEaGrjl3w
	fOGmxfhsywkANPU4OnYPeYLtfYIyckOrXHEzxTY4z1G7y4lMijKnRA8sV8CrG0chup0SIOa7n8I0F
	zp565aSQgthkqMToha9Nv5iFWBWI6Z6a/PPG/Y65q3UL1YlplJjlWgHoK210Nr5zk0lbvCHDhSuez
	zs+1z0l3UBBNbzw7JcHo3e3Zqhr2jSN91YpaqCVnlPYZY3WiRuIxm+CeIF9AvdKiIlFMdsghvyQSt
	voSV3XjqfJ7DkasAs7/Tne6cVqh8tyESvBWnsp2EXB1rdv7dXxSbNu7PynHQC5q+ioZRyBQEw0FmG
	3y+po5yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u509T-00000009EUG-1Un5;
	Wed, 16 Apr 2025 10:37:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u509P-00000009ES1-0BiL
	for barebox@lists.infradead.org;
	Wed, 16 Apr 2025 10:37:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509N-00046s-3I; Wed, 16 Apr 2025 12:37:49 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509M-000ZV5-2f;
	Wed, 16 Apr 2025 12:37:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509M-00174h-2N;
	Wed, 16 Apr 2025 12:37:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Apr 2025 12:37:45 +0200
Message-Id: <20250416103748.265415-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250416103748.265415-1-a.fatoum@pengutronix.de>
References: <20250416103748.265415-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_033751_099983_38E09BBE 
X-CRM114-Status: GOOD (  12.06  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] treewide: replace strerror of errno with %m
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

%m saves us some visual clutter and even some code size, so make use of
it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib32/bootm.c         |  6 +++---
 arch/sandbox/os/common.c       |  3 +--
 commands/memtester/memtester.c | 11 +++++------
 common/blspec.c                |  2 +-
 drivers/misc/jtag.c            |  2 +-
 5 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 34ce401e8fd9..3d3e01aa4138 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -204,12 +204,12 @@ static int bootm_load_tee_from_file(struct image_data *data)
 
 	fd = open(data->tee_file, O_RDONLY);
 	if (fd < 0) {
-		pr_err("%s", strerror(errno));
+		pr_err("%m\n");
 		return -errno;
 	}
 
 	if (read_full(fd, &hdr, sizeof(hdr)) < 0) {
-		pr_err("%s", strerror(errno));
+		pr_err("%m\n");
 		ret = -errno;
 		goto out;
 	}
@@ -219,7 +219,7 @@ static int bootm_load_tee_from_file(struct image_data *data)
 		goto out;
 
 	if (read_full(fd, (void *)data->tee_res->start, hdr.init_size) < 0) {
-		pr_err("%s", strerror(errno));
+		pr_err("%m\n");
 		ret = -errno;
 		release_region(data->tee_res);
 		goto out;
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index d44213319422..c5043160b1f9 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -447,8 +447,7 @@ int linux_open_hostfile(struct hf_info *hf)
 				MAP_SHARED, fd, 0);
 
 		if (hf->base == (unsigned long)MAP_FAILED)
-			printf("warning: mmapping %s failed: %s\n",
-			       hf->filename, strerror(errno));
+			printf("warning: mmapping %s failed: %m\n", hf->filename);
 	} else {
 		printf("warning: %s: contiguous map failed\n", hf->filename);
 	}
diff --git a/commands/memtester/memtester.c b/commands/memtester/memtester.c
index f4adbfc855cb..aacb80d80936 100644
--- a/commands/memtester/memtester.c
+++ b/commands/memtester/memtester.c
@@ -109,8 +109,7 @@ static int do_memtester(int argc, char **argv) {
                 break;
             case 'd':
                 if (stat(optarg,&statbuf)) {
-                    printf("can not use %s as device: %s\n", optarg,
-                            strerror(errno));
+                    printf("can not use %s as device: %m\n", optarg);
                     return COMMAND_ERROR_USAGE;
                 } else {
                     if (!S_ISCHR(statbuf.st_mode) && !S_ISBLK(statbuf.st_mode)) {
@@ -164,14 +163,14 @@ static int do_memtester(int argc, char **argv) {
     if (memtester_use_phys) {
         memfd = open(device_name, O_RDWR);
         if (memfd == -1) {
-            printf("failed to open %s for physical memory: %s\n",
-                    device_name, strerror(errno));
+            printf("failed to open %s for physical memory: %m\n",
+                    device_name);
             return EXIT_FAIL_NONSTARTER;
         }
         buf = memmap(memfd, PROT_READ | PROT_WRITE) + memtester_physaddrbase;
         if (buf == MAP_FAILED) {
-            printf("failed to mmap %s for physical memory: %s\n",
-                    device_name, strerror(errno));
+            printf("failed to mmap %s for physical memory: %m\n",
+                    device_name);
             close(memfd);
             return EXIT_FAIL_NONSTARTER;
         }
diff --git a/common/blspec.c b/common/blspec.c
index dd3bb1c167d7..80ebe256ceaf 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -472,7 +472,7 @@ static int blspec_scan_directory(struct bootscanner *bootscanner,
 
 	ret = glob(abspath, 0, NULL, &globb);
 	if (ret) {
-		pr_debug("%s: %s: %s\n", __func__, abspath, strerror(errno));
+		pr_debug("%s: %s: %m\n", __func__, abspath);
 		ret = -errno;
 		goto err_out;
 	}
diff --git a/drivers/misc/jtag.c b/drivers/misc/jtag.c
index cca0aba2d6b5..8673fa68505b 100644
--- a/drivers/misc/jtag.c
+++ b/drivers/misc/jtag.c
@@ -269,7 +269,7 @@ static void jtag_info(struct device *pdev)
 		ret = jtag_ioctl(&info->cdev, JTAG_GET_ID, &jid);
 		printf("  Device number: %d\n", dn);
 		if (ret == -1)
-			printf("   JTAG_GET_ID failed: %s\n", strerror(errno));
+			printf("   JTAG_GET_ID failed: %m\n");
 		else
 			printf("   ID: 0x%lX\n", jid.id);
 	}
-- 
2.39.5



