Delivery-date: Fri, 09 Dec 2022 10:21:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3ZZJ-00FuAw-RP
	for lore@lore.pengutronix.de; Fri, 09 Dec 2022 10:21:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p3ZZI-0005O2-So
	for lore@pengutronix.de; Fri, 09 Dec 2022 10:21:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qO6k6aeJP0I5QxLYKhsSI+Nf+4dSn+fWQ496XHbYn/8=; b=nwaa83vG2+bsUkMD5aJLlRLCIv
	bomxLtqIHpyJ4cYMG/G7/3gPcQjEgXlzXNeYIUrozqatYBSokUtFW4Wi0RdW/v+Bqjg6C7VynLTUK
	SBnip8bQ8IWI7x+LDEaK3iglHPIrWW3/P3gCFr1vEHbDbegtodZJIk78xg990DO7CBqgMpZATDuBL
	DzuPpw0ESk1bq++m52Mar46A3a7nD7PdUXI3BOLsBMHIjsCCX+mSiWZbPZDU9wlptAkC2W32F1OKN
	pkNx0TWny3Mt73eCVJmoxNCwlXxxtVvvTeR9yJaPH64UIgQWc4AuyKL/Gb9jGP/deFxj63wNvuWIN
	adWS4jhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3ZY7-006AM8-F9; Fri, 09 Dec 2022 09:20:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3ZY2-006AL0-I3
	for barebox@lists.infradead.org; Fri, 09 Dec 2022 09:20:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p3ZXz-0004zV-JQ; Fri, 09 Dec 2022 10:19:59 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p3ZXz-0001ab-Bs; Fri, 09 Dec 2022 10:19:59 +0100
Date: Fri, 9 Dec 2022 10:19:59 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221209091959.yuhljzmieofxm2zr@pengutronix.de>
References: <20221209071002.3765134-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221209071002.3765134-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221209_012002_616729_BBF812CC 
X-CRM114-Status: GOOD (  16.11  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] driver: support Linux device/driver OF struct member
 names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-12-09, Ahmad Fatoum wrote:
> When porting drivers from Linux, one of the modifications that needs to
> be done is to rename all .of_node to .device_node and of_match_table
> to of_compatible. Just accept both names. It comes at no extra cost.
> 
> Once all barebox drivers use the Linux naming, we could drop the union
> again.

Nice :)

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  include/driver.h | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/include/driver.h b/include/driver.h
> index 2386949c312a..1c50b79886c1 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -74,7 +74,10 @@ struct device_d {
>  	struct list_head cdevs;
>  
>  	const struct platform_device_id *id_entry;
> -	struct device_node *device_node;
> +	union {
> +		struct device_node *device_node;
> +		struct device_node *of_node;
> +	};
>  
>  	const struct of_device_id *of_id_entry;
>  
> @@ -113,7 +116,10 @@ struct driver_d {
>  	struct bus_type *bus;
>  
>  	const struct platform_device_id *id_table;
> -	const struct of_device_id *of_compatible;
> +	union {
> +		const struct of_device_id *of_compatible;
> +		const struct of_device_id *of_match_table;
> +	};
>  };
>  
>  /*@}*/	/* do not delete, doxygen relevant */
> -- 
> 2.30.2
> 
> 
> 


