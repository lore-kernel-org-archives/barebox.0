Delivery-date: Thu, 04 Jan 2024 09:24:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLJ1T-003INE-1n
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 09:24:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLJ1S-0000nk-GA
	for lore@pengutronix.de; Thu, 04 Jan 2024 09:24:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UDFkwxevMGTSLE1IzhoL51r7HmMhk67T8Ga2ZwFz/a0=; b=iOxpRcRhEq8YMkockEgbRlXvFt
	hiPArfL96XQV0nVMcAMEBXYktizeNdYYN/pEAlFoMmHWst7+Ew0ko4AejRnVugGsSrJpMatafiURc
	NqP0tfAMUYzfoAFmEHoXonBXU1lOfirbgALtJYM3A20LFg8MkEXlMnztITYrmnjG8cqvjDrSNYM8u
	5dUEifg77f+GCJ/KF4WgYBNwZcKIY1yA8CcJKJrICP6A43xg3frK+QSe5DewC1KNj0C87uy+D2TY4
	r648bQAME+u+sabftKPvPUxP86UGrCN67lgizpnpb8/MS9hfBR3aLXrv7V3YlZqn+xo1odb2QwGN4
	8fLC8Mow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJ06-00DBzY-0N;
	Thu, 04 Jan 2024 08:22:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJ02-00DByc-0Y
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 08:22:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLIzx-0000Y1-5s; Thu, 04 Jan 2024 09:22:41 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLIzw-000Irv-Ph; Thu, 04 Jan 2024 09:22:40 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLIzw-00ABSr-NG; Thu, 04 Jan 2024 09:22:40 +0100
Date: Thu, 4 Jan 2024 09:22:40 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240104082240.GL1318922@pengutronix.de>
References: <20240103101629.2629497-1-a.fatoum@pengutronix.de>
 <20240103101629.2629497-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103101629.2629497-4-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_002246_227538_8DF36AC9 
X-CRM114-Status: GOOD (  24.08  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/6] cdev: export cdevfs_add_partition for general use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 11:16:26AM +0100, Ahmad Fatoum wrote:
> __devfs_add_partition was added, so it can internally be used by
> functions that already have a cdev and don't require looking it up first
> by file path. This is useful elsewhere as well, so give it a less
> internal-sounding name and start exporting it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/devfs-core.c  | 6 +++---
>  include/driver.h | 3 +++
>  2 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 6abf5eacc8dd..912bfeede8dc 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -474,7 +474,7 @@ static struct cdev *check_overlap(struct cdev *cdev, const char *name, loff_t of
>  	return ret ? ERR_PTR(ret) : cpart;
>  }
>  
> -static struct cdev *__devfs_add_partition(struct cdev *cdev,
> +struct cdev *cdevfs_add_partition(struct cdev *cdev,
>  		const struct devfs_partition *partinfo, loff_t *end)

Now that this function is exported the @end deserves a comment that
tells what it's good for. Alternatively, as the new users doesn't seem
to make use of this parameter, you could keep __devfs_add_partition
static call it from an exported wrapper function that passes NULL as
@end.

Sascha

>  {
>  	loff_t offset, size;
> @@ -572,7 +572,7 @@ struct cdev *devfs_add_partition(const char *devname, loff_t offset,
>  	if (!cdev)
>  		return ERR_PTR(-ENOENT);
>  
> -	return __devfs_add_partition(cdev, &partinfo, NULL);
> +	return cdevfs_add_partition(cdev, &partinfo, NULL);
>  }
>  
>  int devfs_del_partition(const char *name)
> @@ -618,7 +618,7 @@ int devfs_create_partitions(const char *devname,
>  	for (; partinfo->name; ++partinfo) {
>  		struct cdev *new;
>  
> -		new = __devfs_add_partition(cdev, partinfo, &offset);
> +		new = cdevfs_add_partition(cdev, partinfo, &offset);
>  		if (IS_ERR(new))
>  			return PTR_ERR(new);
>  
> diff --git a/include/driver.h b/include/driver.h
> index 0e3d5635e4c1..373c4f1d0bca 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -681,6 +681,9 @@ struct cdev *devfs_add_partition(const char *devname, loff_t offset,
>  		loff_t size, unsigned int flags, const char *name);
>  int devfs_del_partition(const char *name);
>  
> +struct cdev *cdevfs_add_partition(struct cdev *cdev,
> +		const struct devfs_partition *partinfo, loff_t *end);
> +
>  #define of_match_ptr(compat) \
>  	IS_ENABLED(CONFIG_OFDEVICE) ? (compat) : NULL
>  
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


