Delivery-date: Tue, 30 Nov 2021 11:33:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0Rd-00038q-Qj
	for lore@lore.pengutronix.de; Tue, 30 Nov 2021 11:33:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0Rc-0001CW-Bu
	for lore@pengutronix.de; Tue, 30 Nov 2021 11:33:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ob2lgukKNwsZxJAA1tCY0KUQSmWCwEhwWB4zEH4LAfo=; b=oCaS4xhNhp60vp6wHECqfBhII+
	Q6fL6Z+GrYhkIEY8grWpfeJQvp6HcZErZUflUxS5FRomLxD7V464J38e1iXz1sTGqhjkEIhwEESCI
	ziWMUyz3kSSRc3QN400BLr0Z/T0YItNP9f0AYu8Gb7B1ngjCnM842D6sMdNGy8fsV1v9IMHtahTca
	tsrBEYO1yPC8TsxcQaxQOEHtxnqc2pqGxpdNFvc4q0rtEi67Axkgzhwwo6rrqIU/oLiE2rgGTL1U4
	Pi0q7vEbfiCtJdSSZ6Nr6FJArfElli4+t4jW80Y4rcMYG1Ja2YWwEdLZ/UE6jzf7dmy6MvFwdgjGo
	P89Fi3vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms0QC-004dMp-VW; Tue, 30 Nov 2021 10:31:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms0Nu-004cWm-Qq
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 10:29:17 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ms0Nr-0000Lc-Os; Tue, 30 Nov 2021 11:29:11 +0100
To: Holger Assmann <h.assmann@pengutronix.de>, barebox@lists.infradead.org
References: <20211129124545.14171-1-h.assmann@pengutronix.de>
 <20211129124545.14171-3-h.assmann@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <384035a6-6fab-0e56-b17a-28ad2cb11650@pengutronix.de>
Date: Tue, 30 Nov 2021 11:29:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211129124545.14171-3-h.assmann@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_022915_105659_149BEA69 
X-CRM114-Status: GOOD (  27.96  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] fs: jffs2: remove unnecessary slab cache structure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 29.11.21 13:45, Holger Assmann wrote:
> jffs2_create_slab_caches() and its subsequent kmem_cache calls are not
> needed in Barebox since they can directly be replaced by malloc calls.
> 
> This patch performs that replacement as well as the related clean up.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
> ---
>  fs/jffs2/fs.c       |  10 ----
>  fs/jffs2/malloc.c   | 131 +++++++-------------------------------------
>  fs/jffs2/nodelist.h |   2 -
>  3 files changed, 19 insertions(+), 124 deletions(-)
> 
> diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
> index 7538252336..b72721cfc4 100644
> --- a/fs/jffs2/fs.c
> +++ b/fs/jffs2/fs.c
> @@ -416,26 +416,17 @@ static int jffs2_probe(struct device_d *dev)
>  			pr_err("error: Failed to initialise compressors\n");
>  			goto err_out;
>  		}
> -
> -		ret = jffs2_create_slab_caches();
> -		if (ret) {
> -			pr_err("error: Failed to initialise slab caches\n");
> -			goto err_compressors;
> -		}
>  	}
>  
>          if (jffs2_fill_super(fsdev, 0)) {
>  		dev_err(dev, "no valid jffs2 found\n");
>  		ret = -EINVAL;
> -		goto err_slab;

This should be goto err_compressors. ret = -EINVAL is't
used in the success path, so the probe will succeed despite the error
and likely triggering a crash on mount. In that case,
jffs2_compressors_exit is also never called.

@Sascha, can you fixup?

>  	}
>  
>  	jffs2_probe_cnt++;
>  
>  	return 0;
>  
> -err_slab:
> -        jffs2_destroy_slab_caches();
>  err_compressors:
>  	jffs2_compressors_exit();
>  err_out:
> @@ -454,7 +445,6 @@ static void jffs2_remove(struct device_d *dev)
>  	jffs2_probe_cnt--;
>  
>  	if (!jffs2_probe_cnt) {
> -		jffs2_destroy_slab_caches();
>  		jffs2_compressors_exit();
>  	}
>  
> diff --git a/fs/jffs2/malloc.c b/fs/jffs2/malloc.c
> index b7afc68cea..7e3e0797b3 100644
> --- a/fs/jffs2/malloc.c
> +++ b/fs/jffs2/malloc.c
> @@ -17,103 +17,10 @@
>  #include <linux/jffs2.h>
>  #include "nodelist.h"
>  
> -/* These are initialised to NULL in the kernel startup code.
> -   If you're porting to other operating systems, beware */
> -static struct kmem_cache *full_dnode_slab;
> -static struct kmem_cache *raw_dirent_slab;
> -static struct kmem_cache *raw_inode_slab;
> -static struct kmem_cache *tmp_dnode_info_slab;
> -static struct kmem_cache *raw_node_ref_slab;
> -static struct kmem_cache *node_frag_slab;
> -static struct kmem_cache *inode_cache_slab;
> -#ifdef CONFIG_JFFS2_FS_XATTR
> -static struct kmem_cache *xattr_datum_cache;
> -static struct kmem_cache *xattr_ref_cache;
> -#endif
> -
> -int __init jffs2_create_slab_caches(void)
> -{
> -	full_dnode_slab = kmem_cache_create("jffs2_full_dnode",
> -					    sizeof(struct jffs2_full_dnode),
> -					    0, 0, NULL);
> -	if (!full_dnode_slab)
> -		goto err;
> -
> -	raw_dirent_slab = kmem_cache_create("jffs2_raw_dirent",
> -					    sizeof(struct jffs2_raw_dirent),
> -					    0, SLAB_HWCACHE_ALIGN, NULL);
> -	if (!raw_dirent_slab)
> -		goto err;
> -
> -	raw_inode_slab = kmem_cache_create("jffs2_raw_inode",
> -					   sizeof(struct jffs2_raw_inode),
> -					   0, SLAB_HWCACHE_ALIGN, NULL);
> -	if (!raw_inode_slab)
> -		goto err;
> -
> -	tmp_dnode_info_slab = kmem_cache_create("jffs2_tmp_dnode",
> -						sizeof(struct jffs2_tmp_dnode_info),
> -						0, 0, NULL);
> -	if (!tmp_dnode_info_slab)
> -		goto err;
> -
> -	raw_node_ref_slab = kmem_cache_create("jffs2_refblock",
> -					      sizeof(struct jffs2_raw_node_ref) * (REFS_PER_BLOCK + 1),
> -					      0, 0, NULL);
> -	if (!raw_node_ref_slab)
> -		goto err;
> -
> -	node_frag_slab = kmem_cache_create("jffs2_node_frag",
> -					   sizeof(struct jffs2_node_frag),
> -					   0, 0, NULL);
> -	if (!node_frag_slab)
> -		goto err;
> -
> -	inode_cache_slab = kmem_cache_create("jffs2_inode_cache",
> -					     sizeof(struct jffs2_inode_cache),
> -					     0, 0, NULL);
> -	if (!inode_cache_slab)
> -		goto err;
> -
> -#ifdef CONFIG_JFFS2_FS_XATTR
> -	xattr_datum_cache = kmem_cache_create("jffs2_xattr_datum",
> -					     sizeof(struct jffs2_xattr_datum),
> -					     0, 0, NULL);
> -	if (!xattr_datum_cache)
> -		goto err;
> -
> -	xattr_ref_cache = kmem_cache_create("jffs2_xattr_ref",
> -					   sizeof(struct jffs2_xattr_ref),
> -					   0, 0, NULL);
> -	if (!xattr_ref_cache)
> -		goto err;
> -#endif
> -
> -	return 0;
> - err:
> -	jffs2_destroy_slab_caches();
> -	return -ENOMEM;
> -}
> -
> -void jffs2_destroy_slab_caches(void)
> -{
> -	kmem_cache_destroy(full_dnode_slab);
> -	kmem_cache_destroy(raw_dirent_slab);
> -	kmem_cache_destroy(raw_inode_slab);
> -	kmem_cache_destroy(tmp_dnode_info_slab);
> -	kmem_cache_destroy(raw_node_ref_slab);
> -	kmem_cache_destroy(node_frag_slab);
> -	kmem_cache_destroy(inode_cache_slab);
> -#ifdef CONFIG_JFFS2_FS_XATTR
> -	kmem_cache_destroy(xattr_datum_cache);
> -	kmem_cache_destroy(xattr_ref_cache);
> -#endif
> -}
> -
>  struct jffs2_full_dirent *jffs2_alloc_full_dirent(int namesize)
>  {
>  	struct jffs2_full_dirent *ret;
> -	ret = kmalloc(sizeof(struct jffs2_full_dirent) + namesize, GFP_KERNEL);
> +	ret = kmalloc(sizeof(*ret) + namesize, GFP_KERNEL);
>  	dbg_memalloc("%p\n", ret);
>  	return ret;
>  }
> @@ -127,7 +34,7 @@ void jffs2_free_full_dirent(struct jffs2_full_dirent *x)
>  struct jffs2_full_dnode *jffs2_alloc_full_dnode(void)
>  {
>  	struct jffs2_full_dnode *ret;
> -	ret = kmem_cache_alloc(full_dnode_slab, GFP_KERNEL);
> +	ret = malloc(sizeof(*ret));
>  	dbg_memalloc("%p\n", ret);
>  	return ret;
>  }
> @@ -135,13 +42,13 @@ struct jffs2_full_dnode *jffs2_alloc_full_dnode(void)
>  void jffs2_free_full_dnode(struct jffs2_full_dnode *x)
>  {
>  	dbg_memalloc("%p\n", x);
> -	kmem_cache_free(full_dnode_slab, x);
> +	free(x);
>  }
>  
>  struct jffs2_raw_dirent *jffs2_alloc_raw_dirent(void)
>  {
>  	struct jffs2_raw_dirent *ret;
> -	ret = kmem_cache_alloc(raw_dirent_slab, GFP_KERNEL);
> +	ret = malloc(sizeof(*ret));
>  	dbg_memalloc("%p\n", ret);
>  	return ret;
>  }
> @@ -149,13 +56,13 @@ struct jffs2_raw_dirent *jffs2_alloc_raw_dirent(void)
>  void jffs2_free_raw_dirent(struct jffs2_raw_dirent *x)
>  {
>  	dbg_memalloc("%p\n", x);
> -	kmem_cache_free(raw_dirent_slab, x);
> +	free(x);
>  }
>  
>  struct jffs2_raw_inode *jffs2_alloc_raw_inode(void)
>  {
>  	struct jffs2_raw_inode *ret;
> -	ret = kmem_cache_alloc(raw_inode_slab, GFP_KERNEL);
> +	ret = malloc(sizeof(*ret));
>  	dbg_memalloc("%p\n", ret);
>  	return ret;
>  }
> @@ -163,13 +70,13 @@ struct jffs2_raw_inode *jffs2_alloc_raw_inode(void)
>  void jffs2_free_raw_inode(struct jffs2_raw_inode *x)
>  {
>  	dbg_memalloc("%p\n", x);
> -	kmem_cache_free(raw_inode_slab, x);
> +	free(x);
>  }
>  
>  struct jffs2_tmp_dnode_info *jffs2_alloc_tmp_dnode_info(void)
>  {
>  	struct jffs2_tmp_dnode_info *ret;
> -	ret = kmem_cache_alloc(tmp_dnode_info_slab, GFP_KERNEL);
> +	ret = malloc(sizeof(*ret));
>  	dbg_memalloc("%p\n",
>  		ret);
>  	return ret;
> @@ -178,14 +85,14 @@ struct jffs2_tmp_dnode_info *jffs2_alloc_tmp_dnode_info(void)
>  void jffs2_free_tmp_dnode_info(struct jffs2_tmp_dnode_info *x)
>  {
>  	dbg_memalloc("%p\n", x);
> -	kmem_cache_free(tmp_dnode_info_slab, x);
> +	free(x);
>  }
>  
>  static struct jffs2_raw_node_ref *jffs2_alloc_refblock(void)
>  {
>  	struct jffs2_raw_node_ref *ret;
>  
> -	ret = kmem_cache_alloc(raw_node_ref_slab, GFP_KERNEL);
> +	ret = malloc(sizeof(*ret) * (REFS_PER_BLOCK + 1));
>  	if (ret) {
>  		int i = 0;
>  		for (i=0; i < REFS_PER_BLOCK; i++) {
> @@ -242,13 +149,13 @@ int jffs2_prealloc_raw_node_refs(struct jffs2_sb_info *c,
>  void jffs2_free_refblock(struct jffs2_raw_node_ref *x)
>  {
>  	dbg_memalloc("%p\n", x);
> -	kmem_cache_free(raw_node_ref_slab, x);
> +	free(x);
>  }
>  
>  struct jffs2_node_frag *jffs2_alloc_node_frag(void)
>  {
>  	struct jffs2_node_frag *ret;
> -	ret = kmem_cache_alloc(node_frag_slab, GFP_KERNEL);
> +	ret = malloc(sizeof(*ret));
>  	dbg_memalloc("%p\n", ret);
>  	return ret;
>  }
> @@ -256,13 +163,13 @@ struct jffs2_node_frag *jffs2_alloc_node_frag(void)
>  void jffs2_free_node_frag(struct jffs2_node_frag *x)
>  {
>  	dbg_memalloc("%p\n", x);
> -	kmem_cache_free(node_frag_slab, x);
> +	free(x);
>  }
>  
>  struct jffs2_inode_cache *jffs2_alloc_inode_cache(void)
>  {
>  	struct jffs2_inode_cache *ret;
> -	ret = kmem_cache_alloc(inode_cache_slab, GFP_KERNEL);
> +	ret = malloc(sizeof(*ret));
>  	dbg_memalloc("%p\n", ret);
>  	return ret;
>  }
> @@ -270,14 +177,14 @@ struct jffs2_inode_cache *jffs2_alloc_inode_cache(void)
>  void jffs2_free_inode_cache(struct jffs2_inode_cache *x)
>  {
>  	dbg_memalloc("%p\n", x);
> -	kmem_cache_free(inode_cache_slab, x);
> +	free(x);
>  }
>  
>  #ifdef CONFIG_JFFS2_FS_XATTR
>  struct jffs2_xattr_datum *jffs2_alloc_xattr_datum(void)
>  {
>  	struct jffs2_xattr_datum *xd;
> -	xd = kmem_cache_zalloc(xattr_datum_cache, GFP_KERNEL);
> +	xd = malloc(sizeof(*ret));
>  	dbg_memalloc("%p\n", xd);
>  	if (!xd)
>  		return NULL;
> @@ -291,13 +198,13 @@ struct jffs2_xattr_datum *jffs2_alloc_xattr_datum(void)
>  void jffs2_free_xattr_datum(struct jffs2_xattr_datum *xd)
>  {
>  	dbg_memalloc("%p\n", xd);
> -	kmem_cache_free(xattr_datum_cache, xd);
> +	free(xd);
>  }
>  
>  struct jffs2_xattr_ref *jffs2_alloc_xattr_ref(void)
>  {
>  	struct jffs2_xattr_ref *ref;
> -	ref = kmem_cache_zalloc(xattr_ref_cache, GFP_KERNEL);
> +	ref = malloc(sizeof(*ret));
>  	dbg_memalloc("%p\n", ref);
>  	if (!ref)
>  		return NULL;
> @@ -310,6 +217,6 @@ struct jffs2_xattr_ref *jffs2_alloc_xattr_ref(void)
>  void jffs2_free_xattr_ref(struct jffs2_xattr_ref *ref)
>  {
>  	dbg_memalloc("%p\n", ref);
> -	kmem_cache_free(xattr_ref_cache, ref);
> +	free(ref);
>  }
>  #endif
> diff --git a/fs/jffs2/nodelist.h b/fs/jffs2/nodelist.h
> index 20deb639f6..7ea18cd2fc 100644
> --- a/fs/jffs2/nodelist.h
> +++ b/fs/jffs2/nodelist.h
> @@ -441,8 +441,6 @@ int jffs2_do_crccheck_inode(struct jffs2_sb_info *c, struct jffs2_inode_cache *i
>  void jffs2_do_clear_inode(struct jffs2_sb_info *c, struct jffs2_inode_info *f);
>  
>  /* malloc.c */
> -int jffs2_create_slab_caches(void);
> -void jffs2_destroy_slab_caches(void);
>  
>  struct jffs2_full_dirent *jffs2_alloc_full_dirent(int namesize);
>  void jffs2_free_full_dirent(struct jffs2_full_dirent *);
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

