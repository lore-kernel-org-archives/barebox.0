Delivery-date: Tue, 19 May 2026 15:37:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPKd6-001VjD-0G
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 15:37:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPKd5-0006ZV-Gc
	for lore@pengutronix.de; Tue, 19 May 2026 15:37:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LchcSYbt/+xBMAhCeLYQxIPYA+QH90UsTfgXktOpks0=; b=kvW/U7tyj8aIpgX6JQUMoGhyHK
	K6motpveChwz0JXYG9xhBC2s928z8oG5IxtDPmgoGLWfQXPKjVSiBQphKvvL0zkLWhUJuV9ane8E+
	Dgf+/innfu/Vsc5qymdf3hhfNRH/Y6EkzL8lo51SDmwH70Uz9IpGl4PgNZi60qd2EV0xyHktuQUDC
	19qr6JWL+a/SkWz3A+61qk4DXdOCWRASGGpQtuUNV+2ZalAz4v9IN+iRU5m4Rozo7HP7zEUkfgQjY
	DJQKwXYD795pfbvlZNZZL+0zOm9hCFSpPfX353BbpFBQCf6FDgvYsAJ1Pzt0M1/a6UU4CqoQ/uDux
	bztHlLbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPKbh-00000001gMx-3DEl;
	Tue, 19 May 2026 13:35:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPKbg-00000001gMd-3KgP
	for barebox@bombadil.infradead.org;
	Tue, 19 May 2026 13:35:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=LchcSYbt/+xBMAhCeLYQxIPYA+QH90UsTfgXktOpks0=; b=nyfKXBuAxq91i3T9WSvo8NoZ9d
	pqV8nlvzdzHcjcR8qKSv033Cs+9Bf/o2PZCbRvlYqsGpoAmuHhZjlTDPytAVsuTGH9Tf3B4w7KU/o
	f8pwfyLN7gPeMv/N0iaBWX0jx3gjuUN2bTLVq/ix8QKE4DTcNPExr3hB6YCHsy8tMk0XptHu4DIVD
	C4ylaAFW+FsHFyQyn1LLjXMdHCnfQ9khsD5CgXOdulv/l5i4G82ZMRIDBOBHEu/aI3Ft0Z33CCzIa
	PEZjN8LKinq0sdr5CEKKDJ8Nus5SvTEeV6yDj2RrV2I2kGAp9DKmdgympJlL5Lgd6kndLIikkpY9z
	pLMx/aYQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPKbd-0000000EO2d-0nU6
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 13:35:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPKbb-0006Hd-8n; Tue, 19 May 2026 15:35:31 +0200
Message-ID: <a988842b-eadb-41bd-b9ca-a0cb006687d6@pengutronix.de>
Date: Tue, 19 May 2026 15:35:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260519132846.596555-1-s.hauer@pengutronix.de>
 <20260519132846.596555-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260519132846.596555-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_143533_631023_D0B73761 
X-CRM114-Status: GOOD (  21.00  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] fs: jffs2: zero initialize allocated inode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 5/19/26 3:28 PM, Sascha Hauer wrote:
> JFFS2 uses kmem_cache_alloc() to allocate an ubifs_inode. The memory
> returned from kmem_cache_alloc() is not zeroed. jffs2_alloc_inode()
> zeroes all fields in the ubifs_inode except the embedded struct inode.
> In Linux this is done in the kmem_cache constructor function which calls
> inode_init_once(). In barebox we have the constructor function as well,
> but we don't have an equivalent of inode_init_once(), so the constructor
> is empty.  zero the inode in the constructor instead so that barebox
> gets a zeroed inode.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/jffs2/super.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jffs2/super.c b/fs/jffs2/super.c
> index b9a5b99744..6546943173 100644
> --- a/fs/jffs2/super.c
> +++ b/fs/jffs2/super.c
> @@ -55,8 +55,11 @@ static void jffs2_destroy_inode(struct inode *inode)
>  	kmem_cache_free(jffs2_inode_cachep, f);
>  }
>  
> -static void jffs2_i_init_once(void *foo)
> +static void jffs2_i_init_once(void *obj)
>  {
> +	struct jffs2_inode_info *f = obj;
> +
> +	memset(&f->vfs_inode, 0, sizeof(f->vfs_inode));
>  }
>  
>  static const struct super_operations jffs2_super_operations =

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



