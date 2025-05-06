Delivery-date: Tue, 06 May 2025 09:18:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCCZm-002imv-2e
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 09:18:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCCZm-0002Lg-9k
	for lore@pengutronix.de; Tue, 06 May 2025 09:18:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TvHB+yyL3Wdav3kDZkCPxIIp0pM3gwrtx6JvQXQX8X4=; b=4/hQ0JQ0avJ+iXi6xX4+/GP9Jf
	iP1uO2xFCIw8nLX38C29iTA4IvwBMPWWN69ZqQ2n7Sxd9vkYX6SkbuP7T7/WGNn6vbTOBSOPiS1cD
	H/fyjDKheDxjs99qW+Ukc+CqwSaUfbXLVmlIcW5KYTpqOP17sifkWybvqce6cw02SvhWAyF3EsZFC
	G/Vj2s0tfTt90ahcJJCIdqLVC3e+cjcBdNM4gAIC7h4X0elWEXf6rNi+pz4gZ3cC1+z8hnrJdghUP
	UUEr9gBnhauaA+NuYtlDPZMDpsV1NE/UfVLZV/74U0cYh9blQSHj3pTza/MH/bnRd97OWQu7Rqa1W
	AgvsRGxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCCZJ-0000000AszU-3U1I;
	Tue, 06 May 2025 07:18:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCCZG-0000000AsyF-2L1U
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 07:18:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCZD-0002DP-PF; Tue, 06 May 2025 09:18:15 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCZD-001MAc-1v;
	Tue, 06 May 2025 09:18:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCZD-00DNKf-1h;
	Tue, 06 May 2025 09:18:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250505140746.2583140-1-a.fatoum@pengutronix.de>
References: <20250505140746.2583140-1-a.fatoum@pengutronix.de>
Message-Id: <174651589552.3187934.14888282624492920097.b4-ty@pengutronix.de>
Date: Tue, 06 May 2025 09:18:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_001818_595116_466D9EB2 
X-CRM114-Status: UNSURE (   6.96  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: add migration guide for v2025.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 May 2025 16:07:46 +0200, Ahmad Fatoum wrote:
> To simplify barebox updates, let's commit to the documentation a guide
> about potential breakage that users and integrators may run into after
> an update, e.g. renamed Kconfig symbols.
> 
> This is inspired by the migration guides of the Yocto project[1].
> 
> [1]: https://docs.yoctoproject.org/3.4/migration-guides/migration-3.4.html
> 
> [...]

Applied, thanks!

[1/1] Documentation: add migration guide for v2025.05.0
      https://git.pengutronix.de/cgit/barebox/commit/?id=88a2114596bd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



