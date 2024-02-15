Delivery-date: Thu, 15 Feb 2024 13:51:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rabDX-007QqO-02
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 13:51:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rabDW-0004Eq-BA
	for lore@pengutronix.de; Thu, 15 Feb 2024 13:51:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vJDJPmLgy0ZlYLVyIQfVL1Vj0lkvBxlVcWOTf2ziz5U=; b=3i4kKTxx6nb2jbYm9eg9zbPDvP
	JjmOLsMWsOfH9TcqObhgvEEDOTB7rr95grTnP8awdiOIUKrHDNdlTHRwrOghldG1rlMc9Bx2+PySs
	3c+jQ0EgSgn2+yj/q0Ad+BNxdkk9ULfdJHcr9Wp4GdTKZ7GF6dfesRefd3RO/2nzaaj9e3lpMakRp
	x5demy+ZIVXqphca4+zhA6ftag1fh3paGoy/oxbgm3w+jaLD8C9YvPUzEUz7IDphILZaDJFnjQCAS
	5Yji8t4aC2Ecm/Wwg084v5i0umlxbagLSm2FOS2UAHdRPC4KfQv/DbhDOtkBVV+dzOlnjnqUa1l5b
	EMDaSDXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rabD0-0000000GIMN-3yrS;
	Thu, 15 Feb 2024 12:51:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rabCx-0000000GIKu-3ylV
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 12:51:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rabCw-00049g-LW; Thu, 15 Feb 2024 13:51:18 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rabCw-000t6W-8v; Thu, 15 Feb 2024 13:51:18 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rabCw-00A222-0c;
	Thu, 15 Feb 2024 13:51:18 +0100
Date: Thu, 15 Feb 2024 13:51:18 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240215125118.55hi2ftx3k34rufa@pengutronix.de>
References: <20240215074757.960200-1-s.hauer@pengutronix.de>
 <20240215074757.960200-8-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240215074757.960200-8-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_045120_073819_1C0708DD 
X-CRM114-Status: GOOD (  20.15  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 7/7] fastboot: evaluate fastboot partitions when used
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-02-15, Sascha Hauer wrote:
> So far we have evaluated the fastboot partition description during
> initialization of the fastboot gadget. Let's make this more flexible
> and parse it when actually needed.
> This gives us the possibility to first write an image including a
> partition table to a disk and afterwards write an image to a single
> partition created by the first whole disk write.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/fastboot.c | 40 +++++++++++++++++++++++++---------------
>  1 file changed, 25 insertions(+), 15 deletions(-)
> 
> diff --git a/common/fastboot.c b/common/fastboot.c
> index f41c02a576..acf138af8a 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -80,7 +80,7 @@ static struct fb_variable *fb_addvar(struct fastboot *fb, struct list_head *list
>  	return var;
>  }
>  
> -static int fastboot_add_partition_variables(struct fastboot *fb,
> +static int fastboot_add_partition_variables(struct fastboot *fb, struct list_head *list,
>  		struct file_list_entry *fentry)
>  {
>  	struct stat s;
> @@ -152,9 +152,9 @@ static int fastboot_add_partition_variables(struct fastboot *fb,
>  	if (ret)
>  		return ret;
>  
> -	var = fb_addvar(fb, &fb->variables, "partition-size:%s", fentry->name);
> +	var = fb_addvar(fb, list, "partition-size:%s", fentry->name);
>  	fb_setvar(var, "%08zx", size);
> -	var = fb_addvar(fb, &fb->variables, "partition-type:%s", fentry->name);
> +	var = fb_addvar(fb, list, "partition-type:%s", fentry->name);
>  	fb_setvar(var, "%s", type);
>  
>  	return ret;
> @@ -162,8 +162,6 @@ static int fastboot_add_partition_variables(struct fastboot *fb,
>  
>  int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
>  {
> -	int ret;
> -	struct file_list_entry *fentry;
>  	struct fb_variable *var;
>  
>  	INIT_LIST_HEAD(&fb->variables);
> @@ -186,12 +184,6 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
>  	if (export_bbu)
>  		bbu_append_handlers_to_file_list(fb->files);
>  
> -	file_list_for_each_entry(fb->files, fentry) {
> -		ret = fastboot_add_partition_variables(fb, fentry);
> -		if (ret)
> -			return ret;
> -	}
> -
>  	return 0;
>  }
>  
> @@ -305,26 +297,44 @@ static int strcmp_l1(const char *s1, const char *s2)
>  static void cb_getvar(struct fastboot *fb, const char *cmd)
>  {
>  	struct fb_variable *var;
> +	LIST_HEAD(partition_list);
> +	struct file_list_entry *fentry;
> +
> +	file_list_for_each_entry(fb->files, fentry)
> +		fastboot_add_partition_variables(fb, &partition_list, fentry);

Albeit we can ignore it, I would check the return code and print a
warning like:

	file_list_for_each_entry(fb->files, fentry) {
		int ret;

		ret = fastboot_add_partition_variables(fb, &partition_list, fentry);
		if (ret) {
			pr_warn("Failed to add partition variables");
			return;
		}
	}

Regards,
  Marco

>  
>  	pr_debug("getvar: \"%s\"\n", cmd);
>  
>  	if (!strcmp_l1(cmd, "all")) {
> -		list_for_each_entry(var, &fb->variables, list) {
> +		list_for_each_entry(var, &fb->variables, list)
>  			fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "%s: %s",
>  					  var->name, var->value);
> -		}
> +
> +		list_for_each_entry(var, &partition_list, list)
> +			fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "%s: %s",
> +					  var->name, var->value);
> +
>  		fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
> -		return;
> +		goto out;
>  	}
>  
>  	list_for_each_entry(var, &fb->variables, list) {
>  		if (!strcmp(cmd, var->name)) {
>  			fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, var->value);
> -			return;
> +			goto out;
> +		}
> +	}
> +
> +	list_for_each_entry(var, &partition_list, list) {
> +		if (!strcmp(cmd, var->name)) {
> +			fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, var->value);
> +			goto out;
>  		}
>  	}
>  
>  	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
> +out:
> +	fastboot_free_variables(&partition_list);
>  }
>  
>  int fastboot_handle_download_data(struct fastboot *fb, const void *buffer,
> -- 
> 2.39.2
> 
> 
> 


