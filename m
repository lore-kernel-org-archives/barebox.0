Delivery-date: Tue, 19 May 2026 15:00:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPK3L-001V4k-1S
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 15:00:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPK3K-0001pc-R2
	for lore@pengutronix.de; Tue, 19 May 2026 15:00:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BjzbDjGjW3rM/egQmMLeONVosK27y2fAH/8Z7V6g7kg=; b=f2cnYO2aVDZ7nSQ+hUmxfeWMLu
	JZhZ/lioHTItyDOJIHcDVlICHNxzxO1FKdxYeAqS/SU1NOj2ouBntNfvVpQ3UNcLyprHWrYhceT0S
	GchrmyWZ6iZrIYRhHOdjQ40ezD5r4InKB1ZAbo3SFP7sqAxXTjWQWa1wK6kkUm1sYBH6oHN/Gic32
	1Y4VKd/dO5OF7xY1ynZfAWSIH1p/ZvVUmhaNKBkM65lf0FYkT8sewPtVA+qnB2F9cKokq8awF/nR9
	mnzvV3UjR882ewV0TcWW3zWa0QnVi52sqiUbyJlxj8Y0wktH7IXPBJj/megCgq+d2A/GjieWWv7QI
	RnrBvGRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPK2y-00000001ZMo-0L5B;
	Tue, 19 May 2026 12:59:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPK2v-00000001ZLg-022t
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 12:59:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPK2s-0001lw-LY; Tue, 19 May 2026 14:59:38 +0200
Message-ID: <8ba6cfa0-dce3-4617-b4ac-37d5db14c57f@pengutronix.de>
Date: Tue, 19 May 2026 14:59:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260519124448.3635366-1-s.hauer@pengutronix.de>
 <20260519124448.3635366-2-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260519124448.3635366-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_055941_054687_F55B2E3B 
X-CRM114-Status: GOOD (  21.70  )
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

Hello Sascha,

On 5/19/26 2:44 PM, Sascha Hauer wrote:
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
> ---
>  fs/jffs2/super.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jffs2/super.c b/fs/jffs2/super.c
> index b9a5b99744..260a812b7c 100644
> --- a/fs/jffs2/super.c
> +++ b/fs/jffs2/super.c
> @@ -55,8 +55,9 @@ static void jffs2_destroy_inode(struct inode *inode)
>  	kmem_cache_free(jffs2_inode_cachep, f);
>  }
>  
> -static void jffs2_i_init_once(void *foo)
> +static void jffs2_i_init_once(void *obj)
>  {
> +	memset(obj, 0, sizeof(struct inode));

jffs2_i_init_once is used as constructor for creating objects of
sizeof(struct jffs2_inode_info).

struct jffs2_inode_info has a struct inode member, but as the last
element, not the first, so this does nothing to initialize the inode by
the looks of it?

I'd rather suggest we zero the whole sizeof(jffs2_inode_info) here to be
on the safe side, even with respect to future updates.

Cheers,
Ahmad

>  }
>  
>  static const struct super_operations jffs2_super_operations =

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



