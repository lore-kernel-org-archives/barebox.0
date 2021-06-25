Delivery-date: Fri, 25 Jun 2021 09:44:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgW6-0007oe-MX
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:44:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgW5-00057m-3E
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:44:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9l5r5pGvw+PJS1Z/J4EDzrebUiBXbN7myWUtSxPFiM=; b=KGvUU8sqK3Ob1l
	feZn5fQkUK/q5RC176WRumkoWC9dhkGNXY0hlkZxnXbSVuMamintQ/jOfKsH5JH8DdoNxq3ChycXx
	3UPjLNV+hJAcoJ0pH0UhgJLEGgs+eSJY6039O0cKV+jqHGvEQdggmPUEzHweiW0wBrjr02SNO1lhk
	D+sODxJUfrQ56swCyXKfPbq1U/rZOmKnx5fcBcJK2mwykoOauB0i1QNvxMDs+pWGHn62VODPf5Tq2
	Iey/52rIYbEORz7eKP5dvV6ldBMVGHvG08zCQdRmBEi1uXX2EjE4eZgdeiptwGbL+GNRPFZMEm9kM
	+byN0xbj9HJuZUWYlkhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgUj-0004yf-VK; Fri, 25 Jun 2021 07:43:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgDg-00HZ1r-79
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:25:49 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDe-0002QY-Qt; Fri, 25 Jun 2021 09:25:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0000d5-B5; Fri, 25 Jun 2021 09:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 09:25:25 +0200
Message-Id: <20210625072540.32717-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625072540.32717-1-s.hauer@pengutronix.de>
References: <20210625072540.32717-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_002544_496960_4251AEE4 
X-CRM114-Status: GOOD (  13.30  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/19] of: base: move memory init from DT to initcall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Lucas Stach <dev@lynxeye.de>

Instead of calling it from of_probe, convert it to a initcall at
the appropriate level. This allows to move of_probe to later in
the init sequence while keeping the memory init at the same place,
which is important as many other drivers need the valid memory area
to be set up properly.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.pengutronix.de/20201021115813.31645-5-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 193bae7fa0..d0d955f464 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2300,6 +2300,9 @@ static int of_probe_memory(void)
 	struct device_node *memory = root_node;
 	int ret = 0;
 
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return 0;
+
 	/* Parse all available node with "memory" device_type */
 	while (1) {
 		int err;
@@ -2315,6 +2318,7 @@ static int of_probe_memory(void)
 
 	return ret;
 }
+mem_initcall(of_probe_memory);
 
 static void of_platform_device_create_root(struct device_node *np)
 {
@@ -2334,7 +2338,6 @@ static void of_platform_device_create_root(struct device_node *np)
 int of_probe(void)
 {
 	struct device_node *firmware;
-	int ret;
 
 	if(!root_node)
 		return -ENODEV;
@@ -2345,8 +2348,6 @@ int of_probe(void)
 	if (of_model)
 		barebox_set_model(of_model);
 
-	ret = of_probe_memory();
-
 	firmware = of_find_node_by_path("/firmware");
 	if (firmware)
 		of_platform_populate(firmware, NULL, NULL);
@@ -2356,7 +2357,7 @@ int of_probe(void)
 	of_clk_init(root_node, NULL);
 	of_platform_populate(root_node, of_default_bus_match_table, NULL);
 
-	return ret;
+	return 0;
 }
 
 /**
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

