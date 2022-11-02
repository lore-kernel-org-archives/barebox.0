Delivery-date: Wed, 02 Nov 2022 08:36:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8Iz-00Byuu-15
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 08:36:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8Ix-0006TM-T9
	for lore@pengutronix.de; Wed, 02 Nov 2022 08:36:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kY8sEEGrdHxkjAg61iJZH8Ynf5Faz8Jg0udAXaCXppM=; b=W2154CGXs6mbdUdBep0sgpkLEB
	CrG2jUoqfk/2cAYrS3QclO9Z5poUaPDzPsr3+JmJeAC4yjLjq8UnR0RaJT6MSmeXss3935v35kCL6
	NXEywApnQ69U1r084rJaOjfDGdWKg5nihHSWgblL1oI4yAOcirJden5yAM9+i+7o4boHomAPG9Fx/
	ysnEuMm+dJQ53x508ae4vqI5zMchpD8ns6dtmdqksOama40RzfHlQshfZVzVfy/C/W8jOZPRCoFgc
	ccXcn6YAT+HH3IYlRqXI8yksv8bGwHed6JcYnSgFf5RFKRm3sYPWhPcPMxXk9Og0ktJIlJsAf7zTD
	Kfc1Ming==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8HE-008di8-TY; Wed, 02 Nov 2022 07:35:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8H9-008dh3-NY
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 07:35:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8H4-0005xl-BP; Wed, 02 Nov 2022 08:34:58 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8H3-00053V-RA; Wed, 02 Nov 2022 08:34:57 +0100
Date: Wed, 2 Nov 2022 08:34:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20221102073457.GA3143@pengutronix.de>
References: <20221031073319.1656130-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221031073319.1656130-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_003503_788577_A36D24A8 
X-CRM114-Status: GOOD (  25.29  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: e1000: fix <NULL>s in log messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 31, 2022 at 10:33:19AM +0300, Denis Orlov wrote:
> We do not have an edev.dev set up yet when we are filling in the device
> structure and reading an EEPROM in probe. Besides, using hw->dev for
> those messages seems more appropriate.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  drivers/net/e1000/eeprom.c | 6 +++---
>  drivers/net/e1000/main.c   | 2 +-
>  2 files changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
> index 1072bc54ef..27143bd6d0 100644
> --- a/drivers/net/e1000/eeprom.c
> +++ b/drivers/net/e1000/eeprom.c
> @@ -800,7 +800,7 @@ int e1000_validate_eeprom_checksum(struct e1000_hw *hw)
>  
>  	/* Read the EEPROM */
>  	if (e1000_read_eeprom(hw, 0, EEPROM_CHECKSUM_REG + 1, buf) < 0) {
> -		dev_err(&hw->edev.dev, "Unable to read EEPROM!\n");
> +		dev_err(hw->dev, "Unable to read EEPROM!\n");
>  		return -E1000_ERR_EEPROM;
>  	}
>  
> @@ -816,8 +816,8 @@ int e1000_validate_eeprom_checksum(struct e1000_hw *hw)
>  		return 0;
>  
>  	/* Hrm, verification failed, print an error */
> -	dev_err(&hw->edev.dev, "EEPROM checksum is incorrect!\n");
> -	dev_err(&hw->edev.dev, "  ...register was 0x%04hx, calculated 0x%04hx\n",
> +	dev_err(hw->dev, "EEPROM checksum is incorrect!\n");
> +	dev_err(hw->dev, "  ...register was 0x%04hx, calculated 0x%04hx\n",
>  			checksum_reg, checksum);
>  
>  	return -E1000_ERR_EEPROM;
> diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
> index 363730de0a..1f84cf2949 100644
> --- a/drivers/net/e1000/main.c
> +++ b/drivers/net/e1000/main.c
> @@ -3226,7 +3226,7 @@ static int e1000_sw_init(struct eth_device *edev)
>  	/* identify the MAC */
>  	result = e1000_set_mac_type(hw);
>  	if (result) {
> -		dev_err(&hw->edev.dev, "Unknown MAC Type\n");
> +		dev_err(hw->dev, "Unknown MAC Type\n");
>  		return result;
>  	}
>  
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


