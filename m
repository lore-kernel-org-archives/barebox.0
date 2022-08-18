Delivery-date: Thu, 18 Aug 2022 07:21:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXye-002dRJ-6a
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:21:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyb-0000l8-MA
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:21:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LHZ7Rc/44semfHbvRQS5219pst1X+D78bY/1uYak0CQ=; b=YiprXS59GJlCAmJ2jldK47lrg6
	uHk9GFVWypaSrdkYr2K6FLQPhtkg6rhdfNJz+3Qnoh3C9j1FpHe0pme1vNYoRwRdNndVyZTimaMvt
	KMDno6+nnTaGZXBTsvAVbS+YRngOySsyh55oQ/FoaH8P3bgxgxEYTgwf2tlZcYWvGAtH0FIfChiIK
	iyXc/zQtYjSjevAVLTOR/EfQxc7ijcW1QXe9mFBdV7zNV1PpRnx2/UNhx0D7plPgUKZjQ2cBb8kXv
	qVgI89qOhPuFuriAxgXm20kJiFmlRjrbIRARkdbWx1Th1tJzg54yXUepFMWVwK66FrJQNlfqBYxGX
	xCADDhEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXwz-00FnUK-SS; Thu, 18 Aug 2022 05:20:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXwm-00Fn30-S0
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:20:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwk-0008H4-Ds; Thu, 18 Aug 2022 07:19:58 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwj-000S3I-KI; Thu, 18 Aug 2022 07:19:57 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwi-008lHV-LJ; Thu, 18 Aug 2022 07:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:19:47 +0200
Message-Id: <20220818051955.2088238-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_222001_047623_0A0E6E09 
X-CRM114-Status: GOOD (  11.59  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/10] driver: consult feature controller prior to device probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The newly added feature controller framework has two goals: Avoid
probing device in barebox that aren't indeed available and fixing
up the kernel tree, so the same devices aren't probed either.

The first one is easily done, by checking whether a feature is gated
prior to probe.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/driver.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index e7288f6a61cc..072870bea444 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -27,6 +27,7 @@
 #include <linux/err.h>
 #include <complete.h>
 #include <pinctrl.h>
+#include <featctrl.h>
 #include <linux/clk/clk-conf.h>
 
 #ifdef CONFIG_DEBUG_PROBES
@@ -85,6 +86,14 @@ int device_probe(struct device_d *dev)
 	static int depth = 0;
 	int ret;
 
+	ret = of_feature_controller_check(dev->device_node);
+	if (ret < 0)
+		return ret;
+	if (ret == FEATCTRL_GATED) {
+		dev_dbg(dev, "feature gated, skipping probe\n");
+		return -ENODEV;
+	}
+
 	depth++;
 
 	pr_report_probe("%*sprobe-> %s\n", depth * 4, "", dev_name(dev));
-- 
2.30.2



