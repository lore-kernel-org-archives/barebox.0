Delivery-date: Thu, 12 Dec 2024 09:36:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegI-0077QM-1l
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 09:36:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLegI-00047N-Hw
	for lore@pengutronix.de; Thu, 12 Dec 2024 09:36:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+VYRxvtylKXm+QJ9z0nTcRZWTDCFBZwxcukwac8RGUo=; b=swCi7RW0VM1MGlks8xFpkX0mHG
	r1HhreLfVcut0DTTWn5Et0fEdkgznxDTXwJ0YsMiE+I7h09exOAu6tTZ7UQFDrZG7xqEM3f9PNjh1
	goZUN7f8OceBzLpW45g2AcNx4C+2uXbzoFZSktQ/Dg/Pz42t68snfvt+NS+oaHHWBFCxlhNzQysY2
	/MC0dlQiTcrF+SxuE/JcnZiKt7S493hOZwdBmkMzM9i6kMYsP0vcif9fc9LaeilfgEENdENHKX+yZ
	qs0Y+sXZGV12c9V+wfncWHBZ060EHUQlGVCXLiMZPeyKfl1gUDkcnPgHrUAAgyqmw2YDGQBZXMlSf
	sCvKvQOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLefn-0000000HKEp-0wbD;
	Thu, 12 Dec 2024 08:35:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeWk-0000000HISt-137m
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 08:26:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLeWj-0002Pt-28; Thu, 12 Dec 2024 09:26:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLeWi-0030Dy-0K;
	Thu, 12 Dec 2024 09:26:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLeWi-00DBel-2c;
	Thu, 12 Dec 2024 09:26:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20241211184821.3013154-1-eagle.alexander923@gmail.com>
References: <20241211184821.3013154-1-eagle.alexander923@gmail.com>
Message-Id: <173399198881.3142615.11318738422535778679.b4-ty@pengutronix.de>
Date: Thu, 12 Dec 2024 09:26:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_002630_291365_9177723B 
X-CRM114-Status: UNSURE (   6.64  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: rk3588: Add reset line for HDMI Receiver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Dec 2024 21:48:21 +0300, Alexander Shiyan wrote:
> Export hdmirx_biu reset line required by the Synopsys
> DesignWare HDMIRX Controller.
> This change simply updates the rst-rk3588 driver to the current kernel state.
> 
> 

Applied, thanks!

[1/1] clk: rk3588: Add reset line for HDMI Receiver
      https://git.pengutronix.de/cgit/barebox/commit/?id=9a9425213006 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



