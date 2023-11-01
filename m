Delivery-date: Wed, 01 Nov 2023 15:00:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyBlm-00DlTE-Co
	for lore@lore.pengutronix.de; Wed, 01 Nov 2023 15:00:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyBlh-0008Dk-Vl
	for lore@pengutronix.de; Wed, 01 Nov 2023 15:00:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LNjZTsCxjmG/SgPr61JMdXrCrncZp9HxbMYdhbLnwRM=; b=5FU5+Ve4vuKN3pocAXkzF+wMfo
	p2eEN0pUVJhBDzHk35XIsY8mDJVoditF+nRDIptSTf4fJTsgqL30+Pml8xdLxFwoBAbHENItC8J09
	HDpk8zUw4Zdj1ZqUuJ7cJUHfTOYBbvpHDQNKSd29hzTuiZ8md3v/YJvXDv0ZQRf+GHBxm/FL2ik2R
	lgJfPEjyegKV3ALu3YWxxw1m1Ow4hk20k9izW8fEnjfDCY2aD8lm7RC73Gsar9JLs4l/ZOYM7XHnr
	rzsxkgCHFey3uBNaxn7AkfRiup1yOefJ3+eWZ+Y9Y8ViqtwGGfxa0oo4fNITeztDk4fo3RmXUa/5u
	uUyU0+9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyBjf-007c4y-1v;
	Wed, 01 Nov 2023 13:58:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyBjc-007c4V-1E
	for barebox@lists.infradead.org;
	Wed, 01 Nov 2023 13:58:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qyBjZ-0007fe-DO; Wed, 01 Nov 2023 14:58:13 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qyBjZ-005p7U-1I; Wed, 01 Nov 2023 14:58:13 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qyBjY-00GnW4-3C;
	Wed, 01 Nov 2023 14:58:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Nov 2023 14:58:11 +0100
Message-Id: <20231101135811.4003573-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231101_065816_416656_8C4CA03C 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ARM: stm32mp: disable stm32mp1_barebox_entry stack canary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

stm32mp1_barebox_entry is given a stack canary when compiling PBL with
strong stack protector. The function can be called prior to relocation
though, so it needs to be marked as such.

This fixes boot with CONFIG_PBL_STACKPROTECTOR_STRONG=y on STM32MP1 with
generic BL33 entry point (for FIP).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/ddrctrl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index 279a35f30310..f198ee196c6c 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -123,7 +123,7 @@ static inline unsigned stm32mp1_ddrctrl_ramsize(void)
 	return ddrctrl_ramsize(IOMEM(STM32_DDRCTL_BASE), nb_bytes);
 }
 
-void __noreturn stm32mp1_barebox_entry(void *boarddata)
+void __noreturn __prereloc stm32mp1_barebox_entry(void *boarddata)
 {
 	barebox_arm_entry(STM32_DDR_BASE, stm32mp1_ddrctrl_ramsize(), boarddata);
 }
-- 
2.39.2



