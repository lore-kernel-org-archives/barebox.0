Delivery-date: Wed, 15 Oct 2025 11:27:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8xnG-00834F-28
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 11:27:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8xnG-00081p-20
	for lore@pengutronix.de; Wed, 15 Oct 2025 11:27:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4YuhBZ2CuRVXd19zcOwR7M3m7b8nxTVJXBalXz6bgP4=; b=CV0vrPirCW01GiNmzCMUv6YxZO
	iwV/zW4xqSmNStEiY2+0PJ8NmEYXOHc9sYOXlqys1UdjMbJOjbDRjY1IT4icuy7FwboblLogsIr/R
	po/pE57QjwUiN2NINkHsf+AdS2UiDU30Y3YgrS/9eY5M6ImnjkIaKuw1DTKwb8tFzJfs8+pQ3yVRr
	8KBlb/W2QYE5JDu3ikziNqdMaKQPkG2DK96JvXy0ViOBAZxoEOwGwOF64+zkIioZbn6L4cIKUJ7CF
	fhrWt6g/tdKfhUiRYJexrtyedrgKsr8xlj3EV7e/yUbmjl0aZ3nF1VJ6ZLUAsMkWlIfjDuOeXk2Mu
	m43sCyhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xmq-000000018yh-0FBg;
	Wed, 15 Oct 2025 09:27:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xmo-000000018xr-1DUP
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 09:27:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xmm-0007v9-M5; Wed, 15 Oct 2025 11:27:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xmm-003hWx-1c;
	Wed, 15 Oct 2025 11:27:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xmm-00000009tcm-1hQu;
	Wed, 15 Oct 2025 11:27:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 Oct 2025 11:27:01 +0200
Message-ID: <20251015092706.2358673-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_022710_345445_1346ACD7 
X-CRM114-Status: GOOD (  12.79  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] commands: devinfo: print Deep Probe status for top-level machine device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is a log message when deep probe is disabled, but to make it
easier to verify that it's enabled, let's introduce it as extra info
in the devinfo command.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/devinfo.c |  4 ++++
 drivers/of/base.c  | 12 +++++++++---
 include/of.h       |  2 ++
 3 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index cff4dbb92e31..e132f88bf3f3 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -117,6 +117,10 @@ static int do_devinfo(int argc, char *argv[])
 				printf("\n");
 				of_print_nodes(dev->of_node, 0, ~0);
 			}
+
+			if (dev == of_platform_root_device)
+				printf("Deep probe: %s\n",
+				       deep_probe_is_supported() ? "true" : "false");
 		}
 #endif
 	}
diff --git a/drivers/of/base.c b/drivers/of/base.c
index c20fffb899a9..15265dc22623 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2909,12 +2909,14 @@ static int of_probe_memory(void)
 }
 mem_initcall(of_probe_memory);
 
+struct device *of_platform_root_device;
+
 static void of_platform_device_create_root(struct device_node *np)
 {
-	static struct device *dev;
+	struct device *dev;
 	int ret;
 
-	if (dev)
+	if (of_platform_root_device)
 		return;
 
 	dev = xzalloc(sizeof(*dev));
@@ -2923,8 +2925,12 @@ static void of_platform_device_create_root(struct device_node *np)
 	dev_set_name(dev, "machine");
 
 	ret = platform_device_register(dev);
-	if (ret)
+	if (WARN_ON(ret)) {
 		free_device(dev);
+		return;
+	}
+
+	of_platform_root_device = dev;
 }
 
 static const struct of_device_id reserved_mem_matches[] = {
diff --git a/include/of.h b/include/of.h
index 640d76f4aade..d1efab13c780 100644
--- a/include/of.h
+++ b/include/of.h
@@ -428,6 +428,8 @@ extern int of_set_root_node(struct device_node *node);
 extern int barebox_register_of(struct device_node *root);
 extern int barebox_register_fdt(const void *dtb);
 
+extern struct device *of_platform_root_device;
+
 extern struct device *of_platform_device_create(struct device_node *np,
 						struct device *parent);
 extern void of_platform_device_dummy_drv(struct device *dev);
-- 
2.47.3



