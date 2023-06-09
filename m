Delivery-date: Fri, 09 Jun 2023 08:46:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VtG-00GqbU-5I
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 08:46:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VtD-00041a-PB
	for lore@pengutronix.de; Fri, 09 Jun 2023 08:46:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y05tPT8eVt2n6DoMi5wC2Qo2kIFvTaV+dXjFScPtzGI=; b=jhBR+BvINhVg9CiXukoZKZg3Zw
	P5Ilb/tr35pZcOAVO6tyI9PsOeRBHLtpeDpSeGrBLR//rUV8Zbh8rH7LdTSHPPUmaZ+0TKO1PvEeH
	dkxfw3Jjfm6+0NdPo0rMtZG1axAnpfRzar2XwK8TUqlDfJ0ODhM8Iv1pqUnGuj7j9hZGWrHe0+uS5
	zAg7Ks5hZGvrdeE1FdZNCqM6muBJ8PDhcIKM6meUBURP560A0XSlwDboNS1g+aIpAz0Vs+HuEU/Fb
	WznQHluvBWSzi5UGOFEkgG4Oh0mycKk7/N7vgL/31uRSzZ4GmnHmSBEsj5TgIey9uKMIX61+Afc2F
	35/lV8XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7VsG-00BwMY-2b;
	Fri, 09 Jun 2023 06:45:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7VsE-00BwLW-0F
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 06:45:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7VsC-0003oB-RQ; Fri, 09 Jun 2023 08:45:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7VsC-0008PQ-Jx; Fri, 09 Jun 2023 08:45:24 +0200
Date: Fri, 9 Jun 2023 08:45:24 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230609064524.GQ18491@pengutronix.de>
References: <20230608072400.3275489-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230608072400.3275489-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_234526_112837_2A8703DC 
X-CRM114-Status: GOOD (  20.78  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] include: move PATH_MAX from fs.h to linux/limits.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 08, 2023 at 09:24:00AM +0200, Ahmad Fatoum wrote:
> Linux defines PATH_MAX in <linux/limits.h> and code that just wants
> PATH_MAX to format a path may not be interested in all the other stuff
> defined in fs.h. Thus move PATH_MAX to <linux/limits.h> instead.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/fs.h           | 3 +--
>  include/linux/limits.h | 2 ++
>  2 files changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/fs.h b/include/fs.h
> index c64e78b38cf9..a61982e59ade 100644
> --- a/include/fs.h
> +++ b/include/fs.h
> @@ -12,8 +12,7 @@
>  #include <filetype.h>
>  #include <linux/fs.h>
>  #include <linux/string.h>
> -
> -#define PATH_MAX       1024        /* include/linux/limits.h */
> +#include <linux/limits.h>
>  
>  struct partition;
>  struct node_d;
> diff --git a/include/linux/limits.h b/include/linux/limits.h
> index 17375ef5225e..8baf8494943e 100644
> --- a/include/linux/limits.h
> +++ b/include/linux/limits.h
> @@ -35,4 +35,6 @@
>  #define S64_MAX		((s64)(U64_MAX >> 1))
>  #define S64_MIN		((s64)(-S64_MAX - 1))
>  
> +#define PATH_MAX       1024
> +
>  #endif /* _LINUX_LIMITS_H */
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


