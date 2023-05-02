Delivery-date: Tue, 02 May 2023 11:46:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptmaS-002BIZ-1Z
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:46:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptmaP-0006t6-OV
	for lore@pengutronix.de; Tue, 02 May 2023 11:46:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6aHsrvnsPAquieAMSI2IC/x5jHbBwDi91VCryGM5z7U=; b=3pq5cBliZQeXWiSRUbFCJHWPDV
	Qrbjt3RrwVJ2DTdeJqQLNPzDvaE8VVSZDcwoCqDSxBCn6zAuAxY95VGFjJyUYE3rv+giKs0Cy4479
	fTnC4gL6UCb6bbXCUzcCzxGxTgcTIqEWgjibUpxZ5SO76px06yD5T7BzeXKJUvO4gVEWwQeH9O0D+
	ut4/BQXRASJEpzqBJCHfyUUfkR6XCAt5ArFiKVcur+tonIF45LNW7pBT3ujk+8Vt5pHDSza41W9K6
	+5aOR8PPqSuuBi5IJEqFIqqv1QBe3Br27Ic8SOW6iFWAM5ybfjyvpgep2z6wvnsapuyY27l8Tz5I5
	4AqYqpZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmZF-000oGK-2o;
	Tue, 02 May 2023 09:45:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmZ9-000oFT-2C
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:45:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptmZ7-0006Ts-74; Tue, 02 May 2023 11:44:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptmZ4-0007dX-Pw; Tue, 02 May 2023 11:44:54 +0200
Date: Tue, 2 May 2023 11:44:54 +0200
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230502094454.GY13543@pengutronix.de>
References: <20230426084659.4002852-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230426084659.4002852-1-m.olbrich@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_024459_740411_A1B5DB5C 
X-CRM114-Status: GOOD (  24.66  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] net: ifup: pass hostname and linuxdevname to linux with
 DHCP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 26, 2023 at 10:46:59AM +0200, Michael Olbrich wrote:
> Barebox always uses the hostname in the DHCP request. To configure
> kernel networking, use the long ip= syntax for DHCP and set the hostname
> as well. This way, Barebox and Linux use the same hostname in the DHCP
> request.
> Also set the device if linuxdevname is configured. This is already done
> for static configurations. Do the same for DHCP.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
>  net/ifup.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Nice. I didn't know one can pass more parameters with ip=dhcp.

Applied, thanks

Sascha

> 
> diff --git a/net/ifup.c b/net/ifup.c
> index 1870f7401714..18ab1363c748 100644
> --- a/net/ifup.c
> +++ b/net/ifup.c
> @@ -159,8 +159,8 @@ out:
>  
>  static void set_linux_bootarg(struct eth_device *edev)
>  {
> +	char *bootarg;
>  	if (edev->global_mode == ETH_MODE_STATIC) {
> -		char *bootarg;
>  		IPaddr_t serverip;
>  		IPaddr_t gateway;
>  
> @@ -176,7 +176,11 @@ static void set_linux_bootarg(struct eth_device *edev)
>  		dev_set_param(&edev->dev, "linux.bootargs", bootarg);
>  		free(bootarg);
>  	} else if (edev->global_mode == ETH_MODE_DHCP) {
> -		dev_set_param(&edev->dev, "linux.bootargs", "ip=dhcp");
> +		bootarg = basprintf("ip=::::%s:%s:dhcp",
> +				barebox_get_hostname(),
> +				edev->linuxdevname ? edev->linuxdevname : "");
> +		dev_set_param(&edev->dev, "linux.bootargs", bootarg);
> +		free(bootarg);
>  	}
>  }
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


