Delivery-date: Wed, 22 Nov 2023 19:12:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5ric-004gH9-2B
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 19:12:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5ric-0001Cp-OH
	for lore@pengutronix.de; Wed, 22 Nov 2023 19:12:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xnmJTqCsBt5j6CGEsgsFsPVX0AeK8Ad7GgtjZMmLvBs=; b=wNM0E/UkPcU+wuOI5/HPy3wmhL
	wbwIhdKztrHw7RBsx/bXat6VlExOSPLlDpbGMeoygfQcxOFLuwf+aZl2RgRBdRF7h3sjzetQWB0dy
	HtwCdf4D5rxL6K8AbSvi810gQYsOIuOqvwNpaMRoiNOJDago3uA9q9zDddolxYdcWiF7vBa+eaOEW
	ae2OVr6DvO6pDkBnzEqj6cKOVqHkCmf6IeXvjyU+wPctYGfTBSy4sqX48b704T2m6TbiW+4oJ+vLu
	l7Z5L3LVYQUuuvLYdHmS3KXCYWBFJ4fQMYTdqwpVeSY7xjLQmMvKGNi9Bjui7Bx69an63LkFMpFGk
	xHNAebPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rhB-002loY-09;
	Wed, 22 Nov 2023 18:11:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rh6-002lm3-2v
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 18:11:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh3-0000bs-JJ; Wed, 22 Nov 2023 19:11:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh3-00As1E-6s; Wed, 22 Nov 2023 19:11:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh3-002Wed-0I;
	Wed, 22 Nov 2023 19:11:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 19:11:16 +0100
Message-Id: <20231122181116.591131-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122181116.591131-1-a.fatoum@pengutronix.de>
References: <20231122181116.591131-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_101124_976844_660CD41D 
X-CRM114-Status: GOOD (  10.95  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/7] ARM: stm32mp: init: ignore of_register_fixup return value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_register_fixup can't actually fail, so drop the return value check
and propagation to make the code a bit more concise.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/init.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index 2b0a665220ce..2eb8b6beec2a 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -158,7 +158,6 @@ static int stm32mp15_setup_cpu_type(void)
 {
 	unsigned long cpufixupctx = 0, pkgfixupctx = 0;
 	int cputype, package;
-	int ret;
 
 	__stm32mp15_get_cpu_type(&cputype);
 	switch (cputype) {
@@ -222,14 +221,10 @@ static int stm32mp15_setup_cpu_type(void)
 
 	pr_debug("cputype = 0x%x, package = 0x%x\n", cputype, package);
 
-	if (cpufixupctx) {
-		ret = of_register_fixup(stm32mp15_fixup_cpus, (void*)cpufixupctx);
-		if (ret)
-			return ret;
-	}
-
+	if (cpufixupctx)
+		of_register_fixup(stm32mp15_fixup_cpus, (void*)cpufixupctx);
 	if (pkgfixupctx)
-		return of_register_fixup(stm32mp15_fixup_pkg, (void*)pkgfixupctx);
+		of_register_fixup(stm32mp15_fixup_pkg, (void*)pkgfixupctx);
 
 	return 0;
 }
-- 
2.39.2



