Delivery-date: Wed, 29 May 2024 12:30:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCGa2-0019BU-2R
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 12:30:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCGa2-0005PC-2C
	for lore@pengutronix.de; Wed, 29 May 2024 12:30:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dGhqmLZXuPboWcmqQSx2ROwu+FEoYaajYJpQ3+fdm6g=; b=oPCvciGkXsxGESecOxnoSSrqu4
	nDhSdZes93TUup7vl45Ixjgp+pjOdLTPhfstvYD9xznTGDkUpbiSbvSMrCF8isU8Vk/OLqy85q31k
	KO6ishXo4DmAj2otQKUGXWCGF4XB1ZbWQ9U3jxyQLTcJJy65+sX9bHXj8vovL8Oswg3Eov/LmIu69
	WmFu6Z4z0JEtwwmA7ylyAotHEC+8lVMcffZfDO4U7lKqctMovo/tIu17XyHKCXDjQ0xDhj60FMgTO
	grFILnVT0Jd4I7WPemuuvh/tuBN9mci9qJDmfwR/0SxFfnLTqmSPGW5PIOG3EBTTfDO45fJTO4Zpc
	cJ3QK7hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCGZa-00000003oIG-3lH5;
	Wed, 29 May 2024 10:30:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCGZX-00000003oGe-2gyh
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 10:30:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sCGZV-00058C-2y; Wed, 29 May 2024 12:30:17 +0200
Message-ID: <f654f2dc-2741-4e7e-92fe-e22fdef46ef2@pengutronix.de>
Date: Wed, 29 May 2024 12:30:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20240529093308.502072-1-o.rempel@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240529093308.502072-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_033019_716170_25449008 
X-CRM114-Status: GOOD (  17.81  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] of: add sanity check for machine compatible string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 29.05.24 11:33, Oleksij Rempel wrote:
> Add a sanity check in of_get_machine_compatible to ensure we fall back
> to the default hostname "barebox" when the machine compatible string is
> empty. This prevents scenarios where no hostname is set, which can occur
> when starting an STM32 version of Barebox as a second stage on top of
> Barebox prior to commit 1da26bfb9da2 ("common: don't fixup empty serial/
> machine_compatible strings"). This fallback makes debugging easier in
> case someone faces a similar issue.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/of/base.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 2213165fd7..62d84786ae 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -3416,7 +3416,7 @@ const char *of_get_machine_compatible(void)
>  		return NULL;
>  
>  	p = strchr(name, ',');
> -	return p ? p + 1 : name;
> +	return nonempty(p ? p + 1 : name);

An alternative would be return `p ? p + 1 : nonempty(name);`, but that's
not really more readable, so the current change is alright.

Thanks!
Ahmad

>  }
>  EXPORT_SYMBOL(of_get_machine_compatible);
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



