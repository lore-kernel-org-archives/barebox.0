Delivery-date: Mon, 08 May 2023 16:02:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pw1RE-00ACIB-KL
	for lore@lore.pengutronix.de; Mon, 08 May 2023 16:02:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pw1RC-0004b7-6E
	for lore@pengutronix.de; Mon, 08 May 2023 16:02:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DctXaHy/HjW5mP7Mb49ALwekAaNxTBuHZoUUCJw+XTY=; b=KRaqlyXnFXPVOKDn0MWlBS0wFc
	/5afgr94eMGLJ5qOCWfbcMqP3M9ktWLttF+4rJBK5HLu1vZcikZBwioD2PUStniyPpjUxvw7olI2n
	YIDDk0Ei8PrhlVjD6JzgKzytc3SFALzfdu/pZBLb0hmYL3AuCzUFoqCsB2HJrJhw4EJ1qldc2aGxp
	cj7ZXP+/Ozcl2RMPaz9tJhfNvMbM1GeZE3jMdTFxk2MPGj7xeAiaezcuaPe5z0WtICqbQBtsvpxJx
	X7mff/eKBHfrB0HObIIiUY1QtlUULkFMjDtLjtrifOVKYKDV8+jiZxdo06BGGmv+D+iqK/mkxNozr
	zNu30eCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pw1Pv-000grb-1f;
	Mon, 08 May 2023 14:00:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pw1Pt-000gr1-0S
	for barebox@lists.infradead.org;
	Mon, 08 May 2023 14:00:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pw1Pr-00048l-1e; Mon, 08 May 2023 16:00:39 +0200
Message-ID: <631a0067-9553-c6a8-d015-c3e9371d9b3b@pengutronix.de>
Date: Mon, 8 May 2023 16:00:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org
Cc: patchwork-jzi@pengutronix.de
References: <20230508133510.188016-1-j.zink@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230508133510.188016-1-j.zink@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_070041_181241_E78C9656 
X-CRM114-Status: GOOD (  22.09  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] net: phy: print error messages to log
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Johannes,

On 08.05.23 15:35, Johannes Zink wrote:
> Previously the phy core did just print info and error messages to
> console, but they did not show up in the system log.
> 
> Now the pr_info and pr_err macros are used instead of raw puts,
> they are now nicely formatted and show up in the log.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>

Thanks for your patch.

> ---
>  drivers/net/phy/phy.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 54dbbca7255a..64e7e33254e2 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -462,7 +462,7 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
>  	ret = -ENODEV;
>  out:
>  	if (ret)
> -		puts("Unable to find a PHY (unknown ID?)\n");
> +		pr_err("Unable to find a PHY (unknown ID?)\n");

Please use dev_err(&edev->dev, instead

>  
>  	return ret;
>  }
> @@ -675,7 +675,7 @@ int genphy_aneg_done(struct phy_device *phydev)
>  
>  	/* Restart auto-negotiation if remote fault */
>  	if (bmsr & BMSR_RFAULT) {
> -		puts("PHY remote fault detected\n"
> +		pr_info("PHY remote fault detected\n"
>  		     "PHY restarting auto-negotiation\n");

Likewise, dev_info(&phydev->dev,

>  		phy_write(phydev, MII_BMCR,
>  				  BMCR_ANENABLE | BMCR_ANRESTART);

Thanks,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



