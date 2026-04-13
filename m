Delivery-date: Mon, 13 Apr 2026 12:28:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEX6-00Bga5-0V
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:28:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEX5-0003wv-KZ
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:28:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=P2IzLeZNHp2g+KqQNiADQOmd4DSpjpN+G4C5WeeD2f8=; b=2zcpzawUZF2FDC6RLvEqOnE/vc
	/6RT0sIWKpk71gGeLm9Q9+xBnwyrd7cvuPvQKe5Z1jWR46t93kutPWiaZGYegG0acpFKNxkrj2IUx
	4mt4/cqcSKWHKcAUz7Z2h6l3Z2tEqHeNelFIrsomLo9KjUEPIzYM6lvcFi+gbyw6uQpEBmI7+KpEZ
	++i7Dr5HXuq+Qk7ElSL0tc9UHflqspN5FcVpJICsFDswhi0RScKhtwms/mZN60YaKcOAYtmODAhQA
	BDcnDXBuO/9APeu9CCgNyKdTCOpqcdj2oCICYkvN8Hv8zHgP89c64flt4RQMAwahTs/wOtyySp16H
	X6sycA3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEWg-0000000FUXp-3uks;
	Mon, 13 Apr 2026 10:28:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEWd-0000000FUWq-49DC
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:28:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCEWc-0003pC-2J; Mon, 13 Apr 2026 12:28:14 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:28:12 +0200
Message-ID: <20260413102812.1481805-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_032816_028137_CB3582FD 
X-CRM114-Status: UNSURE (   8.41  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mem: add flush callback to sync caches for execution
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox always calls sync_caches_for_execution() on boot, but it can be
useful to trigger it manually when testing:

- memcpy -s /dev/zero -d /dev/mem 0 $TFA_REGION_BASE $TFA_REGION_SIZE
- sync /dev/mem # flush D$ and invalidate I$
- smc -i        # check if PSCI monitor is still usable

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/misc/mem.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/misc/mem.c b/drivers/misc/mem.c
index 0cf021cf97ba..b356c6eab389 100644
--- a/drivers/misc/mem.c
+++ b/drivers/misc/mem.c
@@ -6,11 +6,19 @@
 #include <common.h>
 #include <driver.h>
 #include <init.h>
+#include <asm/cache.h>
+
+static int mem_flush(struct cdev *cdev)
+{
+	sync_caches_for_execution();
+	return 0;
+}
 
 static struct cdev_operations memops = {
 	.read  = mem_read,
 	.write = mem_write,
 	.memmap = generic_memmap_rw,
+	.flush = mem_flush,
 };
 
 static int mem_probe(struct device *dev)
-- 
2.47.3



