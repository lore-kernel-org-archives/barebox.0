Delivery-date: Mon, 17 May 2021 20:55:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPF-0005R3-Nb
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:55:57 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPD-0003w7-OA
	for lore@pengutronix.de; Mon, 17 May 2021 20:55:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sa7ty341JsSvfY/n7PGXOkaLj4mm5uEUeoYA7QJwOyc=; b=MX2O7NZJqdPAShkkhOSyA3Rdi
	l659CkH+8CAv6oIuZZhdWNdKYCDJvh7XRJqKgkTU7m+i7LVre4DWTWx8qJmQSJJmgdSCoEgDd5Xyl
	aNL2LAtG/q89GSGr0uOBmL3syH1M+04SqlugqOgE2eWkcc4CS4xsmuYwOK/lrlYa7tHXQVTChEyPZ
	lKzwMHxkEc/4IbApWWHAZ1BvFpqVIdUIU0aMIjYAewfBHcSuqmY50+KRrDi3wd/P1tIeycnbGS3ZB
	HXvCxVFtwtb/gaD13S+MfGSODx3Zifx2Xk5NO+Ld7GHCoO+Ah4tWLyMvGFkmceuxG2Mdx5yMQNL1q
	eDabmK1dg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiO9-00FtWs-7G; Mon, 17 May 2021 18:54:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNt-00FtUi-H0
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=p+klHkN6Ob3GKTFdjHtFXqwkzW0Rksi+DypBYS55i/0=; b=og8p4xGSIHr+qSnU1wg9gFZWCV
 uL8RPx3bpcj2nT+YfWrRjCOc2NJ4PfyrzTFHWXRvWSjb+cqe2jSmgjwx3aQweFBOf+LIj4PsPpQJX
 GOqcFPq1Vk3ZMnlUdOdYta9wqXyTSz0jdL3GDassBfAVNaCXHLEdeKrBSP7MkLi5bNbcswaapqn7q
 FTdVg5+QHbSOnUuj2U8kEKfqP8J7FZYwox4nOCbLC/37X1KmpRvpmcjGdYFmtVvxRhsdPSNhokWtL
 ZxC+MZoyPbY82gfhlIysiOy5yfBMagiKmyl0rOKJC6MhJ/+CqbBdxUaSK2jLQOTHPR8amRj4s9bSU
 NxVHBiAA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNq-00E4Sc-3w
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003PB-JL; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002xa-Bp; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:14 +0200
Message-Id: <20210517185424.32145-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115430_303863_9AB96360 
X-CRM114-Status: GOOD (  14.04  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 05/15] ARM: i.MX: xload-gpmi: Fix compiler warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

'pdesc' is a pointer casted to a 32bit value. This rightfully issues a
compiler warning when being compiled with a 64bit toolchain. This code
is compiled on 64bit systems, but the hardware won't be used there.
Just silence the warning by casting the pointer to unsigned long.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/xload-gpmi-nand.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
index b3fd479cb4..deb7f4806e 100644
--- a/arch/arm/mach-imx/xload-gpmi-nand.c
+++ b/arch/arm/mach-imx/xload-gpmi-nand.c
@@ -111,14 +111,15 @@ static int mxs_dma_enable(struct mxs_dma_chan *pchan,
 	struct apbh_dma *apbh = pchan->apbh;
 	int channel_bit;
 	int channel = pchan->channel;
+	unsigned long pdesc32 = (unsigned long)pdesc;
 
 	if (apbh_dma_is_imx23(apbh)) {
-		writel((uint32_t)pdesc,
+		writel(pdesc32,
 			apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX23(channel));
 		writel(1, apbh->regs + HW_APBHX_CHn_SEMA_MX23(channel));
 		channel_bit = channel + BP_APBH_CTRL0_CLKGATE_CHANNEL;
 	} else {
-		writel((uint32_t)pdesc,
+		writel(pdesc32,
 			apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX28(channel));
 		writel(1, apbh->regs + HW_APBHX_CHn_SEMA_MX28(channel));
 		channel_bit = channel;
@@ -174,7 +175,7 @@ static int mxs_dma_run(struct mxs_dma_chan *pchan, struct mxs_dma_cmd *pdesc,
 
 	/* chain descriptors */
 	for (i = 0; i < num - 1; i++) {
-		pdesc[i].next = (uint32_t)(&pdesc[i + 1]);
+		pdesc[i].next = (unsigned long)(&pdesc[i + 1]);
 		pdesc[i].data |= DMACMD_CHAIN;
 	}
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

