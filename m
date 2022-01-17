Delivery-date: Mon, 17 Jan 2022 10:16:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9O7c-004Rvr-4J
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 10:16:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9O7a-0005OW-Mu
	for lore@pengutronix.de; Mon, 17 Jan 2022 10:16:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3rW3WQxV7eLSUvJyBzsPBN0lnmZ9LLTG8yaO1Wd9MVc=; b=0/xE1lcRvVDNExW3mMuWGPXb0X
	4wCC4GqLPesUTRaKC8XwFUgZDhpAkrxLXfSQzTG8SHLWBG7h1tDsVx8NN8CNYa+dgpyUjNA7Ifcuw
	dO/1Cw7v+qejYan1VR9OIxiZqcJch6LHouKYGJLZzAkAzwpbdvJrVnpFXDbzQelT2hw8JopaCQSTG
	p7lkraAD0mfhMh4mNiSYwoQJa0VDtgWTG3nVc9+JBag15U63k45RFiFY8qXtFafTVfAEJq+f2oO+D
	B87D/4msLEgMg8k3gRjkqKicZOpUc22GT5z/fcUjDIpj9QdPP52PFRUJt924ePS/Dgrpq0HYxhpdt
	3t/SzS0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9O6P-00EEFK-Bi; Mon, 17 Jan 2022 09:15:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9O6K-00EEEv-98
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 09:14:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9O6I-00055s-OK; Mon, 17 Jan 2022 10:14:54 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9O6H-0002f8-Tt; Mon, 17 Jan 2022 10:14:53 +0100
Date: Mon, 17 Jan 2022 10:14:53 +0100
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220117091453.GF1121@pengutronix.de>
References: <20220114105235.2580174-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220114105235.2580174-1-enrico.scholz@sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:14:37 up 37 days, 18:00, 77 users,  load average: 0.12, 0.25, 0.31
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_011456_343201_8E347EC8 
X-CRM114-Status: GOOD (  18.88  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb:chipidea-imx: honor "phys" dtree property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 14, 2022 at 11:52:35AM +0100, Enrico Scholz wrote:
> Recent kernel devicetrees changed the "fsl,usbphy" property name to
> "phys" on some platforms (e.g. iMX8) but the old one was kept on other
> platforms (e.g. iMX6).
> 
> Check them both in the usb driver by preferring "phys".
> 
> NOTE: this fixes a hard lockup when booting NXP linux kernels on iMX8.
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  drivers/usb/imx/chipidea-imx.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)

Applied to master, thanks

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

