Delivery-date: Mon, 15 Sep 2025 11:01:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uy55H-003GKd-0R
	for lore@lore.pengutronix.de;
	Mon, 15 Sep 2025 11:01:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uy55G-0004lb-KA
	for lore@pengutronix.de; Mon, 15 Sep 2025 11:01:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Y+Tn9rpZIPCm6EelyN5CN060EbL7JfFuQgDqC2AhY0=; b=Gsk0x4cFzu0oj0u668fmL7cL8Y
	8x6CuammE+y0wLSFesKkgZg2Dfje/M/m28Kx5qSv/JvYORFCnw/er/XwEvHHGLB8DrmhVC+InbVbN
	D9sTcN0g8IBkiHjYSu/EP/3/7JPM3mzjVPjQbbYlxRi1Zg+lIqSm7CifBwuZ8gaXaF+255WnX2cLM
	4OVSuMhEmJxYmhTrRZf95vqyBc4o8v7J3uRbmR6oz7jVPxglMSVGtqrPcDDDOttNhZU795HFSglMO
	DgCxdu4F8QOP2uQy2W/zSISJ/jlzybPLm0ci/nHAWSRjfigJSKUYawWxqU4SzDaICrb5iJgG9XsMP
	YU1Og4bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy54r-00000003LcL-29zT;
	Mon, 15 Sep 2025 09:00:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy54p-00000003Laj-0kuJ
	for barebox@lists.infradead.org;
	Mon, 15 Sep 2025 09:00:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uy54n-0004bB-OV; Mon, 15 Sep 2025 11:00:45 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uy54n-001OHS-1q;
	Mon, 15 Sep 2025 11:00:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uy54n-00000003pWI-29Zm;
	Mon, 15 Sep 2025 11:00:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20250914193249.23414-1-chalianis1@gmail.com>
References: <20250914193249.23414-1-chalianis1@gmail.com>
Message-Id: <175792684550.913015.1685895326765556831.b4-ty@pengutronix.de>
Date: Mon, 15 Sep 2025 11:00:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_020047_220121_FB5FAA18 
X-CRM114-Status: GOOD (  10.98  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] drivers: dma: refactor: rename dma_ops to
 dma_device_ops.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 14 Sep 2025 15:32:49 -0400, chalianis1@gmail.com wrote:
> This patch is an esthetic cleanup, rename the dma_ops to dma_device_ops
> to be sure that the struct in drivers/dma is different from one used in
> arch/riscv/cpu. I accidentally faced the issue telling that the struct is
> defined in the two places but it is not supposed to happen since the
> the driver is never selected from riscv.
> 
> 
> [...]

Applied, thanks!

[1/1] drivers: dma: refactor: rename dma_ops to dma_device_ops.
      https://git.pengutronix.de/cgit/barebox/commit/?id=3226a3af468a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



