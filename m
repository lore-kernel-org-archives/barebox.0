Delivery-date: Tue, 10 Jun 2025 10:06:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOu04-005j6V-1u
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 10:06:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOu03-0003uc-Qu
	for lore@pengutronix.de; Tue, 10 Jun 2025 10:06:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JARHnHz951keuFyjTiBpL2mIwtCvCgcZBOB/XYf7qT8=; b=On7REMxYbYAB7ZIKkVBbvu1M7S
	hQTWisiABa+PDpSHaFbYJ8asW0jdM2vR/PjjIDNFZ/ZdY3e6mRDXP9sfOXFTl/40TNlf8Ti+eqvEV
	cw+3aCg9Du8rTNzqU0gvMyNr+rx9ICcfs3kOhpMjHDU8YBMVHbfOwxr4OASf/s4RuTPtwFa2WIn7b
	UdiA2EKvN63WQelZ8Rt2UzSzG9hWNj1MqkSpT57EhDw4T1Jlgr0O+nOO4JcziFFwm86gaD//cy4/N
	J18tKbISn1c5oj5Wt5ld+XEDM781xuDLiEIgl+Ltds9oktVDLp1QnRRj0fwBCYpNYliBLM2/Y4gDa
	5Jb9eV/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOtzW-000000066xa-44yN;
	Tue, 10 Jun 2025 08:05:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOtui-0000000664d-0bpz
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 08:00:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uOtug-0000ZF-Rk; Tue, 10 Jun 2025 10:00:54 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uOtug-002jfB-2A;
	Tue, 10 Jun 2025 10:00:54 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uOtug-004kvN-1k;
	Tue, 10 Jun 2025 10:00:54 +0200
Date: Tue, 10 Jun 2025 10:00:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aEfmNvFPisKp5sKq@pengutronix.de>
References: <20250605074713.4170334-1-o.rempel@pengutronix.de>
 <20250605074713.4170334-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250605074713.4170334-3-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_010056_185888_0237668D 
X-CRM114-Status: GOOD (  28.01  )
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
Subject: Re: [PATCH v2 2/9] nvmem: rmem: add write and protect support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 05, 2025 at 09:47:06AM +0200, Oleksij Rempel wrote:
> +/**
> + * rmem_is_byte_protected() - Check if a specific byte is write-protected.
> + * @rmem:	Pointer to the rmem private data.
> + * @offset:	Offset of the byte to check.
> + *
> + * Helper function to consult the protection bitmap.
> + *
> + * Return: True if the byte at @offset is protected, false otherwise.
> + */
> +static inline bool rmem_is_byte_protected(const struct rmem *rmem,
> +					  unsigned int offset)
> +{
> +	unsigned char bit_mask;
> +	unsigned int byte_idx;
> +
> +	byte_idx = offset / 8;
> +	bit_mask = 1U << (offset % 8);
> +	return (rmem->protection_bitmap[byte_idx] & bit_mask) != 0;

test_bit();

> +}
> +
> +/**
> + * rmem_do_protect_byte() - Mark a specific byte as write-protected.
> + * @rmem:	Pointer to the rmem private data.
> + * @offset:	Offset of the byte to protect.
> + *
> + * Helper function to set a bit in the protection bitmap. Assumes @offset
> + * is valid and rmem->protection_bitmap is allocated.
> + */
> +static inline void rmem_do_protect_byte(struct rmem *rmem, unsigned int offset)
> +{
> +	unsigned char bit_mask = 1U << (offset % 8);
> +	unsigned int byte_idx = offset / 8;
> +
> +	rmem->protection_bitmap[byte_idx] |= bit_mask;

set_bit();

> +}
> +
> +/**
> + * rmem_do_unprotect_byte() - Mark a specific byte as writable.
> + * @rmem:	Pointer to the rmem private data.
> + * @offset:	Offset of the byte to unprotect.
> + *
> + * Helper function to clear a bit in the protection bitmap. Assumes @offset
> + * is valid and rmem->protection_bitmap is allocated.
> + */
> +static inline void rmem_do_unprotect_byte(struct rmem *rmem,
> +					  unsigned int offset)
> +{
> +	unsigned int byte_idx = offset / 8;
> +	unsigned char bit_mask = 1U << (offset % 8);
> +
> +	rmem->protection_bitmap[byte_idx] &= ~bit_mask;

clear_bit();

> +}
> +
> +/**
> + * rmem_write() - Write data to the NVMEM device.
> + * @context:	Pointer to the rmem private data (struct rmem).
> + * @offset:	Offset within the NVMEM device to write to.
> + * @val:	Buffer containing the data to write.
> + * @bytes:	Number of bytes to write.
> + *
> + * This function is called by the NVMEM core to write data to the
> + * reserved memory region. It first checks the protection bitmap to ensure
> + * the target range is not write-protected. If writable, it uses the
> + * custom 'mem_copy' function.
> + * Specific error codes include -EROFS if protected or -EINVAL for bad params.
> + *
> + * Return: 0 on success, or a negative error code on failure.
> + */
> +static int rmem_write(void *context, unsigned int offset, const void *val,
> +		      size_t bytes)
> +{
> +	struct rmem *rmem = context;
> +	unsigned int i;
> +
> +	for (i = 0; i < bytes; ++i) {
> +		if (rmem_is_byte_protected(rmem, offset + i)) {
> +			dev_warn(rmem->dev,
> +				 "Write [0x%x, len %zu] denied at 0x%x (protected)\n",
> +				 offset, bytes, offset + i);
> +			return -EROFS;
> +		}
> +	}
> +

        if (find_next_bit(rmem->prot_map, offset + bytes, offset) < offset + bytes)
                return -EROFS;

> +	/*
> +	 * The last two arguments to mem_copy (0, 0) are specific to
> +	 * the custom mem_copy implementation.
> +	 */
> +	return mem_copy(rmem->dev, (void *)rmem->mem->start + offset, val,
> +			bytes, 0, 0);
> +}
> +
> +/**
> + * rmem_set_protection_bits() - Mark a memory range as read-only.
> + * @rmem:	Pointer to the rmem private data.
> + * @offset:	Starting offset of the range to protect.
> + * @bytes:	Length of the range to protect in bytes.
> + *
> + * Sets the corresponding bits in the protection_bitmap to mark the
> + * specified memory range as write-protected (read-only).
> + *
> + * Return: 0 on success, or a negative error code on failure.
> + */
> +static int rmem_set_protection_bits(struct rmem *rmem, unsigned int offset,
> +				    size_t bytes)
> +{
> +	unsigned int end_offset = offset + bytes;
> +	unsigned int i;
> +
> +	for (i = offset; i < end_offset; ++i)
> +		rmem_do_protect_byte(rmem, i);

bitmap_set();

> +
> +	dev_info(rmem->dev, "Protected range [0x%x, len %zu]\n", offset,
> +		 bytes);
> +	return 0;
> +}
> +
> +/**
> + * rmem_clear_protection_bits() - Mark a memory range as writable.
> + * @rmem:	Pointer to the rmem private data.
> + * @offset:	Starting offset of the range to unprotect.
> + * @bytes:	Length of the range to unprotect in bytes.
> + *
> + * Clears the corresponding bits in the protection_bitmap to mark the
> + * specified memory range as writable.
> + *
> + * Return: 0 on success, or a negative error code on failure.
> + */
> +static int rmem_clear_protection_bits(struct rmem *rmem, unsigned int offset,
> +				      size_t bytes)
> +{
> +	unsigned int end_offset = offset + bytes;
> +	unsigned int i;
> +
> +	for (i = offset; i < end_offset; ++i)
> +		rmem_do_unprotect_byte(rmem, i);

bitmap_clear();

> +
> +	dev_info(rmem->dev, "Unprotected range [0x%x, len %zu]\n", offset,
> +		 bytes);
> +	return 0;
> +}
> +
>  static int rmem_probe(struct device *dev)
>  {
>  	struct nvmem_config config = { };
> @@ -41,7 +229,14 @@ static int rmem_probe(struct device *dev)
>  	config.priv = priv;
>  	config.name = "rmem";
>  	config.size = resource_size(mem);
> +	priv->total_size = config.size;
> +
> +	priv->protection_bitmap_bytes = DIV_ROUND_UP(priv->total_size, 8);
> +	priv->protection_bitmap = xzalloc(priv->protection_bitmap_bytes);

bitmap_xzalloc();

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


