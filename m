Delivery-date: Tue, 06 Jan 2026 08:38:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1dk-001oU7-0M
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:38:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1dj-00056n-H3
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:38:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jFTwhBGdmPABTd/INhF2dyJY1IpNChFYiKB83qvETwM=; b=knGb2wnZVtWAFrQbsP4CizrGxK
	vuuktzkhxH3OJfNvK53b2rLR7GhATDRXDMahyFQ8sRPkdK1WdoSfVlpSodTDZVFy6LVbJcp63DxiF
	socPwsTYIxhb4zbugPMporGcLfVRPhvPh4vrt1i2glcPhy928Lgj2js3XSzjP7k1ikVphbR2EP5Yf
	Y92QFlpkjK/1ypL+srlAMmpgqdZOOa05jVidJKF8s0dfgLRz/OTy1gB6PNk8FOgSXZvukwJhfrWvx
	fMt1OLLcb0ArNAag/HutysMmBsJ6yVMcH0AvgU4L/I1b/6DCGDB9jDkRGj4n5/ry29EvUIokapkL0
	x6Sd7G9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1dJ-0000000CWmF-44F0;
	Tue, 06 Jan 2026 07:37:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1dG-0000000CWlV-0dHr
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:37:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1dE-0004zh-Fo; Tue, 06 Jan 2026 08:37:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1dE-009JIm-0y;
	Tue, 06 Jan 2026 08:37:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1dE-000000088Xs-0zpi;
	Tue, 06 Jan 2026 08:37:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260105090253.3299052-1-a.fatoum@barebox.org>
References: <20260105090253.3299052-1-a.fatoum@barebox.org>
Message-Id: <176768505223.1939465.3627225394825110159.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 08:37:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_233734_195046_F50FDD8D 
X-CRM114-Status: UNSURE (   7.37  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM64: elf: set ELF_CLASS64 for ARM64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 10:02:53 +0100, Ahmad Fatoum wrote:
> This doesn't yet matter, because we don't make use of these definitions
> (they are meant for core files), but when we start processing the
> barebox proper ELF in PBL, it will become required, so fix this.
> 
> 

Applied, thanks!

[1/1] ARM64: elf: set ELF_CLASS64 for ARM64
      https://git.pengutronix.de/cgit/barebox/commit/?id=05dabaf16372 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



