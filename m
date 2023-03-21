Delivery-date: Tue, 21 Mar 2023 09:11:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peX5G-008wKM-BQ
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 09:11:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peX5F-0004m3-JP
	for lore@pengutronix.de; Tue, 21 Mar 2023 09:11:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PeM7J0P4/BmrsgNYuU+x1BJOWsrVZaS1Sr0YFpuxvNk=; b=vjdaoLjN37cUtP9rwgaoyqFXQD
	GFQ50stxtMBo28Vp9mAo99gcw0Lo/ZPqxOvImST1qla0eigxAvm+koOJOsMFDFJ4IJ0Lx2JSsrYEF
	pHKWNpybqaCMrvXrWUzpbdGR2lFqSoz4Wkn80GY304U7jJf48fq/pSEhFZh67ns4cu/a6Zxiyxn9u
	agu5Iuo3n80blgAD8o56TyT8AnEcFFHu+pGeD9981NERd0iBAIOgs44nG902ZKaFdXyaRAcDfhzG9
	9UHJhdddnTaM2IlkrYk+fvBSb0X9DxNFsZLJS9+RblQYhLFvNF9KQwDpNnmFB+8uBXBUYh03zDuho
	I3hXvAOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peX4E-00Bd1v-1E;
	Tue, 21 Mar 2023 08:10:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peX4B-00Bd0v-0a
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 08:10:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peX49-0004Ub-TL; Tue, 21 Mar 2023 09:09:57 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peX49-0004vs-Lv; Tue, 21 Mar 2023 09:09:57 +0100
Date: Tue, 21 Mar 2023 09:09:57 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230321080957.GD7446@pengutronix.de>
References: <20230316134209.4068801-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230316134209.4068801-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_010959_215612_817B1FCC 
X-CRM114-Status: GOOD (  20.63  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/3] net: dsa: add adjust_link support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 16, 2023 at 02:42:07PM +0100, Oleksij Rempel wrote:
> The required functionality is essential for cable hot plugging or
> asynchronous link detection. In its current state, DSA will only operate
> if the cable was connected prior to booting.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/dsa.c | 4 ++--
>  include/dsa.h     | 1 +
>  2 files changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
> index 793bbbb4f1..9c21564876 100644
> --- a/drivers/net/dsa.c
> +++ b/drivers/net/dsa.c
> @@ -104,8 +104,8 @@ static int dsa_port_start(struct eth_device *edev)
>  			return ret;
>  	}
>  
> -	ret = phy_device_connect(edev, ds->slave_mii_bus, dp->index, NULL, 0,
> -				 interface);
> +	ret = phy_device_connect(edev, ds->slave_mii_bus, dp->index,
> +				 ops->adjust_link, 0, interface);
>  	if (ret)
>  		return ret;
>  
> diff --git a/include/dsa.h b/include/dsa.h
> index e823bac0a7..527941c269 100644
> --- a/include/dsa.h
> +++ b/include/dsa.h
> @@ -55,6 +55,7 @@ struct dsa_switch_ops {
>  
>  	int (*phy_read)(struct dsa_switch *ds, int port, int regnum);
>  	int (*phy_write)(struct dsa_switch *ds, int port, int regnum, u16 val);
> +	void (*adjust_link)(struct eth_device *dev);
>  };
>  
>  struct dsa_port {
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


