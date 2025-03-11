Delivery-date: Tue, 11 Mar 2025 14:43:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trztl-00ChGU-2k
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 14:43:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trztk-0007Kx-Gk
	for lore@pengutronix.de; Tue, 11 Mar 2025 14:43:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xfpgQJysZh4pjRJbu3JlHIlSpumkQEJrqLbJiDLFDtA=; b=XRfkUSEbSWAFkjwM5Pe1R6wEoh
	2B870jcoIrFj+RUjWv56sjqJL24S9COWDeLnS9Jdp/rMWAPykFeiioUEXhJBlmhBXxLYHqb9WyTIk
	PaxwSzWY9nnfO85ZKwcnYO/ksSww0ejv7W6V4wn3F/ou9szSsXH4e097+lD7zklqFCHniw4ZxUBQN
	nfOu6g9unlUdqrElOD6LIM7rPrrHwTZrZJ5ND+TNR8uBIIcEjkaK76iEqD5+xFe69N3jSA61Fhy21
	DdJ5QKUZGHwSaKoZzxi96thqCuoJCooCx0Lo40y8aY3siyo36llOYDXuldOmhUwlpgPxccSy8CFxy
	iFBWrXIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trzt4-00000005rxF-46E3;
	Tue, 11 Mar 2025 13:43:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trzs1-00000005rqL-1uk9
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 13:42:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1trzs0-00075H-5X; Tue, 11 Mar 2025 14:42:08 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trzrz-005Bor-3A;
	Tue, 11 Mar 2025 14:42:07 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1trzrz-007kMP-2n;
	Tue, 11 Mar 2025 14:42:07 +0100
Date: Tue, 11 Mar 2025 14:42:07 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <20250311134207.x4o2ccin3jx6pdpj@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
 <20250311-am625-secure-v2-5-3cbbfa092346@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250311-am625-secure-v2-5-3cbbfa092346@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_064209_495228_4F8AA3E4 
X-CRM114-Status: GOOD (  31.30  )
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
Subject: Re: [PATCH v2 05/14] fip: rework fip_image_open()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-03-11, Sascha Hauer wrote:
> fip_image_open() used to do all the parsing into a struct fip_state
> itself. Instead, only load the FIP image into a buffer and call
> fip_do_parse_buf() with this buffer. This has the advantage that we
> have all parsing of the FIP image in a single place. Also this helps
> with a followup patch which calculates a sha256 over a FIP image
> which can easily done when we have the whole FIP image in a contiguous
> buffer.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  lib/fip.c | 78 +++++++++++++++++++++++++++++++++------------------------------
>  1 file changed, 41 insertions(+), 37 deletions(-)
> 
> diff --git a/lib/fip.c b/lib/fip.c
> index 23e82098da..aab2795476 100644
> --- a/lib/fip.c
> +++ b/lib/fip.c
> @@ -23,6 +23,7 @@
>  #include <string.h>
>  #include <libfile.h>
>  #include <fs.h>
> +#include <linux/kernel.h>
>  
>  #include <fip.h>
>  #include <fiptool.h>
> @@ -447,22 +448,17 @@ int fip_update(struct fip_state *fip)
>  }
>  
>  /*
> - * fip_image_open - open a FIP image for readonly access
> + * fip_image_open - open a FIP image
>   * @filename: The filename of the FIP image
>   * @offset: The offset of the FIP image in the file
>   *
> - * This opens a FIP image for readonly access. This is an alternative
> - * implementation for fip_parse() with these differences:
> + * This opens a FIP image. This is an alternative implementation for
> + * fip_parse() with these differences:
>   * - suitable for reading FIP images from raw partitions. This function
>   *   only reads the FIP image, even when the partition is bigger than the
>   *   image
>   * - Allows to specify an offset within the partition where the FIP image
>   *   starts
> - * - Do not memdup the images from the full FIP image
> - *
> - * This function is for easy readonly access to the images within the FIP
> - * image. Do not call any of the above FIP manipulation functions other than
> - * fip_free() on an image opened with this function.
>   */
>  struct fip_state *fip_image_open(const char *filename, size_t offset)
>  {
> @@ -470,11 +466,13 @@ struct fip_state *fip_image_open(const char *filename, size_t offset)
>  	int ret;
>  	int fd;
>  	struct fip_state *fip_state;
> -	LIST_HEAD(entries);
>  	size_t fip_headers_size, total = 0;
> -	struct fip_image_desc *desc;
>  	off_t pos;
>  	int n_entries = 0;
> +	struct fip_toc_entry toc_entries[16];
				 	 ^
Why did you used 16?

> +	void *buf, *ptr;
> +	int i;
> +	struct fip_toc_entry *toc_entry;
>  
>  	fd = open(filename, O_RDONLY);
>  	if (fd < 0)
> @@ -506,11 +504,9 @@ struct fip_state *fip_image_open(const char *filename, size_t offset)
>  
>  	/* read all toc entries */
>  	while (1) {
> -		struct fip_image_desc *desc = xzalloc(sizeof(*desc));
> -		struct fip_image *image = xzalloc(sizeof(*image));
> -		struct fip_toc_entry *toc_entry = &image->toc_e;
> +		uint64_t this_end;
>  
> -		desc->image = image;
> +		toc_entry = &toc_entries[n_entries];
>  
>  		ret = read_full(fd, toc_entry, sizeof(*toc_entry));
>  		if (ret < 0)
> @@ -520,53 +516,61 @@ struct fip_state *fip_image_open(const char *filename, size_t offset)
>  			goto err;
>  		}
>  
> -		list_add_tail(&desc->list, &fip_state->descs);
> -
>  		pr_debug("Read TOC entry %pU %llu %llu\n", &toc_entry->uuid,
>  			 toc_entry->offset_address, toc_entry->size);
>  
> -		/* Found the ToC terminator, we are done. */
> -		if (uuid_is_null(&toc_entry->uuid))
> -			break;
> -	}
> -
> -	/* determine buffer size */
> -	fip_for_each_desc(fip_state, desc) {
> -		uint64_t this_end = desc->image->toc_e.offset_address + desc->image->toc_e.size;
> +		this_end = toc_entry->offset_address + toc_entry->size;
>  
>  		if (this_end > total)
>  			total = this_end;
> +
>  		n_entries++;
> -	}
>  
> -	fip_headers_size = n_entries * sizeof(struct fip_toc_entry) + sizeof(fip_toc_header_t);
> +		if (n_entries >= ARRAY_SIZE(toc_entries)) {

			pr_err("Error: Only 16 toc-entries are supported at the moment\n");

> +			ret = -ENOSPC;
> +			goto err;
> +		}
>  
> -	total -= fip_headers_size;
> +		/* Found the ToC terminator, we are done. */
> +		if (uuid_is_null(&toc_entry->uuid))
> +			break;

If this check is happening after the n_entries check, we trigger a
false-positive in case of a 16-entries FIP.

Regards,
  Marco

> +	}
>  
> -	fip_state->buffer = malloc(total);
> -	if (!fip_state->buffer) {
> +	buf = malloc(total);
> +	if (!buf) {
>  		ret = -ENOMEM;
>  		goto err;
>  	}
>  
> -	ret = read_full(fd, fip_state->buffer, total);
> +	ptr = buf;
> +
> +	memcpy(ptr, &toc_header, sizeof(toc_header));
> +	ptr += sizeof(toc_header);
> +
> +	for (i = 0; i < n_entries; i++) {
> +		memcpy(ptr, &toc_entries[i], sizeof(*toc_entry));
> +		ptr += sizeof(*toc_entry);
> +	}
> +
> +	fip_headers_size = n_entries * sizeof(struct fip_toc_entry) + sizeof(fip_toc_header_t);
> +
> +	ret = read_full(fd, ptr, total - fip_headers_size);
>  	if (ret < 0)
>  		goto err;
>  
> -	if (ret < total) {
> +	if (ret < total - fip_headers_size) {
>  		ret = -ENODATA;
>  		goto err;
>  	}
>  
> -	close(fd);
> +	ret = fip_do_parse_buf(fip_state, buf, total, NULL);
> +	if (ret)
> +		goto err;
>  
> -	fip_for_each_desc(fip_state, desc) {
> -		desc->image->buffer = fip_state->buffer +
> -			desc->image->toc_e.offset_address - fip_headers_size;
> -		desc->image->buf_no_free = true;
> -	}
> +	close(fd);
>  
>  	return fip_state;
> +
>  err:
>  	close(fd);
>  	fip_free(fip_state);
> 
> -- 
> 2.39.5
> 
> 
> 


