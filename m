Delivery-date: Mon, 08 May 2023 15:20:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pw0ms-00AA0f-Pi
	for lore@lore.pengutronix.de; Mon, 08 May 2023 15:20:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pw0mq-0006zf-8E
	for lore@pengutronix.de; Mon, 08 May 2023 15:20:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yJ9GuzF0ruQ47OF3cjcDdnIbSp6nlM+Z8210MFWOLDI=; b=dTawc5UizEWe+SaTcogx7EcIBY
	VQ9GPbHlnBO40IuLmiaLUjvfs5kzFG/IcjmHY2kxXiSbXBLGAzlIYRfVP0Wuv2Rqe1NeLWW5wq257
	J/9uukAfsWQxyhA46/G8Qn8zs0viDmhRX2MdV+bfPQq5a938/39W8D3nRDxfDGvIuZQ/Uj1xtKfus
	b1kjFp1gTu7okladbmIiXPCnNHOXXmsyAijlCN11LErJNb0rUQlPwmzFnDYkCIIWRpJIpFbKYlj/Y
	1rlUAiPslEDdLyICEbQbrlMWUplADAj4UzuX3b3VNm1sFlUCgyba7YkF/QIshAlmzh5fqR8btn+zp
	LiW/O4SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pw0lK-000c47-30;
	Mon, 08 May 2023 13:18:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pw0lI-000c2j-0w
	for barebox@lists.infradead.org;
	Mon, 08 May 2023 13:18:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pw0lD-0006hC-4I; Mon, 08 May 2023 15:18:39 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pw0lC-0005f7-HD; Mon, 08 May 2023 15:18:38 +0200
Date: Mon, 8 May 2023 15:18:38 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230508131838.GX29365@pengutronix.de>
References: <20230508074612.3313870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230508074612.3313870-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_061844_330849_B8B8DEC8 
X-CRM114-Status: GOOD (  18.67  )
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
Subject: Re: [PATCH master 1/2] fs: fail gracefully in
 get_mounted_path/get_cdev_by_mountpath
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 08, 2023 at 09:46:11AM +0200, Ahmad Fatoum wrote:
> get_fsdevice_by_path will return NULL if no file system was mounted at
> location. Returned pointer was dereferenced unconditionally, potentially
> leading to null pointer dereference. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/fs.c | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 65e4c661b9ce..368458cc54f8 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -240,6 +240,8 @@ struct cdev *get_cdev_by_mountpath(const char *path)
>  	struct fs_device *fsdev;
>  
>  	fsdev = get_fsdevice_by_path(path);
> +	if (!fsdev)
> +		return NULL;
>  
>  	return fsdev->cdev;
>  }
> @@ -249,6 +251,8 @@ char *get_mounted_path(const char *path)
>  	struct fs_device *fdev;
>  
>  	fdev = get_fsdevice_by_path(path);
> +	if (!fdev)
> +		return NULL;
>  
>  	return fdev->path;
>  }
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


