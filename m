Delivery-date: Tue, 08 Mar 2022 09:14:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRUzc-004R5S-Mp
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 09:14:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRUza-0001MW-Tc
	for lore@pengutronix.de; Tue, 08 Mar 2022 09:14:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Inhl6joZA/JyrNtMd+PJ/YTB9HdA6xUXNjEZcQpHS4E=; b=U+KUl3DpnNvZVcmsNCFfYYnoe/
	0jBs2nMUtEOsOTJDXY//DimQAhyBhWHXX7APXNL7Q1dhCSvUyqAuGZfX9x/jZpMvJvzLeZzvmyTP8
	JGXFnXx3qM9MyVNRN4rfE4I96uJrROl8WZpUmWf/MY99R3LHHatQI7QqpBWupjLoVaJ/DEmfHu6lI
	XYh4w0l+T7XjvrrApEanA43uEjK2BW/PRxX8oWldjxsp/EyrhFNVvFF0QObRQjDdCvEcyaqnOLiM2
	gw2F3/7XqvZ1TxuM1YvUfpAIjnIv7StXk0YBrxhFlWZeOOgQyMmZKLg8Ks8j3mGfQ8Z2ZQtm3543L
	1ztUfJ2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRUxn-003BbL-Cd; Tue, 08 Mar 2022 08:12:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRUwt-003BE2-Ty
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 08:12:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRUwq-000101-2X; Tue, 08 Mar 2022 09:12:00 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRUwp-00043a-QH; Tue, 08 Mar 2022 09:11:59 +0100
Date: Tue, 8 Mar 2022 09:11:59 +0100
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220308081159.GE405@pengutronix.de>
References: <20220304062412.1248657-1-r.czerwinski@pengutronix.de>
 <20220304062412.1248657-4-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220304062412.1248657-4-r.czerwinski@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:10:55 up 87 days, 16:56, 80 users,  load average: 0.44, 0.24, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_001204_015282_BD6CED40 
X-CRM114-Status: GOOD (  32.11  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC Patch 3/3] blspec: allow setting compatible depth
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 04, 2022 at 07:24:13AM +0100, Rouven Czerwinski wrote:
> In some cases its desirable to not only evaluate the first compatible of
> the barebox device tree against the bootspec device tree, but following
> compatibles as well. This is the case if fallback needs to be
> implemented for older device trees which use a different compatible.
> Allow setting the compatible depth by board code.

I had a chat with Rouven yesterday. We agreed to allow to specifiy
additional compatible strings rather than specifying a depth. He will
send a v2 soon.

Sascha

> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  common/blspec.c  | 99 +++++++++++++++++++++++++++++++-----------------
>  include/blspec.h |  2 +-
>  2 files changed, 65 insertions(+), 36 deletions(-)
> 
> diff --git a/common/blspec.c b/common/blspec.c
> index c1b1991338..4713a2157f 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -22,6 +22,8 @@
>  #include <linux/err.h>
>  #include <mtd/ubi-user.h>
>  
> +static unsigned int compatible_depth = 1;
> +
>  /*
>   * blspec_entry_var_set - set a variable to a value
>   */
> @@ -32,6 +34,11 @@ int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
>  			val ? strlen(val) + 1 : 0, 1);
>  }
>  
> +void blspec_set_compatible_depth(unsigned int depth)
> +{
> +	compatible_depth = depth;
> +}
> +
>  static int blspec_overlay_fixup(struct device_node *root, void *ctx)
>  {
>  	struct blspec_entry *entry = ctx;
> @@ -542,6 +549,10 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
>  	struct list_head entry_list;
>  	struct blspec_list_entry *lentry;
>  	struct blspec_list_entry *temp;
> +	struct device_node *barebox_root;
> +	struct property *prop;
> +	const char *compat;
> +	int depth;
>  
>  	INIT_LIST_HEAD(&entry_list);
>  
> @@ -611,51 +622,69 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
>  		lentry->entry = entry;
>  		lentry->name = d->d_name;
>  
> -		list_add_sort(&entry_list, &lentry->list, compare);
> +		list_add_sort(&lentry->list, &entry_list, compare);
>  	}
>  
> -	list_for_each_entry_safe(lentry, temp, &entry_list, list) {
> -		char *devname = NULL, *hwdevname = NULL;
> +	barebox_root = of_get_root_node();
>  
> -		entry = lentry->entry;
> +	prop = of_find_property(barebox_root, "compatible", NULL);
>  
> -		if (!entry_is_of_compatible(entry, of_get_machine_compatible())) {
> -			blspec_entry_free(&entry->entry);
> -			list_del(&lentry->list);
> -			free(lentry);
> -			continue;
> -		}
> +	compat = of_prop_next_string(prop, NULL);
> +	depth = compatible_depth;
> +	do {
> +		list_for_each_entry_safe(lentry, temp, &entry_list, list) {
> +			char *devname = NULL, *hwdevname = NULL;
>  
> -		if (!entry_is_match_machine_id(entry)) {
> -			blspec_entry_free(&entry->entry);
> -			list_del(&lentry->list);
> -			free(lentry);
> -			continue;
> -		}
> +			entry = lentry->entry;
>  
> -		found++;
> +			if (!entry_is_of_compatible(entry, compat)) {
> +				if (depth == 1) {
> +					blspec_entry_free(&entry->entry);
> +					list_del(&lentry->list);
> +					free(lentry);
> +				}
> +				continue;
> +			}
>  
> -		if (entry->cdev && entry->cdev->dev) {
> -			devname = xstrdup(dev_name(entry->cdev->dev));
> -			if (entry->cdev->dev->parent)
> -				hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
> -		}
> +			if (!entry_is_match_machine_id(entry)) {
> +				if (depth == 1) {
> +					blspec_entry_free(&entry->entry);
> +					list_del(&lentry->list);
> +					free(lentry);
> +				}
> +				continue;
> +			}
>  
> -		entry->entry.title = xasprintf("%s (%s)", blspec_entry_var_get(entry, "title"),
> -					       entry->configpath);
> -		entry->entry.description = basprintf("blspec entry, device: %s hwdevice: %s",
> -						    devname ? devname : "none",
> -						    hwdevname ? hwdevname : "none");
> -		free(devname);
> -		free(hwdevname);
> +			found++;
>  
> -		entry->entry.me.type = MENU_ENTRY_NORMAL;
> -		entry->entry.release = blspec_entry_free;
> +			if (entry->cdev && entry->cdev->dev) {
> +				devname = xstrdup(dev_name(entry->cdev->dev));
> +				if (entry->cdev->dev->parent)
> +					hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
> +			}
>  
> -		bootentries_add_entry(bootentries, &entry->entry);
> -		list_del(&lentry->list);
> -		free(lentry);
> -	}
> +			entry->entry.title = xasprintf("%s (%s)", blspec_entry_var_get(entry, "title"),
> +						       entry->configpath);
> +			entry->entry.description = basprintf("blspec entry, device: %s hwdevice: %s",
> +							     devname ? devname : "none",
> +							     hwdevname ? hwdevname : "none");
> +			free(devname);
> +			free(hwdevname);
> +
> +			entry->entry.me.type = MENU_ENTRY_NORMAL;
> +			entry->entry.release = blspec_entry_free;
> +
> +			bootentries_add_entry(bootentries, &entry->entry);
> +			list_del(&lentry->list);
> +			free(lentry);
> +		}
> +
> +		compat = of_prop_next_string(prop, compat);
> +		if (!compat)
> +			break;
> +
> +		depth--;
> +	} while (depth > 0);
>  
>  	ret = found;
>  
> diff --git a/include/blspec.h b/include/blspec.h
> index 37076cd47c..f499ad8b2d 100644
> --- a/include/blspec.h
> +++ b/include/blspec.h
> @@ -23,5 +23,5 @@ int blspec_scan_devices(struct bootentries *bootentries);
>  int blspec_scan_device(struct bootentries *bootentries, struct device_d *dev);
>  int blspec_scan_devicename(struct bootentries *bootentries, const char *devname);
>  int blspec_scan_directory(struct bootentries *bootentries, const char *root);
> -
> +void blspec_set_compatible_depth(unsigned int depth);
>  #endif /* __LOADER_H__ */
> -- 
> 2.35.1
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

