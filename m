Delivery-date: Sat, 19 Jun 2021 05:47:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwi-0003O7-4B
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:47:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwg-0002dH-If
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:46:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahKIXZR2uqd1PrdNTnSAD2wf91N7OqFuS+2iHkI8pns=; b=zNlUwVTH45rr9z
	EGKlY+03wjGPbNo5mw6R61mk/iARbd1fJVlqJWdSrQq40EXvuSQgyL1JMq2N71okyVknBAibinSEH
	VfpYzSA4s+WLCaOviWZ6JOa5x3b6TTEkQVwi5KhRyWkHpU/P7aZ4qwLu2C4+N6DDTKI4/NpHff8qs
	v/olJCET1GIxC9rWmh+26sN2G1CV4Dzw6WhPv2e7Ufn95ddfmo4omUHDC5R1h8V/JUTy4ANmh3FiZ
	dR2E0iVgSbsHbv1zQ4QWC/d/FPdsHISJs9NwRL8OGAihDzCzpcltI0hnHFu+c5w/GILHNzMYnb9vX
	7ddO33VZz84Ug5R2kiZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRvQ-00GC56-7i; Sat, 19 Jun 2021 03:45:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRv7-00GBxu-9L
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:45:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv6-0001vA-29; Sat, 19 Jun 2021 05:45:20 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv5-00029r-09; Sat, 19 Jun 2021 05:45:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Jun 2021 05:45:13 +0200
Message-Id: <20210619034516.6737-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619034516.6737-1-a.fatoum@pengutronix.de>
References: <20210619034516.6737-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_204521_433842_E609823D 
X-CRM114-Status: GOOD (  12.03  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/13] sandbox: hostfile: move initcall to earlier postcore
 level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Follow-up changes will have the hostfile provide nvmem cells to other
drivers, which run at coredevice_ and device_ initcall levels.
These drivers can't defer probe though, because access to the NVMEM
cell is optional. Move the hostfile initcall earlier to allow for this.

Once deep probe support is merged and enabled for sanbox, it should
be possible to revert this commit and see no nvmem cell related
warnings.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/hostfile.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 4fdf2b317d57..0346590889ed 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -182,7 +182,7 @@ static struct driver_d hf_drv = {
 	.of_compatible = DRV_OF_COMPAT(hostfile_dt_ids),
 	.probe = hf_probe,
 };
-device_platform_driver(hf_drv);
+postcore_platform_driver(hf_drv);
 
 static int of_hostfile_fixup(struct device_node *root, void *ctx)
 {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

