Delivery-date: Fri, 11 Apr 2025 09:31:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38qx-00B9l4-2X
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:31:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38qw-0002VQ-9j
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:31:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gMueoLSvDiXbSfTRi4YOiNrhRSL4hHXYvmhR5ZYGdJs=; b=Km4im3dYqNamNbLiSNKIYU4KEM
	bleqf2uis4Ta8SDpduyxdedoWzU7BPGZflQViDsD1F7a0GshGl7AHVS4u7/8HpompyX9GcYhofcmX
	l0ZKYRYQ/SRYsaEjr6tbTRmKfqEmCVpiTlh0zhHJ90GAIT0oJrkeV27U0c+iCNCW+JxT15CzzC0ky
	tonwf4Z6rbnoZWPA0MkJWqoZOodQuiZmhzO9meRiYZyM5amfkhDZ4bjtOOQMNCZUQafp0A1LlZqs4
	nLfKQm6VmgnP4iD/t7pfMKb4+jK4bIT2CcOgx/4uT2FgKAP6ViPpYbTOjA8sIOTOcGvhDnicI+M0F
	/uIklKFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38qJ-0000000Cs31-45op;
	Fri, 11 Apr 2025 07:30:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38ad-0000000Cpdo-1Bo2
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:14:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u38ac-0007Co-01; Fri, 11 Apr 2025 09:14:14 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u38ab-004OaN-2X;
	Fri, 11 Apr 2025 09:14:13 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u38ab-00CBU2-2D;
	Fri, 11 Apr 2025 09:14:13 +0200
Date: Fri, 11 Apr 2025 09:14:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, David Dgien <dgienda125@gmail.com>
Message-ID: <Z_jBRTDkCMP_swb5@pengutronix.de>
References: <20250410104625.2500755-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250410104625.2500755-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_001415_320676_DA644BB9 
X-CRM114-Status: GOOD (  19.74  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! tlsf: Add tracking of added tlsf memory pools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Apr 10, 2025 at 12:46:25PM +0200, Ahmad Fatoum wrote:
> tlsf: fix KASAN poisoning of TLSF pool
> 
> By poisoning all of the heap after the first malloc, new_pool_entry
> becomes a pointer to poisoned memory, which causes a KASAN error right
> away at startup.
> 
> Move the kasan_poison_shadow call directly after tlsf_add_pool to
> fix this.
> 
> Cc: David Dgien <dgienda125@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/tlsf_malloc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
> index 4acf1c1c5071..6e9d48af26bb 100644
> --- a/common/tlsf_malloc.c
> +++ b/common/tlsf_malloc.c
> @@ -115,12 +115,12 @@ void *malloc_add_pool(void *mem, size_t bytes)
>  	if (!new_pool)
>  		return NULL;
>  
> +	kasan_poison_shadow(mem, bytes, KASAN_TAG_INVALID);
> +
>  	new_pool_entry = malloc(sizeof(*new_pool_entry));
>  	if (!new_pool_entry)
>  		return NULL;
>  
> -	kasan_poison_shadow(mem, bytes, KASAN_TAG_INVALID);
> -
>  	new_pool_entry->pool = new_pool;
>  	list_add(&new_pool_entry->list, &mem_pool_list);
>  
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


