Delivery-date: Tue, 10 Jun 2025 10:06:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOu03-005j6B-1u
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 10:06:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOu01-0003uR-5W
	for lore@pengutronix.de; Tue, 10 Jun 2025 10:06:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gXjITtaBPfn/ZgcZ5jh6hX5FJEFY1vdwKWtaSb7qPDo=; b=YrwxHtxRl+lxXzpZeq+5qOcfy4
	AbxC54j0wI4GKfWJ83bt0k2bwqWOZgF936M1mvC0unMqRFJwioSUwcZWmlvw9wXIiMruezWCt4TTU
	ZLK6+nc2nTnY2mwm+nIWV54IQh2cZiiP8sIMifOjDRHVGza/O3uDMTdLFQcmVb/n8iv2j1/99whIV
	oEQYnGNkoPoYxNsNmyqnPz4aCKJxmGzoUDVdzikSHfq4Ul8XZoLTB+SC4axKm2IE1PHLNP9Qpvt/2
	tTXstiH5pGt37tj2FzbV5W0gKJnvD4iV9l/Wwdqd77x8japUVgdCWw/LJ2bc4hPV2TGF6poxvohha
	WOa/IjPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOtzX-000000066xp-2p9g;
	Tue, 10 Jun 2025 08:05:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOtyn-000000066tg-47yP
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 08:05:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uOtym-0003Gm-R7; Tue, 10 Jun 2025 10:05:08 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uOtym-002jkI-26;
	Tue, 10 Jun 2025 10:05:08 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uOtym-004lAf-1j;
	Tue, 10 Jun 2025 10:05:08 +0200
Date: Tue, 10 Jun 2025 10:05:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aEfnNBHsuXZk_zRX@pengutronix.de>
References: <20250605074713.4170334-1-o.rempel@pengutronix.de>
 <20250605074713.4170334-8-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250605074713.4170334-8-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_010510_023597_6CEB15FA 
X-CRM114-Status: GOOD (  20.16  )
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
Subject: Re: [PATCH v2 7/9] nvmem: rmem: generate unic device name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

in the subject: s/unic/unique/

Sascha

On Thu, Jun 05, 2025 at 09:47:11AM +0200, Oleksij Rempel wrote:
> otherwise mnvmem framework will generate same char device for all
> instances. This will prevent creation of additional devices
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/nvmem/rmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
> index fd7389cd39e3..adac414e84d8 100644
> --- a/drivers/nvmem/rmem.c
> +++ b/drivers/nvmem/rmem.c
> @@ -227,7 +227,7 @@ static int rmem_probe(struct device *dev)
>  
>  	config.dev = priv->dev = dev;
>  	config.priv = priv;
> -	config.name = "rmem";
> +	config.name = dev_name(dev);
>  	config.size = resource_size(mem);
>  	priv->total_size = config.size;
>  
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


