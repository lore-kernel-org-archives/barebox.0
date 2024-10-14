Delivery-date: Mon, 14 Oct 2024 11:46:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0Hew-004D2c-1t
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 11:46:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0Hew-0007Hv-09
	for lore@pengutronix.de; Mon, 14 Oct 2024 11:46:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OFrrAQgHDMIdeQAaVluuhT/cGfUo9M6S3X+fAjqOLqE=; b=xtam0dS3uQR3YoLZtkWYyjVc25
	/m8uhOKKySfY5h9KaRTEApVg9J/+ZIJJNFmUzjYgFTb5UFqNosNRdUHbdxyZtOOJHiYVsxXbZOfLR
	/ZEXPOsxbmY7zrLaAzn3GqAoCaamcPF1C3nZnHy0hzc52nazfU7+56ta+z8r/9JkiZBZi7erse2Xa
	NWK6+Y5+wRBQreNQi2NpOWIlWKefN4/umLFobGZbPQS3s/M8sfZyMgGl2sjqm5s3P+StciF6gTcLD
	wbFRbtph1Y3dRviyzP1iHRD3YHCjpwrs0sqaJBKzbAhlSpFQm2Sh/5AD1dwvNftqMzjAW0L8Fk/aW
	4PjAWwiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0HeO-00000004aP8-1OxJ;
	Mon, 14 Oct 2024 09:46:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0HJG-00000004VTE-1JmC
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 09:24:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t0HJC-0004ei-Hr; Mon, 14 Oct 2024 11:24:10 +0200
Message-ID: <672c9fd8-0b98-45c0-810a-ee640621f9e1@pengutronix.de>
Date: Mon, 14 Oct 2024 11:24:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: rcz@pengutronix.de, ske@pengutronix.de
References: <20241014085506.2207866-1-a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20241014085506.2207866-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_022414_389857_608A8186 
X-CRM114-Status: GOOD (  14.92  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mdio_bus: add NULL check to mdiobus_read/mdiobus_write
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Reviewed-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>

On 14.10.24 10:55, Ahmad Fatoum wrote:
> These functions shouldn't be called with a NULL pointer as argument in
> the first place, but this happened at least twice so far[1][2], because
> drivers weren't tested in fixed-link setups without PHYs.
> 
> To improve user experience, let's return -EIO instead of crashing
> outright. The proper fix is still to adapt these drivers, so they
> do not try to access non-existent PHYs.
> 
> [1]: commit 6269556397 ("net: eqos: let phy_resume handle fixed link phys")
> [2]: https://lore.barebox.org/barebox/20241010-fix-designware-fixed-link-v1-1-de2df5485a25@pengutronix.de/T/#u
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/phy/mdio_bus.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
> index 30d5aeacff0d..68652e92a830 100644
> --- a/drivers/net/phy/mdio_bus.c
> +++ b/drivers/net/phy/mdio_bus.c
> @@ -441,6 +441,9 @@ int mdiobus_read(struct mii_bus *bus, int addr, u32 regnum)
>  {
>  	int ret;
>  
> +	if (!bus)
> +		return -EIO;
> +
>  	slice_acquire(&bus->slice);
>  
>  	ret = bus->read(bus, addr, regnum);
> @@ -461,6 +464,9 @@ int mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val)
>  {
>  	int ret;
>  
> +	if (!bus)
> +		return -EIO;
> +
>  	slice_acquire(&bus->slice);
>  
>  	ret = bus->write(bus, addr, regnum, val);

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |



