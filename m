Delivery-date: Tue, 02 May 2023 11:15:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6p-002AeC-Mi
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:15:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6n-0002HH-8e
	for lore@pengutronix.de; Tue, 02 May 2023 11:15:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Loic+585FsaoR7nTvZ++CDy6x4JMujzHLrD7+0JbCk0=; b=D/mh7mf4qNafd7EW0o0P9FMHnX
	ReoyZhQo7lmYapZIyt8y/JpcNd5svMz1NRgnUYDLV0u9n06/PtnqUXc8dE6MLhNf5PCPHPo24qXOW
	cyTAZnnIjovXm2dP5PyegZ2tXvIaPFfMG8cGiT3t6p0+JRghs9f7xZni2fglBfuFAVtUCX9fGgqzp
	VsFN8NHNmT/Dry05siazBF21Rsv+uY08w9Fd2JIvRvuyRY/9KdT9g1OreqLp6pI1Wy2MyRdEL2DIo
	RDIaX9FvtCFiFJqJndm3yyHuaNCDIXv1oCH9FC9OqNXA2zNpStq093feEljGcv5tqPGsqzMF1HCsp
	atD2YlZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5c-000jLD-03;
	Tue, 02 May 2023 09:14:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5X-000jGv-2i
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:14:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-0001AS-K7; Tue, 02 May 2023 11:14:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-000Yjb-3d; Tue, 02 May 2023 11:14:22 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-00AqzN-5q; Tue, 02 May 2023 11:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 11:14:11 +0200
Message-Id: <20230502091419.2551228-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502091419.2551228-1-s.hauer@pengutronix.de>
References: <20230502091419.2551228-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021423_905450_04270D73 
X-CRM114-Status: UNSURE (   9.89  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/12] ARM: versatile: drop platform code to register GPIOs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-versatile/core.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 8e32d10302..8dea053d48 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -116,10 +116,6 @@ static void __noreturn versatile_reset_soc(struct restart_handler *rst)
 
 static int versatile_init(void)
 {
-	amba_apb_device_add(NULL, "pl061_gpio", 0, 0x101e4000, 4096, NULL, 0);
-	amba_apb_device_add(NULL, "pl061_gpio", 1, 0x101e5000, 4096, NULL, 0);
-	amba_apb_device_add(NULL, "pl061_gpio", 2, 0x101e6000, 4096, NULL, 0);
-	amba_apb_device_add(NULL, "pl061_gpio", 3, 0x101e7000, 4096, NULL, 0);
 	restart_handler_register_fn("soc", versatile_reset_soc);
 	return 0;
 }
-- 
2.39.2



