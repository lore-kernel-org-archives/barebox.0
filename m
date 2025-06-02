Delivery-date: Mon, 02 Jun 2025 11:47:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1ld-002ukx-2R
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 11:47:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1ld-0000j3-5f
	for lore@pengutronix.de; Mon, 02 Jun 2025 11:47:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7ezUvjTwoJbs378znwgiPGiUyDpzUBzzF7HmLi6PZCA=; b=ZxZcm55e6iZyg1/WJlyBAArQ0W
	2YudLCe1XZWhEVQyZ3IyOSn077/bawZNc8hx9NQi7N7fBt5uXg8oPTDnYcqPAXv4wmIhk0BgFDY6M
	Dx4aVqLwqki6GNqfwswdllAWpfL5tqx0AvRWXXuLKJvxVHKs22MXXATwhROMppVp31e+CE/PbU4CD
	AZNJVHoG085iAOYJ8ttgN/lyfCrshklsFR+EktcgGe3SmdTxdXicHAjYnxac1KLkWg3RvoXHOkkDk
	Mggfn8DKUXLIEfvfab5HqQegwllAqD5Un4i9WkJghyv2QlwMRTBnMlMTjJwZJcHxQ4/Kmg097h4wd
	p09m8Ibw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1lC-000000076mV-2QEU;
	Mon, 02 Jun 2025 09:47:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1lA-000000076lH-00r9
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 09:47:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uM1l8-0000Y1-NX; Mon, 02 Jun 2025 11:47:10 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM1l8-001QsX-1l;
	Mon, 02 Jun 2025 11:47:10 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM1l8-006awC-1P;
	Mon, 02 Jun 2025 11:47:10 +0200
Date: Mon, 2 Jun 2025 11:47:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aD1zHoTyc3epHgcI@pengutronix.de>
References: <20250530114106.1009454-1-o.rempel@pengutronix.de>
 <20250530114106.1009454-5-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250530114106.1009454-5-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_024712_046422_F02893D6 
X-CRM114-Status: GOOD (  25.95  )
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
X-Spam-Status: No, score=-1.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 4/7] regmap: Add reg_seal operation for hardware
 protection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, May 30, 2025 at 01:41:03PM +0200, Oleksij Rempel wrote:
> Add a new 'reg_seal' operation to the regmap bus interface, along
> with a public API `regmap_seal()`. This is needed for drivers that
> must perform hardware-level "sealing" or permanent write-protection
> on registers/words, a capability not covered by standard regmap
> read/write ops.
> 
> The initial use case is for the STM32 BSEC driver (coming in a
> follow-up patch) to lock One-Time Programmable (OTP) memory words.
> This gives explicit control to make OTP entries permanently read-only
> after programming.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/base/regmap/internal.h |  2 ++
>  drivers/base/regmap/regmap.c   | 31 +++++++++++++++++++++++++++++++
>  include/linux/regmap.h         | 33 +++++++++++++++++++++++++++++++++
>  3 files changed, 66 insertions(+)
> 
> diff --git a/drivers/base/regmap/internal.h b/drivers/base/regmap/internal.h
> index 6f6a34edc7a8..f2b95cc6361e 100644
> --- a/drivers/base/regmap/internal.h
> +++ b/drivers/base/regmap/internal.h
> @@ -39,6 +39,8 @@ struct regmap {
>  			unsigned int *val);
>  	int (*reg_write)(void *context, unsigned int reg,
>  			 unsigned int val);
> +	int (*reg_seal)(void *context, unsigned int reg,
> +			unsigned int flags);
>  };
>  
>  struct regmap_field {
> diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
> index 777636c0b319..dc65b9e965ce 100644
> --- a/drivers/base/regmap/regmap.c
> +++ b/drivers/base/regmap/regmap.c
> @@ -81,6 +81,17 @@ static int _regmap_bus_reg_write(void *context, unsigned int reg,
>  	return map->bus->reg_write(map->bus_context, reg, val);
>  }
>  
> +static int _regmap_bus_reg_seal(void *context, unsigned int reg,
> +				unsigned int flags)
> +{
> +	struct regmap *map = context;
> +
> +	if (!map->bus->reg_seal)
> +		return -EOPNOTSUPP;
> +
> +	return map->bus->reg_seal(map->bus_context, reg, flags);
> +}
> +
>  /*
>   * regmap_init - initialize and register a regmap
>   *
> @@ -124,6 +135,9 @@ struct regmap *regmap_init(struct device *dev,
>  		}
>  	}
>  
> +	if (!map->reg_seal)
> +		map->reg_seal = _regmap_bus_reg_seal;

map was just xzalloced, so this check seems unnecessary.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


