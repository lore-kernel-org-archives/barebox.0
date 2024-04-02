Delivery-date: Tue, 02 Apr 2024 15:45:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rreST-003eBE-0o
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 15:45:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rreSS-0004Zg-Lr
	for lore@pengutronix.de; Tue, 02 Apr 2024 15:45:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nMj7xRlBfLZGbYZV9HhsthZp5dSHsoeZOGtMh7NpThM=; b=utxEKBXItTazH+9Dqfv9VKGs/m
	kMZrSlTIukJy6XZ5vfXKqNgTpY9NyadqPuSmxSudcKEM5cR+Jh/F1imled8H8CVmICmanhuRC8dg7
	iRBKtmIynGZFoWf4olk4VPKrHz1lvOpIDU2+NDB9x+rzP2ObZCBERLLb+AGl8nognN0bg93c+aMmf
	BDxULUH/a8+vk+SVY80ZaUfT+9zSMfg12WsxvkT2qFuJi14fI1YPwKP+Re+rLijmoNSeP8LmjzwA3
	e6zy2DdLzAuCHbCGT8QkLdGRoB3pavlFivb+MlB5mokZY7gU+gayDt1LinQEyD/r0J72iJMc2/0I+
	7EvcX2Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rreRp-0000000BPm3-0e7H;
	Tue, 02 Apr 2024 13:45:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rreRl-0000000BPj3-0dKL
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 13:45:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreRi-0003XG-CF; Tue, 02 Apr 2024 15:45:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreRh-009zgX-Vo; Tue, 02 Apr 2024 15:45:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rreRh-00FTlX-2s;
	Tue, 02 Apr 2024 15:45:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Apr 2024 15:44:59 +0200
Message-Id: <20240402134501.3689322-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_064505_286128_6BCC5204 
X-CRM114-Status: UNSURE (   8.65  )
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
Subject: [PATCH master 1/3] soc: sifive: l2_cache: fix 32-bit compilation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The StarFive SoCs are 64-bit, but the L2 cache driver could be
compile-tested on 32-bit as well. Currently, this would fail, because
writeq isn't defined. Fix this by emulating it using a lo-hi write.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/soc/sifive/sifive_l2_cache.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index aab21f9f50e6..c404143974fc 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -9,6 +9,7 @@
 #define pr_fmt(fmt) "sifive-l2: " fmt
 
 #include <io.h>
+#include <io-64-nonatomic-lo-hi.h>
 #include <linux/printk.h>
 #include <stdio.h>
 #include <driver.h>
-- 
2.39.2



