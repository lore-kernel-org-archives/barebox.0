Delivery-date: Fri, 15 Nov 2024 15:04:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBwvn-002H3d-2i
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 15:04:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBwvn-000876-6u
	for lore@pengutronix.de; Fri, 15 Nov 2024 15:04:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nNJ2pJlfw0fR6jMDCQizGv6C7yySlKA82HbAavVPOTQ=; b=Fjxvmbi6jztHQwpF6d78qwHUcO
	7YySQDrSFsNeb0huW6dpOW0Ut/8QAg8vf+5aC8FOUQp4DpkNoU/oLac6GOEovNzkBAYhesAThXW/d
	GMbayMjH/n5SiKzS7lJUPQtruQMo7gKSwdijMDNYkEeDa7AJwlgIBwxR/8MQn4fX6f0NPdhH2WuFX
	FzlUjeDnL0ia1041ZJl8bBoh3XX9GDXdOclDS0n7P3TkVai3leZ0XVTb58oX5xohPXN+Q7fUbZcZ0
	bMzP346Smd/sE1vNkq2W/Er/aSQ8327gxR9WxEx4CSXZcmZ/HTFnD+WcWBoDHYsFgw41i2wxNyQ0R
	Yxw9CGEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBwvO-00000002vZS-0bUx;
	Fri, 15 Nov 2024 14:03:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBwvL-00000002vYH-1JfH
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 14:03:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBwvK-0007vd-3x; Fri, 15 Nov 2024 15:03:46 +0100
Message-ID: <2b2b5c31-38cd-4456-8f62-946bb6eb72a8@pengutronix.de>
Date: Fri, 15 Nov 2024 15:03:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
Cc: Stefano Manni <stefano.manni@gmail.com>
References: <20241115135242.1251691-1-a.fatoum@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241115135242.1251691-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_060347_353518_905DEC80 
X-CRM114-Status: GOOD (  19.99  )
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
Subject: Re: [PATCH master] remoteproc: use I/O memory variants of
 memcpy/memset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 15.11.24 14:52, Ahmad Fatoum wrote:
> Reserved memory is unmapped strongly ordered in barebox and calling

argh, `is mapped' is what's meant of course.

> normal optimized memcpy on may trigger an abort due to misalignment.
> 
> Fix this by using the slower I/O variants of memcpy/memset, which are
> do not expect bufferable memory like the optimized variants and thus
> don't cause unaligned accesses.
> 
> Fixes: 66e233b8c04b ("ARM: mmu64: map reserved regions uncached")
> Reported-by: Stefano Manni <stefano.manni@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/remoteproc/remoteproc_core.c       | 2 +-
>  drivers/remoteproc/remoteproc_elf_loader.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 7590c1f9305b..17159316ee31 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -75,7 +75,7 @@ static int rproc_firmware_write_buf(struct firmware_handler *fh, const void *buf
>  		return -ENOMEM;
>  	}
>  
> -	memcpy(rproc->fw_buf + rproc->fw_buf_ofs, buf, size);
> +	memcpy_toio(rproc->fw_buf + rproc->fw_buf_ofs, buf, size);
>  	rproc->fw_buf_ofs += size;
>  
>  	return 0;
> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
> index f3bf93df2c4a..740ce8765165 100644
> --- a/drivers/remoteproc/remoteproc_elf_loader.c
> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> @@ -70,7 +70,7 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
>  
>  		/* put the segment where the remote processor expects it */
>  		if (phdr->p_filesz)
> -			memcpy(ptr, elf_data + phdr->p_offset, filesz);
> +			memcpy_toio(ptr, elf_data + phdr->p_offset, filesz);
>  
>  		/*
>  		 * Zero out remaining memory for this segment.
> @@ -80,7 +80,7 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
>  		 * this.
>  		 */
>  		if (memsz > filesz)
> -			memset(ptr + filesz, 0, memsz - filesz);
> +			memset_io(ptr + filesz, 0, memsz - filesz);
>  	}
>  
>  	return ret;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


