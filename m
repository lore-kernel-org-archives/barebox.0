Delivery-date: Thu, 07 Apr 2022 11:25:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOOG-00AIMH-WC
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 11:25:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOOD-0003Ry-LV
	for lore@pengutronix.de; Thu, 07 Apr 2022 11:25:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/6nBPjWcvjggs6W2OKbRUfVF2pu9EPMZO24WqYcLNEI=; b=s6qN69t65jny3R
	zgfrJn+nTKvDRCnI18tKlW3l80A4HlQYokmsaLLpv3+h3WWRNCF3qyoIRX7l+bzRWGBOgF4Bb9QrX
	kutew+GX2/nK3iGPIJ4uRA4XZx4wQoalU5WtuogyRI6DWSIHpd/N1e6LgMRkuwlVmD9iFT0znXSXs
	DgU4pSgc6diHr7V/Y1muHCvvfVu4Q+4KVk+ECvr3kU9kd2PgJ4+ZEsbIDSQM5jnAJJg5Y6iYX4td1
	dwMHCqq4YqcNpoQY/z07mRTcPVHb9cH/JBPnbwnc5IW2iNef+FwSA5vCqQ8XgI4slv4/0yXElAlw6
	jJOo7G5pU+Ce8HRNtONg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOMw-00ApAa-Lc; Thu, 07 Apr 2022 09:23:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncO2U-00Afaq-NF
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 09:02:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncO2T-0007AG-2X; Thu, 07 Apr 2022 11:02:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncO2T-001Zuf-Qn; Thu, 07 Apr 2022 11:02:48 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncO2R-00407B-Dk; Thu, 07 Apr 2022 11:02:47 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Apr 2022 11:02:45 +0200
Message-Id: <20220407090246.953707-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_020250_851154_BE95A48F 
X-CRM114-Status: GOOD (  10.37  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 1/2] net: designware: eqos: fix receive issue with external
 switch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Do not drop packets with error status (CRC error, receive error, watchdog
timeout, or overflow) otherwise we wont be able to receive packets from
a switch with enabled tagging.

In case we have switch with tagging enabled, ingress packets will be
modified by the switch. Most probably this will affect CRC calculation,
so all incoming packets are dropped.

Setting FEP and FUP is recommended programming model described in
STM32MP157 reference manual. See "64.9.2 MTL initialization":

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/designware_eqos.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 8d2a21c220..1f97d84880 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -112,6 +112,8 @@ struct eqos_mtl_regs {
 #define EQOS_MTL_RXQ0_OPERATION_MODE_RFA_MASK		0x3f
 #define EQOS_MTL_RXQ0_OPERATION_MODE_EHFC		BIT(7)
 #define EQOS_MTL_RXQ0_OPERATION_MODE_RSF		BIT(5)
+#define EQOS_MTL_RXQ0_OPERATION_MODE_FEP		BIT(4)
+#define EQOS_MTL_RXQ0_OPERATION_MODE_FUP		BIT(3)
 
 #define EQOS_MTL_RXQ0_DEBUG_PRXQ_SHIFT			16
 #define EQOS_MTL_RXQ0_DEBUG_PRXQ_MASK			0x7fff
@@ -433,7 +435,9 @@ static int eqos_start(struct eth_device *edev)
 
 	/* Enable Store and Forward mode for RX, since no jumbo frame */
 	setbits_le32(&eqos->mtl_regs->rxq0_operation_mode,
-		     EQOS_MTL_RXQ0_OPERATION_MODE_RSF);
+		     EQOS_MTL_RXQ0_OPERATION_MODE_RSF |
+		     EQOS_MTL_RXQ0_OPERATION_MODE_FEP |
+		     EQOS_MTL_RXQ0_OPERATION_MODE_FUP);
 
 	/* Transmit/Receive queue fifo size; use all RAM for 1 queue */
 	val = readl(&eqos->mac_regs->hw_feature1);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

