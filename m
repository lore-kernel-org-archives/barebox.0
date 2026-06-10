Delivery-date: Wed, 10 Jun 2026 20:24:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXNb1-004Qk1-0G
	for lore@lore.pengutronix.de;
	Wed, 10 Jun 2026 20:24:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXNb0-0001gf-Ht
	for lore@pengutronix.de; Wed, 10 Jun 2026 20:24:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e5peUj//oqR+aG1gHW4/HpsJb1Ha3Bmbpx32BpOMwCs=; b=mfQuVF850RhVWUL0iBEedpjg8l
	jc00LdgiEQBGjrVsq8w747362zwIcjm0rdiX5bE89yI/QDpdc4Lr5yZnVBGeA9zJiG5NUmYn3q/T+
	1ukifBtrGmlMoacu2BXbW6Xbt4T+bxAS3FsQu2V98prPntdmIVutDH+/ga299MFT6IdktPHigIBaI
	LBIy6TxCRPeeysI+9CKLz2K/9DJoK7HUk1/QIgahvyix2uHime/x4lwgd1iTxHrh1FWkemnim4C41
	CIoQLckOEG5NoKdGeQ0im7B8w7bfMD5ZoVTAIejd5jDCj/ofWZAdqW3p9tfukXws9gbhyL/eawqTC
	dil3fBKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNZE-00000008EZj-1Jr7;
	Wed, 10 Jun 2026 18:22:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNZB-00000008EZI-23kZ
	for barebox@lists.infradead.org;
	Wed, 10 Jun 2026 18:22:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1wXNZA-0001Mp-2W; Wed, 10 Jun 2026 20:22:16 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wXNZA-0025n0-05;
	Wed, 10 Jun 2026 20:22:16 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wXNZ9-0000000C2ld-3uv1;
	Wed, 10 Jun 2026 20:22:15 +0200
Date: Wed, 10 Jun 2026 20:22:15 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <wrq7ydg7a6fmc4yzkb2ybgbitexoav5pppwyysf7whpjschgp3@wx72hfpapvso>
References: <20260610174919.3813577-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260610174919.3813577-1-bst@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_112217_529160_408FD9AC 
X-CRM114-Status: UNSURE (   4.86  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: nxp-imx93-frdm: use tabs instead of spaces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-06-10, Bastian Krause wrote:
> Signed-off-by: Bastian Krause <bst@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


