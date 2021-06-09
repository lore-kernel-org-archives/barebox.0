Delivery-date: Wed, 09 Jun 2021 11:27:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquVA-0006T0-Kf
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 11:27:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquV9-0001x8-7I
	for lore@pengutronix.de; Wed, 09 Jun 2021 11:27:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYAsd9pH8LyBKHTHGpEw7iVejYvftqr6wH681uPAznM=; b=eMqi7z0n11Dnsw
	3zdqFDboPDXOe7Fk94yKoff4J0+rxDUoR9Ij7eLm0DHvHI6vK5zDNSogtBi0lkHJKDTJwtX12T37Y
	vtRR83WfhQJKe6MstgHkSQCxH6iPE/75M2Sqshj6PFTJNzSbrUssCY4BhD08RlZhjnPdySrS40pQQ
	W7H7QR3ca5qqB+aMYIR3fcsmjzHUNjgcHx9BG7mdVNEgF+giU0B4BclsO0/EKYiEYQZNMnZ/UaDrs
	0jbXdCk/doACqnbEBnlHG7J1FyMjarD3pnTPE87Peq9ZE2uPm4Lopw2lp7vCq+1/xAeoojqGYdRFJ
	qOEX6/f0ZsB2qSRiM0CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lquTg-00Cf1w-0Q; Wed, 09 Jun 2021 09:26:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqtzf-00CVap-6v
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 08:55:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtzV-0005b9-Sy; Wed, 09 Jun 2021 10:55:13 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtzV-0006F8-Ff; Wed, 09 Jun 2021 10:55:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Jun 2021 10:55:08 +0200
Message-Id: <20210609085512.3865-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210609085512.3865-1-a.fatoum@pengutronix.de>
References: <20210609085512.3865-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_015523_312075_32266D87 
X-CRM114-Status: UNSURE (   8.58  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] fixup! net: eqos: Rockchip support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Align capitalization with other hex constants.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_rockchip.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/designware_rockchip.c b/drivers/net/designware_rockchip.c
index 883c1d806d6f..79c514e73054 100644
--- a/drivers/net/designware_rockchip.c
+++ b/drivers/net/designware_rockchip.c
@@ -69,10 +69,10 @@ static inline struct eqos_rk_gmac *to_rk_gmac(struct eqos *eqos)
 #define GRF_BIT(nr)	(BIT(nr) | BIT((nr) + 16))
 #define GRF_CLR_BIT(nr)	(BIT((nr) + 16))
 
-#define RK3568_GRF_GMAC0_CON0		0X0380
-#define RK3568_GRF_GMAC0_CON1		0X0384
-#define RK3568_GRF_GMAC1_CON0		0X0388
-#define RK3568_GRF_GMAC1_CON1		0X038c
+#define RK3568_GRF_GMAC0_CON0		0x0380
+#define RK3568_GRF_GMAC0_CON1		0x0384
+#define RK3568_GRF_GMAC1_CON0		0x0388
+#define RK3568_GRF_GMAC1_CON1		0x038c
 
 /* RK3568_GRF_GMAC0_CON1 && RK3568_GRF_GMAC1_CON1 */
 #define RK3568_GMAC_PHY_INTF_SEL_RGMII	\
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

