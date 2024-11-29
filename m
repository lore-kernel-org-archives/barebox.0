Delivery-date: Fri, 29 Nov 2024 12:45:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzQz-001q9Z-1s
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 12:45:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzQy-0005hR-Hg
	for lore@pengutronix.de; Fri, 29 Nov 2024 12:45:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=urf/TLLsZHrW9HrSjr8KrdAOWWyUeQ0mAtr7S0VvakI=; b=s8f9qvNXQSjvu2G48AbDK37sl+
	Gj69GRzJkWgra+hdgAn+TrGaEL//su/nP79skOCg67FhxH5GCos1mv/UVJTg6rypMOu65RaIY4XPP
	5cc6csgwl3Yd5KBuLqcy1gbkOyP6v/4sW+M23awEhS4U9yrVjIozd2FlPbB09WCrBTZQ9n50L35QU
	A+DjHLaqjncHDSBF5ymGv3g3/sCM3RtEunZm0dr6poO+HkFpCtlU8s0cTXd5KTLNq4LAPPestI9wP
	zk27G0jKRtvRX5LKS+yPnNK5FETXRON+Fjoh3zNbktswxgVC0GTtz8/D9YtlfU0N376eaAHlcfA0p
	rDZ7NxKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzQL-0000000HaC1-1su2;
	Fri, 29 Nov 2024 11:44:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzQG-0000000Ha9E-3zAA
	for barebox@bombadil.infradead.org;
	Fri, 29 Nov 2024 11:44:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=urf/TLLsZHrW9HrSjr8KrdAOWWyUeQ0mAtr7S0VvakI=; b=LmNhBNN8Kv2jaI3fsRR9bvI3m2
	kC+YfumpUyd3OxMeOSsQiJ8cmK9XC9FqNG0OlclFnNvvRsFsc9ap0SlFMuAdjfdoS2PgBQAjPn1E/
	GvijipNfZPvhOX37Cjbmh4/5m+Ldd9oG/Wk/oIR+SQU4FpcMnupSSaya1dXk2VrAFf0ZwicDdGYPl
	/ACG/AJM93elhFn+atPl7gDvd6UztKr74Q7a3jKIlepCOGa0yn5+KU9XPtQ0P40izCG60fmW+6V2T
	FJXdE89od8JvOH2kto/YyLsZRSSFmRQjPgJTuHOU9jh2XhiQkw6T6ZO+u6RJCCZHXYLdFP3zdsZb8
	b+aErofQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzQD-00000001jO9-3RlI
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 11:44:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQA-0005CB-6o; Fri, 29 Nov 2024 12:44:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-000mJL-05;
	Fri, 29 Nov 2024 12:44:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-000vyS-2D;
	Fri, 29 Nov 2024 12:44:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Nov 2024 12:44:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241129-k3-r5-v1-6-67c4bb42a5c7@pengutronix.de>
References: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
In-Reply-To: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732880665; l=2748;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=4HJo4tx8HZ95uNTvT6aKGtB+oM/0Pq9gL6s9/U6ptUE=;
 b=dxMZ1McV+0Yut/5CHcOPrAzH4qEsQMPhFJJaLPfnbvxl4/Dl4gshh78ScWG+i1vRhiiFe6rLu
 U21BtBkOTswB0sJQGBKZgtVhiIkJ/BRqhhHmDvgcMCvCIJW3GvKrWGc
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_114429_971288_33B44B12 
X-CRM114-Status: GOOD (  20.39  )
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
Subject: [PATCH 06/20] clocksource: timer-ti-dm: add support for K3 SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

K3 SoCs have a timer compatible to the ones found on the AM335x SoCs.
This patch adds support for these SoCs to the driver. The main
difference is that on AM335x we do not have clk support and get the
timer frequency from a SoC specific call, thus we have to play some
ifdeffery to add clk support for K3 and still keep the SoC specific
call to the AM335x code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clocksource/timer-ti-dm.c | 53 +++++++++++++++++++++++++++++++++++----
 1 file changed, 48 insertions(+), 5 deletions(-)

diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
index 8473cf733d..eb658402f5 100644
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -21,8 +21,8 @@
 #include <clock.h>
 #include <init.h>
 #include <io.h>
-#include <mach/omap/am33xx-silicon.h>
 #include <mach/omap/am33xx-clock.h>
+#include <linux/clk.h>
 
 #include <stdio.h>
 
@@ -65,10 +65,15 @@ static struct clocksource dmtimer_cs = {
 	.priority = 70,
 };
 
+struct omap_dmtimer_data {
+	int (*get_clock)(struct device *dev);
+};
+
 static int omap_dmtimer_probe(struct device *dev)
 {
 	struct resource *iores;
-	u64 clk_speed;
+	int clk_speed;
+	const struct omap_dmtimer_data *data;
 
 	/* one timer is enough */
 	if (base)
@@ -79,8 +84,12 @@ static int omap_dmtimer_probe(struct device *dev)
 		return PTR_ERR(iores);
 	base = IOMEM(iores->start);
 
-	clk_speed = am33xx_get_osc_clock();
-	clk_speed *= 1000;
+	data = device_get_match_data(dev);
+
+	clk_speed = data->get_clock(dev);
+	if (clk_speed < 0)
+		return clk_speed;
+
 	dmtimer_cs.mult = clocksource_hz2mult(clk_speed, dmtimer_cs.shift);
 
 	/* Enable counter */
@@ -89,10 +98,44 @@ static int omap_dmtimer_probe(struct device *dev)
 	return init_clock(&dmtimer_cs);
 }
 
+static int am335x_get_clock(struct device *dev)
+{
+	return am33xx_get_osc_clock() * 1000;
+}
+
+static __maybe_unused struct omap_dmtimer_data am335x_data = {
+	.get_clock = am335x_get_clock,
+};
+
+static int k3_get_clock(struct device *dev)
+{
+	struct clk *clk;
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk), "Cannot get clock\n");
+
+	return clk_get_rate(clk);
+}
+
+static __maybe_unused struct omap_dmtimer_data k3_data = {
+	.get_clock = k3_get_clock,
+};
+
 static __maybe_unused struct of_device_id omap_dmtimer_dt_ids[] = {
+#ifdef CONFIG_ARCH_OMAP
 	{
 		.compatible = "ti,am335x-timer",
-	}, {
+		.data = &am335x_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_K3
+	{
+		.compatible = "ti,am654-timer",
+		.data = &k3_data,
+	},
+#endif
+	{
 		/* sentinel */
 	}
 };

-- 
2.39.5



