Delivery-date: Thu, 18 Dec 2025 10:03:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW9vI-00Clq7-0p
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 10:03:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW9vH-0007oi-NV
	for lore@pengutronix.de; Thu, 18 Dec 2025 10:03:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Evd+E63iseQj/932jCu3GRrhZeleJuJL4L5i2/V7l4=; b=hjPF0svsjn3LEOh1+aFpxcFYhZ
	GwJ1GzNJ8qa8yCk74QzvFp1vjB/K3iaPi90ayJpUf3oNdahfF4MCnAU8kGVb8OTj2S5cCzyZrV2Bn
	zbr6NYzJtYLOa32v7Eax+5KIMMAq6Y7DAMIHtpYTvWuO0dCf5cj7KnITlHwPd9BVcxgFBfxRILekH
	WyhUtD3BcNP9czKCdWs2AvoHSjXYmg6MOtFS9yAtBsNDdN4GG2QBRfvy7CQ5uHyhlyXHO9Oh9/vMX
	aHfEXx4PFNVNhaWBZR9th3CLTL4A+UUXaN6qA1+PAvCmXcXN69I6qoHpox3AEkHj+Kj7YGI/vk5aG
	s/T38bwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW9ue-000000086nl-41R3;
	Thu, 18 Dec 2025 09:03:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW9ud-000000086n5-0iEm
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 09:03:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vW9ub-0007hk-GT; Thu, 18 Dec 2025 10:03:05 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vW9ub-006FVA-10;
	Thu, 18 Dec 2025 10:03:05 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vW9ub-00EXOj-0T;
	Thu, 18 Dec 2025 10:03:05 +0100
Date: Thu, 18 Dec 2025 10:03:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <aUPDSdwDr0Fb5Lp7@pengutronix.de>
References: <20251215-v2025-11-0-topic-socfpga-agilex5-clk-v1-1-e1270179d761@pengutronix.de>
 <176604556200.1742453.4912455583993389480.b4-ty@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <176604556200.1742453.4912455583993389480.b4-ty@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_010307_209963_D5EE841A 
X-CRM114-Status: GOOD (  15.30  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: socfpga: agilex5: sync with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Dec 18, 2025 at 09:12:42AM +0100, Sascha Hauer wrote:
> 
> On Mon, 15 Dec 2025 15:08:43 +0100, Steffen Trumtrar wrote:
> > Since v6.19-rc1 linux now has an Agilex5 clock driver [1]. This is sligthly
> > different than the previous out-of-tree version. Sync with the mainlined
> > linux driver and cleanup on the way.
> > 
> > [1] commit 2050b57ecda040010ec797fb07713889372c5041
> > 
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/1] clk: socfpga: agilex5: sync with kernel
>       https://git.pengutronix.de/cgit/barebox/commit/?id=4ee3b897bbf5 (link may not be stable)
> [1/1] fixup! clk: socfpga: agilex5: sync with kernel
>       https://git.pengutronix.de/cgit/barebox/commit/?id=370032bb46cf (link may not be stable)

Reverted. Please fix build failures in socfpga-agilex5_defconfig

https://github.com/barebox/barebox/actions/runs/20331066539/job/58406224218

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


