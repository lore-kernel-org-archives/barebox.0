Delivery-date: Fri, 23 Jan 2026 08:35:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBhl-004PEa-35
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 08:35:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBhl-0004uE-07
	for lore@pengutronix.de; Fri, 23 Jan 2026 08:35:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t3PSn9dTpEUeMZSX5zuOMUi+JddF3f9bdQ8VqXIqEFE=; b=e3pdTFGL+8OODSf6I803mkexL/
	hsCPQXgMUTQl1h3Yt1SlXfkRBq+gxicmPaVMHC0bQ2ihx6ImD+8LbwHraYPPromAdP6y+z7Oyu/J2
	WMPQw3e7r1Q+ZnuPsJhUVltG9hnn+SY3VI2wSVyKeN7DniRim7XVre+OFRU0aHXycG0cR1a1Vtjt/
	RrZTzOLvqwGH/C+yyXPMX+XMn2Y2Y2PTEoO41EEhP11ehwGxKN2tFaKA+Vm00kV18kH4KTV3o3Sjq
	aGZ3nUtWQxf7Q7a377uByG3iE0/YCUaFJnI5bWNgqLW4HFbSvDaBX8qs3zaUSPtAU0mppOc70Bin6
	VoKCl/kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBhI-00000008Ncn-1JN4;
	Fri, 23 Jan 2026 07:35:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBhF-00000008NcN-1Ou5
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 07:35:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBhD-0004p8-LJ; Fri, 23 Jan 2026 08:35:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBhE-0023XG-0T;
	Fri, 23 Jan 2026 08:35:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBhD-0000000GDCf-1kKH;
	Fri, 23 Jan 2026 08:35:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260121075638.3906926-1-a.fatoum@pengutronix.de>
References: <20260121075638.3906926-1-a.fatoum@pengutronix.de>
Message-Id: <176915370741.3863838.8066826211982646211.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 08:35:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_233509_386112_60E1A035 
X-CRM114-Status: UNSURE (   7.13  )
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
Subject: Re: [PATCH] partitions: efi: allow refresh without command support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 21 Jan 2026 08:56:37 +0100, Ahmad Fatoum wrote:
> CONFIG_PARTITION_MANIPULATION is currently selected by the createnv and
> parted commands, but neither is really needed to make use of the
> global.system.gpt_refresh magic variable.
> 
> Adapt the dependencies in Kconfig to reflect this.
> 
> 
> [...]

Applied, thanks!

[1/1] partitions: efi: allow refresh without command support
      https://git.pengutronix.de/cgit/barebox/commit/?id=f89eba6735b7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



