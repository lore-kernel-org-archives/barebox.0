Delivery-date: Mon, 22 May 2023 13:31:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q13kv-009af4-Sd
	for lore@lore.pengutronix.de; Mon, 22 May 2023 13:31:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q13kt-0002y1-9d
	for lore@pengutronix.de; Mon, 22 May 2023 13:31:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o6qJpuhTMHaIiRHr/myfMrFUMH56uteCjjX/QLRI1nI=; b=VQTsBf6oC2/LDbxD7bRPSAjpdv
	0wU5GjntCPpXXi33KdqR5JFtvrfjVAz7kD7yGVngezr9WRek/+YeG01Zyh9HXVjJ67A5dj3ZkZZ41
	xefEqOvHNoZtHSB/CEotOfheS6CUYffCMKXHxHekSXFSxETFbV7Ckql0pfLGaUUtbIZc/Q/yNO3GD
	wkX/xwbDsQq1EazsnOCTaXHrV5jonv159pWrWu+R5UU1t09P4SeLbbWHiG+Vd95sWjKfHcX32wEsz
	8wvu0zWeZKOOiIHSD/8FBwFbOywxfA4vAGexG6a26NgsqyfjI4byDczLb8WZZDSoz9tJw1rbbGbon
	XSwJWa6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q13jp-006GHu-1M;
	Mon, 22 May 2023 11:30:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q13jk-006GGh-1O
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 11:30:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q13jj-0002Rg-5v; Mon, 22 May 2023 13:29:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q13ji-0004YM-7s; Mon, 22 May 2023 13:29:58 +0200
Date: Mon, 22 May 2023 13:29:58 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230522112958.GN29365@pengutronix.de>
References: <20230519071939.2304443-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230519071939.2304443-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_043000_468724_DDB3B807 
X-CRM114-Status: GOOD (  24.15  )
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
Subject: Re: [PATCH] fixup! of: add function to read a file as unflattened
 device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 19, 2023 at 09:19:39AM +0200, Ahmad Fatoum wrote:
> of: tidy up of_read_file a bit
> 
>  - change a single instance of space indentation to tabs
>  - use %m instead of unwieldy strerror(errno)
>  - add documentation
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 918d5e0c5348..5da188115547 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2893,6 +2893,12 @@ int of_device_disable_by_alias(const char *alias)
>  	return of_device_disable(node);
>  }
>  
> +/**
> + * of_read_file - unflatten oftree file
> + * @filename - path to file to unflatten its contents
> + *
> + * Returns the root node of the tree or an error pointer on error.
> + */
>  struct device_node *of_read_file(const char *filename)
>  {
>  	void *fdt;
> @@ -2901,8 +2907,7 @@ struct device_node *of_read_file(const char *filename)
>  
>  	fdt = read_file(filename, &size);
>  	if (!fdt) {
> -		pr_err("unable to read %s: %s\n", filename,
> -			strerror(errno));
> +		pr_err("unable to read %s: %m\n", filename);
>  		return ERR_PTR(-errno);
>  	}
>  
> @@ -2916,7 +2921,7 @@ struct device_node *of_read_file(const char *filename)
>  out:
>  	free(fdt);
>  
> -       return root;
> +	return root;
>  }
>  
>  /**
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


