Delivery-date: Thu, 10 Apr 2025 13:40:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2qGQ-00AoVu-0O
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 13:40:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2qGP-0000fD-Ih
	for lore@pengutronix.de; Thu, 10 Apr 2025 13:40:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=00fqlbwPvFgYnXd3ZJfFc3V8NuVbg1OC1iwF/n3QOR8=; b=yVMjVx7AiSl08Bwou+LegVBplO
	JeJxz3Ec3wHbo6XOIfV6j4NOe1qx5BS4EwrYI1IlQ5Ts4gdFRJm/93rYq8wnQfQGjzNb255Rk7ESB
	AG8n72nKuINa5JrcCTgcJmPCOqxLnO7oGjUrxCs8tiNT20ShVw8wSR7YIsgTFNxJNplGoBU8sXau2
	I3giJcM3HW/SvVxrUlOjWRJG/WIRVI+4wZvGhNGdgv8plOXFWa7AvBY7bghUQIKrVYP/1aLRsSX8o
	ymYBXeEGScqwpm44130VVDuMCOZ9ulwxJbk3JYedjM6IrbAgcs5zp0s96YZIhq0axabzGHap8gprl
	Ci/D0U/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2qFy-0000000AKWd-1IFo;
	Thu, 10 Apr 2025 11:39:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2q2H-0000000AIFq-0MWf
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 11:25:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2q2F-0006IF-Kp; Thu, 10 Apr 2025 13:25:31 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2q2F-004GEK-1R;
	Thu, 10 Apr 2025 13:25:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2q2F-00BNLu-16;
	Thu, 10 Apr 2025 13:25:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 10 Apr 2025 13:25:30 +0200
Message-Id: <20250410112530.2711299-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_042533_136401_FE588ECD 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! bootsource: add optional read of /chosen/bootsource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

bootsource: read out /chosen/bootsource earlier

While late initcall is early enough for shell scripts to see a correct
$bootsource, it's usually too late for board code.

As device trees are registered in core_initcall usually, let's parse the
property at postcore time instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 324565068771..8184b284099e 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -3592,29 +3592,28 @@ const char *of_get_machine_compatible(void)
 }
 EXPORT_SYMBOL(of_get_machine_compatible);
 
-static void of_init_bootsource(void)
+static int of_init_early_vars(void)
 {
 	struct device_node *bootsource;
 
 	if (!IS_ENABLED(CONFIG_BAREBOX_DT_2ND))
-		return;
+		return 0;
 
 	bootsource = of_find_node_by_chosen("bootsource", NULL);
-	if (!bootsource)
-		return;
+	if (bootsource)
+		bootsource_of_node_set(bootsource);
 
-	bootsource_of_node_set(bootsource);
+	return 0;
 }
+postcore_initcall(of_init_early_vars);
 
-static int of_init_vars(void)
+static int of_init_late_vars(void)
 {
 	const char *name;
 
 	name = of_get_machine_compatible();
 	barebox_set_hostname_no_overwrite(name ?: "barebox");
 
-	of_init_bootsource();
-
 	return 0;
 }
-late_initcall(of_init_vars);
+late_initcall(of_init_late_vars);
-- 
2.39.5



