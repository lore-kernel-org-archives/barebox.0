Delivery-date: Thu, 17 Oct 2024 08:03:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1Jc4-005MUU-2h
	for lore@lore.pengutronix.de;
	Thu, 17 Oct 2024 08:03:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1Jc0-0004pl-Im
	for lore@pengutronix.de; Thu, 17 Oct 2024 08:03:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qpfe0RlvScFrgy+nvtRp4JomcCJCD67UUrNiNNYMP+k=; b=SqMWHRNCxeNIt4lqMu/FwYqCHF
	4cNtJw0a6NE6X2VlMjljKgapDRVBuloQpx1Z5XC66m0IHMOmYiOO0U0peYEYRb2q6DZD0MjfcKwOM
	+znlwBzrp81vfHLvZTXbSPvc73Z7jGTvFTZDTnYNxb0POq4h28t51/aCaGCllZChOp3NxIbASrH8V
	9eB/JOm6X7kaAmv7qM8jrWsIwfBauscKz8lln5SlLo6IAK5tHsDSjVU9HC1NA/ak20e6D6I/z74zT
	CzZwG97LPUz0ukaacohTZbQVICaf8AMyoA+NXzdSHxsgNfhaVzN775aZLpQmYtcypmj1u82B7XPYb
	F2GAIRBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Jb4-0000000DpfD-297t;
	Thu, 17 Oct 2024 06:02:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Jay-0000000Dpeb-3Fim
	for barebox@lists.infradead.org;
	Thu, 17 Oct 2024 06:02:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t1Jav-0004bQ-ET; Thu, 17 Oct 2024 08:02:45 +0200
Message-ID: <1f7282d1-4122-4a9f-bf87-b535bb69e81b@pengutronix.de>
Date: Thu, 17 Oct 2024 08:02:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: abdelrahmanyossef12@gmail.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>, a.fatoum@barebox.org
References: <20241017-errors_fixes-v1-1-4c4d1a2c124d@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241017-errors_fixes-v1-1-4c4d1a2c124d@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_230248_851099_955649B8 
X-CRM114-Status: GOOD (  13.97  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: Include <linux/math.h> to resolve implicit
 declaration of do_div()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 17.10.24 01:47, Abdelrahman Youssef via B4 Relay wrote:
> From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> 
> I was testing barebox with randconfig, so I got a warning (treated as an error) : implicit declaration of do_div().
> So <linux/math.h> needs to included.
> 
> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  include/linux/ktime.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/ktime.h b/include/linux/ktime.h
> index ea368b8802..2b9a91d540 100644
> --- a/include/linux/ktime.h
> +++ b/include/linux/ktime.h
> @@ -21,6 +21,7 @@
>  #ifndef _LINUX_KTIME_H
>  #define _LINUX_KTIME_H
>  
> +#include <linux/math.h>
>  #include <linux/time.h>
>  #include <clock.h>
>  #include <linux/bug.h>
> 
> ---
> base-commit: 9d47ff66c3892c5a6ddd4704993365a797fbeb68
> change-id: 20241017-errors_fixes-81248755b864
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


