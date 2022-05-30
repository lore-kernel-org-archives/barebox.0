Delivery-date: Mon, 30 May 2022 19:54:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvjbH-00FVPS-6b
	for lore@lore.pengutronix.de; Mon, 30 May 2022 19:54:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvjbF-0000gX-SQ
	for lore@pengutronix.de; Mon, 30 May 2022 19:54:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jumrfwGlpj+rfp/mWdJyv9rXRYC7FIbFtwcUdWPBt9Q=; b=ewawkKq3F6fSBa
	8lUHRJJT3h2E2AMpKdvRqLDmsWqwvt4T8VIz5q5ejsVSGokIYrtbwKvL6QcOIqv/b+WA4bb6+3XmN
	1qYH4bhiNZnyqD4ul4e16RoHCqHyH/zPL2Juy4ZhVwgdXd/bymaZO9wVcE7noUra+Fdg1282KZCMQ
	ZoALfTN589voHBV9v203Rm5sPKQppbifbqz9HKwYbPDERWnPK+xow30bZgmoIJGj5+a8WW2JZX/Jo
	JM/0Nz6vDEim76VEnhrntGGV+F4Y1iMc8EN6F4EtikBto1kYPxjdmL/7+eC8tLGmnCGZcxjf5/cet
	c0wGwctP4ghXlMglU+mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvjYJ-007khy-AE; Mon, 30 May 2022 17:51:39 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvjYD-007kgz-LM
	for barebox@lists.infradead.org; Mon, 30 May 2022 17:51:35 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 05E55E74011; Mon, 30 May 2022 19:50:55 +0200 (CEST)
Received: from astat.fritz.box (a89-183-80-55.net-htp.de [89.183.80.55])
	by lynxeye.de (Postfix) with ESMTPA id 2F939E74004
	for <barebox@lists.infradead.org>; Mon, 30 May 2022 19:50:55 +0200 (CEST)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 30 May 2022 19:50:51 +0200
Message-Id: <20220530175051.507579-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_105133_887212_D4C4F7DA 
X-CRM114-Status: GOOD (  10.21  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: nxp-imx8mq-evk: install Barebox into eMMC boot partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Switch the Barebox update handler to install Barebox in the eMMC boot
partitions, which is preferred due to the capability to do atomic
updates.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
index c28107cb1751..8d88bfe8c249 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
@@ -40,7 +40,7 @@ static int nxp_imx8mq_evk_init(void)
 	barebox_set_hostname("imx8mq-evk");
 
 	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
-	imx8m_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc0.barebox", flags);
+	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0", flags);
 
 	flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
 	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", flags);
-- 
2.36.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

