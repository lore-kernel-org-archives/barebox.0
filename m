Delivery-date: Mon, 08 Nov 2021 08:54:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzTh-0005rr-Tw
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 08:54:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzTf-0004Ag-C7
	for lore@pengutronix.de; Mon, 08 Nov 2021 08:54:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgIwg4a3p8ir3iGQYL5H0pvLoruS96dNS1Z+yhejV1c=; b=JIvFS9Io7RWPUK
	1HpO/q6ebPaON60FyXJKgy7/UtZt37xmQDrQjngtegBhJHP/QSCaDN6feaf/qQOrx7YMfvmeoOl+3
	yA5CmErjQoIS/EBPcc3oLggLTfspuAOHTrntWzBPN5nxM/iCGUNiTnjrif791fVdY+SFWNPicA3f7
	4VLi8nul/g6WtvyFHrxWKLX3ecsZqYcxywibCp/Lk/TaK76J6o4TXPo4F47+p/NWph9iZXWZXcGao
	AhWopXxCr+qvP3upaOTYv5JyUZswwoaCchFJ3/PCQG/QfA2Zy6wz924E/4Xrb2RYsjgZs20J2gXNp
	n/BzI01pmJDTLv2fU39w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjzS7-00FdcX-K5; Mon, 08 Nov 2021 07:52:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjzRz-00FdZ5-0a
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 07:52:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRv-0003kp-Jn; Mon, 08 Nov 2021 08:52:15 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRu-009viq-Tg; Mon, 08 Nov 2021 08:52:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Nov 2021 08:52:07 +0100
Message-Id: <20211108075209.2366770-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
References: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211107_235219_086042_FCC29944 
X-CRM114-Status: GOOD (  14.80  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/9] clk: handle CLK_OF_DECLARE in deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

An assigned-clock-parents referring to a fixed-clock will result in a
warning:

  WARNING: clk: couldn't get parent clock 0 for /ethernet@fe300000

That's because the device for the fixed clock is created on demand and
even after ensuring probe, no driver will have bound against it as
CLK_OF_DECLARE operates outside the driver model.

Fix this by creating devices and binding the dummy driver while
iterating over the CLK_OF_DECLARE list. No functional change for
systems not enabling deep-probe.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk.c     | 8 +++++++-
 drivers/of/platform.c | 5 ++++-
 include/of.h          | 6 ++++++
 3 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index fff1e21144dd..189c9c62df5c 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -845,9 +845,15 @@ int of_clk_init(struct device_node *root, const struct of_device_id *matches)
 
 			struct device_node *np = clk_provider->np;
 			if (force || parent_ready(np)) {
+				struct device_d *dev;
 
 				of_pinctrl_select_state_default(np);
-				clk_provider->clk_init_cb(np);
+
+				dev = of_device_create_on_demand(np);
+
+				if (clk_provider->clk_init_cb(np) == 0 && dev)
+					of_platform_device_dummy_drv(dev);
+
 				of_clk_set_defaults(np, true);
 
 				list_del(&clk_provider->node);
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ea9b8fd9ce9b..ca9b7d153ae4 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -365,11 +365,14 @@ int of_platform_populate(struct device_node *root,
 }
 EXPORT_SYMBOL_GPL(of_platform_populate);
 
-static struct device_d *of_device_create_on_demand(struct device_node *np)
+struct device_d *of_device_create_on_demand(struct device_node *np)
 {
 	struct device_node *parent;
 	struct device_d *parent_dev, *dev;
 
+	if (!deep_probe_is_supported())
+		return NULL;
+
 	parent = of_get_parent(np);
 	if (!parent)
 		return NULL;
diff --git a/include/of.h b/include/of.h
index f9c2b283de71..a9fa2e095c87 100644
--- a/include/of.h
+++ b/include/of.h
@@ -279,6 +279,7 @@ extern struct device_d *of_device_enable_and_register_by_name(const char *name);
 extern struct device_d *of_device_enable_and_register_by_alias(
 							const char *alias);
 
+extern struct device_d *of_device_create_on_demand(struct device_node *np);
 extern int of_device_ensure_probed(struct device_node *np);
 extern int of_device_ensure_probed_by_alias(const char *alias);
 extern int of_devices_ensure_probed_by_property(const char *property_name);
@@ -372,6 +373,11 @@ static inline void of_platform_device_dummy_drv(struct device_d *dev)
 {
 }
 
+struct device_d *of_device_create_on_demand(struct device_node *np)
+{
+	return NULL;
+}
+
 static inline int of_device_ensure_probed(struct device_node *np)
 {
 	return 0;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

