Delivery-date: Wed, 05 Oct 2022 08:30:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofxvE-006SlP-7B
	for lore@lore.pengutronix.de; Wed, 05 Oct 2022 08:30:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofxvD-0004qJ-5d
	for lore@pengutronix.de; Wed, 05 Oct 2022 08:30:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YA5ZYL2MnWbGoJ+sK2zekdn6Ix4onyZSXSaV/8i1B0Q=; b=Wbj2N2dkOeQlO2MhAJ5BOVLNnj
	dPl9npALNsk1MHfE3ujCmmOZsIVDSviiEbpj/9YgQEobO3SlkD8VeiREWT1Ky+tq/PnDb5NRsezER
	aIlQyweoAVxBzGe0EA8A/KzgxOVkry+F3jZCkJuuRSinq3Y7caThIy19KuTP1RoPgZrNlPF+SXOuD
	JK4IgldQkr97/lYjnXDtVgtSD3faE8hndz927IQmM9Ntzv8++sUSsCU/om6aWnhdL1HQJDZ+JiyiY
	74o9A70vSCf7E9iCxwU5e3wA7zXdTa+ojRYPR4PRujhwUcaWrZGLwRa8WArmp4rrwd3suNR3eSQZ/
	kbxzrgeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofxsv-00CfGI-8b; Wed, 05 Oct 2022 06:28:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofxsq-00CfFO-ET
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 06:27:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofxsm-0004ZP-Lg; Wed, 05 Oct 2022 08:27:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofxsm-0004ut-E8; Wed, 05 Oct 2022 08:27:52 +0200
Date: Wed, 5 Oct 2022 08:27:52 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221005062752.GM986@pengutronix.de>
References: <20220930154053.752237-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220930154053.752237-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_232756_500778_C8890D72 
X-CRM114-Status: GOOD (  20.69  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: export file system detection functionality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 30, 2022 at 05:40:53PM +0200, Ahmad Fatoum wrote:
> This will come in handy when using barebox as EFI loader, so give it a
> more generic name and export it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/fs.c      | 4 ++--
>  include/fs.h | 2 ++
>  2 files changed, 4 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/fs.c b/fs/fs.c
> index a314a49b2db7..95813b6089c7 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -756,7 +756,7 @@ int register_fs_driver(struct fs_driver_d *fsdrv)
>  }
>  EXPORT_SYMBOL(register_fs_driver);
>  
> -static const char *detect_fs(const char *filename, const char *fsoptions)
> +const char *fs_detect(const char *filename, const char *fsoptions)
>  {
>  	enum filetype type;
>  	struct driver_d *drv;
> @@ -2980,7 +2980,7 @@ int mount(const char *device, const char *fsname, const char *pathname,
>  			device, pathname, fsname, fsoptions);
>  
>  	if (!fsname)
> -		fsname = detect_fs(device, fsoptions);
> +		fsname = fs_detect(device, fsoptions);
>  
>  	if (!fsname) {
>  		ret = -ENOENT;
> diff --git a/include/fs.h b/include/fs.h
> index 9ea522dc2cc3..b501db38addd 100644
> --- a/include/fs.h
> +++ b/include/fs.h
> @@ -179,4 +179,6 @@ static inline const char *devpath_to_name(const char *devpath)
>  	return devpath;
>  }
>  
> +const char *fs_detect(const char *filename, const char *fsoptions);
> +
>  #endif /* __FS_H */
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


