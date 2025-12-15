Delivery-date: Mon, 15 Dec 2025 10:32:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4vy-00BhAj-04
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 10:32:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4vx-0000fr-Ge
	for lore@pengutronix.de; Mon, 15 Dec 2025 10:32:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gqLM+/XFLcmme59Ea0XlwhOn7xYw81r8P3CYOGBDEVg=; b=o9iPqb5Qx/5gjM94+QJzHl3CyP
	+Q9YsBQ0bXALVmLISvgMoEQx3dCnRgKAjVMg0s+nn79/Fm7QVXwk+5rzuoce7mJiC8oTPtoqGGAYn
	jTGDR+3Ie81YaZOGxyqySfOdVi34dCrQyYiW6/56elzIaXfO4myNQWlvZ5C+mXiHKI7WMENZCwC96
	DJP2065RFSRUchkHzFNbc4x1/wjE+W5hn665gTJGvyVb+4/PRRJgBUGZMVhDkXZDlxasOJCcZhHIX
	fLYT2XSObA8MWm0vTWR7zhAy5F1OHv7SdL42SbxTz7tKfVxSBDWa41IZk2SDKx+w8hWhtcxljHml1
	YvobJ6+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4vY-00000003Mnt-2324;
	Mon, 15 Dec 2025 09:31:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4vU-00000003MnG-2X0L
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 09:31:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4vT-0000aU-1n; Mon, 15 Dec 2025 10:31:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4vS-005kyf-2n;
	Mon, 15 Dec 2025 10:31:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4vS-00000001BtV-3NCF;
	Mon, 15 Dec 2025 10:31:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Marco Felsch <mfe@pengutronix.de>
In-Reply-To: <20251211083925.1985059-1-s.hauer@pengutronix.de>
References: <20251211083925.1985059-1-s.hauer@pengutronix.de>
Message-Id: <176579109080.284040.17090687119004128050.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 10:31:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_013132_645548_728159B2 
X-CRM114-Status: UNSURE (   9.69  )
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
Subject: Re: [PATCH 1/2] ARM: i.MX8MM EVK: refactor early startup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 09:39:24 +0100, Sascha Hauer wrote:
> refactor startup a bit to make it more clear:
> - Do not call start_atf() when not in EL3 rather than immediately
>   returning from the function
> - rename start_atf() to nxp_imx8mm_evk_init_early() and call
>   nxp_imx8mm_evk_init_early() from nxp_imx8mm_evk_start() directly
> 
> This is done in preparation for a series which changes
> nxp_imx8mm_evk_init_early() to take a device tree pointer.
> 
> [...]

Applied, thanks!

[1/2] ARM: i.MX8MM EVK: refactor early startup
      https://git.pengutronix.de/cgit/barebox/commit/?id=7862713c314f (link may not be stable)
[2/2] ARM: i.MX8MN EVK: refactor early startup
      https://git.pengutronix.de/cgit/barebox/commit/?id=ec8cd03194a8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



