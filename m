Delivery-date: Fri, 20 Oct 2023 15:38:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtpiM-00FaVR-8W
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 15:38:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtpiK-0003IE-TX
	for lore@pengutronix.de; Fri, 20 Oct 2023 15:38:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r3eMXIU64hO+G06EoynGGoaLtVfggXw53QAyTOc4oNQ=; b=mjOOwmCVmsZEgx+9fz1SvJOXh2
	CjxfpeJ8E8q0TrQ51PNQRzba8+asyeUmfDJH20m7LWsGIJJWhqWs45hdu+xkXokemTGt6aMiq87MP
	iw0pV4F935TuqXJsACryUnj5ofvK+mIMwPuo4SAGwjtgz66lvIJY6+CwW2lQVJGr785lTvfYCVU25
	V9wbEPK9tITjKIdXRScEr5f8RjHJ3vZlSsQy70M4qjzOVk77WjgCLLosUnqRDxvJEoNam6pF1canW
	4K0y86jqKRXXKY34ARJzbNa9y1uDsHva7L2FzbTEGDZyZR8Y0fZ+gcLPdBLk/X2E9VGQxPQ5KvwSB
	H3NWXaGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtphH-002O79-07;
	Fri, 20 Oct 2023 13:37:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtphD-002O61-1N
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 13:37:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtphC-0002zg-28; Fri, 20 Oct 2023 15:37:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtphB-0032VY-M2; Fri, 20 Oct 2023 15:37:45 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtphB-002Lu9-1q;
	Fri, 20 Oct 2023 15:37:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 15:37:43 +0200
Message-Id: <20231020133744.555063-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_063747_465721_783AE3B8 
X-CRM114-Status: GOOD (  10.57  )
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
Subject: [PATCH master 1/2] remoteproc: stm32: fix typo in Kconfig symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Kconfig symbol for enabling support for the ARM Secure Monitor Call
Calling Convention if CONFIG_ARM_SMCCC and not CONFIG_ARM_SMCC, but the
latter is checked with IS_ENABLED() in the driver. Fix the typo.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/remoteproc/stm32_rproc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index b6a62634842f..b2282f2fac5b 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -56,7 +56,7 @@ static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
 
 	val = hold ? HOLD_BOOT : RELEASE_BOOT;
 
-	if (IS_ENABLED(CONFIG_ARM_SMCC) && ddata->secured_soc) {
+	if (IS_ENABLED(CONFIG_ARM_SMCCC) && ddata->secured_soc) {
 		arm_smccc_smc(STM32_SMC_RCC, STM32_SMC_REG_WRITE,
 			      hold_boot->reg, val, 0, 0, 0, 0, &smc_res);
 		err = smc_res.a0;
-- 
2.39.2



