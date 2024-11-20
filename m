Delivery-date: Wed, 20 Nov 2024 15:49:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDm1n-004GPU-0b
	for lore@lore.pengutronix.de;
	Wed, 20 Nov 2024 15:49:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDm1m-0005ql-Ho
	for lore@pengutronix.de; Wed, 20 Nov 2024 15:49:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7Z9xk91YJuBPosdEolvarr5d8+QWHk/6K8NxyyC58Dw=; b=GHCfKVnRIoCeP3Cob7eSFT2S9O
	8RktNQdCAk6mzmRcac7m6G8Memw3Ej/E9Z9T8VYj4w/i7ydBsGk9Ruyoy5yi2eHk3zmWTpJgdr9WB
	OYEDw5FvMeDXczyhgU4GLZZ2vtcX0njpbMCMqB5ijcdbWsjcq6F5uHGHlJTSdbC+0r3MSOXuITE9D
	qMZQGGp/MZB+eIRywPH4bk/4zdWiUGv6LiNwSK8kp56Yf1p0vMIjacNgvslRqlViSp69Jq4iL0LfX
	P5SkF3e0BLvkftKTWB0T6a9A9LXFOckFDNfZSQMKH6Uat9CGU8FQUyWD54VgNkE9yI4lgp7QhN4d3
	OaUC8oNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDm1F-0000000FatR-3VNS;
	Wed, 20 Nov 2024 14:49:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDm14-0000000Faqg-3sQP
	for barebox@lists.infradead.org;
	Wed, 20 Nov 2024 14:49:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDm13-0005dm-EU; Wed, 20 Nov 2024 15:49:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDm13-001kx6-0i;
	Wed, 20 Nov 2024 15:49:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDm13-00H0TQ-0Q;
	Wed, 20 Nov 2024 15:49:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukleinek@kernel.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 20 Nov 2024 15:49:12 +0100
Message-Id: <20241120144912.4053300-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241120_064914_961253_CEACADB4 
X-CRM114-Status: GOOD (  14.44  )
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
Subject: [PATCH] of: fixup reset source device path into DT if known
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The existing code has several shortcomings:

  - reset_source_get_device returns a static variable that's never set
    due to a separate bug, so this could never have worked as-is.

  - A phandle to the barebox internal device tree is not a useful
    information to fix up into the kernel device tree.

  - phandles are unexpected in /chosen. Other chosen bindings use full
    node paths instead (e.g. stdout-path)

Fix this by using the full name of the kernel device tree's node instead.

Fixes: e208e049f98d ("oftree: expose reset_source device in device tree")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/oftree.c | 36 ++++++++++++++++++++++++------------
 1 file changed, 24 insertions(+), 12 deletions(-)

diff --git a/common/oftree.c b/common/oftree.c
index b7762f1a2c57..1e506bbdddaf 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -139,6 +139,27 @@ static int of_fixup_bootargs_bootsource(struct device_node *root,
 	return ret;
 }
 
+static int of_fixup_bootargs_reset_source(struct device_node *root,
+					  struct device_node *chosen)
+{
+	struct device_node *np;
+	struct device *dev;
+	char *name;
+
+	dev = reset_source_get_device();
+	if (!dev || !dev->of_node)
+		return 0;
+
+	name = of_get_reproducible_name(dev->of_node);
+	np = of_find_node_by_reproducible_name(root, name);
+	free(name);
+
+	if (!np)
+		return 0;
+
+	return of_property_write_string(chosen, "reset-source-device", np->full_name);
+}
+
 static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_node *root)
 {
 	int alias_id;
@@ -200,7 +221,6 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 	struct device_node *node;
 	int err;
 	int instance = reset_source_get_instance();
-	struct device *dev;
 	const char *serialno;
 	const char *compat;
 
@@ -227,17 +247,9 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 		of_property_write_u32(node, "reset-source-instance", instance);
 
 
-	dev = reset_source_get_device();
-	if (dev && dev->of_node) {
-		phandle phandle;
-
-		phandle = of_node_create_phandle(dev->of_node);
-
-		err = of_property_write_u32(node,
-					    "reset-source-device", phandle);
-		if (err)
-			return err;
-	}
+	err = of_fixup_bootargs_reset_source(root, node);
+	if (err)
+		return err;
 
 	err = of_fixup_bootargs_bootsource(root, node);
 	if (err)
-- 
2.39.5



