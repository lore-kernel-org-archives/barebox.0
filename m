Delivery-date: Wed, 31 May 2023 12:03:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4IfZ-0046kl-9e
	for lore@lore.pengutronix.de; Wed, 31 May 2023 12:03:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4IfW-0007lK-I5
	for lore@pengutronix.de; Wed, 31 May 2023 12:03:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xy06tHfo9kBzDGPVNhkjLGIyjkBfOJSmGmTaFp2/ZjE=; b=pAcLWIIIz/wqgSfLY5+28bUav0
	5EYLpWbs6RsBlQC7J/ETVAvLuMiELgfo+2FF/fb2EM18VWymLexg15PAzx8f0HcHQ5t1RrX8kF4BT
	G6JhH18FdUW40Hob+O5/xlZ37KsxNQ/wHLyQBQKR3b4SqzDM6RWHn3lraAdMO/DHbhQVSIJwSIL7l
	1r7jXfrlLv8K+7hNGY86ELy/4GsLHp9b3OuVb/bpT35OQv3qzl7j0JqzpfJNNKz5nzZWemca4/14O
	4AOOFbOpQAMsgOaqk0VWcVhRHirBXgmmsrAXk04G4rRo8caugctPdLLaVfOzQBCY0yzbek0EZCiPR
	7xJIIFRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4IeJ-00GwXX-2T;
	Wed, 31 May 2023 10:01:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4IeF-00GwUl-2l
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 10:01:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4Ie2-0007Mm-0m; Wed, 31 May 2023 12:01:30 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q4Ie1-0044mS-Br; Wed, 31 May 2023 12:01:29 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q4Ie0-003RC1-Oh; Wed, 31 May 2023 12:01:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 31 May 2023 12:01:27 +0200
Message-Id: <20230531100128.819492-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_030143_894156_C6957FE9 
X-CRM114-Status: GOOD (  12.68  )
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
Subject: [PATCH 1/2] ARM: set zero page accessible before copying ATAGs there
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We used skip setting up the zero page as faulting when the SDRAM
starts at 0x0. One reason for doing that was that ATAGs will be copied
there in that case. Call zero_page_access() if necessary to be able
to set the zero page to faulting during barebox startup in the next
step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/armlinux.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
index 6cb7d4b5f3..9b2f1f4544 100644
--- a/arch/arm/lib32/armlinux.c
+++ b/arch/arm/lib32/armlinux.c
@@ -18,6 +18,7 @@
 #include <memory.h>
 #include <of.h>
 #include <magicvar.h>
+#include <zero_page.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
@@ -265,8 +266,12 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 		pr_debug("booting kernel with devicetree\n");
 		params = oftree;
 	} else {
-		setup_tags(initrd_address, initrd_size, swap);
 		params = armlinux_get_bootparams();
+
+		if ((unsigned long)params <= PAGE_SIZE)
+			zero_page_access();
+
+		setup_tags(initrd_address, initrd_size, swap);
 	}
 	architecture = armlinux_get_architecture();
 
-- 
2.39.2



