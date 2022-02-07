Delivery-date: Mon, 07 Feb 2022 11:47:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH1YX-008BHJ-No
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 11:47:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH1YW-0003Oy-9m
	for lore@pengutronix.de; Mon, 07 Feb 2022 11:47:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wl8U4Q0EMzGOru9lf+UOjSOFcBDbHvzsU2QYR6wte8g=; b=B0CrUdjDbyLcs8
	rMup76oh8VAUIxZQRX6vX3KwCE29ZmS8vGWLsgjjYkrN0zFDdYk0UysPeHv8yRKRNLg6XEVHxZQIL
	GT+XBlyCTi6ZwPTI3DbvX+fa7LhBbVV5/AUCUH1kVur8dZOgadxC8n5Apbk4VwHsOxNJuMqRJqLhx
	W05FTAfYTy53V1ZDjSE4iZKwTtRllFFwjNlEYTIo1lcE2auZZx22tN8QNuoRuZIzxeIjsHNah3zRH
	AfeGc1O90QvSVT4AFe7urjy5VtGowAEl2q+b0FXlvUFOmpY4IFFShatBJ9zT5+f1JNaoNymUQjzzT
	BWxw+6qpnN0yHaV35TxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH1XI-009s0D-QU; Mon, 07 Feb 2022 10:46:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH1XD-009rzK-Pv
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 10:46:17 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nH1XC-0003FM-Ec; Mon, 07 Feb 2022 11:46:14 +0100
Message-ID: <385c4354-2b54-120f-53d2-9f027b3bcfa1@pengutronix.de>
Date: Mon, 7 Feb 2022 11:46:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Michael Olbrich <mol@pengutronix.de>
References: <20220207094953.949868-1-s.hauer@pengutronix.de>
 <20220207094953.949868-4-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220207094953.949868-4-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_024615_875494_C11DBE2F 
X-CRM114-Status: GOOD (  21.80  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/8] cdev: implement cdev_open()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.02.22 10:49, Sascha Hauer wrote:
> Implement cdev_open() with the expected semantics that takes a struct
> cdev * argument. We already have an unimplemented prototype
> cdev_do_open(), remove this.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/devfs-core.c  | 16 +++++++++++-----
>  include/driver.h |  2 +-
>  2 files changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 6350c3fa8b..dd6a9585bc 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -169,6 +169,14 @@ int cdev_find_free_index(const char *basename)
>  	return -EBUSY;	/* all indexes are used */
>  }
>  
> +int cdev_open(struct cdev *cdev, unsigned long flags)
> +{
> +	if (cdev->ops->open)
> +		return cdev->ops->open(cdev, flags);
> +
> +	return 0;
> +}
> +
>  struct cdev *cdev_open_name(const char *name, unsigned long flags)
>  {
>  	struct cdev *cdev;
> @@ -178,11 +186,9 @@ struct cdev *cdev_open_name(const char *name, unsigned long flags)
>  	if (!cdev)
>  		return NULL;
>  
> -	if (cdev->ops->open) {
> -		ret = cdev->ops->open(cdev, flags);
> -		if (ret)
> -			return NULL;
> -	}
> +	ret = cdev_open(cdev, flags);
> +	if (ret)
> +		return NULL;
>  
>  	return cdev;
>  }
> diff --git a/include/driver.h b/include/driver.h
> index b4fae477a6..4f97b943c8 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -492,7 +492,7 @@ struct cdev *cdev_by_diskuuid(const char *partuuid);
>  struct cdev *cdev_open_name(const char *name, unsigned long flags);
>  struct cdev *cdev_create_loop(const char *path, ulong flags, loff_t offset);
>  void cdev_remove_loop(struct cdev *cdev);
> -int cdev_do_open(struct cdev *, unsigned long flags);
> +int cdev_open(struct cdev *, unsigned long flags);
>  void cdev_close(struct cdev *cdev);
>  int cdev_flush(struct cdev *cdev);
>  ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

