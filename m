Delivery-date: Mon, 14 Oct 2024 12:54:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0IiF-004E96-0Q
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 12:54:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0IiE-0004xv-JO
	for lore@pengutronix.de; Mon, 14 Oct 2024 12:54:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MB1q1nXx9z1QkOcwKEhOm8zcoyJ5U6CdVWu9V91YpUc=; b=nkGb4FGOfO6niak7RaQ+Ne/Ttm
	nyLG1yyvX1o+f9aiovUInVFsluVHBLzG9uLMG9YQV1D6OecN9ehk5vJjJhpPfKGL5F/jodpaBRY3n
	xIanL6lGLLy0b6LdCaitfziqdZ4MbJkrq2lu3XG3Jm/Ayc4ZSCl5RTpZahattkKix/DikXGC3BPnP
	z2rt3KQMZFlAEdU8D/r9JNEdY0fOwVtBUblSTo4UCGAi4vaFwNvozmwDvaelDx+WJLomdHVp7Dpia
	D441qiz0KSqwYSqQQDh9glvZ/Q9ocbBSwHX90XwO5PB1v6TK3sZKHLh7a7ALaVZZAy80x/plQQCjN
	0lKsGT8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Ihg-00000004lWE-2RyS;
	Mon, 14 Oct 2024 10:53:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Ib9-00000004jx7-2FAV
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 10:46:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Ib8-0004G4-0J; Mon, 14 Oct 2024 12:46:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Ib7-001lpa-KJ; Mon, 14 Oct 2024 12:46:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Ib7-00Ax1B-1l;
	Mon, 14 Oct 2024 12:46:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 12:46:44 +0200
Message-Id: <20241014104644.2610132-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014104644.2610132-1-a.fatoum@pengutronix.de>
References: <20241014104644.2610132-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_034647_638776_72B1F8D0 
X-CRM114-Status: UNSURE (   8.68  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fixup! video: add dw-hdmi driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

video: dw-hdmi: fix compile testing with CONFIG_SANDBOX

Building under sandbox results in an error message due to missing
definition of ARRAY_SIZE. Fix this by including the relevant header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/dw-hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/dw-hdmi.c b/drivers/video/dw-hdmi.c
index ac4f368f6369..73201836b7e5 100644
--- a/drivers/video/dw-hdmi.c
+++ b/drivers/video/dw-hdmi.c
@@ -7,6 +7,7 @@
  * Copyright (C) 2010, Guennadi Liakhovetski <g.liakhovetski@gmx.de>
  */
 #include <linux/clk.h>
+#include <linux/kernel.h>
 #include <linux/err.h>
 #include <linux/hdmi.h>
 #include <i2c/i2c.h>
-- 
2.39.5



