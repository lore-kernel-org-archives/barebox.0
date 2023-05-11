Delivery-date: Thu, 11 May 2023 22:16:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxChx-00EHzO-QN
	for lore@lore.pengutronix.de; Thu, 11 May 2023 22:16:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxChv-0006Fq-Du
	for lore@pengutronix.de; Thu, 11 May 2023 22:16:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f/cwUH8W2IEF1krWDvqQnclRbvPn+4t3mN3UOJE+UDs=; b=m2Zxb3p1YWJLBRGQgkNvfqV73c
	09qrVNrD2o1+5Gmv1retUVbm7pPLJm9HhYNZjWtzcotk59wa5WVEiGJ1UxmemSIq5tAcOTl6a+WJw
	Uh9bHt8TJsaQVIXUJEJmIcKyEIyvGLbRVEqFjitTxii3rBMRz9CXtjJvPxeCpClqyCCU8iXr/Qzc+
	C+l82DTOuBpmCU90NamEW3Bp+cUQBWvBKsam7y2AJVsp3VIo9P42quEGwZvWihxascO+kc6kiyBfa
	yq7VA0SizeBKw3uy3AQe4MDblxzpyeCDabGunnMP6l9lcUV3Zyi+geGavPznxQddSwIFK/pY3e2Qd
	s9w1MZjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxCgP-009tPj-17;
	Thu, 11 May 2023 20:14:37 +0000
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxCgL-009tOP-0e
	for barebox@lists.infradead.org;
	Thu, 11 May 2023 20:14:35 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 4A8EB240007;
	Thu, 11 May 2023 20:14:25 +0000 (UTC)
Date: Thu, 11 May 2023 22:14:17 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZF1MmW6G19bYnE50@tour>
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
 <20230510233711.37345-2-jmaselbas@zdiv.net>
 <20230511072512.GI29365@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230511072512.GI29365@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230511_131433_542128_E04883BC 
X-CRM114-Status: GOOD (  37.56  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH 01/11] scripts: Add Allwinner eGON image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 11, 2023 at 09:25:12AM +0200, Sascha Hauer wrote:
> On Thu, May 11, 2023 at 01:37:01AM +0200, Jules Maselbas wrote:
> > On power-up Allwinner SoC starts in boot ROM, aka BROM, which will search
> > for an eGON image: first from the SD card, then from eMMC. If no image is
> > found then the BROM will enter into FEL mode that can be used for initial
> > programming and recovery of devices using USB.
> > 
> > The eGON header structure is adapted from u-boot: /include/sunxi_image.h,
> > the header structure is also documented on https://linux-sunxi.org/EGON
> > 
> > BROM will load, at most, the first 32KB of the image into SRAM, including
> > the header itself! The jump instruction in the header needs to be patched
> > accordingly with the image size.
> 
> Do I understand it correctly that all code needed to load the full
> barebox image needs to fit into these 32KiB?
Yes, this is done by the "xload" PBL-only image.
But for developpement I load code through USB to a different SRAM of 108KB!

> Where must this image be placed? Directly at the origin of the SD card?
> That would mean the partition table is somewhere inside the binary,
> right?
The eGON image must start exactly at 8KB offset from the origin of the SD
card. This leave room for the actual partition table.

> 
> > +
> > +#define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
> > +#define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
> 
> You can reuse the definition of these in scripts/include/linux/kernel.h
Ack

> > +#define STAMP_VALUE 0x5f0a6c39
> > +
> > +static void mkimage(char *infile, char *outfile)
> > +{
> > +	struct egon_header *hdr;
> > +	uint32_t *p32;
> > +	uint32_t sum;
> > +	int i;
> > +	size_t hdr_size;
> > +	size_t bin_size;
> > +	size_t img_size;
> > +	char *bin;
> > +	int fd, ret;
> > +
> > +	bin = read_file(infile, &bin_size);
> > +	if (!bin) {
> > +		perror("read_file");
> > +		exit(1);
> > +	}
> > +
> > +	/* the header must be a multiple of 32 bytes */
> > +	hdr_size = sizeof(*hdr);
> > +
> > +	/* test if the binary has reserved space for the header */
> > +	hdr = (void *)bin;
> 
> Declare bin as void *, this makes the explicit cast unnecessary.
> 
> > +	if (hdr->branch == EGON_HDR_BRANCH && memcmp(hdr->magic, "eGON", 4) == 0) {
> > +		/* strip the existing header */
> > +		bin += hdr_size;
> > +		bin_size -= hdr_size;
> > +	}
> > +	hdr = calloc(1, hdr_size);
> > +	if (!hdr) {
> > +		perror("malloc");
> > +		exit(1);
> > +	}
> > +
> > +	/* The total image length must be a multiple of 4K bytes */
> > +	img_size = ALIGN(hdr_size + bin_size, 4096);
> > +
> > +	hdr->check_sum = 0;
> 
> hdr is already zeroed due to the use of calloc.
Yes, i don't recall why I did this... I don't exactly recall how the
checksum is verified by the boot rom.

> > +	hdr->branch = EGON_HDR_BRANCH;
> > +	hdr->length = cpu_to_le32(img_size);
> > +	memcpy(hdr->magic, "eGON.BT0", 8);
> > +	memcpy(hdr->spl_signature, "SPL", 3);
> > +	hdr->spl_signature[3] = 0x03; /* version 0.3 */
> > +
> > +	/* calculate the checksum */
> > +	sum = STAMP_VALUE;
> > +	for (p32 = (void *) hdr, i = 0; i < hdr_size / sizeof(uint32_t); i++)
> > +		sum += le32_to_cpu(p32[i]);
> > +	for (p32 = (void *) bin, i = 0; i < bin_size / sizeof(uint32_t); i++)
> > +		sum += le32_to_cpu(p32[i]);
> 
> Does this work when bin_size is not a multiple of sizeof(uint32_t)?
> It likely is, but who knows...
bin_size should be a multiple of sizeof(uint32_t), if that's not the case
I don't think that the result will be correct.
But I could add something to handle this exact case.

> You are calculating the checksum up to bin_size, not including the final
> alignment. That works because the alignment is filled with 0x0 which
> doesn't add to this checksum. That is ok, but maybe it's worth noting
> that in the code.
Yes you're right, I'll add a comment, and also on ftruncate that is used
to pad the image with zero.

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


