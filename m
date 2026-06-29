Delivery-date: Mon, 29 Jun 2026 09:48:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we6io-00B2qw-1C
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 09:48:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we6in-0004cb-OU
	for lore@pengutronix.de; Mon, 29 Jun 2026 09:48:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qW4DrOUaOXZVbJ4lJxTc3K8A2Qbsp+EgXSdUlZqI4og=; b=oSePtZ9GffiqcaL/cBAKB2eW5p
	X99ZjToDniygnUmyICD0z2UDlJ5H/CoCXRUOY+cW071dAZ23nKhebnb+At/Jm14c1LcsBbtJzkv/j
	QLKWgTVtFYLZz1INW7GdaqzTm40nR/jKHETiGtxW+xtAztkpy2Ld/L8jRpuNHaoERl0tLZYi6Fbjd
	IcLlt46uth0UVVBP4s45z/7KMzIaqBCfR5G2nODw7nY5w8mdrWbP+IVfHuh/cB3hw7f/a8kCgxoWE
	Tws3aa/647XOt7MQqcg3rh6EXYfvGVns9oY3z7hiSiz15og7Exq5zHMfmDqCt64FFSlKxda2i+RWL
	5N+UBKaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we6hj-0000000DwB2-1iL9;
	Mon, 29 Jun 2026 07:46:55 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we6hg-0000000DwAd-3xN4
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 07:46:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 14DCE2002FE;
	Mon, 29 Jun 2026 09:46:50 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we6hd-005Ctw-37;
	Mon, 29 Jun 2026 09:46:49 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we6hd-00000000g0Z-3lYN;
	Mon, 29 Jun 2026 09:46:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260627095543.2462939-1-a.fatoum@barebox.org>
References: <20260627095543.2462939-1-a.fatoum@barebox.org>
Message-Id: <178271920989.161466.16116925348814460229.b4-ty@pengutronix.de>
Date: Mon, 29 Jun 2026 09:46:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_004653_163147_C780699A 
X-CRM114-Status: UNSURE (   5.85  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] efi: gop: fix rectangle extents passed to
 fb_damage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 27 Jun 2026 11:55:39 +0200, Ahmad Fatoum wrote:
> fb_damage takes the coordinates of the upper left and bottom right
> pixels as can be seen in fb_rect_width() and fb_rect_height().
> 
> We erroneously passed only width and height though, so add the origin
> pixel coordinates on top to fix this.
> 
> 
> [...]

Applied, thanks!

[1/3] efi: gop: fix rectangle extents passed to fb_damage
      https://git.pengutronix.de/cgit/barebox/commit/?id=3cc061490448 (link may not be stable)
[2/3] efi: gop: use correct BLT pixel type
      https://git.pengutronix.de/cgit/barebox/commit/?id=17a58acc9572 (link may not be stable)
[3/3] efi: gop: report and use framebuffer stride
      https://git.pengutronix.de/cgit/barebox/commit/?id=87049255da2b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



