Delivery-date: Wed, 10 Jun 2026 17:52:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXLE2-004OBd-1b
	for lore@lore.pengutronix.de;
	Wed, 10 Jun 2026 17:52:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXLE1-0001id-Sq
	for lore@pengutronix.de; Wed, 10 Jun 2026 17:52:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zQhirJsN2faGxsOU9+fZ9i4HhJHdN7RQIr284flO8cw=; b=FLqA8PbKXRun9w8ppaAYnkhTJb
	hJ4pI6UPcTiEf9EkWYjDUlHfAnKPAAKj2zvNA89OQcKTXo2fDpEetXgFpOn8uIZnxlP3zR+41m3Kt
	lPjiY/ZHAdcnE1LAdbAMlaW500BVbuphIIl7SJaHGBRWob/FhwTMkufHWK/V2R90BZjx0ZKtVQcbv
	Ls4hwNfkesJ159CDFUUnn2cz24pHT+4HaVNnHLYAg4fVQqT1TUSgPLxragPrtRR4nC//aJ1/Mp72F
	aPhUFqyhiBdFBsEU9/4LOWtebLpQrap7Ng7jlVz+nXX0FP6vBAzO9ec6ZzL0u3mEbKt7/rC9kjLkN
	rlF8qCfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXL1O-000000082cs-2ohQ;
	Wed, 10 Jun 2026 15:39:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXL1J-000000082bO-2coH
	for barebox@lists.infradead.org;
	Wed, 10 Jun 2026 15:39:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wXL1H-0007ph-SY; Wed, 10 Jun 2026 17:39:07 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 10 Jun 2026 17:37:27 +0200
Message-ID: <20260610153904.2862220-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260610153904.2862220-1-a.fatoum@barebox.org>
References: <20260610153904.2862220-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_083909_766952_FCB72043 
X-CRM114-Status: UNSURE (   8.23  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM64: suppress -mabi=lp64 when built with clang
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux also drops this option when built with clang, so do likewise in
barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index edf6f7d74eb5..94904fee13e8 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -75,7 +75,7 @@ tune-$(CONFIG_CPU_ARM920T)	:=-mtune=arm9tdmi
 tune-$(CONFIG_CPU_ARM926T)	:=-mtune=arm9tdmi
 tune-$(CONFIG_CPU_XSCALE)	:=$(call cc-option,-mtune=xscale,-mtune=strongarm110) -Wa,-mcpu=xscale
 
-CFLAGS_ABI-$(CONFIG_CPU_64)	:=-mabi=lp64
+CFLAGS_ABI-$(CONFIG_CPU_64)	:=$(call cc-option,-mabi=lp64)
 CFLAGS_ABI-$(CONFIG_CPU_32)	:=$(call cc-option,-mapcs-32,-mabi=apcs-gnu) $(call cc-option,-mno-thumb-interwork,)
 CFLAGS_ABI-$(CONFIG_AEABI)	:=-mabi=aapcs-linux
 
-- 
2.47.3



