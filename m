Delivery-date: Fri, 30 Sep 2022 08:18:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oe9M1-001C18-W7
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 08:18:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oe9M0-0007uQ-3y
	for lore@pengutronix.de; Fri, 30 Sep 2022 08:18:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GYeOe4BzpHQRUSZWzVIFA72rGNIe/MmKecYm3qzLF8M=; b=Yp0zeq6Abf4vXltuTTVXmwDuch
	DhaEr00N0BjdHU1+rP+Y+fOalKgWZJ6RKJsiV+2tVe83HezDRWp5hsLt85zrxz56qIymJS/Rd+9k+
	Al5liuvNlFeEwkbDx/WlCuL4Ctq2Xf2K09hvf/U1IxI1xmHOljIC3oopIxNlJ8Xf7+21ytE4HBf3u
	tQTjx7ba+xHwpcukOLP47yf7oZsYyILcBKKW1UszSDtWH+qcKOm3TO0HFAKp0g5h2rjC63Ci92ULn
	IGmJqMTlb7826zdh4WvleFdF4FtCn+lArnCJzxZN6D/85DujyqwMTKyzRFXq9Iop5H9pSGfNr+HFM
	eQBouqZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe9K9-007Tdl-GC; Fri, 30 Sep 2022 06:16:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe9K3-007TZv-L0
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 06:16:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oe9Jy-0007iX-HK; Fri, 30 Sep 2022 08:16:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oe9Jz-003kYZ-Ab; Fri, 30 Sep 2022 08:16:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oe9Jw-000Fnb-FX; Fri, 30 Sep 2022 08:16:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Sep 2022 08:16:21 +0200
Message-Id: <20220930061621.60683-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_231631_709891_6F10B4F0 
X-CRM114-Status: GOOD (  14.06  )
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
Subject: [PATCH] bootm: wrap image_data::dryrun in new bootm_abort helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

bootm handlers are expected to check the dryrun member just before
shutting down barebox and handing off execution. In future, we may want
to do the same dependent on board code decision, e.g. OTG port is placed
into host mode, then boot proceeds normally, then at the very end,
attached USB drives are checked for an alternate boot method that would
abort the current boot mode. Doing it this way eliminates waiting times
for normal boot compared to the alternative of waiting for a while until
USB drives may be enumerated correctly.

As first step towards enabling this in the future, replace direct
evaluation of image_data::dryrun with the new bootm_abort() helper.

At present, this introduces no functional change, but we may extend
bootm_abort() in future to call board code a supplied abort check
function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib32/bootm.c            | 2 +-
 arch/arm/lib64/armlinux.c         | 2 +-
 arch/arm/mach-omap/omap_generic.c | 2 +-
 arch/kvx/lib/bootm.c              | 2 +-
 arch/mips/lib/bootm.c             | 2 +-
 arch/powerpc/lib/ppclinux.c       | 2 +-
 arch/riscv/lib/bootm.c            | 2 +-
 common/efi/payload/image.c        | 2 +-
 include/bootm.h                   | 5 +++++
 9 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index e814593dce43..562837be10bc 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -324,7 +324,7 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 		       bootm_arm_security_state_name(state));
 	}
 
-	if (data->dryrun)
+	if (bootm_abort(data))
 		return 0;
 
 	ret = of_overlay_load_firmware();
diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 8382ffdf1b04..cca26adee30a 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -17,7 +17,7 @@ static int do_bootm_linux(struct image_data *data)
 	if (IS_ERR(fn))
 		return PTR_ERR(fn);
 
-	if (data->dryrun)
+	if (bootm_abort(data))
 		return 0;
 
 	ret = of_overlay_load_firmware();
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 6bb26a6ef0fa..7992d6c8aaec 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -97,7 +97,7 @@ static int do_bootm_omap_barebox(struct image_data *data)
 	if (!barebox)
 		return -EINVAL;
 
-	if (data->dryrun) {
+	if (bootm_abort(data)) {
 		free(barebox);
 		return 0;
 	}
diff --git a/arch/kvx/lib/bootm.c b/arch/kvx/lib/bootm.c
index 4c77f676ec0b..69e09ab11fc0 100644
--- a/arch/kvx/lib/bootm.c
+++ b/arch/kvx/lib/bootm.c
@@ -27,7 +27,7 @@ static int do_boot_entry(struct image_data *data, boot_func_entry entry,
 
 	printf("starting elf (entry at %p)\n", entry);
 
-	if (data->dryrun)
+	if (bootm_abort(data))
 		return 0;
 
 	ret = of_overlay_load_firmware();
diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 655535737ec8..9aa53d0fa966 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -22,7 +22,7 @@ static int do_bootm_barebox(struct image_data *data)
 	if (!barebox)
 		return -EINVAL;
 
-	if (data->dryrun) {
+	if (bootm_abort(data)) {
 		free(barebox);
 		return 0;
 	}
diff --git a/arch/powerpc/lib/ppclinux.c b/arch/powerpc/lib/ppclinux.c
index 9b8404962cea..a50408b6803b 100644
--- a/arch/powerpc/lib/ppclinux.c
+++ b/arch/powerpc/lib/ppclinux.c
@@ -66,7 +66,7 @@ static int do_bootm_linux(struct image_data *data)
 		return -EINVAL;
 	}
 
-	if (data->dryrun)
+	if (bootm_abort(data))
 		return 0;
 
 	ret = of_overlay_load_firmware();
diff --git a/arch/riscv/lib/bootm.c b/arch/riscv/lib/bootm.c
index 6984f282be4d..2678bcd985d5 100644
--- a/arch/riscv/lib/bootm.c
+++ b/arch/riscv/lib/bootm.c
@@ -16,7 +16,7 @@ static int do_bootm_linux(struct image_data *data)
 	if (IS_ERR(fn))
 		return PTR_ERR(fn);
 
-	if (data->dryrun)
+	if (bootm_abort(data))
 		return 0;
 
 	ret = of_overlay_load_firmware();
diff --git a/common/efi/payload/image.c b/common/efi/payload/image.c
index e63da9ddf06f..36c70131d6b8 100644
--- a/common/efi/payload/image.c
+++ b/common/efi/payload/image.c
@@ -241,7 +241,7 @@ static int do_bootm_efi(struct image_data *data)
 		printf("...\n");
 	}
 
-	if (data->dryrun) {
+	if (bootm_abort(data)) {
 		BS->unload_image(handle);
 		free(boot_header);
 		free(initrd);
diff --git a/include/bootm.h b/include/bootm.h
index 655c5152d97e..4d7eab28c2a9 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -132,6 +132,11 @@ static inline int bootm_verbose(struct image_data *data)
 }
 #endif
 
+static inline int bootm_abort(struct image_data *data)
+{
+	return data->dryrun;
+}
+
 void bootm_data_init_defaults(struct bootm_data *data);
 
 int bootm_load_os(struct image_data *data, unsigned long load_address);
-- 
2.30.2



