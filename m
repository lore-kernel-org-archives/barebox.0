Delivery-date: Mon, 10 Jul 2023 12:02:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qInij-005a5R-Kn
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 12:02:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qInih-0008WF-Bh
	for lore@pengutronix.de; Mon, 10 Jul 2023 12:02:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RXUbfaut/4M+8K+w1sFeFMRiGGxEy+n6sfxuu3YPbxw=; b=eCiN4e0sNKqWd8CuxH9tkxGxh3
	Gq6gKoXoTDMz2RHMtekF26fM/u9L37ExRPkyo4NnlRhuFciVFApKutPXbbBy5qkbVkTf+zP5vigGt
	uKcoZKG11usDK5+5Jy1zshdldcA9hxOl///eZUwvEBpOGEuFVveDmgXhvUvfuX84LshmDXsLZrmV4
	7ymDVuNPpLjEkDXLAxdcMFZxhEYCFFS8oYr184EcwyLKeUvhuHSpjgceaWu8TQCU0mRypgt2BOluY
	doe6JhqEy65vIDmAQQgP4VCZmxh1TaxfENjuNQyeGe+fWgIJknVr6EpYSq/2fHHG4W8+r3tb6aLPL
	ZCBGZB5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qInhg-00B9Rs-33;
	Mon, 10 Jul 2023 10:01:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qInhe-00B9QM-1q
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 10:01:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qInhd-00088D-58; Mon, 10 Jul 2023 12:01:09 +0200
Message-ID: <18791b1d-94f8-1f61-4ef4-895d582dcc86@pengutronix.de>
Date: Mon, 10 Jul 2023 12:01:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
 <20230710063653.660040-4-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230710063653.660040-4-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_030110_610404_EA4DF7FB 
X-CRM114-Status: GOOD (  15.60  )
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
Subject: Re: [PATCH 4/7] net: phy: add phydev_{err,err_probe,info,warn,dbg}
 macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10.07.23 08:36, Marco Felsch wrote:
> Import Linux macros to make it easier to port drivers to barebox.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/linux/phy.h | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index d96c4e97ab..b0474e87df 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -417,6 +417,21 @@ static inline bool phy_acquired(struct phy_device *phydev)
>  	return phydev && phydev->bus && slice_acquired(&phydev->bus->slice);
>  }
>  
> +#define phydev_err(_phydev, format, args...)	\
> +	dev_err(&_phydev->dev, format, ##args)
> +
> +#define phydev_err_probe(_phydev, err, format, args...)	\
> +	dev_err_probe(&_phydev->dev, err, format, ##args)
> +
> +#define phydev_info(_phydev, format, args...)	\
> +	dev_info(&_phydev->dev, format, ##args)
> +
> +#define phydev_warn(_phydev, format, args...)	\
> +	dev_warn(&_phydev->dev, format, ##args)
> +
> +#define phydev_dbg(_phydev, format, args...)	\
> +	dev_dbg(&_phydev->dev, format, ##args)
> +
>  #ifdef CONFIG_PHYLIB
>  int phy_register_fixup_for_uid(u32 phy_uid, u32 phy_uid_mask,
>  		int (*run)(struct phy_device *));

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



