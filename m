Delivery-date: Thu, 16 Jan 2025 15:12:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQbd-000co0-12
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 15:12:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQbd-00039H-FN
	for lore@pengutronix.de; Thu, 16 Jan 2025 15:12:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9A4lGjuAiADjinObxVSjhDqE7rqyhZV67NUz5r+E9kI=; b=OXKzhv3Mv5y9rynNogCQ7YrPc1
	8SrgjFQjDSGTQ/rmJIFj/g/e64FDYTs+WPfafhuT9tBk+VhhMMSi1bBeEtCO4qajeoyK33Lt3SQwk
	8IOBgwaNq7QqxclddJG1htYXnAYWUJHv7b9xLuhLAOno1d4ffRfFMVfm+JvrIBvHrFCw89OVzt/2f
	mUAXBXqssmI9gvktY02lFR3KaVgoZzOPSY/6+oFO+4dQWzRJOMf6nNTCqhkHv8stabHzxbzc2h3Z6
	N436y7H3lZUMN7/1BMCMxyMcgzGD4QKXY/lfcJv5jMohd6krw3mWngP914TW4R1eIRZfzO/u6Wxjy
	Uf+J/oxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQbB-0000000F7Wj-47W8;
	Thu, 16 Jan 2025 14:11:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQb9-0000000F7V3-1aZb
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 14:11:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQb7-0002ym-Ux; Thu, 16 Jan 2025 15:11:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQb7-000Gag-2S;
	Thu, 16 Jan 2025 15:11:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQb8-001GNx-1G;
	Thu, 16 Jan 2025 15:11:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Jan 2025 15:11:47 +0100
Message-Id: <20250116141148.301230-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_061151_418369_DDA0DDB4 
X-CRM114-Status: UNSURE (   9.35  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] dma: fix fixup warning for SoCs without /soc node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For SoCs without a /soc node, any DMA coherency fixups happen at the
device tree root. The root's full name is an empty string in barebox, so
this expectedly fails.

Handle this case specially.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/of_fixups.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/of_fixups.c b/drivers/dma/of_fixups.c
index 084ab94cc71c..7377c508cfda 100644
--- a/drivers/dma/of_fixups.c
+++ b/drivers/dma/of_fixups.c
@@ -16,7 +16,8 @@ static int of_dma_coherent_fixup(struct device_node *root, void *data)
 	else
 		coherency = DEV_DMA_COHERENCE_DEFAULT;
 
-	soc_kernel = of_find_node_by_path_from(root, soc_bb->full_name);
+	soc_kernel = of_find_node_by_path_from(root,
+		       *soc_bb->full_name ? soc_bb->full_name : "/");
 	if (!soc_kernel)
 		return -ENOENT;
 
-- 
2.39.5



