Delivery-date: Fri, 12 Dec 2025 17:15:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5nP-00Aj9N-1X
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 17:15:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5nK-00027r-MV
	for lore@pengutronix.de; Fri, 12 Dec 2025 17:15:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GbSv+JXhdU3ztfWwwgyMTouxxJkbmkTrkB9SN2ovthk=; b=3E4DXay/8ww9zg
	LpTAE2x4ihkMa7/4eebwDgi2iWqEOw0LCRdGWq1Qir96FGrYWvLZJ3FOmvtcb4UBxIL1blpaS+XRL
	945lpFJR8NJ0Myuw0ghnGvcTvL+NV1DDrDMdGf8z8vF/SK/oAzsOtzJkuaP0IX1a5RIriOst6wwDH
	o85SjKyjT5LVftM6N0fMQzaWJ89bwVLtP4jJSO19fFxrAIw72S7lU4g2IsddFMa45+4jxB3OhAw3I
	DNkJlqODSISaILqOgtwRs4sTfqQYRbnND6d+nqetf4dkEPuoSIU9mPfTyCv8qVpa4zjFVODHaxb1L
	a3h4QweJ7EC+8UUAYDsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5mr-00000000odS-2eeE;
	Fri, 12 Dec 2025 16:14:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5ml-00000000obp-3vFk
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 16:14:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5mk-0001tJ-2Z; Fri, 12 Dec 2025 17:14:26 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5mj-005K68-2p;
	Fri, 12 Dec 2025 17:14:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5mj-000000072e4-3DNI;
	Fri, 12 Dec 2025 17:14:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 12 Dec 2025 17:12:53 +0100
Message-ID: <20251212161424.1627626-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251212161424.1627626-1-a.fatoum@pengutronix.de>
References: <20251212161424.1627626-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_081428_231072_DAE6FE50 
X-CRM114-Status: GOOD (  12.82  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/5] boot: assign names to bootentry providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows board- or functionality-specific (like EFI loader support)
to invoke a specific bootentry provider by name.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - add Sascha's R-b
---
 arch/arm/boards/protonic-imx6/board.c |  1 +
 common/blspec.c                       |  1 +
 common/boot.c                         | 15 +++++++++++++++
 common/bootchooser.c                  |  1 +
 common/bootdef.c                      |  1 +
 include/boot.h                        |  2 ++
 6 files changed, 21 insertions(+)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 80558ce15817..c15a349c8a88 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -461,6 +461,7 @@ static int prt_imx6_bootentry_generate(struct bootentries *bootentries,
 }
 
 static struct bootentry_provider prt_imx6_bootentry_provider = {
+	.name = "prt-imx6",
 	.generate = prt_imx6_bootentry_generate,
 };
 
diff --git a/common/blspec.c b/common/blspec.c
index bc2c3204ad62..624e4c115272 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -639,6 +639,7 @@ static int blspec_bootentry_generate(struct bootentries *bootentries,
 }
 
 static struct bootentry_provider blspec_bootentry_provider = {
+	.name = "blspec",
 	.generate = blspec_bootentry_generate,
 };
 
diff --git a/common/boot.c b/common/boot.c
index 14525d31ae2d..1059e6d995d3 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -288,6 +288,21 @@ int bootentry_register_provider(struct bootentry_provider *p)
 	return 0;
 }
 
+struct bootentry_provider *get_bootentry_provider(const char *name)
+{
+	struct bootentry_provider *p;
+
+	if (!name)
+		return NULL;
+
+	list_for_each_entry(p, &bootentry_providers, list) {
+		if (streq_ptr(p->name, name))
+			return p;
+	}
+
+	return NULL;
+}
+
 /*
  * nfs_find_mountpath - Check if a given url is already mounted
  */
diff --git a/common/bootchooser.c b/common/bootchooser.c
index a79eee8ca2c4..2905a0ca677e 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -962,6 +962,7 @@ static int bootchooser_add_entry(struct bootentries *entries, const char *name)
 }
 
 static struct bootentry_provider bootchooser_entry_provider = {
+	.name = "bootchooser",
 	.generate = bootchooser_add_entry,
 };
 
diff --git a/common/bootdef.c b/common/bootdef.c
index e8140d3a6bce..85471d92d3c5 100644
--- a/common/bootdef.c
+++ b/common/bootdef.c
@@ -31,6 +31,7 @@ static int bootdef_add_entry(struct bootentries *entries, const char *name)
 }
 
 static struct bootentry_provider bootdef_entry_provider = {
+	.name = "bootdef",
 	.generate = bootdef_add_entry,
 };
 
diff --git a/include/boot.h b/include/boot.h
index c1676364cadc..ae32b9ead93f 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -26,12 +26,14 @@ struct bootentry {
 int bootentries_add_entry(struct bootentries *entries, struct bootentry *entry);
 
 struct bootentry_provider {
+	const char *name;
 	int (*generate)(struct bootentries *bootentries, const char *name);
 	/* internal fields */
 	struct list_head list;
 };
 
 int bootentry_register_provider(struct bootentry_provider *provider);
+struct bootentry_provider *get_bootentry_provider(const char *name);
 
 #define bootentries_for_each_entry(bootentries, entry) \
 	list_for_each_entry(entry, &bootentries->entries, list)
-- 
2.47.3



