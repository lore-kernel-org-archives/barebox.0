Delivery-date: Mon, 10 Jul 2023 11:57:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIne2-005Zlq-Fn
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 11:57:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIne0-0006wI-6q
	for lore@pengutronix.de; Mon, 10 Jul 2023 11:57:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xa7jmbhJmyXeuSyJcF3mZxEF0DeIpo4UoovvOeMrG90=; b=0MqkyDpQSEm5Kkjfg4Z34zP5Ls
	LKkYRIaZ6Hq+wPXWC6AkEmi01QtnWZYUX1VW/rQMOAR3wH8Qxogf3k3xW3dcZAFvw3b1nY1NOIFdV
	qgih01ZK5cQdAtxy+YKp3bHo32Wps2VYy5XtZegwjZW6pPeAVzZpgtC/KMtg9c2q9elMhlnQAsyXE
	2y3J59HV5njPmkCN6DT+llXF4a9HeEWbkhMiLAb+qAUZC5PvdHpEyoU2ZJOEjMoGlqxZcdpd9vsce
	rFPURseYf0Kum9T+pm1ClqFqHk4na9AZbKzuMLAmvyczjSESgi1ZHG7pGPVD212srBU/d3A+zRyZc
	Ughhn1WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qInd0-00B8Bu-0s;
	Mon, 10 Jul 2023 09:56:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIncx-00B8Al-1k
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 09:56:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qIncw-0006nX-94; Mon, 10 Jul 2023 11:56:18 +0200
Message-ID: <8c07789d-6bd5-290c-952d-befd3fb8e232@pengutronix.de>
Date: Mon, 10 Jul 2023 11:56:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
 <20230710063653.660040-2-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230710063653.660040-2-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_025619_576008_F3C3850A 
X-CRM114-Status: GOOD (  16.44  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/7] net: phy: micrel: make use of MDIO_MMD register
 defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10.07.23 08:36, Marco Felsch wrote:
> Make use of the register definition instead of having magic numbers. No
> functional change.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

FYI, the code is taken from Linux (with arguments swapped).

Change is ok though:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/net/phy/micrel.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
> index ef1f919ae7..02d474c442 100644
> --- a/drivers/net/phy/micrel.c
> +++ b/drivers/net/phy/micrel.c
> @@ -447,23 +447,27 @@ static int ksz9031_config_rgmii_delay(struct phy_device *phydev)
>  		return 0;
>  	}
>  
> -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CONTROL_PAD_SKEW, 2,
> +	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CONTROL_PAD_SKEW,
> +			       MDIO_MMD_WIS,
>  			       FIELD_PREP(MII_KSZ9031RN_RX_CTL_M, rx) |
>  			       FIELD_PREP(MII_KSZ9031RN_TX_CTL_M, tx));
>  
> -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_RX_DATA_PAD_SKEW, 2,
> +	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_RX_DATA_PAD_SKEW,
> +			       MDIO_MMD_WIS,
>  			       FIELD_PREP(MII_KSZ9031RN_RXD3, rx) |
>  			       FIELD_PREP(MII_KSZ9031RN_RXD2, rx) |
>  			       FIELD_PREP(MII_KSZ9031RN_RXD1, rx) |
>  			       FIELD_PREP(MII_KSZ9031RN_RXD0, rx));
>  
> -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_TX_DATA_PAD_SKEW, 2,
> +	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_TX_DATA_PAD_SKEW,
> +			       MDIO_MMD_WIS,
>  			       FIELD_PREP(MII_KSZ9031RN_TXD3, tx) |
>  			       FIELD_PREP(MII_KSZ9031RN_TXD2, tx) |
>  			       FIELD_PREP(MII_KSZ9031RN_TXD1, tx) |
>  			       FIELD_PREP(MII_KSZ9031RN_TXD0, tx));
>  
> -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CLK_PAD_SKEW, 2,
> +	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CLK_PAD_SKEW,
> +			       MDIO_MMD_WIS,
>  			       FIELD_PREP(MII_KSZ9031RN_GTX_CLK, tx_clk) |
>  			       FIELD_PREP(MII_KSZ9031RN_RX_CLK, rx_clk));
>  	return 0;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



