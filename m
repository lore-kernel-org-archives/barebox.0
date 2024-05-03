Delivery-date: Fri, 03 May 2024 09:46:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2ncq-00GqlK-0p
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 09:46:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2ncp-0004Kp-LR
	for lore@pengutronix.de; Fri, 03 May 2024 09:46:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jdsV0vY5+bhSOa7du8Km2/VxfhX5GwMdnK5p8W0v8zw=; b=Y5RND3v7Ek69Vv7UEfN3hwwxQy
	Zl9C1Cjv51O0JtNUHavNOkpM58WKnR5LuLeJkFeChAYEUO5cNPc2/rYl/I433ydiG8EIryzB8F7kk
	li7zbO2btRUs2r5rUUsiZUSan+1ToLHymGcVkHZ4mzYjIqrTZ9s2yDa7FTvgz0F3IcP9Q1Eh1owz9
	mw9XXDqGXP5bHF6bx2KshuXhJr7j8n4z6/pp9WAKg6UetxC/mATYuap6QxPEMjM/ReCNhK8nfEr9y
	o46WGN05DCWepxlXk8U/yB2hbePoV1CyGIxeWIMRNi9ZA2cj/ymAfMl8mwNSm2BueDqdQf3pcc5xK
	wdBPrH+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ncQ-0000000FWeU-3Z1h;
	Fri, 03 May 2024 07:46:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ncO-0000000FWdJ-0Ulz
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 07:46:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2ncM-0004Dx-Mx; Fri, 03 May 2024 09:46:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2ncM-00Ff8D-5j; Fri, 03 May 2024 09:46:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2ncM-0009dz-0M;
	Fri, 03 May 2024 09:46:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: =?utf-8?q?Alvin_=C5=A0ipraga?= <ALSI@bang-olufsen.dk>
In-Reply-To: <20240429141610.3556452-1-a.fatoum@pengutronix.de>
References: <20240429141610.3556452-1-a.fatoum@pengutronix.de>
Message-Id: <171472236610.36996.5200181315853367687.b4-ty@pengutronix.de>
Date: Fri, 03 May 2024 09:46:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_004608_199327_A906864E 
X-CRM114-Status: GOOD (  12.08  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ddr: imx8m: fix broken sharing of DRAM timing with
 TF-A for DFS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 29 Apr 2024 16:16:10 +0200, Ahmad Fatoum wrote:
> To facilitate dynamic frequency scaling, barebox will place the DRAM
> parameters it has configured into a well-known location in DRAM
> for consumption by TF-A.
> 
> This means that we need to be very picky about the struct layout for the
> data we write there to maintain ABI-compatibility. Unfortunately, NXP
> chose for the i.MX9 to add two fields into the middle, when it would
> have been possible to cleanly embed the i.MX8 DRAM timings in the
> i.MX9 DRAM timing struct. This is done now, so we need to arrange
> ourselves with it and ensure that the i.MX8M DRAM timings we share with
> TF-A don't have glimpses of the i.MX9 future.
> 
> [...]

Applied, thanks!

[1/1] ddr: imx8m: fix broken sharing of DRAM timing with TF-A for DFS
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea580697c269 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



