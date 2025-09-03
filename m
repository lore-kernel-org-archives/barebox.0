Delivery-date: Wed, 03 Sep 2025 14:50:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utmwr-007eSY-0G
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 14:50:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utmwp-00049C-UW
	for lore@pengutronix.de; Wed, 03 Sep 2025 14:50:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rNrVX9mMbeNkLjN1zPborHzqy2fM3eep9zlo/zW9gtw=; b=ku5rOJo7s3NBpBloS/2ea9xfS2
	jCaRK6zwkSpGcavJhwGDInBgKQSKPmENKKc4iFL9T6hVp0KloaxMGNJCxJX1HWzfB/u2y5XCrDyw6
	/Lb40afq0wrEY/xfds5vLWVhL/e2V3yxLLi9D//j0e6GiLbH4RdIpMdXR4YzISVlDWTVz00SoXJSd
	zbcI8AO0C/teQPnCmvhBrShoYdWY4Equ7xwG5Wa8Dk/2pkNccLA86KmMYjckPFoWG1EkKoeExb0XW
	ztGPyDh4lvFggXZmbnbqj0lfCON12lL+q1Z0K6bCgrwQ0z/kHKEOsxkbtHwgFQCrJ6RqhZYNprg/D
	Hyx0/meA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utmwK-00000006SbO-3Nhz;
	Wed, 03 Sep 2025 12:50:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utmC6-00000006JmZ-413S
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 12:02:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utmC5-00061p-MI; Wed, 03 Sep 2025 14:02:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utmC5-003YUb-1b;
	Wed, 03 Sep 2025 14:02:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utmC5-0000000Ecl6-1Xza;
	Wed, 03 Sep 2025 14:02:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  3 Sep 2025 14:02:28 +0200
Message-ID: <20250903120228.3485457-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_050230_994248_0C2B423B 
X-CRM114-Status: GOOD (  10.24  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] openrisc: fix include file protection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fixes:

arch/openrisc/include/asm/common.h:3: error: header guard '_ASM_COMMON_H' followed by '#define' of a different macro [-Werror=header-guard]

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/openrisc/include/asm/common.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/openrisc/include/asm/common.h b/arch/openrisc/include/asm/common.h
index 06bb4824a2..320037de32 100644
--- a/arch/openrisc/include/asm/common.h
+++ b/arch/openrisc/include/asm/common.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef _ASM_COMMON_H
+#ifndef __ASM_COMMON_H
 #define __ASM_COMMON_H
 
-#endif /* _ASM_COMMON_H */
+#endif /* __ASM_COMMON_H */
-- 
2.47.2



