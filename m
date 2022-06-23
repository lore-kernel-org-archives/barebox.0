Delivery-date: Thu, 23 Jun 2022 10:59:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4Igk-00Bk2P-0W
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 10:59:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4Igj-0001ld-P6
	for lore@pengutronix.de; Thu, 23 Jun 2022 10:59:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MFg8xq5bLHlJ2qRt+ESdE+jDWl9JnKGMPVo2o0Bb3vk=; b=L7QcheAeitNEHbThHPR6AbaeII
	fQ2S5DWFOZmVwJsZQGruwaCcr4c/BNCORzboGqE02Je4H5mw5yDu9LvWwlS7UwuXW0VkUXUmFKALZ
	VjGIx581pjHxWru6G9g5NB7YtGwQAXJPBAlC/9MSMAMd+MaTwOGjv/473Ie73HmPkDq9Egi4LcH3Z
	/623x15hH9+iRLDGQ4dHfXG6zUciifbvJT44yQeAHBly8sJKY+TONcjRdprOaKIrMOzuZuyY8Qrmz
	ptC+4CGJnHMyA5YkqLGr1oho6zvB/4iu5RSD0n7VF/l3+vbCGrVWf4cqI1KWulM59fQ5yMDOSpgWt
	vnM/u91g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4If0-00EDIo-L7; Thu, 23 Jun 2022 08:57:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Iev-00EDDe-Gr
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 08:57:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o4Iel-0001XJ-Ny; Thu, 23 Jun 2022 10:57:43 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4Iej-002CXe-Ke; Thu, 23 Jun 2022 10:57:43 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4Iek-00FRY4-41; Thu, 23 Jun 2022 10:57:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Jun 2022 10:57:41 +0200
Message-Id: <20220623085741.3680767-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_015753_576699_7C5DF593 
X-CRM114-Status: UNSURE (   7.58  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ddr: imx8m: remove header including itself
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This line has noeffect because of the include guard, so just drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/soc/imx8m/ddr.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 39e9e98a73a9..230a36cbe218 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -8,7 +8,6 @@
 
 #include <io.h>
 #include <asm/types.h>
-#include <soc/imx8m/ddr.h>
 
 #define DDRC_DDR_SS_GPR0		0x3d000000
 #define DDRC_IPS_BASE_ADDR_0		0x3f400000
-- 
2.30.2



