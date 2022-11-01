Delivery-date: Tue, 01 Nov 2022 10:03:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opnB5-00AXpQ-7s
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 10:03:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opnB4-0002Zk-5y
	for lore@pengutronix.de; Tue, 01 Nov 2022 10:03:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xZJhRHKd9PaKZClqegpmI16QT2prmGNEuUK5JRK378U=; b=BrKEwqAS9nrhNMNSV1AP5Oitx/
	EEvkk79CfzRzTzW6q8ECGqhxE+72yQ5n2B1OxlffVxn3mZMFFyQnRGzjuNzyI+5vgbgk4JgiUS3Gs
	ag1UcHLCGr7OGzCy0EeKn3/QYyAlz5vjdUCJOyunFcGgveg8+g7+o8kJ/Nbcq092biZaQqLkjTaIX
	OtgtQ0/z9E92A0mLT0r7H3uuPUHNpz0YseEfHT/2/FyP6UiOEVaCg394k5iRw0bxktVv4xQ04nw/o
	VjiTgOdC+kTZpe31VXj0PHFY5gjiX5MyarNLZjknflyr+FO3OeM8l7/hUHOjnG/z4WwWY/L1qoD/y
	NCUVU70Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opn9k-003QSW-Lr; Tue, 01 Nov 2022 09:02:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opn9g-003QR3-0Z
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 09:01:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1opn9e-000290-Rb; Tue, 01 Nov 2022 10:01:54 +0100
Message-ID: <d69f44c4-3efc-8b93-fbf7-91c6c9d0f3b6@pengutronix.de>
Date: Tue, 1 Nov 2022 10:01:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20221031073319.1656130-1-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221031073319.1656130-1-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_020156_081079_B5582F04 
X-CRM114-Status: GOOD (  21.79  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] net: e1000: fix <NULL>s in log messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 31.10.22 08:33, Denis Orlov wrote:
> We do not have an edev.dev set up yet when we are filling in the device
> structure and reading an EEPROM in probe. Besides, using hw->dev for
> those messages seems more appropriate.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/net/e1000/eeprom.c | 6 +++---
>  drivers/net/e1000/main.c   | 2 +-
>  2 files changed, 4 insertions(+), 4 deletions(-)
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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



