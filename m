Delivery-date: Tue, 01 Apr 2025 13:05:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQo-006xv4-25
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:05:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQn-0003B5-O4
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:05:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JXPskO0Z2X/in0cK7NIxPn7fduF2FYiSC77bUpObd7k=; b=DTjkJYOAKP1Am41Rn9BiJuCLrh
	E4sb07gy3c3eq7kf6BLgRXLr/tLWv692nMzfWaZL1R4TZpf2AeGtRcP8FbxDXR/mwIFj7UaSB+IZM
	SR87xayLO2//hwY4hVSqHNPmnQG3UojTjgzgewkjRj8J7TSt3eoQyO+wfDawCjwEs9McxYVnryP+t
	BjhkF7S8ArW3aByfVRPlQvdXIImfLl/TD/3SG5TlRhukxU4HOukvl9jbmkpXGGZ2BhVHa06Y4lM86
	guqqv23ZU+t0LKEJvPaLBcr4ZGLf3DHrFTSj7hnnM35j2H+GqcZHVx9R9hEmMbzKFr9W0Dj5iwa6s
	jDTiTN/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQH-00000002ilA-0YRX;
	Tue, 01 Apr 2025 11:04:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZA8-00000002foa-3oRt
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 10:48:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-0000Mi-G4; Tue, 01 Apr 2025 12:48:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-002kWW-0x;
	Tue, 01 Apr 2025 12:48:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-0f;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:47:51 +0200
Message-Id: <20250401104806.3959859-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_034808_981659_C20E3881 
X-CRM114-Status: GOOD (  13.60  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/16] boot: change bootentry_register_provider to take struct argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

bootentry_register_provider currently takes a single argument only:
The callback. To allow for an easier future extension, have it take a
struct instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 10 +++++++---
 common/blspec.c                       |  8 ++++++--
 common/boot.c                         | 17 +++--------------
 common/bootchooser.c                  |  6 +++++-
 include/boot.h                        |  8 +++++++-
 5 files changed, 28 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 0bbabbb8c734..7aa026594cc7 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -440,8 +440,8 @@ static int prt_imx6_bootentry_create(struct bootentries *bootentries, const char
 	return 0;
 }
 
-static int prt_imx6_bootentry_provider(struct bootentries *bootentries,
-				     const char *name)
+static int prt_imx6_bootentry_generate(struct bootentries *bootentries,
+				       const char *name)
 {
 	int found = 0;
 	unsigned int v;
@@ -459,6 +459,10 @@ static int prt_imx6_bootentry_provider(struct bootentries *bootentries,
 	return found;
 }
 
+static struct bootentry_provider prt_imx6_bootentry_provider = {
+	.generate = prt_imx6_bootentry_generate,
+};
+
 static int prt_imx6_env_init(struct prt_imx6_priv *priv)
 {
 	const struct prt_machine_data *dcfg = priv->dcfg;
@@ -568,7 +572,7 @@ static int prt_imx6_devices_init(void)
 	if (prt_imx6_read_ocotp_serial(priv) != 0)
 		prt_imx6_read_i2c_mac_serial(priv);
 
-	bootentry_register_provider(prt_imx6_bootentry_provider);
+	bootentry_register_provider(&prt_imx6_bootentry_provider);
 
 	prt_imx6_env_init(priv);
 
diff --git a/common/blspec.c b/common/blspec.c
index 77ae3dc21951..27ac6560b97b 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -788,7 +788,7 @@ int blspec_scan_devicename(struct bootentries *bootentries, const char *devname)
 	return blspec_scan_device(bootentries, dev);
 }
 
-static int blspec_bootentry_provider(struct bootentries *bootentries,
+static int blspec_bootentry_generate(struct bootentries *bootentries,
 				     const char *name)
 {
 	struct stat s;
@@ -822,8 +822,12 @@ static int blspec_bootentry_provider(struct bootentries *bootentries,
 	return found;
 }
 
+static struct bootentry_provider blspec_bootentry_provider = {
+	.generate = blspec_bootentry_generate,
+};
+
 static int blspec_init(void)
 {
-	return bootentry_register_provider(blspec_bootentry_provider);
+	return bootentry_register_provider(&blspec_bootentry_provider);
 }
 device_initcall(blspec_init);
diff --git a/common/boot.c b/common/boot.c
index 2530a5bbeeac..e3bdfec581c1 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -267,20 +267,9 @@ static int bootscript_scan_path(struct bootentries *bootentries, const char *pat
 
 static LIST_HEAD(bootentry_providers);
 
-struct bootentry_provider {
-	int (*fn)(struct bootentries *bootentries, const char *name);
-	struct list_head list;
-};
-
-int bootentry_register_provider(int (*fn)(struct bootentries *bootentries, const char *name))
+int bootentry_register_provider(struct bootentry_provider *p)
 {
-	struct bootentry_provider *p;
-
-	p = xzalloc(sizeof(*p));
-	p->fn = fn;
-
-	list_add_tail(&p->list, &bootentry_providers);
-
+	list_add(&p->list, &bootentry_providers);
 	return 0;
 }
 
@@ -306,7 +295,7 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 	int found = 0, ret;
 
 	list_for_each_entry(p, &bootentry_providers, list) {
-		ret = p->fn(bootentries, name);
+		ret = p->generate(bootentries, name);
 		if (ret > 0)
 			found += ret;
 	}
diff --git a/common/bootchooser.c b/common/bootchooser.c
index 6c324fb155e4..bc7c47ec87ae 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -927,6 +927,10 @@ static int bootchooser_add_entry(struct bootentries *entries, const char *name)
 	return 1;
 }
 
+static struct bootentry_provider bootchooser_entry_provider = {
+	.generate = bootchooser_add_entry,
+};
+
 static const char * const reset_attempts_names[] = {
 	[RESET_ATTEMPTS_POWER_ON] = "power-on",
 	[RESET_ATTEMPTS_ALL_ZERO] = "all-zero",
@@ -953,7 +957,7 @@ static int bootchooser_init(void)
 	globalvar_add_simple_bitmask("bootchooser.reset_priorities", &reset_priorities,
 				  reset_priorities_names, ARRAY_SIZE(reset_priorities_names));
 
-	bootentry_register_provider(bootchooser_add_entry);
+	bootentry_register_provider(&bootchooser_entry_provider);
 
 	return 0;
 }
diff --git a/include/boot.h b/include/boot.h
index 53ad1360a5f3..8afbee6549c6 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -37,7 +37,13 @@ struct bootentry {
 
 int bootentries_add_entry(struct bootentries *entries, struct bootentry *entry);
 
-int bootentry_register_provider(int (*fn)(struct bootentries *bootentries, const char *name));
+struct bootentry_provider {
+	int (*generate)(struct bootentries *bootentries, const char *name);
+	/* internal fields */
+	struct list_head list;
+};
+
+int bootentry_register_provider(struct bootentry_provider *provider);
 
 #define bootentries_for_each_entry(bootentries, entry) \
 	list_for_each_entry(entry, &bootentries->entries, list)
-- 
2.39.5



