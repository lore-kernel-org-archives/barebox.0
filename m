Delivery-date: Tue, 24 May 2022 10:55:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntQJi-007MLV-Of
	for lore@lore.pengutronix.de; Tue, 24 May 2022 10:55:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntQJh-0007R6-IQ
	for lore@pengutronix.de; Tue, 24 May 2022 10:55:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivHLC6JN34127H3w8tatBbWk6T7CA7aqybEBEsgH7LA=; b=SibujyBIMbm/k6
	xc1aEDcf0C5YzPoQGUrgbLdsltCqPTlrtVeKm+gJKcQuJ7nYlrWnNBClfonnePzIpzFuB4tcPuOK+
	O9TJmwSE2UTVTKav2xIJvJ1aB/UWLokTcHXlqbDpOk0H+pkb8Gw9Ztc8evjbVTvawWwOio647SpN9
	XvzxPz99nfA6t85GnBYx4EuzkF0/MiVlRB6yAjQd3MudZdakjw3pzPlbImrdgB3wWz9Qut/l3SiZr
	/TwpmbwY2rgqsfLRmcpvFoXBsB+t+lMKZQLl6wPCF85fSWnYr3/ZdO3mT6bgMzeEukXfaxImf8Fh2
	HxeJJWmtP5iLhiVJM3Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntQI4-007KLn-0J; Tue, 24 May 2022 08:53:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntQHy-007KKU-Kx
 for barebox@lists.infradead.org; Tue, 24 May 2022 08:53:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ntQHx-0007L2-1O; Tue, 24 May 2022 10:53:13 +0200
Message-ID: <da75544b-8a44-9c0e-f3bc-1bf216523ed2@pengutronix.de>
Date: Tue, 24 May 2022 10:53:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>,
 Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
 <20220519115450.GV25578@pengutronix.de>
 <trinity-e8816284-959b-432a-bb6a-f33a6cd573df-1652964180567@3c-app-gmx-bs49>
 <e0e7cd6c-aa14-a09c-71d2-681842575398@pengutronix.de>
 <20220519131019.GZ25578@pengutronix.de>
 <trinity-58fee77a-48b6-48ff-99a5-8eaa6c480d0b-1653129114535@3c-app-gmx-bs49>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <trinity-58fee77a-48b6-48ff-99a5-8eaa6c480d0b-1653129114535@3c-app-gmx-bs49>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_015314_738064_675ABD41 
X-CRM114-Status: GOOD (  24.13  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Aw: Re: Re: Driver load order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Frank,

On 21.05.22 12:31, Frank Wunderlich wrote:
> Hi,
> 
> current state is that pmu/ldo regulators work, but not the SWITCH ones.
> 
> these are read by linux using the supply of the regulator itself
> 
> 	} else if (rdev->supply) {
> 		ret = regulator_get_voltage_rdev(rdev->supply->rdev);
> 
> tried to port this to barebox, but regulator-struct there does not have the supply member
> 
> 	} else if (rdev->supply) {
> 		ret = regulator_get_voltage(rdev->supply);
> 
> so i added it here:
> 
> +++ b/include/regulator.h
> @@ -86,6 +86,7 @@ struct regulator_dev {
>         struct regmap *regmap;
>         bool boot_on;
>         bool always_on;
> +       struct regulator *supply;

I think this should go into struct regulator_internal instead?
(You'll need to rename the current const char *supply there).

>         /* the device this regulator device belongs to */
>         struct device_d *dev;
> 
> but now this needs to be set somwhere...linux set this in
> 
> set_supply(struct regulator_dev *rdev,
> 		      struct regulator_dev *supply_rdev)
> which is called in regulator_resolve_supply (called by _regulator_get).

Ah, I missed b8074eba2a6b ("regulator: RK808: Add proper input supplies
for rk808"). I recall now that I had ported an older version of the Linux
driver to make porting work easier. 

You should probably add a supply_name member into struct regulator_desc
and then propagate this to core, so core can request it.

Cheers,
Ahmad

> 
> regards Frank
> 
> 
>> Gesendet: Donnerstag, 19. Mai 2022 um 15:10 Uhr
>> Von: "Sascha Hauer" <sha@pengutronix.de>
>> I gave it a test with your rk808 driver. It just works \o/
>>
>> regulator_get() triggers probing of the rk808 regulator driver and
>> returns a valid regulator.
>>
>> Sascha
> 
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

