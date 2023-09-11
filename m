Delivery-date: Mon, 11 Sep 2023 14:18:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffsJ-00BTdi-70
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:18:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffsG-0002KE-P5
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:18:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NERVboq4UiUEKcAx3vmuZWM2OuvfxVuS6FS5KZva/b4=; b=eWHusRnGyXmJVz1E6gVTRDIuwM
	XwgcIckD1QEGxhOYLlpHweto74guyafLuu97QQGVwbiUAY+vXmDaRMx2KmDMYV0+s/4gQsEEhKwAB
	0UUapZM8Chi9dgJX96iKdtecBbN56+P/OOGDD9Q0SV83kile9fvJFZ0PslpfKc5PE1Y1ZEVA5IMXe
	KaV4b/mLz1OtcpMdCz+TWFLqnjdVJsM6/KREx5ydG8Vw/gsWK6/trIkd4eWq9CLPPXXRIRVxCrrcB
	3epGNXPcY2WyoqpYo/haOm9izgHOuI6EIvEHMG9HnClUrqH/0ZIxGSNrC0QvdQsIdX2XGYjPxzQ9W
	2+C9iTeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qffrG-000TLj-2X;
	Mon, 11 Sep 2023 12:17:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qffrC-000TKk-2w
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:17:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qffrB-0002DA-Iq; Mon, 11 Sep 2023 14:17:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qffrB-005XtP-6R; Mon, 11 Sep 2023 14:17:33 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qffrA-00BARW-26;
	Mon, 11 Sep 2023 14:17:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 14:17:31 +0200
Message-Id: <20230911121731.2661717-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_051734_946420_3D9DF94E 
X-CRM114-Status: UNSURE (   7.31  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] lib: random: make linux/hw_random.h header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct hwrng defined in the file embeds a struct device, so inclusion
of the header defining it is in order.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/hw_random.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/hw_random.h b/include/linux/hw_random.h
index fad41b688063..9143ba1f8d4c 100644
--- a/include/linux/hw_random.h
+++ b/include/linux/hw_random.h
@@ -14,6 +14,7 @@
 #define LINUX_HWRANDOM_H_
 
 #include <linux/list.h>
+#include <driver.h>
 
 /**
  * struct hwrng - Hardware Random Number Generator driver
-- 
2.39.2



