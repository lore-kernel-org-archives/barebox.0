Delivery-date: Fri, 18 Jun 2021 14:08:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luDI2-0003N0-LE
	for lore@lore.pengutronix.de; Fri, 18 Jun 2021 14:08:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luDI1-0005Bm-Se
	for lore@pengutronix.de; Fri, 18 Jun 2021 14:08:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMv/MrRPN911NqYIetbGw50qoz3LjnxhZXUHz6Asr1s=; b=SJZmrT5uRyCkI3
	1z41o9+a/zjJ0YXJRucuQBBwqky1t4zPl4sOtRH0q/dQnEUUaxBn0K7H3HE/Z9zpc3BwHu5BtaL2X
	KkKIlUrj7KxS/3xRuZlXR4bW5tfv1nL304xohRHDGheUuKj5QmW5g2UBJbrLUEahXxf6uPMjFzlnl
	+ydR1ozm6oKlBI3FiFaU7t+31H1GGTjATgLVhf528ZyzVqOgG0+/01rnqdFMOMCKr2Dzqx04jqwGn
	kcCJuJ9itOCuE3WPCpTkaWDUfPtJmdItQB8vamu3fSg7wqNDxDfXmch8INozHf1SZSCW05B7T0sk6
	XPNxCSgwVV89bMaFI9jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luDGQ-00DxbJ-4T; Fri, 18 Jun 2021 12:06:22 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luDGK-00DxaZ-Fd
 for barebox@lists.infradead.org; Fri, 18 Jun 2021 12:06:17 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id DCD5586278; Fri, 18 Jun 2021 14:06:11 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:2153:7b02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 729BD86260;
 Fri, 18 Jun 2021 14:06:11 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri, 18 Jun 2021 14:05:58 +0200
Message-Id: <20210618120557.2192098-2-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210618120557.2192098-1-r.czerwinski@pengutronix.de>
References: <20210618120557.2192098-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_050616_712343_E33D915A 
X-CRM114-Status: UNSURE (   7.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] common: bbu: add pr_fmt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This makes it easier to identify where messages are coming from.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/bbu.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/bbu.c b/common/bbu.c
index a66be553e9..deb6a007c9 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -4,6 +4,9 @@
  *
  * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  */
+
+#define pr_fmt(fmt) "bbu: " fmt
+
 #include <common.h>
 #include <bbu.h>
 #include <linux/list.h>
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

