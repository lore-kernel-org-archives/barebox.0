Delivery-date: Fri, 03 Mar 2023 14:52:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY5pH-007ahv-8u
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 14:52:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY5pG-0006Aw-OK
	for lore@pengutronix.de; Fri, 03 Mar 2023 14:51:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q3igEfuRu12G3lgOyrUbg+Uu83Tkqto5OX9FrU1wukg=; b=z+63vT/fAJnb/ltACjjy1F8Qlx
	046+Vdvqz0bRuCoaQaTW9fQvdnP9aYqvcypDItPjy50PbzwpnQNtjzslGI+Dlt+mVhYECEs28Hewv
	zlVhrOGom7D0/CPxEzXOe0IzjOl0k9/7c2EoHUPcrpAhAPLyMU9mJ/V3pO5vNTg3tMX+ix18kc4AS
	VqfsBoruG59iPXhoQdLoRZTbLpTwEL1BkCTIp+zcDCPeUL1Rj9lT8E5dFXtsMowDsUvWX5uax+Azj
	r7m6Mm6/J4JVL5R+QIfhP+isZX40IUfn1ye6RSsJImKscsy8IzG3gLa1Dtgb2NKoNkekQvbOuzecb
	R6QgwywA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY5oA-006WhG-VI; Fri, 03 Mar 2023 13:50:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY5o5-006Wgn-WE
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 13:50:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY5o4-0005yE-5g; Fri, 03 Mar 2023 14:50:44 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY5o3-0006d1-Qm; Fri, 03 Mar 2023 14:50:43 +0100
Date: Fri, 3 Mar 2023 14:50:43 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20230303135043.GW32097@pengutronix.de>
References: <20230303134321.10870-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230303134321.10870-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_055046_075739_6ADABAEA 
X-CRM114-Status: GOOD (  19.50  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc2: Fix memory leak in probe error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 03, 2023 at 02:43:21PM +0100, Jules Maselbas wrote:
> The dwc2 driver private structure wasn't freed in the error path.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/dwc2/dwc2.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
> index ef957534c9..ff4842ce62 100644
> --- a/drivers/usb/dwc2/dwc2.c
> +++ b/drivers/usb/dwc2/dwc2.c
> @@ -92,11 +92,10 @@ static int dwc2_probe(struct device *dev)
>  	set_params_cb set_params;
>  	int ret;
>  
> -	dwc2 = xzalloc(sizeof(*dwc2));
> -
>  	iores = dev_request_mem_resource(dev, 0);
>  	if (IS_ERR(iores))
>  		return PTR_ERR(iores);
> +	dwc2 = xzalloc(sizeof(*dwc2));
>  	dwc2->regs = IOMEM(iores->start);
>  	dwc2->dev = dev;
>  
> @@ -177,6 +176,8 @@ clk_put:
>  release_region:
>  	release_region(iores);
>  
> +	free(dwc2);
> +
>  	return ret;
>  }
>  
> -- 
> 2.17.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


