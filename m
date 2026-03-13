Delivery-date: Fri, 13 Mar 2026 14:27:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YV-000DCj-33
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:27:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YR-0005h3-TD
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:27:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4+YiUoI0U1kOhOfDAu3urS4drdhTdeeKt81FOrz9g48=; b=sfwPMLOG1p7mYRqY5DeDKuSf+z
	tAz95EJ23nNHAnTWDyvAnO9BKT73nSEmdMz3ixBeDw2r6NjqSjxUQToCVca5zwgRxfyUk6wTRC/bY
	X39fXzHpFS4Wh/Fx7hfG/dYKGOnCQ1qbB8rJy8riMOH2s3t3DE2/s+6MRylaFcnxBxbF3FFtB/gl/
	7z0bJBf8tYW9uxfoO3Nm+X/C4h4YqR1LW5Po8qclXspzsj11QmMRollrvdyavi23WzseOkZr0eq2z
	Pj99NmNbyjmDeedPY8+MjrMaQg/ihhcIRCa+a0O3t/T8h9QurrOte9nPZ8jLGSVUtOMvLXvF/yUQP
	43208vlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XS-00000000EDG-3gfI;
	Fri, 13 Mar 2026 13:26:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XO-00000000E8Y-0lnx
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:26:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00058W-QP; Fri, 13 Mar 2026 14:26:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-0005Rb-1p;
	Fri, 13 Mar 2026 14:26:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-1xWv;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Mar 2026 14:24:49 +0100
Message-ID: <20260313132631.2257573-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_062646_224091_0D6A3C6C 
X-CRM114-Status: GOOD (  11.19  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 05/58] video: simplefb-client: switch to dev_get_resource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>

If the framebuffer memory resource resides in ram, it has already
been requested and mapped, so only get the resource to avoid
requesting a busy resource. This is also the approach for linux.

While at it, use IOMEM for mem->start and drop an unnecessary newline.

(cherry picked from commit c31d855177ff9390876378885d7f8352411cb40b)

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20250902140006.1410408-2-ivo.ivanov.ivanov1@gmail.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/simplefb-client.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
index 1c0ee3e7d426..d4e36df61298 100644
--- a/drivers/video/simplefb-client.c
+++ b/drivers/video/simplefb-client.c
@@ -97,7 +97,7 @@ static int simplefb_probe(struct device *dev)
 	if (ret)
 		return ret;
 
-	mem = dev_request_mem_resource(dev, 0);
+	mem = dev_get_resource(dev, IORESOURCE_MEM, 0);
 	if (IS_ERR(mem)) {
 		dev_err(dev, "No memory resource\n");
 		return PTR_ERR(mem);
@@ -117,7 +117,7 @@ static int simplefb_probe(struct device *dev)
 	info->blue = params.format->blue;
 	info->transp = params.format->transp;
 
-	info->screen_base = (void *)mem->start;
+	info->screen_base = IOMEM(mem->start);
 	info->screen_size = resource_size(mem);
 
 	/*
-- 
2.47.3



