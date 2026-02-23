Delivery-date: Mon, 23 Feb 2026 12:06:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTm3-004nzs-2w
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:06:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTm4-0005P4-0F
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:06:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7HdNWTCD/B0bFHb7ZlSWMQdTZvgJNyMd505OZ9wU1Ak=; b=bYXm0wjEMT0+Ctkb1hbNSFmqy2
	o1gl/Qnc06EbeMj1dTqoBof5eSL3UUhLUEyhGoJDLjbSWxJCdeYQeRE2wfU4WceFqKmia7HcCjevf
	IhzubrMfjPvO3nTq919FJiTkFiWCR0MOUiQ60wH612g5oVbgL5R8qnd57YHBGhuwIy/bHeQOIR1tn
	bDOGtdYKQzJC1b6ong32FNHhChBY1V4gbYhSs1LdW0W2kvdkmZrOhlqA9eENwdtRjrUvYZHxT45LF
	1wyvgay348sjo6AgOyj/6FbQbWQOrq5ZB4m19f1vg/t+Oe0nhLu3ZrOGtC8Xri7Bn2wshq/howwdk
	Fdnn4baw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTld-000000007jh-39ed;
	Mon, 23 Feb 2026 11:06:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTlb-000000007jK-1Tec
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:06:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vuTlZ-0005K2-J2; Mon, 23 Feb 2026 12:06:17 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vuTlY-002DVe-0A;
	Mon, 23 Feb 2026 12:06:17 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vuTlZ-000000017US-1HiL;
	Mon, 23 Feb 2026 12:06:17 +0100
Date: Mon, 23 Feb 2026 12:06:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aZw0qQVz1mX1l8nV@pengutronix.de>
References: <20260209090911.3561875-1-a.fatoum@barebox.org>
 <20260209090911.3561875-3-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209090911.3561875-3-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_030619_569688_9A231FDC 
X-CRM114-Status: GOOD (  39.67  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] blspec: sort entries according to specification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 09, 2026 at 10:08:52AM +0100, Ahmad Fatoum wrote:
> Boot entries generated from bootloader spec are currently sorted by the
> order the files are read from the file system.
> 
> This is inadequate if we have multiple entries with different kernels
> and we want to sort the newer kernels higher.
> 
> The UAPI.1 Boot Loader Specification defines an algorithm[1] to order the
> entries that takes care of this, so implement it into barebox.
> 
> [1]: https://uapi-group.org/specifications/specs/boot_loader_specification/#sorting
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  common/Kconfig            |  1 +
>  common/blspec.c           | 62 ++++++++++++++++++++++++++++++++++++++-
>  common/boot.c             |  7 +++++
>  include/asm-generic/bug.h |  7 +++++
>  include/boot.h            |  2 ++
>  5 files changed, 78 insertions(+), 1 deletion(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 50c26695b2b5..cd002865f736 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -715,6 +715,7 @@ config BLSPEC
>  	select BOOT
>  	select BOOTM
>  	select OFTREE
> +	select VERSION_CMP
>  	bool
>  	prompt "Support bootloader spec"
>  	help
> diff --git a/common/blspec.c b/common/blspec.c
> index 624e4c115272..f13e44f1de71 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -28,6 +28,7 @@ struct blspec_entry {
>  	struct cdev *cdev;
>  	const char *rootpath;
>  	const char *configpath;
> +	char *sortkey;
>  };
>  
>  /*
> @@ -181,6 +182,7 @@ static void blspec_entry_free(struct bootentry *be)
>  	of_delete_node(entry->node);
>  	free_const(entry->configpath);
>  	free_const(entry->rootpath);
> +	free(entry->sortkey);
>  	free(entry);
>  }
>  
> @@ -268,6 +270,12 @@ static struct blspec_entry *blspec_entry_open(struct bootentries *bootentries,
>  			}
>  		}
>  
> +		/* This will be read often during comparison, so we cache it */
> +		if (!strcmp(name, "sort-key")) {
> +			entry->sortkey = xstrdup(val);
> +			continue;
> +		}
> +
>  		blspec_entry_var_set(entry, name, val);
>  	}
>  
> @@ -414,6 +422,58 @@ static const char *get_blspec_prefix_path(const char *configname)
>  	return get_mounted_path(configname);
>  }
>  
> +static int blspec_compare(struct list_head *list_a, struct list_head *list_b)
> +{
> +	struct bootentry *be_a = container_of(list_a, struct bootentry, list);
> +	struct bootentry *be_b = container_of(list_b, struct bootentry, list);
> +	struct blspec_entry *a, *b;
> +	const char *a_version, *b_version;
> +	int r;
> +
> +	/* The boot entry providers are called one by one and passed an empty
> +	 * list that's aggregated later, so we should only be encountering
> +	 * bootloader spec entries here.
> +	 */
> +	DEBUG_ASSERT(is_blspec_entry(be_a) && is_blspec_entry(be_b));
> +
> +	a = container_of(be_a, struct blspec_entry, entry);
> +	b = container_of(be_b, struct blspec_entry, entry);
> +
> +	a_version = a->configpath;
> +	b_version = b->configpath;
> +
> +	if (a->sortkey && b->sortkey) {
> +		const char *a_machine_id, *b_machine_id;
> +
> +		/* A-Z, increasing alphanumerical order */
> +		r = strcmp(a->sortkey, b->sortkey);
> +		if (r != 0)
> +			return r;
> +
> +		a_machine_id = blspec_entry_var_get(a, "machine-id");
> +		b_machine_id = blspec_entry_var_get(b, "machine-id");
> +
> +		/* A-Z, increasing alphanumerical order) */
> +		r = strcmp_ptr(a_machine_id, b_machine_id);
> +		if (r != 0)
> +			return r;
> +
> +		/* Will be compared in decreasing version order */
> +		a_version = blspec_entry_var_get(a, "version");
> +		b_version = blspec_entry_var_get(b, "version");
> +	} else if (a->sortkey != b->sortkey) {
> +		/* If sort-key is set on one entry, it sorts earlier. */
> +		return a->sortkey ? -1 : 1;
> +	}
> +
> +	/* At the end, if necessary, when sort-key is not set or
> +	 * those fields are not set or are all equal, the boot loader
> +	 * should sort using the file name of the entry (decreasing
> +	 * version sort), with the suffix removed.
> +	 */
> +	return -strverscmp(a_version, b_version);
> +}
> +
>  static int __blspec_scan_file(struct bootentries *bootentries, const char *root,
>  			      const char *configname)
>  {
> @@ -459,7 +519,7 @@ static int __blspec_scan_file(struct bootentries *bootentries, const char *root,
>  	entry->entry.me.type = MENU_ENTRY_NORMAL;
>  	entry->entry.release = blspec_entry_free;
>  
> -	bootentries_add_entry(bootentries, &entry->entry);
> +	bootentries_add_entry_sorted(bootentries, &entry->entry, blspec_compare);
>  	return 1;
>  }
>  
> diff --git a/common/boot.c b/common/boot.c
> index 8ccc269ac5bd..2e5294ffa2f0 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -34,6 +34,13 @@ static inline void bootentries_merge(struct bootentries *dst, struct bootentries
>  	list_splice_tail_init(&src->entries, &dst->entries);
>  }
>  
> +void bootentries_add_entry_sorted(struct bootentries *entries, struct bootentry *entry,
> +				  int (*compare)(struct list_head *, struct list_head *))
> +
> +{
> +	list_add_sort(&entry->list, &entries->entries, compare);
> +}
> +
>  struct bootentries *bootentries_alloc(void)
>  {
>  	struct bootentries *bootentries;
> diff --git a/include/asm-generic/bug.h b/include/asm-generic/bug.h
> index 514801dab10e..1953c6e642c1 100644
> --- a/include/asm-generic/bug.h
> +++ b/include/asm-generic/bug.h
> @@ -78,4 +78,11 @@
>  		BUG_ON(!(expr));			\
>  } while (0)
>  
> +
> +#ifdef DEBUG
> +#define DEBUG_ASSERT(expr)	BUG_ON(!(expr))
> +#else
> +#define DEBUG_ASSERT(expr)	((void)(expr))
> +#endif

Is this change intentional here?

Sascha

> +
>  #endif
> diff --git a/include/boot.h b/include/boot.h
> index e6309b65a0c3..fdc108b7a21d 100644
> --- a/include/boot.h
> +++ b/include/boot.h
> @@ -24,6 +24,8 @@ struct bootentry {
>  };
>  
>  int bootentries_add_entry(struct bootentries *entries, struct bootentry *entry);
> +void bootentries_add_entry_sorted(struct bootentries *entries, struct bootentry *entry,
> +				  int (*compare)(struct list_head *, struct list_head *));
>  
>  struct bootentry_provider {
>  	const char *name;
> -- 
> 2.47.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


