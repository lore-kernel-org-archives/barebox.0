Delivery-date: Mon, 08 Jan 2024 09:38:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMl9e-008avQ-2Z
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 09:38:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMl9e-0004nM-5i
	for lore@pengutronix.de; Mon, 08 Jan 2024 09:38:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ehJaXJy1FUz1+lMHwJAKDZPGI1/ldVIW82B6JaMpnJI=; b=e6wAXaYrDTm6J5AIuuBYFRAHFo
	hchOhhpWTMa4mwAgtjJTAVHDf7G1z47v7nivxyQJXhcR9XknzJkMzLUoRpODKAoU4JPBrEBeXYf4c
	2Ht9tiLCvn+uT2rOBFJVdOfjCZqrwUkDJmbOa59OcrxPsMFMt+D2bNGR/31fusDYa7GrKgLbLX2GU
	n+TN/Grb+bbpVo9ICfKKyK4Wg43h8DZ6CQWr9H5XL2eFiFxMtPKhD7Qfj7mRq0A3LIoZgLwQ6WJti
	9PYPoQU8h23jcU6wXsDUxur/j6TNV/uSdBqRQHDR6dgEtN9Ja/MIw/tJP44T3TlGw3TKiWtNa16ww
	y/nQvLzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMl8V-004Kkz-07;
	Mon, 08 Jan 2024 08:37:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMl8R-004KkZ-2N
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 08:37:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMl8M-0004br-JC; Mon, 08 Jan 2024 09:37:22 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rMl8M-001Cjk-6u; Mon, 08 Jan 2024 09:37:22 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMl8M-00AooT-47; Mon, 08 Jan 2024 09:37:22 +0100
Date: Mon, 8 Jan 2024 09:37:22 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240108083722.GB1318922@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
 <20240103181312.409668-66-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103181312.409668-66-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_003727_792584_3002B81B 
X-CRM114-Status: GOOD (  23.32  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 065/112] common: add PE/COFF loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 07:12:25PM +0100, Ahmad Fatoum wrote:
> EFI loader will need to parse and load PE executables. Add functions to
> facilitate that. The API is inspired by the already existing ELF API.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/Kconfig           |   3 +
>  common/Makefile          |   1 +
>  common/pe.c              | 377 +++++++++++++++++++++++++++++++
>  include/asm-generic/pe.h |  56 +++++
>  include/linux/pagemap.h  |   1 +
>  include/linux/pe.h       | 468 +++++++++++++++++++++++++++++++++++++++
>  include/pe.h             | 316 ++++++++++++++++++++++++++
>  7 files changed, 1222 insertions(+)
>  create mode 100644 common/pe.c
>  create mode 100644 include/asm-generic/pe.h
>  create mode 100644 include/linux/pe.h
>  create mode 100644 include/pe.h
> 
> +struct pe_image *pe_open(const char *filename)
> +{
> +	struct pe_image *pe;
> +	size_t size;
> +	void *bin;
> +
> +	bin = read_file(filename, &size);
> +	if (!bin)
> +		return NULL;

The static inline wrapper of this function indicates you should return
an error pointer here.

> +
> +	pe = pe_open_buf(bin, size);
> +
> +	//free(bin); // FIXME

Isn't this only a matter of adding free(pe->bin) to pe_close() and
freeing it here in case pe_open_buf() fails?


> diff --git a/include/asm-generic/pe.h b/include/asm-generic/pe.h
> new file mode 100644
> index 000000000000..a1df7471348e
> --- /dev/null
> +++ b/include/asm-generic/pe.h
> @@ -0,0 +1,56 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + *  Portable Executable and Common Object Constants
> + *
> + *  Copyright (c) 2018 Heinrich Schuchardt
> + *
> + *  based on the "Microsoft Portable Executable and Common Object File Format
> + *  Specification", revision 11, 2017-01-23
> + */
> +
> +#ifndef _ASM_PE_H
> +#define _ASM_PE_H
> +
> +/* Characteristics */
> +#define IMAGE_FILE_RELOCS_STRIPPED		0x0001
> +#define IMAGE_FILE_EXECUTABLE_IMAGE		0x0002
> +#define IMAGE_FILE_LINE_NUMS_STRIPPED		0x0004
> +#define IMAGE_FILE_LOCAL_SYMS_STRIPPED		0x0008
> +#define IMAGE_FILE_AGGRESSIVE_WS_TRIM		0x0010
> +#define IMAGE_FILE_LARGE_ADDRESS_AWARE		0x0020
> +/* Reserved					0x0040 */
> +#define IMAGE_FILE_BYTES_REVERSED_LO		0x0080
> +#define IMAGE_FILE_32BIT_MACHINE		0x0100
> +#define IMAGE_FILE_DEBUG_STRIPPED		0x0200
> +#define IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP	0x0400
> +#define IMAGE_FILE_NET_RUN_FROM_SWAP		0x0800
> +#define IMAGE_FILE_SYSTEM			0x1000
> +#define IMAGE_FILE_DLL				0x2000
> +#define IMAGE_FILE_UP_SYSTEM_ONLY		0x4000
> +#define IMAGE_FILE_BYTES_REVERSED_HI		0x8000

These defines are duplicated in include/linux/pe.h

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


