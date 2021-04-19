Delivery-date: Mon, 19 Apr 2021 09:17:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYOAD-0006AI-4E
	for lore@lore.pengutronix.de; Mon, 19 Apr 2021 09:17:45 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYOAC-0007PG-9e
	for lore@pengutronix.de; Mon, 19 Apr 2021 09:17:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vpeC/yGcJZNI8/GP9a97vLJrZZds6+aBbQTgquK4AAA=; b=iDruLtpSDmZPeFO+GqDzZCTgl
	WwzDRqUOp9zp1mnu6GtpGWQ9Fi1pI3lvF+FFsDonOQs4eg8R3wh8T1o2CW85/z7CgSbqhqpFBXmDV
	q6Bzv30gWi8emDJdBUzmhEuQOfsKUf4H0xeROIypKDaftgrOTpARzd/4E3P5ChKzRfl0boaIwzKIA
	pWtZ1k9Iy48wWI832kNO/Wz36Eq6MJqBnZl/RL34jnUfZlR0AXpXheFvcewGGqCjA1PTQu4Lz/Dgt
	mOwU8mOScdZ2FcKrVYDgv0o3mRhPtLpivl8XfCuHIDPMY1DpFBr5kBqkGoawWrCGao+dNce20q9rW
	qmvKlYCiQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYO9F-009JJw-At; Mon, 19 Apr 2021 07:16:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYO92-009JGW-QG
 for barebox@desiato.infradead.org; Mon, 19 Apr 2021 07:16:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=KBgUnU6vLUZ9jR5T6AUVw2AnnKeaPLKAm/ohvLEF9IE=; b=OxIVscB4F5NWwoLmJdajwjXDiI
 65IaOg/QFkNIR1Ly2TFffNpZ2/S4kqF+gsjHCE0/d/EjOYHPgrriqJ1HBfqB7njHwZyel5hmq68zJ
 3MHv+JENRG7ptt7inLnXlGxJE3ZSGoZFKJLtCthqTyP/cJPvjZLYI01uwPz58/fc+Al66wettjdY4
 jpoT6DJ6E9L5MOCYo1wXdAfEJqCOfBF1MKNoMSHjQxoNbeodFpZ6gsGgcanqdd9Z8R+U7kOrtRjZq
 +xjhnO183WxWF8PhejbW5Z07c3OFytXCQKP5++Glsf7HRz0ja2LpluY8U5PbMZDN+7mpOCEAvc7dh
 zCrpFhmg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYO8x-00B7Fj-IV
 for barebox@lists.infradead.org; Mon, 19 Apr 2021 07:16:31 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lYO8w-0007Hi-8f; Mon, 19 Apr 2021 09:16:26 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
 <20210416094943.3648-10-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fe03da71-5ff0-b09c-62bd-75b4d2ebfde5@pengutronix.de>
Date: Mon, 19 Apr 2021 09:16:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210416094943.3648-10-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210419_001627_640470_99192B36 
X-CRM114-Status: GOOD (  18.21  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/17] common: add initial barebox deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 16.04.21 11:49, Sascha Hauer wrote:
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index f60533c59e..ea23884624 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -21,6 +21,7 @@
>  
>  #include <common.h>
>  #include <command.h>
> +#include <deep-probe.h>
>  #include <driver.h>
>  #include <malloc.h>
>  #include <console.h>
> @@ -95,7 +96,15 @@ int device_probe(struct device_d *dev)
>  	if (ret == -EPROBE_DEFER) {
>  		list_del(&dev->active);
>  		list_add(&dev->active, &deferred);
> -		dev_dbg(dev, "probe deferred\n");
> +
> +		/*
> +		 * -EPROBE_DEFER should never appear on a deep-probe machine so
> +		 * inform the user immediately.
> +		 */
> +		if (deep_probe_is_supported())
> +			dev_warn(dev, "probe deferred\n");

Such devices wouldn't ever be retried with deep probe, right?
If so, this should be a dev_err, not dev_warn, as it's not a recoverable
issue.

> +		else
> +			dev_dbg(dev, "probe deferred\n");
>  		return ret;
>  	}

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

