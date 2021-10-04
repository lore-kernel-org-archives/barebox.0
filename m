Delivery-date: Mon, 04 Oct 2021 13:54:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMXr-0006yO-OQ
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 13:54:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMXq-0005NC-Rg
	for lore@pengutronix.de; Mon, 04 Oct 2021 13:54:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yOAoT5ggbaVUk4+5Xb9T6SYvK4O3mv2Fipstlyt9VQc=; b=yS1KT1v0ttUkPWV0hrDbbjqtIP
	becnWXosJ/tSbRFoHLw23BK5/CQxR+0uooT/jIbLjZ1PsiJZ/ahYriWo214hT3fAyQjLmPZ8zYFSi
	pyCC+LIt75E81k0NT870owjRK19OJNj4XYxXSEiwkxJYVS222VgjG8XIFM3nSBEHceSIqkNSAm2KT
	VxkED0GIaVYWOGLsAqk65w2T24HzVOjMN1xrCkEUqD2C8ickV//TrS/nqHoGaL50Ke/NPn/YS7l5x
	uLd4hx36DfHRgEVpQfbWBzn1/zGm4L5igl0x1ODyz/WUNBT3JWHEOrF+esu7D4xK1uQCUpPQFX4GX
	vzpUMWzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXMWX-006JHe-V0; Mon, 04 Oct 2021 11:52:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXMWP-006JGS-6M
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 11:52:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMWN-00057y-TU; Mon, 04 Oct 2021 13:52:39 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMWN-0004j3-Ht; Mon, 04 Oct 2021 13:52:39 +0200
Date: Mon, 4 Oct 2021 13:52:39 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211004115239.GD28453@pengutronix.de>
References: <20210825125430.26901-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210825125430.26901-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:52:26 up 228 days, 15:16, 145 users,  load average: 0.13, 0.28,
 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_045241_279385_AD57BA04 
X-CRM114-Status: GOOD (  18.12  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 0/6] protonic: maintaining and new board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 25, 2021 at 02:54:26PM +0200, Oleksij Rempel wrote:
> This patch series contains fixes and updates for currently mainlined
> protonic boards and one new board.
> 
> Please close one eye on the arch/arm/dts/imx6ull-jozacp.dtsi, it will be
> reviewed and reworked on the kernel side.
> 
> Oleksij Rempel (2):
>   ARM: boards: protonic-imx6: enable deep-probe support
>   ARM: boards: protonic-imx6: use decode error values instead error
>     numbers.
> 
> Robin van der Gracht (2):
>   ARM: boards: protonic-imx6: Skip usb check on prtvt7 by default
>   ARM: boards: protonic-imx6: Add support for jozacp board

Applied, thanks

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

