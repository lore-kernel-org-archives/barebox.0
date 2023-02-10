Delivery-date: Fri, 10 Feb 2023 17:54:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQWfq-003HbM-Eg
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 17:54:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQWfn-0000k8-PC
	for lore@pengutronix.de; Fri, 10 Feb 2023 17:54:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLF+bMREkYlINs6MHiqpcpmXkYQr0muj/vxQ4JzAfFI=; b=Md/0KNqK6HyAM+
	kijuitZU08u0z1disz0noFY4HZ4jKXXaqjG/TzD1rO8Rh2mZjJ4h1PPuWIUzBmEZWh3cT4Gi/UrBT
	ll/PV1sbrI1yfzm86BwEc4GLISPQ/Y06RZ2A4ZggSd91MQeDB9LBF4Lg2aBrQQRfbJEr3bFfWXrfP
	o/NgZucD9DlsfgUUnFfcshOepmkjWR4K3TJq3kvgV7h/zn+F+ZfV2lv+r6EMHe2OtaKI2dJuD3Bzl
	5/46dS6ZPeY7j3+O99GvoAdmwcEe8UkecfKZWvahMeXzelUuKtrOiLteoy6dCSa3gpfRyi6frFsRE
	t+tJIdKP9GOi0hcvJYjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWf3-006aVE-B5; Fri, 10 Feb 2023 16:54:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWes-006aSV-EQ
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 16:54:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pQWer-0000ac-6U; Fri, 10 Feb 2023 17:53:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pQWep-0041oM-C3; Fri, 10 Feb 2023 17:53:56 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pQWep-00F7hg-6u; Fri, 10 Feb 2023 17:53:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 17:53:51 +0100
Message-Id: <20230210165353.3601175-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
References: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_085358_500853_FCCA7E3B 
X-CRM114-Status: GOOD (  15.37  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] of: support of_ensure_probed for top-level machine device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Creation of a machine device for the top-level node has special casing
in of_probe(). Export of_platform_device_create_root(), so it's possible
to ensure probe of the machine device. This is required when doing
of_devices_ensure_probed_by_dev_id with the machine compatible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch to facilitate patch 3/4
---
 drivers/of/base.c     | 10 +++++++---
 drivers/of/platform.c |  2 +-
 include/of.h          |  1 +
 3 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1221cd316cdf..7ba0655401cc 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2512,13 +2512,13 @@ static int of_probe_memory(void)
 }
 mem_initcall(of_probe_memory);
 
-static void of_platform_device_create_root(struct device_node *np)
+struct device *of_platform_device_create_root(struct device_node *np)
 {
 	static struct device *dev;
 	int ret;
 
 	if (dev)
-		return;
+		return dev;
 
 	dev = xzalloc(sizeof(*dev));
 	dev->id = DEVICE_ID_SINGLE;
@@ -2526,8 +2526,12 @@ static void of_platform_device_create_root(struct device_node *np)
 	dev_set_name(dev, "machine");
 
 	ret = platform_device_register(dev);
-	if (ret)
+	if (ret) {
 		free_device(dev);
+		return ERR_PTR(ret);
+	}
+
+	return dev;
 }
 
 static const struct of_device_id reserved_mem_matches[] = {
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 69f9ddec50ca..11cde8924f94 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -421,7 +421,7 @@ static struct device *of_device_create_on_demand(struct device_node *np)
 
 	parent = of_get_parent(np);
 	if (!parent)
-		return NULL;
+		return of_platform_device_create_root(np);
 
 	if (!np->dev && parent->dev) {
 		ret = device_detect(parent->dev);
diff --git a/include/of.h b/include/of.h
index 1a38774615a4..63c90255cd64 100644
--- a/include/of.h
+++ b/include/of.h
@@ -298,6 +298,7 @@ extern void of_platform_device_dummy_drv(struct device *dev);
 extern int of_platform_populate(struct device_node *root,
 				const struct of_device_id *matches,
 				struct device *parent);
+extern struct device *of_platform_device_create_root(struct device_node *np);
 extern struct device *of_find_device_by_node(struct device_node *np);
 extern struct device *of_device_enable_and_register(struct device_node *np);
 extern struct device *of_device_enable_and_register_by_name(const char *name);
-- 
2.30.2



