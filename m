Delivery-date: Mon, 22 Jul 2024 18:27:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVvsf-001ref-0g
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 18:27:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVvse-0000ny-KW
	for lore@pengutronix.de; Mon, 22 Jul 2024 18:27:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0k8jNNkYAs8PrIljSERsDzJh5+zwSyTVwQzI9qjtHnU=; b=kU0OIScUGCwzOeXQrRShaURoJO
	Pwdwc9KDD4qFPAxhiSJ+8BdngSFzHsPLpQoEQwiW2JlL5j+8sQu+PwI+FD5PtW/rKbpmXq995FZ14
	UmT7Hyd1TuDKIyyiiByohWXkchBFxQ21jFNk5SW5pCg1+dMo0vZxgOz7XeSg5YihPhI5d+cVQQk1+
	RT8NwQLz/KShPZHI4/8FrxjobKcJG2/6SB7JM3vYOWkBkID/Tus+5sDsPximJ41PFUSZduA2hfBmT
	cj04kiX9h+NgQq6jvEofZPyg9+4nydVRjbXdh3xZojKcHsplJacYBCiHt5VfPrU8S2QQsKwotdSc2
	N7uhO6cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVvrz-0000000A4UW-1RP9;
	Mon, 22 Jul 2024 16:26:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVvrw-0000000A4TW-0E7H
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 16:26:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVvrs-0000gP-3h; Mon, 22 Jul 2024 18:26:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVvrr-001QFO-Mg; Mon, 22 Jul 2024 18:26:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVvrr-00G3rB-1w;
	Mon, 22 Jul 2024 18:26:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jul 2024 18:26:29 +0200
Message-Id: <20240722162629.3827946-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_092636_109593_A33D79B4 
X-CRM114-Status: UNSURE (   8.74  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8M: bootrom-cmd: include missing linux/kernel.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The header is needed for ARRAY_SIZE and kstrtoul definition, but was
only included so far indirectly via <command.h> including <linux/list.h>
itself including <linux/kernel.h>.

In preparation for removing the <linux/kernel.h> include from
<linux/list.h>, include the header directly to avoid build errors.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Hello Sascha,

please order before
"include: list: replace full kernel.h inclusion with smaller container_of.h"
---
 arch/arm/mach-imx/bootrom-cmd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/bootrom-cmd.c b/arch/arm/mach-imx/bootrom-cmd.c
index 08e393b01ae1..76455db301fe 100644
--- a/arch/arm/mach-imx/bootrom-cmd.c
+++ b/arch/arm/mach-imx/bootrom-cmd.c
@@ -8,6 +8,7 @@
 #include <linux/bitfield.h>
 #include <mach/imx/imx8m-regs.h>
 #include <mach/imx/romapi.h>
+#include <linux/kernel.h>
 
 /* i.MX7 and later ID field is swapped compared to i.MX6 */
 #define ROM_EVENT_FORMAT_V0_RES	GENMASK(31, 24)
-- 
2.39.2



