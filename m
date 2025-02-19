Delivery-date: Wed, 19 Feb 2025 17:51:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tknIA-004Nt4-0m
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 17:51:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tknI9-00068W-3H
	for lore@pengutronix.de; Wed, 19 Feb 2025 17:51:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UoIz7/fJtldG72Ed8EmFYgzpJsM9bQiX2jl7kFgdWBE=; b=WohA+M1YhzNzMPR2f3IONNSHJh
	I1hFkuIBkFKpOOaxDdKsUY/qXsVZI3WEoLWJCZuMzIfltzTP89fILYTbYJn4xLIJl5/3/fW1Fq4Fe
	5klK/2ZtX3twwGA9UvQIGV6z0++rGKeSBWTOhd/7Xl/uiGUX3WgHi+LiahbCT/F/s0ALiq1sEGB3a
	J55LEirXKxsuJZo32KJHSCQt+EKgLwvVUWgSVcjIBZ/3fTmwCrJZyiix6Vk5mfDILDznpwz14nZAl
	KyqxK+nnMR1xicsmhoyq/DOmP/6KPaEmGB5zN6kiz8CrScWR6ITdfgxnECvm2S/PmigAHDwtOOnms
	VxsjzxRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tknHl-0000000DwI0-0lSK;
	Wed, 19 Feb 2025 16:50:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tknHi-0000000DwH3-39h0
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 16:50:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tknHh-000624-IV; Wed, 19 Feb 2025 17:50:53 +0100
Message-ID: <0b07c033-131d-4403-8709-0e31bce0617f@pengutronix.de>
Date: Wed, 19 Feb 2025 17:50:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Jonathan Bar Or <jonathanbaror@gmail.com>
References: <20250219141844.1912413-1-s.hauer@pengutronix.de>
 <20250219141844.1912413-3-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250219141844.1912413-3-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_085054_795348_EC3A43B2 
X-CRM114-Status: GOOD (  18.68  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] CVE-2025-26724: fs: cramfs: fix malloc(size +
 constant) buffer overflow issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 19.02.25 15:18, Sascha Hauer wrote:
> The pattern malloc(size + constant) is dangerous when size can be
> manipulated by an attacker. In that case 'size' can be manipulated
> in a way that 'size + constant' is 0 due to integer overflow. The
> result is a zero sized buffer to which is then data written to.
> 
> Avoid this by using size_add() instead.

For those unfamiliar with size_add(), it does a saturation addition
and thus xzalloc() will fail as it's impossible to allocate
SIZE_MAX bytes.

> 
> Reported-by: Jonathan Bar Or <jonathanbaror@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  fs/cramfs/cramfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
> index e554ebef6f..641a6d2b05 100644
> --- a/fs/cramfs/cramfs.c
> +++ b/fs/cramfs/cramfs.c
> @@ -423,7 +423,7 @@ static const char *cramfs_get_link(struct dentry *dentry, struct inode *inode)
>  {
>  	int ret;
>  
> -	inode->i_link = xzalloc(inode->i_size + 1);
> +	inode->i_link = xzalloc(size_add(inode->i_size, 1));
>  
>  	ret = cramfs_read_file(inode, 0, inode->i_link, inode->i_size);
>  	if (ret < 0)


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


