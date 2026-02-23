Delivery-date: Mon, 23 Feb 2026 11:54:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTa3-004npM-0u
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 11:54:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTa3-00033K-L4
	for lore@pengutronix.de; Mon, 23 Feb 2026 11:54:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sxeh0nZ3X9785VfjYXDiH8AYVPf8WtpRCHU2DhNXI/4=; b=qfz7WWZD1G42eQIyUmAisZsxXg
	mxxfU8BhOpyx7AK8mAGOSqxQMLRN3q4nLNM0HFgELy0rIGSRpShM1V2+NEMiymrKnPSMLpc7LGdkq
	GGlwJRc1S45+C0KmI44aoTx/RD4AIW+vbih4hUZymBJHK1QHu8w3wa5gSOfTH0ErMY9QZUmzzHInY
	KHXDOzjnC7uitRk6pSmFNWjP0YQki3tB5fe4ZS6h5UNpxJyX5Hk/8hi3rV0LKyt9ZSyNZ/NQsbREK
	IJdw2HoITJHA3nQ4hMfzgk3zHIcTFgGU9qBnDGmc8cq/7Og3WCCmVrV0JFqS0hlmrkslafTKqYZTG
	mQf5ej7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTZd-0000000066I-33Lq;
	Mon, 23 Feb 2026 10:53:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTZb-0000000063z-2Jwn
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 10:53:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTZZ-0002xA-Rv; Mon, 23 Feb 2026 11:53:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTZY-002DMd-0z;
	Mon, 23 Feb 2026 11:53:53 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTZZ-00000000thu-2TH9;
	Mon, 23 Feb 2026 11:53:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
In-Reply-To: <20260213092906.3960051-1-a.fatoum@barebox.org>
References: <20260213092906.3960051-1-a.fatoum@barebox.org>
Message-Id: <177184403358.214029.1151724249452795715.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 11:53:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_025355_599895_50A8509A 
X-CRM114-Status: UNSURE (   6.06  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] video: mode-helpers: preserve sync polarity
 in fb_videomode conversion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 13 Feb 2026 10:28:08 +0100, Ahmad Fatoum wrote:
> The FB_SYNC_*_HIGH_ACT flags indicate that the respective sync signal is
> active high when set and active low when unset.
> 
> The DISPLAY_FLAGS_*SYNC_* flags on the other hands have separate
> non-zero _HIGH and _LOW flags, which fb_videomode_to_videomode() failed
> to account for.
> 
> [...]

Applied, thanks!

[1/2] video: mode-helpers: preserve sync polarity in fb_videomode conversion
      https://git.pengutronix.de/cgit/barebox/commit/?id=f66af1ff3a20 (link may not be stable)
[2/2] video: dw_mipi_dsi: remove VPG workaround for panel initialization
      https://git.pengutronix.de/cgit/barebox/commit/?id=fde027dd650e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



