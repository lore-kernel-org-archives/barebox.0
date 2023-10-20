Delivery-date: Fri, 20 Oct 2023 09:20:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjo9-00FGXA-Mu
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 09:20:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjo8-0006mt-8O
	for lore@pengutronix.de; Fri, 20 Oct 2023 09:20:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=40jZXIGT2EINfxM9MUG0XDCiG7a/CsieL/M0veLi2pM=; b=Vt03c3fK5DVKd2a7wk1Azls5At
	WQ8aa8Ckz/uHp72lVnOi71iU0yVmT+0BAS0a/F08qtScQyH7nlufHROFZadahGRhnt/iTZN2nZCKF
	+kzDRDmuZYTnyZ/438TgnLm5zao/ZmL3QEURQcApyPKwFWTLUCAhIBTKs9nHGMk3ZHYB0dYUCe8Ug
	Gd2tQbs90nbCnD/Ps4WuK/A4LURqY+svJaUsJHVI4prDL++zvk54r0x/k8IMg5tSxal3LkU3NLv8a
	znCANMAElq0lWqnwIroYv+eEgHVqM0ImEG55fDo504Cch8pwVG79bBltZAJD9K351E5/d1uIRtDkt
	0stGbucw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmw-001P2R-2J;
	Fri, 20 Oct 2023 07:19:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmp-001Oyr-1U
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 07:19:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmg-0006Dp-8o; Fri, 20 Oct 2023 09:19:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-002yLp-Gf; Fri, 20 Oct 2023 09:19:01 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-00BrRe-1J;
	Fri, 20 Oct 2023 09:19:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 09:18:50 +0200
Message-Id: <20231020071853.2826528-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
References: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_001911_530295_3D12908F 
X-CRM114-Status: UNSURE (   9.46  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/11] mfd: atmel-smc: remove dependency of mfd/syscon/atmel-smc.h on regmap.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A forward declaration of struct regmap is all that the header requires
and all users already include regmap.h, so drop the include from the
header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/mfd/syscon/atmel-smc.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/mfd/syscon/atmel-smc.h b/include/linux/mfd/syscon/atmel-smc.h
index 881edefe4e9c..16d09ea497aa 100644
--- a/include/linux/mfd/syscon/atmel-smc.h
+++ b/include/linux/mfd/syscon/atmel-smc.h
@@ -13,7 +13,6 @@
 
 #include <linux/kernel.h>
 #include <of.h>
-#include <regmap.h>
 
 #define ATMEL_SMC_SETUP(cs)			(((cs) * 0x10))
 #define ATMEL_HSMC_SETUP(layout, cs)		\
@@ -93,6 +92,8 @@ struct atmel_smc_cs_conf {
 	u32 mode;
 };
 
+struct regmap;
+
 void atmel_smc_cs_conf_init(struct atmel_smc_cs_conf *conf);
 int atmel_smc_cs_conf_set_timing(struct atmel_smc_cs_conf *conf,
 				 unsigned int shift,
-- 
2.39.2



