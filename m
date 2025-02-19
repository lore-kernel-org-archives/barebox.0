Delivery-date: Wed, 19 Feb 2025 17:54:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tknLN-004NvZ-2W
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 17:54:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tknLM-0006f7-I3
	for lore@pengutronix.de; Wed, 19 Feb 2025 17:54:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SlxucvqpBDmT304SphAFr7uXzwiux3G/hLATBZQvojY=; b=OgU4f+HwLpuJrulaM1woGTLXNm
	WPSURAWHEtOY+GIpueGU0HjQP2EsbeMcFOY4yqj+bb+tCPxktkhoUdo3xpBy2eQHLC3gNYhLgjvWQ
	WUGThs+5cv51OL43xTeLnOUrEly9RMoway5AlV8t8Tpx0j+4VKqP2Z+VcPQn2NqB12LpauhBrPfzY
	ZrYt7GExqMPXYcTBue1cVtT+7JgIQYUvev+clOyn0LzpyuOt1QUqSYdT9pBr6387xHB8L07sD6mW0
	w4RQ/e7dxMc5J/KTZUfKDq+mGFppeOp4P6bzyr8CYqqyhy9igcZ7B1KuwBeGdhka1IkO4wk7+Y5Wn
	EUfovcQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tknKw-0000000Dx49-1Vf3;
	Wed, 19 Feb 2025 16:54:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tknKt-0000000Dx39-1DYN
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 16:54:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tknKs-0006YU-1R; Wed, 19 Feb 2025 17:54:10 +0100
Message-ID: <26e93d34-4278-4f72-a5bf-2bd8170d7418@pengutronix.de>
Date: Wed, 19 Feb 2025 17:54:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Jonathan Bar Or <jonathanbaror@gmail.com>
References: <20250219141844.1912413-1-s.hauer@pengutronix.de>
 <20250219141844.1912413-5-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250219141844.1912413-5-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_085411_333448_4A25190F 
X-CRM114-Status: GOOD (  21.25  )
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
Subject: Re: [PATCH 4/5] CVE-2025-26725: fs: jffs2: fix malloc(size +
 constant) buffer overflow issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 19.02.25 15:18, Sascha Hauer wrote:
> The pattern malloc(size + constant) is dangerous when size can be
> manipulated by an attacker. In that case 'size' can be manipulated
> in a way that 'size + constant' is 0 due to integer overflow. The
> result is a zero sized buffer to which is then data written to.
> 
> Avoid this by using size_add() and struct_size() instead.
> 
> Reported-by: Jonathan Bar Or <jonathanbaror@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

With below comment addressed:
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/jffs2/malloc.c    | 4 ++--
>  fs/jffs2/nodelist.h  | 2 +-
>  fs/jffs2/readinode.c | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/jffs2/malloc.c b/fs/jffs2/malloc.c
> index e0e29fa648..61c2430c18 100644
> --- a/fs/jffs2/malloc.c
> +++ b/fs/jffs2/malloc.c
> @@ -15,10 +15,10 @@
>  #include <linux/jffs2.h>
>  #include "nodelist.h"
>  
> -struct jffs2_full_dirent *jffs2_alloc_full_dirent(int namesize)
> +struct jffs2_full_dirent *jffs2_alloc_full_dirent(size_t namesize)
>  {
>  	struct jffs2_full_dirent *ret;
> -	ret = kmalloc(sizeof(*ret) + namesize, GFP_KERNEL);
> +	ret = kmalloc(struct_size(ret, name, namesize), GFP_KERNEL);

I was under the impression that struct_size requires the last argument to be
the name of a C99 flexible array member[] and not that of a zero-sized array.

Could you squash a change from struct jffs2_full_dirent::name[0] to ::name[] in 
fs/jffs2/nodelist.h into this commit?

Thanks,
Ahmad

>  	dbg_memalloc("%p\n", ret);
>  	return ret;
>  }
> diff --git a/fs/jffs2/nodelist.h b/fs/jffs2/nodelist.h
> index d8687319c7..28b35d6d58 100644
> --- a/fs/jffs2/nodelist.h
> +++ b/fs/jffs2/nodelist.h
> @@ -440,7 +440,7 @@ void jffs2_do_clear_inode(struct jffs2_sb_info *c, struct jffs2_inode_info *f);
>  
>  /* malloc.c */
>  
> -struct jffs2_full_dirent *jffs2_alloc_full_dirent(int namesize);
> +struct jffs2_full_dirent *jffs2_alloc_full_dirent(size_t namesize);
>  void jffs2_free_full_dirent(struct jffs2_full_dirent *);
>  struct jffs2_full_dnode *jffs2_alloc_full_dnode(void);
>  void jffs2_free_full_dnode(struct jffs2_full_dnode *dnode);
> diff --git a/fs/jffs2/readinode.c b/fs/jffs2/readinode.c
> index 605130d60c..4634ee5818 100644
> --- a/fs/jffs2/readinode.c
> +++ b/fs/jffs2/readinode.c
> @@ -601,7 +601,7 @@ static inline int read_direntry(struct jffs2_sb_info *c, struct jffs2_raw_node_r
>  		spin_unlock(&c->erase_completion_lock);
>  	}
>  
> -	fd = jffs2_alloc_full_dirent(rd->nsize + 1);
> +	fd = jffs2_alloc_full_dirent(size_add(rd->nsize, 1));
>  	if (unlikely(!fd))
>  		return -ENOMEM;
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


