Delivery-date: Thu, 20 Jan 2022 09:35:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nASuO-007U9p-0a
	for lore@lore.pengutronix.de; Thu, 20 Jan 2022 09:35:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nASuM-0007A8-Hu
	for lore@pengutronix.de; Thu, 20 Jan 2022 09:35:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JKo7leN8GSTp/s+iIqqCNVzqaMAKD/T1h4SUZMwsqG8=; b=rxqD5v/Vsh5nYJhSTKwRtMPapA
	04iBMUlykDXtbyrZ06J0e6TvrFq4HKl8g8RizScXexcnl/UVd8rQV6W0UFvL+kxTNRq5XEsXO/1Aa
	bJlwI6b96g0xw8xMTC+hfIKSnbqOEfJV1wNQwOzLB1JyipG064/XIwQVdE5tfgtF+dRswL7pNUa7K
	g+DRyBgBtAuFGzB0ezwwHj/5JXmHL6jGfIrysVJ5WGFTQhrsXOgC9P4bBlkJvebNj2hFFIqWltuZz
	blC4Xjs0BzHaNTKMfJjOL2DIMaEK478UyxQrbjblliGBL9NYxrO5Vy+cKqfbWLantMsDgWmKX+xYb
	MLMeG4Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAStC-009mxg-Ch; Thu, 20 Jan 2022 08:33:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nASt7-009muk-5a
 for barebox@lists.infradead.org; Thu, 20 Jan 2022 08:33:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nASt5-0006zZ-Uh; Thu, 20 Jan 2022 09:33:43 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nASt5-0005Wp-La; Thu, 20 Jan 2022 09:33:43 +0100
Date: Thu, 20 Jan 2022 09:33:43 +0100
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220120083343.GL23490@pengutronix.de>
References: <20220118134317.1686090-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220118134317.1686090-1-p.zabel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:32:34 up 40 days, 17:18, 75 users,  load average: 0.07, 0.17, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_003345_248649_DFDFC230 
X-CRM114-Status: GOOD (  19.13  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] efi: skip devices without driver in
 efi_pause/continue_devices()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 18, 2022 at 02:43:17PM +0100, Philipp Zabel wrote:
> Skip devices on the EFI bus that do not have a driver assigned.
> 
> Fixes: f68a547deebd ("efi: add efi_device hook to be called before an image is started")
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/efi/efi-device.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)

Applied, thanks

I wonder how this could work here, I think there are many devices
without a driver in every EFI barebox.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

