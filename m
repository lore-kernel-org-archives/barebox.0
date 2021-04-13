Delivery-date: Tue, 13 Apr 2021 07:17:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWBQz-0006r4-GN
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 07:17:57 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWBQy-0005Ef-CO
	for lore@pengutronix.de; Tue, 13 Apr 2021 07:17:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FQAyaKBt6WIerpyje0urS+GyGaa01+Th4Mj9ijefbLs=; b=N5qHU6i9vmE7LmT3qW0WVZfqh
	OUQRJ8FK5Q7kdXkrHx8WXAn8gY+sMxc888oyJdM4QnoDNTx37nQYBDgFwOLLD1qdgmmXijTW2TUaN
	iNnXrj6R5f3GP6S6T622WRmOPNq9m8LCEIh1G9n0OBD6Qryw5WzfvlxQw5WY3C2+NDTT98EQnnMdM
	zhWr3vYlcoUW7IgBd/Q4zOwGEr+qHFgH6rTimOJJpRS1Waq23MJNlhvJLygfJhkbiLmper6nln84x
	xBPgzWcnQwMPCm45yN8/l2xu6uQNQJmat2NtcV+KWTfvHA2XajMD3dGhITOm0oKfT96Y89do9Rnx8
	FWWSsMMyQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWBPW-008HrX-4d; Tue, 13 Apr 2021 05:16:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWBPO-008Hqy-Bg
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 05:16:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jPaD7rusuJaPyqJddm4h/S8R9MinIJEDzbuLy3lYSRo=; b=Fp6Nr6hG6ZLXCD8z02xynksAbW
 D6jz8k9WUTVnrCZEIH1Awu1VKmFuNWoa++EwEB0Kh/YGzP4uZArz8J3YsnwQcuemsbnykMLaBuQF2
 s0/o7jkC89lbzZfLEKkHYV/jfmnN2Bo4MwWtb3p8tVsaV6OLxptTnNIkTEMnzukLtnihWMmZ9FK6z
 EmuiXIFW4Z17TRoZz4DDavcGzAd75kT2ahZWM5+WVR8IutCj6LwHVFlkOFrrWpgKrtBUR0L0SSofA
 RrwWO61mH4stlz5Sk1G+fYKiEj1etFx2odVTpEZB+trfn9XcQOvMM1sAu8kcUcmq/q89ulmiEyGNv
 2xo2UV/Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWBPL-006jdj-Kx
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 05:16:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWBPK-00052M-1e; Tue, 13 Apr 2021 07:16:14 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWBPJ-0003w2-O9; Tue, 13 Apr 2021 07:16:13 +0200
Date: Tue, 13 Apr 2021 07:16:13 +0200
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <20210413051613.GG6950@pengutronix.de>
References: <20210409081503.6926-1-bst@pengutronix.de>
 <20210409081503.6926-2-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210409081503.6926-2-bst@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:12:50 up 54 days,  8:36, 79 users,  load average: 0.13, 0.17, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_221615_708442_4190FE79 
X-CRM114-Status: GOOD (  29.04  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] of: introduce global.linux.bootargs_overwrite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 09, 2021 at 10:15:03AM +0200, Bastian Krause wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> By default, barebox overwrites the bootargs in the oftree if it itself
> has any. Make this behavior configurable by adding a new global
> variable. It allows either overwriting the oftree bootargs
> (global.linux.bootargs_overwrite=1) or appending barebox' bootargs to
> the oftree bootargs (global.linux.bootargs_overwrite=0).
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> [bst: dropped a new line removal, extend commit message]
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  common/oftree.c | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/common/oftree.c b/common/oftree.c
> index aaeb199a9e..f3a5d9c5d1 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -16,6 +16,7 @@
>  #include <reset_source.h>
>  #include <watchdog.h>
>  #include <globalvar.h>
> +#include <magicvar.h>
>  
>  #define MAX_LEVEL	32		/* how deeply nested we will go */
>  
> @@ -161,9 +162,14 @@ static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_nod
>  	free(buf);
>  }
>  
> +static int bootargs_overwrite = 1;
> +BAREBOX_MAGICVAR(global.linux.bootargs_overwrite, "overwrite original oftree bootargs");

How about naming it global.linux.bootargs_append instead? It would make
it more clear that we are deviating from the default by setting the
variable to true.

Sascha

> +
>  static int of_write_bootargs(struct device_node *node)
>  {
>  	const char *str;
> +	char *buf = NULL;
> +	int ret;
>  
>  	if (IS_ENABLED(CONFIG_SYSTEMD_OF_WATCHDOG))
>  		watchdog_build_bootargs(boot_get_enabled_watchdog(), of_get_parent(node));
> @@ -176,7 +182,20 @@ static int of_write_bootargs(struct device_node *node)
>  	if (strlen(str) == 0)
>  		return 0;
>  
> -	return of_property_write_string(node, "bootargs", str);
> +	if (!bootargs_overwrite) {
> +		const char *oldstr;
> +
> +		ret = of_property_read_string(node, "bootargs", &oldstr);
> +		if (!ret) {
> +			str = buf = basprintf("%s %s", oldstr, str);
> +			if (!buf)
> +				return -ENOMEM;
> +		}
> +	}
> +
> +	ret = of_property_write_string(node, "bootargs", str);
> +	free(buf);
> +	return ret;
>  }
>  
>  static int of_fixup_bootargs(struct device_node *root, void *unused)
> @@ -218,6 +237,7 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
>  
>  static int of_register_bootargs_fixup(void)
>  {
> +	globalvar_add_simple_bool("linux.bootargs_overwrite", &bootargs_overwrite);
>  	return of_register_fixup(of_fixup_bootargs, NULL);
>  }
>  late_initcall(of_register_bootargs_fixup);
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

