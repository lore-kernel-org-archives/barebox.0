Delivery-date: Mon, 13 Mar 2023 14:43:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiSV-0061Hc-Sa
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:43:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiST-00053w-Vz
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:43:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dq1VGUP35tN0DUM2vKMVmnELXmQ0fA+xP39iFb5mchg=; b=QnJGAESY7J791Y/dKMWBvnRPf/
	cqSpmK4ZLncTp65O8H1f7tPd6eoXKaz20vjgwZT7qSiBxSzCzeHXMFn452ez3LMgVnv41dpcozUjn
	mqZQ0Vr5ngSyD/vGy6YCS4ORdWTU2CFYou2xKzOnwfIK0a0GQ76kEHVI58Lvr/l5Eyo2M0v4wWEyl
	0YxaI1WPD77sFNAZBoJFn6VlsbgV8M/qUIfnSxUp0fnSyAQEzXKeSqBxwJ3hQtTOYkYUM3F7Igs9y
	m5sseeDoP/rV2Jxe2qnRd1HQmfuIsNDTuIJWSmJGTpLkPyto4U9MwVkwYjoG/bSdTTvTf4nw0P3fX
	i+72oifw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiQx-005vpi-Sh; Mon, 13 Mar 2023 13:41:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiQq-005vkf-No
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 13:41:47 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQp-0004N9-9n
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:41:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-3-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_064144_933513_1DEE3449 
X-CRM114-Status: UNSURE (   8.00  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/23] ARM: i.MX8MM: add missing IMD_USED_OF image
 metadata entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Without the entry the update must be forced if IMD is enabled. Add the
missing IMD_USED_OF to avoid this.

Fixes: eba4a4eccd ("ARM: i.MX8MM: add support for 8MMINILPD4-CPU2 board")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index 9983f78bab..46b5f317b5 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -161,6 +161,7 @@ ENTRY_FUNCTION(start_nxp_imx8mm_evk, r0, r1, r2)
 	setup_c();
 
 	IMD_USED_OF(imx8mm_evk);
+	IMD_USED_OF(imx8mm_evkb);
 
 	nxp_imx8mm_evk_start();
 }

-- 
2.30.2



