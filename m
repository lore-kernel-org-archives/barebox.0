Delivery-date: Wed, 18 Oct 2023 10:22:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt1oX-00CmYF-Iv
	for lore@lore.pengutronix.de; Wed, 18 Oct 2023 10:22:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt1oW-0003Cp-EI
	for lore@pengutronix.de; Wed, 18 Oct 2023 10:22:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9ExroPR+tAda03l5PdW8JAP3pl1TJuxiPFfoA803dQM=; b=HyTyzMaDyoCRese1TPEupM7Ety
	0RJqpc25rLnmnQ7BKqbWiTxlGLvo7CG/9EwlbgMtLJUtOvBfBvjaVYKSQEVeSNsMIsKXM4sqN9I2G
	iTjd5N1g9qHZmg5q0etl1fWnsAIKO4EfgSKqFnSebWuSknv26QIOl1G7Vg+vwYxDcyPazT7RppmH9
	W5vaxRIHH+LZotMwlUfYztz+/GAK0+y2glA8uR9vZ1pfH5YNcQzyYtIg9pPG0/nNkohxQbvrpAfAB
	r5tlgvkaD02dybo/+erenRFVmsvhp6Uq4rCgTNma2fK9uDRDjghnGw94Kzco6UNtROcbNaVTlt28Z
	SytTlxqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt1nS-00E7xA-1k;
	Wed, 18 Oct 2023 08:20:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt1nP-00E7wF-0C
	for barebox@lists.infradead.org;
	Wed, 18 Oct 2023 08:20:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qt1nN-00030a-TP; Wed, 18 Oct 2023 10:20:49 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qt1nN-002VpI-GT; Wed, 18 Oct 2023 10:20:49 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qt1nN-00F3NL-EM; Wed, 18 Oct 2023 10:20:49 +0200
Date: Wed, 18 Oct 2023 10:20:49 +0200
To: Christian Melki <christian.melki@t2data.com>
Cc: barebox@lists.infradead.org
Message-ID: <20231018082049.GK3359458@pengutronix.de>
References: <20231017191833.1092768-1-christian.melki@t2data.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231017191833.1092768-1-christian.melki@t2data.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_012051_095298_B8BA4F7F 
X-CRM114-Status: GOOD (  19.42  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] machine_id: Add getter of machine id hashables.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 17, 2023 at 09:18:33PM +0200, Christian Melki wrote:
> Add the possibility for reusing the registered
> hashables for other functions beside machine id
> and the truncated sha1 it offers.
> 
> Signed-off-by: Christian Melki <christian.melki@t2data.com>
> ---
>  common/machine_id.c  | 5 +++++
>  include/machine_id.h | 7 +++++++
>  2 files changed, 12 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/machine_id.c b/common/machine_id.c
> index 8c273b9349..f0b148fb9b 100644
> --- a/common/machine_id.c
> +++ b/common/machine_id.c
> @@ -16,6 +16,11 @@
>  static void *__machine_id_hashable;
>  static size_t __machine_id_hashable_length;
>  
> +const void *machine_id_get_hashable(size_t *len)
> +{
> +	*len = __machine_id_hashable_length;
> +	return __machine_id_hashable;
> +}
>  
>  void machine_id_set_hashable(const void *hashable, size_t len)
>  {
> diff --git a/include/machine_id.h b/include/machine_id.h
> index e30bbada1a..9699e7f207 100644
> --- a/include/machine_id.h
> +++ b/include/machine_id.h
> @@ -5,10 +5,17 @@
>  
>  #if IS_ENABLED(CONFIG_MACHINE_ID)
>  
> +const void *machine_id_get_hashable(size_t *len);
> +
>  void machine_id_set_hashable(const void *hashable, size_t len);
>  
>  #else
>  
> +static inline const void *machine_id_get_hashable(size_t *len)
> +{
> +	return NULL;
> +}
> +
>  static inline void machine_id_set_hashable(const void *hashable, size_t len)
>  {
>  }
> -- 
> 2.34.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


