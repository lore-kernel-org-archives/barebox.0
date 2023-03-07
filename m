Delivery-date: Tue, 07 Mar 2023 11:16:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZUMf-00CChN-6Q
	for lore@lore.pengutronix.de; Tue, 07 Mar 2023 11:16:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZUMf-0007yG-34
	for lore@pengutronix.de; Tue, 07 Mar 2023 11:16:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kTInpaLwecTRi/HZF8vpShWJysuL25rFWq6grujVW5U=; b=vW/GMb9W+BCrAvnRH6Ssb8JFBV
	ZBBpqU6ITHMb8SPnOlZV0ZySs/gA7WBFQ5bBqUG49yVHl4/6WyKnsr2t6O1AZP0TZt3WMZp0WWa1V
	ugILpaubbFzwgcodibC99BRr4u8unXrEJVRvlr45In5eN5u/wpDScRmLvufu0gsaEtqlfufLX7HYo
	NxYn4BqN6yP3grcBlybV+t1WUQ58YTo+nsUqaEGhzNJSxFPb0yoWYaxfiyqAKFbDocfr4vAFTWe5v
	ayd7eGm+MYBaZ7mJ7GV1Yil7TCsTHPdEO17dQdVJEPkITWL+6WmpVbgyj8IwXEUNAnMWlpuIO7oN2
	wCtvQQUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZULR-00HBat-Hx; Tue, 07 Mar 2023 10:14:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZULL-00HBYi-GB
	for barebox@lists.infradead.org; Tue, 07 Mar 2023 10:14:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pZULJ-0007Mp-SL; Tue, 07 Mar 2023 11:14:49 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZULJ-002SWe-5s; Tue, 07 Mar 2023 11:14:49 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZULH-008iWo-S0; Tue, 07 Mar 2023 11:14:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Mar 2023 11:14:46 +0100
Message-Id: <20230307101446.2077676-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230307101446.2077676-1-a.fatoum@pengutronix.de>
References: <20230307101446.2077676-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_021451_623430_7C54C25F 
X-CRM114-Status: UNSURE (   9.13  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 5/5] ARM: i.MX8M: fix outdated comment about imx-atf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox documentation itself suggests using upstream TF-A, so drop this
outdated comment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 2a3e3f53b885..5cc568fcc4e6 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -20,20 +20,13 @@
  * This function:
  *
  *     1. Copies built-in BL31 blob to an address i.MX8M's BL31
- *        expects to be placed
+ *        expects to be placed (TF-A v2.8+ is position-independent)
  *
  *     2. Sets up temporary stack pointer for EL2, which is execution
  *        level that BL31 will drop us off at after it completes its
  *        initialization routine
  *
  *     3. Transfers control to BL31
- *
- * NOTE: This function expects NXP's implementation of ATF that can be
- * found at:
- *     https://source.codeaurora.org/external/imx/imx-atf
- *
- * any other implementation may or may not work
- *
  */
 
 static __noreturn void imx8m_atf_start_bl31(const void *fw, size_t fw_size, void *atf_dest)
-- 
2.30.2



