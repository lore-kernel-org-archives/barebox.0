Delivery-date: Thu, 22 Dec 2022 16:52:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Nrc-0055CO-VQ
	for lore@lore.pengutronix.de; Thu, 22 Dec 2022 16:52:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Nra-0001eE-L6
	for lore@pengutronix.de; Thu, 22 Dec 2022 16:52:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i8xE80wShiqxXIKEzu07jt+ZbvgTk4Xe3NI8zCzE92k=; b=um0UeuxJfxHAjpIo+y60jMkViV
	fOVXklr/rK2z9+7LL3uHHHVf1BXwMNbwqjdVR/MwnBHBNhEGyRARHBaERtg6lAYpigTM/ugNLsRCL
	Pc7bWtNAiqoPAKCPEmC1zbmKKEeDbOH2nB5IbUVyy3p3yBLcVE5V6tKUfLsZfN+q6+DPl2ZLd71mE
	qsfC+7H/DJsbJ0JxgUPydFP6+KRvdQ+8oeeLWz+L4Cw3wvZVHO7FPNxG8shNpHVuoZh6lvuZWyR0y
	Xmor+x4m1jLcxeqL9CltNgqM0FWmgm7uXF9NpPIukzQD9UNF+/rxNd2xpktjtJ6lrG9CQi8SaH8sz
	2jLP2czg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Nq8-00Di4m-93; Thu, 22 Dec 2022 15:50:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Nnn-00Dh1R-J5
	for barebox@lists.infradead.org; Thu, 22 Dec 2022 15:48:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p8Nnc-00018E-3r; Thu, 22 Dec 2022 16:48:00 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p8Nnb-0001GH-SQ; Thu, 22 Dec 2022 16:47:59 +0100
Date: Thu, 22 Dec 2022 16:47:59 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221222154759.d77lmqb5z7ykgprz@pengutronix.de>
References: <20221222143513.3182725-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221222143513.3182725-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_074811_702864_C56B0E79 
X-CRM114-Status: GOOD (  16.53  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: deep-probe: write deep probe enabled message to
 log
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahamd,

thanks for your patch.

On 22-12-22, Ahmad Fatoum wrote:
> The "Deep probe supported due to" was not written to log and thus only
> shown on startup and not in dmesg output. Make it available in both.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/deep-probe.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/common/deep-probe.c b/common/deep-probe.c
> index 1020ad93b7f7..931e5a17709d 100644
> --- a/common/deep-probe.c
> +++ b/common/deep-probe.c
> @@ -1,5 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  
> +#define pr_fmt(fmt) "deep-probe: " fmt
> +
>  #include <common.h>
>  #include <deep-probe.h>
>  #include <of.h>
> @@ -27,7 +29,7 @@ bool deep_probe_is_supported(void)
>  		for (; matches->compatible; matches++) {
>  			if (of_machine_is_compatible(matches->compatible)) {
>  				boardstate = DEEP_PROBE_SUPPORTED;
> -				printk("Deep probe supported due to %s\n", matches->compatible);
> +				pr_info("supported due to %s\n", matches->compatible);

What do you think, should we move it to pr_debug()? The feature is now
more robust and usual this information is only required for developers
not for users.

Regards,
  Marco

>  				return true;
>  			}
>  		}
> -- 
> 2.30.2
> 
> 
> 


