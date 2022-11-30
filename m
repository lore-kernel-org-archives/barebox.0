Delivery-date: Wed, 30 Nov 2022 10:40:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0JZZ-0063Yw-GZ
	for lore@lore.pengutronix.de; Wed, 30 Nov 2022 10:40:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0JZY-00046T-Hy
	for lore@pengutronix.de; Wed, 30 Nov 2022 10:40:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Jba9/l0FvdIVlzdkKSWOMdbNUdeRuZa49rVK1XMBEyI=; b=SKRliYgsKrLCxQ9bRdZFIwRq5D
	sEnYbjkjUyGuSMpQ5a3Iv0eqR+NobCH/8mJx3LEhrbd3RPl6wmic+PkNX6IIkgLPfOUtTGsRJUkln
	XvxdaN4+ZYBu/d+HdGy2wpbmsj5RC/tM5fxezk6Njytvl+t7+UJmSYPSC1uYgBWnMraYwD2P1Fx7k
	6oTgtWb9806drx2b9STQ4xvUMW6BowvygNU2EugUgMGt3grhWdqdAj4sS8ClmbtkZeEoqIeQJKhnu
	u+IOOKOdufynOn51RsKjk+ZtuVVkFfhfvT9mMhAKQhur6BjxeTSaPGOsyAREQ8n/COpSRRxnv/C22
	k00uFE6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0JXQ-00F6qq-1g; Wed, 30 Nov 2022 09:37:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0JVl-00F5rN-2M
	for barebox@lists.infradead.org; Wed, 30 Nov 2022 09:36:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p0JVe-0003il-1M; Wed, 30 Nov 2022 10:36:06 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p0JVc-001H9M-M1; Wed, 30 Nov 2022 10:36:05 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p0JVc-00FWms-Rd; Wed, 30 Nov 2022 10:36:04 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Nov 2022 10:36:03 +0100
Message-Id: <20221130093603.3700906-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_013613_158957_7C6D2420 
X-CRM114-Status: GOOD (  10.65  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: stm32mp: lxa-mc1: enable deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

After changes to honour vin-supply if available, startup on MC-1
now throws a warning:

  WARNING: regulator-fixed regulator_3v3.of: Failed to get 'vin'
  regulator (ignored).

Resolve this by enabling deep probe.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/lxa-mc1/board.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/lxa-mc1/board.c b/arch/arm/boards/lxa-mc1/board.c
index 9126973dcbdc..f8a7a6bd1f72 100644
--- a/arch/arm/boards/lxa-mc1/board.c
+++ b/arch/arm/boards/lxa-mc1/board.c
@@ -5,6 +5,7 @@
 #include <asm/memory.h>
 #include <mach/bbu.h>
 #include <bootsource.h>
+#include <deep-probe.h>
 #include <of.h>
 
 static int of_fixup_regulator_supply_disable(struct device_node *root, void *path)
@@ -58,6 +59,7 @@ static const struct of_device_id mc1_of_match[] = {
 	{ .compatible = "lxa,stm32mp157c-mc1" },
 	{ /* sentinel */ },
 };
+BAREBOX_DEEP_PROBE_ENABLE(mc1_of_match);
 
 static struct driver_d mc1_board_driver = {
 	.name = "board-lxa-mc1",
-- 
2.30.2



