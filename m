Delivery-date: Mon, 18 May 2026 20:34:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wP2n0-001EB1-0p
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 20:34:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wP2mz-0003wk-MY
	for lore@pengutronix.de; Mon, 18 May 2026 20:34:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7oaS+Tz7cNebA12NhxkLi2ALEp0XMvIj+nTFV8r4VKE=; b=cl9SBMrreuG95W
	cK5ZazUbbwC/ANnQeAMJS+BHUMIiqew67qOWbyyk7rqfZEm6060WsL8f89H2r7DnPug1lWE98gCT+
	2FZ9A3Ern0dnjoX1KVe5i1EcD9PE/uCTJXFOx43g6KD38MT7zNxIc5Lm3o+shcwIKaVSrzy/mFqrW
	4UVe0Xg2Um2QzKPlFj9c2EN4xHebein13dFeMTlEjB09vX6OFFHCvWpfXVyd3D3uoY4ho6W0Yu14d
	sZ99n1omF/OnDyeiP8lLyAwHCr1o8ckuC1oTL0oSGdh8FJKq6YKCyeJYl9kRiLdYmVWRFNE2t+Yh6
	lBpBAU/VbwKRK5kul7kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2lt-0000000GZhI-1Mun;
	Mon, 18 May 2026 18:32:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2lq-0000000GZfs-12uy
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 18:32:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wP2lo-0003mW-2y; Mon, 18 May 2026 20:32:52 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wP2ln-000dY6-1V;
	Mon, 18 May 2026 20:32:52 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wP2ln-000000010TP-3u3X;
	Mon, 18 May 2026 20:32:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 18 May 2026 20:32:50 +0200
Message-ID: <20260518183250.240134-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260518183250.240134-1-s.hauer@pengutronix.de>
References: <20260518183250.240134-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_113254_286934_9FCB341E 
X-CRM114-Status: UNSURE (   9.63  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 3/3] ARM: rockchip: initialize PBL malloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Rockchip uses compressed firmware binaries. Depending on the compression
algorithm we might use early malloc space for decompressing. Initialize
the PBL malloc space to the memory end to make pbl_malloc() work. This
memory area will be overwritten later in barebox_pbl_start(), but it's
ok as the memory is only needed during decompression of the firmware
files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 3e2e18ac29..14797a1e06 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -173,6 +173,7 @@ static void rockchip_atf_load_bl31(void *fdt)
 	unsigned long bl31_ep;
 
 	mmu_early_enable(membase[0], memsize[0]);
+	pbl_malloc_init(membase[0] + memsize[0] - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
 
 	bl31_ep = load_elf64_image_phdr(&bl31);
 
-- 
2.47.3



