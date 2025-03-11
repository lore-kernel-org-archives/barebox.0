Delivery-date: Tue, 11 Mar 2025 14:44:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trzu9-00ChHI-2V
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 14:44:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trzu8-0007Rh-J2
	for lore@pengutronix.de; Tue, 11 Mar 2025 14:44:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xLW+nFrZgsY+yXAZlDxjiaP3/vyzkkXA5H7IWZIzMXg=; b=Q1gL2sQ/6tt5SmZjE5udMvaNBz
	+YIwpXXM2BajawgmjEtQIDN1IQWZvekx4K1/ndmQEifdlJwejvvkt/T5MHjkf+jSG5itk57aLjBE2
	sTJDVgZ1MQQM22FCSiSgbzLRtsUAZYfbY88jfRj4hEduD8Qc/6Grqt3oYbCtLObjfosrZe3HmDcDG
	CfbxZ1UWe28Oil07j90+8EuifrwfVDfgIKJc6A1fsB3/kmBLkRR47br3OXWzRAr3VIp3PQw+DI92f
	x0OFsRuZrS/KI7R2Grf5akCCdX4q+/IYva8U0yT+US8bv47OWgWEreJNjCmg5P0p/E0gaVewJtq7O
	pgWG0DxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trzth-00000005s2V-22jw;
	Tue, 11 Mar 2025 13:43:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trztf-00000005s1f-0mqO
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 13:43:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1trzte-0007Jy-0h; Tue, 11 Mar 2025 14:43:50 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trztd-005BpF-2g;
	Tue, 11 Mar 2025 14:43:49 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trztd-007kMt-2O;
	Tue, 11 Mar 2025 14:43:49 +0100
Date: Tue, 11 Mar 2025 14:43:49 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <20250311134349.kresmi7nbwffa2pn@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
 <20250311-am625-secure-v2-7-3cbbfa092346@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250311-am625-secure-v2-7-3cbbfa092346@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_064351_224857_16DCB67E 
X-CRM114-Status: GOOD (  17.29  )
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
Subject: Re: [PATCH v2 07/14] fip: add function to calculate a sha256 over
 FIP image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-03-11, Sascha Hauer wrote:
> This adds fip_sha256() to calculate a sha256 over a FIP image.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  include/fiptool.h |  3 +++
>  lib/fip.c         | 23 ++++++++++++++++++++++-
>  2 files changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/include/fiptool.h b/include/fiptool.h
> index bb63a79c16..73b0fbe398 100644
> --- a/include/fiptool.h
> +++ b/include/fiptool.h
> @@ -38,6 +38,7 @@ struct fip_state {
>  	size_t nr_image_descs;
>  	int verbose;
>  	void *buffer;
> +	size_t bufsize;
>  	bool buf_no_free;
>  };
>  
> @@ -100,4 +101,6 @@ extern toc_entry_t plat_def_toc_entries[];
>  
>  struct fip_state *fip_image_open(const char *filename, size_t offset);
>  
> +int fip_sha256(struct fip_state *fip, char *hash);
> +
>  #endif /* FIPTOOL_H */
> diff --git a/lib/fip.c b/lib/fip.c
> index 8086b43412..7a5e3dc844 100644
> --- a/lib/fip.c
> +++ b/lib/fip.c
> @@ -24,6 +24,7 @@
>  #include <libfile.h>
>  #include <fs.h>
>  #include <linux/kernel.h>
> +#include <digest.h>
>  
>  #include <fip.h>
>  #include <fiptool.h>
> @@ -168,6 +169,7 @@ static int fip_do_parse_buf(struct fip_state *fip, void *buf, size_t size,
>  	int terminated = 0;
>  
>  	fip->buffer = buf;
> +	fip->bufsize = size;
>  
>  	bufend = fip->buffer + size;
>  
> @@ -570,10 +572,29 @@ struct fip_state *fip_image_open(const char *filename, size_t offset)
>  	close(fd);
>  
>  	return fip_state;
> -
>  err:
>  	close(fd);
>  	fip_free(fip_state);
>  
>  	return ERR_PTR(ret);
>  }
> +
> +int fip_sha256(struct fip_state *fip, char *hash)
> +{
> +	struct digest *d;
> +	int ret;
> +
> +	d = digest_alloc_by_algo(HASH_ALGO_SHA256);
> +	if (!d)
> +		return -ENOSYS;
> +
> +	digest_init(d);
> +
> +	digest_update(d, fip->buffer, fip->bufsize);
> +
> +	ret = digest_final(d, hash);
> +
> +	digest_free(d);
> +
> +	return ret;
> +}
> 
> -- 
> 2.39.5
> 
> 
> 


