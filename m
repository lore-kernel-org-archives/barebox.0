Delivery-date: Mon, 22 Aug 2022 11:10:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oQ3SH-00782C-Kc
	for lore@lore.pengutronix.de; Mon, 22 Aug 2022 11:10:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oQ3SE-0007Ut-Gu
	for lore@pengutronix.de; Mon, 22 Aug 2022 11:10:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ICQBow51y1/Q3LfzvRE5vGvL8w4Rgsle9kvwhFnhsa0=; b=GbjR5rZA/BZKgeKxxBkTW279rq
	hUqf6Uue9nTNidiofmN2bFmmnyF4ebY+vqIDloSNhE1DTeUhWZINRHNh4qmYfasxgGOmxs1jSYd9y
	spMxTMvBjzYFA44jKRsiRK+ODS6wUPUGP/W3xFawnGBYTSepEkbx4+A6oMuGGEyQuPKhoNlxjfoBE
	af9C/eGjv/lV3suaJRdvF8nOnc9URMum4CsJouNHMK72FvwVpiKrRWqD5rJWcgRAy8CTFP5SwIJXv
	HkaWMMILPOzoQXJAY6SFTJMC2Qj31V8E/HQ6MGkySvxF5xiOu24CiI8VrY+oeqnDTfsyjUyCCkdkr
	RX/bnxdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ3QU-006paD-0K; Mon, 22 Aug 2022 09:08:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ3G2-006jlk-8C
	for barebox@lists.infradead.org; Mon, 22 Aug 2022 08:58:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oQ3G0-0005hZ-F0; Mon, 22 Aug 2022 10:58:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oQ3Fz-0002Tk-GU; Mon, 22 Aug 2022 10:58:03 +0200
Date: Mon, 22 Aug 2022 10:58:03 +0200
To: Frank Wunderlich <linux@fw-web.de>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220822085803.GH17485@pengutronix.de>
References: <20220821100640.75008-1-linux@fw-web.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220821100640.75008-1-linux@fw-web.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_015806_342492_0BCB0067 
X-CRM114-Status: GOOD (  17.21  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3] arm: rockchip: switch to mainline dts for bpi-r2-pro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Aug 21, 2022 at 12:06:40PM +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Use mainline DTS for Bananapi R2 Pro like the other rk356x devices.
> 
> Xhci0 has to be set to host again, as board has no id-pin to switch between
> otg and hostmode.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> v3:
> - accidentally squashed raminit-bins, buildscript and my defconfig from test
> 
> v2:
> - fixed patch to apply on master
> ---
>  .../boards/rockchip-rk3568-bpi-r2pro/board.c  |   5 +-
>  arch/arm/dts/rk3568-bpi-r2-pro.dts            | 522 +-----------------
>  2 files changed, 4 insertions(+), 523 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


