Delivery-date: Thu, 18 Dec 2025 09:13:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW98N-00ClGg-1x
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 09:13:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW98N-0002jy-2B
	for lore@pengutronix.de; Thu, 18 Dec 2025 09:13:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GP9sBplfGsZfPqN25mXHLFab1jRKb8la48WeXQ5KTpY=; b=Yec/kARZ3lgT1V1ePvUhvrfy4Y
	KG9F2N+DKG8aw0GH++gF2M0zTP4hn5tWI9tL77ZWT1Olzy20BSRmQm36mCGFdwAwz8llAX843l5r5
	ycJU2Mm4WrzR52WbJeOggqaNMWLc7vuZCuY4tSMcR6KkQnmcnv3itKVWm1g578HDRXQVs2Ssz1Syi
	lk10gxq+APsJNWW6IalFNNxMqtze3nihmuQhapWO+5hZLGKTO275d/rgqoxX/4MycMvuad40p35sS
	4AJ080E5xNunMNLH6ALgB58RrVnkgLek7FLyhhtSMbGzbKqARJevYhbX8tEjHs6luw5aHWcV2FhdB
	LC24uq2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW97u-0000000825X-3Vpl;
	Thu, 18 Dec 2025 08:12:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW97r-0000000824Z-3b9n
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 08:12:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW97q-0002e7-8D; Thu, 18 Dec 2025 09:12:42 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW97q-006FLs-0E;
	Thu, 18 Dec 2025 09:12:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW97q-00000007JIS-02dD;
	Thu, 18 Dec 2025 09:12:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20251215-v2025-11-0-topic-socfpga-agilex5-clk-v1-1-e1270179d761@pengutronix.de>
References: <20251215-v2025-11-0-topic-socfpga-agilex5-clk-v1-1-e1270179d761@pengutronix.de>
Message-Id: <176604556200.1742453.4912455583993389480.b4-ty@pengutronix.de>
Date: Thu, 18 Dec 2025 09:12:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_001243_898185_447357AA 
X-CRM114-Status: UNSURE (   6.69  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: socfpga: agilex5: sync with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Dec 2025 15:08:43 +0100, Steffen Trumtrar wrote:
> Since v6.19-rc1 linux now has an Agilex5 clock driver [1]. This is sligthly
> different than the previous out-of-tree version. Sync with the mainlined
> linux driver and cleanup on the way.
> 
> [1] commit 2050b57ecda040010ec797fb07713889372c5041
> 
> 
> [...]

Applied, thanks!

[1/1] clk: socfpga: agilex5: sync with kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=4ee3b897bbf5 (link may not be stable)
[1/1] fixup! clk: socfpga: agilex5: sync with kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=370032bb46cf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



