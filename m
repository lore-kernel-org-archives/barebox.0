Delivery-date: Fri, 28 Nov 2025 11:42:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvvZ-005ku1-1O
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 11:42:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOvvY-0008J1-TH
	for lore@pengutronix.de; Fri, 28 Nov 2025 11:42:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lYXwbI0FiAPv9R2JBlOKwx/N3Qm/RevqHvt9UwJO4W4=; b=qNgmGUieGCQxRR7AU7u4/nPnvs
	lffypOmhdv7G3gXiHHO/Pkn3WaqY+7j2hsdvMmNYGnmwW4zctl1/lOQgROnpZW4NfNhBoZD42H/Kv
	kilreKLsiiuNGXL0jj3h5nWNmaYCE2aO6DA1PrqyfOvvcZCJNmFsEezcnsbQXwXPs74JYjif0oRuS
	pDf/fQflJsLLFEuyhKD+JylzvLTeWd2hv2/aZtPtgWyXe8jMhtkRyG909shpMyPfHl4ZVMX6dOdYx
	LeEYJzQpPgIBk//nY+EFhprhCrb/FwVHXI3q81dL8XtmrC/qrbdpFO8BAD4X7I9JpA4i+cmhl3eMZ
	vbJmUanw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvvC-00000000JHi-1Ob3;
	Fri, 28 Nov 2025 10:41:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvv8-00000000JGO-2RgS
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 10:41:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvv7-0008AU-6Z
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 11:41:45 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvv7-002wKu-02
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:41:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOvv6-00000006kEN-3lYh
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:41:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 11:41:28 +0100
Message-ID: <20251128104143.1578832-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128104143.1578832-1-a.fatoum@pengutronix.de>
References: <20251128104143.1578832-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_024148_310280_6B1CFC13 
X-CRM114-Status: UNSURE (   9.73  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: lib64: rename pbl.o to delay.o
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The file only contains a delay function using the architected timer.
The name pbl.c is also unfortunate, because it's compiled to pbl.pbl.o,
so let's just give rename it to something more suitable.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/lib64/Makefile           | 2 +-
 arch/arm/lib64/{pbl.c => delay.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename arch/arm/lib64/{pbl.c => delay.c} (100%)

diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
index e86a2e5a2f3d..b229255039b6 100644
--- a/arch/arm/lib64/Makefile
+++ b/arch/arm/lib64/Makefile
@@ -9,4 +9,4 @@ extra-y += barebox.lds
 obj-pbl-y   += runtime-offset.o
 obj-pbl-y   += setjmp.o
 obj-y += io.o
-pbl-y	+= div0.o pbl.o
+pbl-y	+= div0.o delay.o
diff --git a/arch/arm/lib64/pbl.c b/arch/arm/lib64/delay.c
similarity index 100%
rename from arch/arm/lib64/pbl.c
rename to arch/arm/lib64/delay.c
-- 
2.47.3



