Delivery-date: Tue, 19 May 2026 15:03:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPK6f-001V7C-31
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 15:03:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPK6e-0002KM-4b
	for lore@pengutronix.de; Tue, 19 May 2026 15:03:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NaCtSPZQR3RP501SxqgYvkeGzJDwo3ICvEWPgoW9iHY=; b=h2t76VCoVpjc3cjhol+YG0RJY3
	/Xe7GsvkSQO59YmTZfE6R1FlmJuQp1V8Evvl6dT0xtwYFnt7pDJYUpRkXiPG7IvzmfNrzR11+CnAu
	/KK7dZmD+iNHmrQPWNueEbJHAWriC66hx/fPGxspmqVvp1hNoh46J8ddLbyukaizrteRNwURLH7Iv
	Kbt1EKNZeKJd/bYuBV5CnUkD5gTRkjJ9B4jUXoBHzlFzocQZ0mu6dsnl9aOMZqI1PxjwP48OPMCY7
	465n9KDB2PNDsureFIxNQ+iLHu+sIeQYFpVAd9bIBpUQ7bjDeQhiZ5MW+dW1XmS0U9N8PbPuGxST5
	pOJsHb1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPK6E-00000001Zol-2iKf;
	Tue, 19 May 2026 13:03:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPK6C-00000001ZoH-0QSC
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 13:03:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPK6A-0002G1-Jk; Tue, 19 May 2026 15:03:02 +0200
Message-ID: <bc215e77-5721-4bc3-a7e4-b1f77781f529@pengutronix.de>
Date: Tue, 19 May 2026 15:03:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260519124448.3635366-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260519124448.3635366-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_060304_147090_D3191533 
X-CRM114-Status: GOOD (  21.35  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fs: ubifs: zero initialize allocated inode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 5/19/26 2:44 PM, Sascha Hauer wrote:
> UBIFS uses kmem_cache_alloc() to allocate an ubifs_inode. The memory
> returned from kmem_cache_alloc() is not zeroed. ubifs_alloc_inode()
> zeroes all fields in the ubifs_inode except the embedded struct inode.
> In Linux this is done in the kmem_cache constructor function which calls
> inode_init_once(). In barebox we have the constructor function as well,
> but we don't have an equivalent of inode_init_once(), so the constructor
> is empty.  zero the inode in the constructor instead so that barebox
> gets a zeroed inode.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/ubifs/super.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
> index 45037b42ea..4022270d4c 100644
> --- a/fs/ubifs/super.c
> +++ b/fs/ubifs/super.c
> @@ -1128,6 +1128,7 @@ static void kill_ubifs_super(struct super_block *s)
>   */
>  static void inode_slab_ctor(void *obj)
>  {
> +	memset(obj, 0, sizeof(struct inode));

This works because inode is the first member of struct ubifs_inode, but
I would prefer to avoid depending on that as it might change with a
future update.

Can't we just zero all of struct ubifs_inode here to be on the safe side?

Cheers,
Ahmad

>  }
>  
>  static int __init ubifs_init(void)

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



