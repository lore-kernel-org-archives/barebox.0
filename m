Delivery-date: Tue, 21 Feb 2023 08:09:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUMlz-00DbOz-Hs
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 08:09:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUMly-0007bU-D7
	for lore@pengutronix.de; Tue, 21 Feb 2023 08:09:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EjTe8C9YaPaS/TVKMnMXgi2NR2JZnpwGMdjA+/+1ABY=; b=r49OAoKI0uqjfT/dWROShnM52X
	VqPpt6LiI2C3Sy9Hkq1eDbTyFQcfUAJ1kicsE3M7OzTg5e7PjYoLDLRjqrxbiguE5IrtwMXszrscC
	b2B0S6mZztdsv6ZluddQSlnQC4GELwG57/yplF8/YHJXonkQqBLuODTsDAfyYkTlNfjs8gKGrFe4v
	dWyj/iQkc5KmtMJd5HAmNdLANwW2zs5cWSPOMtOiZ46OlNZL7YXVpDoUS0tYNdbDewr86nzbL2716
	oI3PLhLuelmmaCPaC9BEvOkoq2yOJJFCYRSrSjABHKVEnJhFcsW2VtIFHPfzjiUJvXAVOacEtiaQ0
	OBFmHGdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUMku-006pNs-KV; Tue, 21 Feb 2023 07:08:04 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUMkp-006pKp-BO
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 07:08:00 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 21C81C0007;
	Tue, 21 Feb 2023 07:07:53 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 21 Feb 2023 08:07:49 +0100
Message-Id: <20230221070749.1130753-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_230759_555331_CA69CCC8 
X-CRM114-Status: UNSURE (   5.70  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip: add missing header to <mach/rockchip.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The header uses error codes, so include the appropriate header.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-rockchip/include/mach/rockchip.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-rockchip/include/mach/rockchip.h b/arch/arm/mach-rockchip/include/mach/rockchip.h
index ff8b1109f858..16a691ee8c0a 100644
--- a/arch/arm/mach-rockchip/include/mach/rockchip.h
+++ b/arch/arm/mach-rockchip/include/mach/rockchip.h
@@ -3,6 +3,8 @@
 #ifndef __MACH_ROCKCHIP_H
 #define __MACH_ROCKCHIP_H
 
+#include <errno.h>
+
 #ifdef CONFIG_ARCH_RK3188
 int rk3188_init(void);
 #else
-- 
2.38.3



