Delivery-date: Fri, 18 Oct 2024 14:03:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1lhv-005sPe-3A
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 14:03:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1lhv-0006Ap-Dn
	for lore@pengutronix.de; Fri, 18 Oct 2024 14:03:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0YVqzBBlbhCZh43ZjwPnNNIw5fiFhDF2hndBhDa3cSw=; b=iLcNz3Na8Zq7ECe01Dsuh1Zin5
	JFoNUR/RtGmtpOXVMLjve6zM89XG+YQWtpXMfZSKlvJKSGuezeah1k6N4xdSuMGsercWrpsJelb4l
	HAaevuF5cV16/SljQgQIJm+rL7rXBxhQRjvos//fcWxv5c/c+wpesxRKSpR/PtUtoZTOJ5jf3WCZ/
	MimC2Ya1OEyMCjfwAUMGPhYjEzzGZLy+7GtJu09/TmCoTTE45r9SwX6vZasWN+MF1woymKLotZHJL
	DawYDpi179LiXCko8r2SmyNcWiKeXmgdawRHm4B1I1ADg5DClBmsouAtlzsfrGGDCyjwXqWBSMdFz
	x5Q+TMPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1lhI-00000000hdw-2tTX;
	Fri, 18 Oct 2024 12:03:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1lhF-00000000hd0-1wSd
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 12:03:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t1lhA-0005yx-RD; Fri, 18 Oct 2024 14:03:04 +0200
Message-ID: <f78f7491-de44-44ff-aca4-5f9a02d0fc98@pengutronix.de>
Date: Fri, 18 Oct 2024 14:03:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: abdelrahmanyossef12@gmail.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20241018-errors_fixes-v2-0-7f49d5a0087b@gmail.com>
 <20241018-errors_fixes-v2-1-7f49d5a0087b@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241018-errors_fixes-v2-1-7f49d5a0087b@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_050309_533291_3E09F646 
X-CRM114-Status: GOOD (  14.84  )
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
Subject: Re: [PATCH v2 1/2] include: Include <linux/math.h> to resolve
 implicit declaration of do_div()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Abdelrahman,

On 18.10.24 13:45, Abdelrahman Youssef via B4 Relay wrote:
> From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> 
> I was testing barebox with randconfig, so I got a warning (treated as an error) : implicit declaration of do_div().
> So <linux/math.h> needs to included.
> 
> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>

If there's no changes to v1, there no need to resend.

Cheers,
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


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


