Delivery-date: Tue, 21 Feb 2023 09:07:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNg3-00DecZ-SD
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 09:07:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNg1-0006s3-UB
	for lore@pengutronix.de; Tue, 21 Feb 2023 09:07:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/+Ag2q2xokQJRdHFDy+IVlb8KWdzThpRfjNbavRoe1w=; b=iSPMcV+sW2paYJGIExkPv9jQUm
	tj01yFQYUc6DFAIv8M+H2MfycNfXaqf+Q1SKuxZUtnazGjCx1ZCCiB+t0gqIgiQ5h3PJK8oVEQUZi
	EKN023lsBaYihu3710wmRjR2VJMKnEXPh4wtiaoyUuB3/QQlm1yCtlAR3c+/BuIbNUiBEEV1Ja4jk
	APkIbsxY3kgkCWmjish9Q86aP2YjMYOe5YyFSkdUOTQ0pUOL+v6TDLxeygXShHkZrajSo1WaYsoJR
	SdLC6atJnU8PxVtugquh9Fb0+V1Wu4ctN5vAog1YpWKEwHhz2d+UwzV2ODNZF1WVmrGmnORuFMC8g
	cVhtZJBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNeo-006ySV-45; Tue, 21 Feb 2023 08:05:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNeV-006yIl-MO
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 08:05:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeR-00061Q-TJ; Tue, 21 Feb 2023 09:05:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeP-006Rj8-VZ; Tue, 21 Feb 2023 09:05:27 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeP-002YHU-R7; Tue, 21 Feb 2023 09:05:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Feb 2023 09:05:22 +0100
Message-Id: <20230221080524.607241-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230221080524.607241-1-a.fatoum@pengutronix.de>
References: <20230221080524.607241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_000531_888562_7912F81D 
X-CRM114-Status: GOOD (  11.51  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 10/12] dma: fix dma_sync when not all device DMA is equally coherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The LS1046A features a cache-coherent interconnect and the drivers
configure the hardware appropriately, e.g. setting the FMan PRAM_MODE_GLOBAL
bit, so the written Ethernet Controllers snoop caches.

Yet, we use the standard arm64 cache maintenance routines when the MMU
is enabled and thus risk memory corruption if CPU prefetches receive buffers
in the time window between dma_map_single() cleaning them to
Point-of-Coherency and dma_unmap_single() invalidating them[1].

To properly solve this issue, we need to consult the newly added per-device
dma coherent attribute to decide whether to do manual cache maintenance.

[1]: https://lore.kernel.org/all/a5d6cc26-cd23-7c31-f56e-f6d535ea39b0@arm.com/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/map.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/map.c b/drivers/dma/map.c
index 114c0f7db3bd..be0ee258cc59 100644
--- a/drivers/dma/map.c
+++ b/drivers/dma/map.c
@@ -25,7 +25,8 @@ dma_addr_t dma_map_single(struct device *dev, void *ptr, size_t size,
 {
 	unsigned long addr = (unsigned long)ptr;
 
-	dma_sync_single_for_device(addr, size, dir);
+	if (dev_is_dma_coherent(dev) <= 0)
+		dma_sync_single_for_device(addr, size, dir);
 
 	return cpu_to_dma(dev, ptr);
 }
@@ -35,5 +36,6 @@ void dma_unmap_single(struct device *dev, dma_addr_t dma_addr, size_t size,
 {
 	unsigned long addr = (unsigned long)dma_to_cpu(dev, dma_addr);
 
-	dma_sync_single_for_cpu(addr, size, dir);
+	if (dev_is_dma_coherent(dev) <= 0)
+		dma_sync_single_for_cpu(addr, size, dir);
 }
-- 
2.30.2



