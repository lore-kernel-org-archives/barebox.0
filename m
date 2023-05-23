Delivery-date: Tue, 23 May 2023 11:43:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1OXr-00Acqe-J1
	for lore@lore.pengutronix.de; Tue, 23 May 2023 11:43:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1OXp-0007hz-AS
	for lore@pengutronix.de; Tue, 23 May 2023 11:43:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0AwmXtepR+DSGPPtuvngtO9F2T5+dFhcBexzrlQncTE=; b=thJjbco4lEwmKPVr9RLbUmcD5Y
	1eHMFE0WTrSZJ1LILkmVZ+EdcA+JISWgTWUWSIbOh9T5wt/tlbW1a9uIDytK4lKcH6Vl52hSzEAPf
	q/YBwkDsH+NkPR7cHTwJ94jjF4YOGAZIQRKZWkyGsQo1zx8pEJwyqTwYEw6SYDx4Fj/+dXE45TJuc
	aUhwJVgwLUfdVJqJbelMEtPzhggTWw+rCoa/phqPOODml19fa/CL2uCDO4fm9xTQ6k2QaqOFO42rN
	BUPkzsqEvjgs2s7GrHI137Rp4wqrl3x01ha8i+lNZmTb/NeeqxgEKE8I3epp2lq3WqCEIX9wVaGHz
	97cp44Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1OVZ-009dyQ-2h;
	Tue, 23 May 2023 09:40:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1OVW-009dwq-2D
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 09:40:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OVT-0007FR-Hi; Tue, 23 May 2023 11:40:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OVS-002DLa-Tb; Tue, 23 May 2023 11:40:38 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OVR-00EU8x-MZ; Tue, 23 May 2023 11:40:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 May 2023 11:40:34 +0200
Message-Id: <20230523094035.3452447-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_024042_743653_3D8EC36E 
X-CRM114-Status: UNSURE (   8.19  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] efi: payload: iomem: add commented out #define DEBUG 1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The code uses __is_defined, which only works for undefined macros and
defined ones with a value. This is different than the debugging prints
that accept empty defined DEBUG, so add a commented out #define DEBUG 1
to alert those seeking to debug the code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/payload/iomem.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/efi/payload/iomem.c b/common/efi/payload/iomem.c
index 6b92ca993aa7..550d832668ed 100644
--- a/common/efi/payload/iomem.c
+++ b/common/efi/payload/iomem.c
@@ -3,6 +3,7 @@
 
 #define pr_fmt(fmt) "efi-iomem: " fmt
 
+// #define DEBUG 1
 #include <common.h>
 #include <init.h>
 #include <efi.h>
-- 
2.39.2



