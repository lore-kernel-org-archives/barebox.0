Delivery-date: Wed, 12 Jun 2024 16:24:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHOtb-004r7S-0T
	for lore@lore.pengutronix.de;
	Wed, 12 Jun 2024 16:24:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHOta-00016N-D5
	for lore@pengutronix.de; Wed, 12 Jun 2024 16:24:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q+RzY+/Mc8/8WW5htZUaasCCAHAJCF9Gq9KVR4A3LZ8=; b=umsr/dJwe8ao7py27dQ0YLHnca
	8to5Av5XtZ9tE7q0AhUQibIxuh+x1Nsdjl+6oeqe8+yotS9fH857SQkPabmzAkiNLSPZf1dKQ7YHg
	9q3yqaks2uIn5hbsOs0m5Ejb1xUNz4+boEFp1uNQH/2jPjwtza0qSdmag9zjvhmBNBkkjUSykBgTt
	AqGZ3uTg43d/N4Nmim6R8y4kILL83VCgw0ZRPtcp6oLO0mVvBtbtvmhoazpjB0/HVee6TYjmiCxw3
	I4EVnZgYX3d4+xI5Jmvm3lQvkZ2c45+8smcTD5REWPLqD8ShXvhaCPunuBLEgtt5WJ2czBiApFayQ
	+QnOrufw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOt8-0000000Cvr5-1qHO;
	Wed, 12 Jun 2024 14:23:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOt6-0000000CvqS-04sm
	for barebox@lists.infradead.org;
	Wed, 12 Jun 2024 14:23:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sHOt4-00011o-8D; Wed, 12 Jun 2024 16:23:42 +0200
Message-ID: <9924712c-7e50-4f10-94d6-0a15a734ce12@pengutronix.de>
Date: Wed, 12 Jun 2024 16:23:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20240612140918.3832186-1-o.rempel@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240612140918.3832186-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_072344_095753_C22A08EF 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] net: phy: Add support for PHY-specific link polling
 interval and randomization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Oleksij,

On 12.06.24 16:09, Oleksij Rempel wrote:
>  static int eth_carrier_check(struct eth_device *edev, bool may_wait)
>  {
> +	uint64_t timeout;
> +
>  	if (!IS_ENABLED(CONFIG_PHYLIB))
>  		return 0;
>  
>  	if (!edev->phydev)
>  		return 0;
>  
> +	if (edev->phydev->polling_interval)
> +		timeout = edev->phydev->polling_interval;
> +	else
> +		timeout = 5 * SECOND;

IMO, you should initialize edev->phydev->polling_interval in phy_device_create(),
so phydev->polling_interval always has a valid value.

Cheers,
Ahmad


> +
>  	if (!edev->last_link_check ||
> -	    is_timeout(edev->last_link_check, 5 * SECOND))
> +	    is_timeout(edev->last_link_check, timeout))
>  		eth_carrier_poll_once(edev);
>  
>  	if (may_wait && !edev->phydev->link) {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



