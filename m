Delivery-date: Mon, 14 Oct 2024 15:57:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZK-004HYZ-2d
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:57:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZJ-0006UM-Jf
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:57:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5jVrnVbPNHtoe5m1W+I+bSiTY0aFQIpB62SiDti5738=; b=FOHEd2/J3FjHnz1ZMZspggJOlZ
	oO87TeV/Uxt04k/0hzhl1EmpPfvZ92sdqTK4XkrCiAjn9WpultL0f/3Ojj0sm6nAvpHMGAirv3xiQ
	8MIV+qfCBgxTL1XTichoqwwA29Z73lJ6Yc0/Ye3OpVCoXIanSz1ItfwYceo1cGZ4lJnmxZIFCkLKx
	ZmFyoB4q2ovd1r8Nq6yalnHVyH54A1DYWn30DX+nNoW3IS/DCWg4zAgWhKL+5wV8WOLLUoaYvHs22
	CSGPUjZEshtHYxnDBx+YzvjUS5S4lY7OA3l81fwuBlU6opAD7H7TuNtPVl2EZSUnHW2BVdkuHvOlP
	rQ4lI0IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LYh-00000005NPa-2yu8;
	Mon, 14 Oct 2024 13:56:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Kes-00000005AcX-1nNy
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:58:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Ker-0007L7-1M; Mon, 14 Oct 2024 14:58:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-001nNX-Jb; Mon, 14 Oct 2024 14:58:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-00A8vm-1e;
	Mon, 14 Oct 2024 14:58:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Denis Orlov <denorl2009@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 14:58:39 +0200
Message-Id: <20241014125843.2064532-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
References: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_055846_543818_D0915F1E 
X-CRM114-Status: GOOD (  11.54  )
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
Subject: [PATCH 2/6] video: stm: use DMA_ADDRESS_BROKEN instead of NULL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While functionally the same, DMA_ADDRESS_BROKEN marks that the code is
in need of improvement, so it should be used for documentation purposes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/stm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 917405ea801f..c88b71195eac 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -325,7 +325,7 @@ static int stmfb_activate_var(struct fb_info *fb_info)
 		remap_range(fbi->fixed_screen,
 				fbi->fixed_screen_size, MAP_UNCACHED);
 	} else {
-		fb_info->screen_base = dma_alloc_coherent(size, NULL);
+		fb_info->screen_base = dma_alloc_coherent(size, DMA_ADDRESS_BROKEN);
 		if (!fb_info->screen_base)
 			return -ENOMEM;
 		fbi->memory_size = size;
-- 
2.39.5



