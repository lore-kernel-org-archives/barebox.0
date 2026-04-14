Delivery-date: Tue, 14 Apr 2026 10:07:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCYny-00C0hl-1P
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 10:07:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCYnx-0003Qd-Td
	for lore@pengutronix.de; Tue, 14 Apr 2026 10:07:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qJCDgkPZbmbqFzPsaLSY+XETXnKC+ISNRFZQUVjHhfU=; b=CSH4IARDOaX4QilRTrQv+LmjOB
	kwXS6zWW6PSqd+LwP9oVIAe9LNSX9dPJpzBGgADd3dtv32mpg79t/scfCJAanvGm/QSDhQtjatnAD
	XQmkGjOPQygvkMN4LBnUPPUlEBZwR6lkiv3QB8y4opqia9RQ7HH6FXIU/Q4b9lkWHjdqCvQDN3yFd
	OQzOG9TSD6OC+QsJ7MbBlZdcrZRBTa1df6ERctfMU4ww0g6h4vfD0bMUeElSjRnzBNR54exxPYNh7
	dZSJ5UWMzzXhZ4rSI/GJRR6F9kxK9WDBZqNaUNgg1kKKbY4uV2Wq+2Xs4DwAHRr3TFB70N+WWfQ++
	Kg6wUxuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCYnR-0000000GwZr-139P;
	Tue, 14 Apr 2026 08:06:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCYnP-0000000GwXr-15c7
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 08:06:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCYnN-0003FV-HB; Tue, 14 Apr 2026 10:06:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCYnN-005J1T-14;
	Tue, 14 Apr 2026 10:06:53 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCYnN-00000001fRr-0zhz;
	Tue, 14 Apr 2026 10:06:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 14 Apr 2026 10:06:30 +0200
Message-ID: <20260414080652.397582-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260414080652.397582-1-a.fatoum@pengutronix.de>
References: <20260414080652.397582-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_010655_296050_A3D30A7E 
X-CRM114-Status: GOOD (  10.03  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/3] mem: add flush callback to sync caches for execution
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

barebox always calls sync_caches_for_execution() on boot, but it can be
useful to trigger it manually when testing:

- memcpy -s /dev/zero -d /dev/mem 0 $TFA_REGION_BASE $TFA_REGION_SIZE
- sync /dev/mem # flush D$ and invalidate I$
- smc -i        # check if PSCI monitor is still usable

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - no change
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



