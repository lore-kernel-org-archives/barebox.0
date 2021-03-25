Delivery-date: Thu, 25 Mar 2021 13:49:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPPQJ-000833-Un
	for lore@lore.pengutronix.de; Thu, 25 Mar 2021 13:49:15 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPPQH-0001EA-Rm
	for lore@pengutronix.de; Thu, 25 Mar 2021 13:49:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qpKwcKnI8TAlpd20RnI26UNIZDeMbRYB8E3xmx+5XBs=; b=OSdk+V3p5AD5tGwzc7SHaYxHT
	oZ1SY0tp/Xh+tX5RUjvlM23uCkDvsUd6RQU7tVA3cH7E0cmgzL0jTVOVR+L5G5WoQ7LvX0/wV5O/M
	B0jqF2i5OZa1VDHK4dWRaWTOdFLEP+VptlYo7rEPvS4pjcfVAZ2z5MpWa7sX129g72Hb6kbqLTvfZ
	UHhylwOT3Rzzt6y6iRsbf3S33A89E7zFyM10qNVhTA34yJRNO+clEYZVy/3IiPFMec9mP8rtqG13+
	/jKpXorbt0GKtHdmADj0RYqgLwhs0YS4K8ljEjNzZxJOo1mRVdUw38V3rRUHmqq+Z7ltvy0uD6kyr
	+oe5tur8g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPPP5-001RAK-Vv; Thu, 25 Mar 2021 12:48:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPPOv-001R9D-L8
 for barebox@desiato.infradead.org; Thu, 25 Mar 2021 12:47:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=wNd8s3Qnn8Z91RXRAODF5K/L0lTz1SSpwMZ1oZMS4ic=; b=MpFPGmMcz6Cbc8/tTxUeM5/UE6
 bIxEUM2GNHyoZ9VdlZbNvRZ7Df27guJMvuHLT/fSyb0pz7HJA/P+Vx838N+QgWV3RQ1PQw9OjI96Q
 Wzs50eJF5zUOiED2/9GW96hs9cQ2fC5JZa9gWvWrSIfjz6ctFgT1WZ0SwMa2UPSPNtLDVl2USeXil
 02aU0Vmz72Mb3OlSGbRUxk63U07X3tIg7OGTTZQ6tWe1ZPVOqNzzvr02jzNnlpq3GTUkqEjL1c0+4
 5OR1/s+8ZmmDfhnpZjMdbxLghaBurMz4xGZjNTPwGUjoAGKHzEVFMBTXbqZBfo/9L7YA+BE/H6Oh7
 BEAoUJuw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPPNX-00Cusf-Ho
 for barebox@lists.infradead.org; Thu, 25 Mar 2021 12:47:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lPPNW-000157-GU; Thu, 25 Mar 2021 13:46:22 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lPPNW-0000Qs-7h; Thu, 25 Mar 2021 13:46:22 +0100
Date: Thu, 25 Mar 2021 13:46:22 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, bst@pengutronix.de
Message-ID: <20210325124622.GB609@pengutronix.de>
References: <20210324122247.10683-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210324122247.10683-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:46:13 up 35 days, 16:10, 93 users,  load average: 0.60, 0.48, 0.41
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_124650_506934_A7C2F761 
X-CRM114-Status: GOOD (  20.25  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] net: phy: at803x: fix incorrect use of FIELD_PREP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 24, 2021 at 01:22:44PM +0100, Ahmad Fatoum wrote:
> FIELD_PREP expects mask datatype to be a constant unsigned long.
> The mask constant already has the correct datatype, so pass it directly.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/phy/at803x.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
> index e0e147b1913e..93a8bb9df10e 100644
> --- a/drivers/net/phy/at803x.c
> +++ b/drivers/net/phy/at803x.c
> @@ -141,13 +141,12 @@ static int at803x_parse_dt(struct phy_device *phydev)
>  	const struct device_d *dev = &phydev->dev;
>  	const struct device_node *node = dev->device_node;
>  	struct at803x_priv *priv = phydev->priv;
> -	unsigned int sel, mask;
> +	unsigned int sel;
>  	u32 freq, strength;
>  	int ret;
>  
>  	ret = of_property_read_u32(node, "qca,clk-out-frequency", &freq);
>  	if (!ret) {
> -		mask = AT803X_CLK_OUT_MASK;
>  		switch (freq) {
>  		case 25000000:
>  			sel = AT803X_CLK_OUT_25MHZ_XTAL;
> @@ -166,8 +165,8 @@ static int at803x_parse_dt(struct phy_device *phydev)
>  			return -EINVAL;
>  		}
>  
> -		priv->clk_25m_reg |= FIELD_PREP(mask, sel);
> -		priv->clk_25m_mask |= mask;
> +		priv->clk_25m_reg |= FIELD_PREP(AT803X_CLK_OUT_MASK, sel);
> +		priv->clk_25m_mask |= AT803X_CLK_OUT_MASK;
>  
>  		/* Fixup for the AR8030/AR8035. This chip has another mask and
>  		 * doesn't support the DSP reference. Eg. the lowest bit of the
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

