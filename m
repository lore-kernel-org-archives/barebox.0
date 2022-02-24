Delivery-date: Thu, 24 Feb 2022 14:24:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNE6O-008jPH-Pi
	for lore@lore.pengutronix.de; Thu, 24 Feb 2022 14:24:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNE6N-0008SG-DQ
	for lore@pengutronix.de; Thu, 24 Feb 2022 14:24:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xSgNtXcMX/m0cgVkMV4155Erc8msRFT5WJIyouBHSbE=; b=p8TIgVYnDMoaOdGwQwUKaOoonE
	Zlq8mR4ipUtOjuJGRFEX6t3394EU61+2Ocn8CCDTLJ1MH7AAiomyzNH6fqVSKZO04cT/sIXIupffz
	IUK8nFQYIRwQgrO8ef9IwWCW1HkD/p+MvGxTeJPzjMMSPyEbJL8NygOAfqL8EF9Y1+hDQPPAtrd/c
	LM6gpvJM1Dp1ciSpOQXuhcC57iz1J+dhxVscxR2anm19fL0VTCYDC6Lk4RRPXO7KlinxZFn7dFI7D
	bmAXF9tIpE/e5kQ6aF0A61aKZWQ1NjaeAYD3gOlpxUOh6AB/G8krp8ykdzldZ49aqW8Mn8tlRCMDX
	1EtdT2dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNE4m-000ux1-D9; Thu, 24 Feb 2022 13:22:32 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNE4g-000uw4-UG
 for barebox@lists.infradead.org; Thu, 24 Feb 2022 13:22:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XdrNEtW4fJnXyhhuEYoLhGSPpNyZ/2V/A9fUM6v1jOc=; b=cyoTOcFB/CKBADWCHLwJ6fDGqf
 ab0Kiy5rVAlxmpk14YUIEDkxv8CjOhxpqTz5tcCewACUC+04xm/IbnpIyngYc83n+/HmPuyzK1W9L
 s/5cQKJkVD8jw4w+56Nk4BI/F6ihy1OM1SB5ncv2almrmfPPaiZ2KW1reDzGjyTgH6DNUXUsuNqGh
 F55wMsEnQTjHGWXuhi09DJ1SUEWR8jppFvanZLLqw8KMNL3NQ0RbTRkmSbWqIjeCMXgcs/HhMYOTz
 6yk8HQXagglCsWj1Xra8pMJO+wI/7DFsdXEsG3s7xMUm6K+X3SsStOpbZUB5YOeeSOSxkA7lHp4X6
 5b+QeCvg==;
Received: from [89.212.21.243] (port=33372 helo=[192.168.69.86])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1nNE4U-008Cho-Oq; Thu, 24 Feb 2022 14:22:14 +0100
Message-ID: <2fc596cc-031c-0f53-4646-72ad03bbc8a7@norik.com>
Date: Thu, 24 Feb 2022 14:22:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20220211094230.1807262-1-s.hauer@pengutronix.de>
 <20220211094230.1807262-3-s.hauer@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
In-Reply-To: <20220211094230.1807262-3-s.hauer@pengutronix.de>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_052227_349991_56EFC39D 
X-CRM114-Status: GOOD (  15.00  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] Revert "scripts/common: fix write_file when opened
 with mmap"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

sorry for responding this late, but we are still getting the same errors 
as before when using bareboximd with these three patches.

Are you sure we can revert this patch? The file can still be opened in 
bareboximd with mmap(), and then be written with this write_file(), 
which fails with the same error:

> Cannot write to barebox.bin: Bad address
> CRC: write crc token to barebox.bin failed: -14
> Bad address

Best regards,
Andrej



On 11. 02. 22 10:42, Sascha Hauer wrote:
> mmap() is no longer used in read_file_2(), so this patch is no longer
> necessary.
> 
> This reverts commit 738601e1258c55953284ee10801b26b9977918c2.
> ---
>   scripts/common.c | 15 ++++-----------
>   1 file changed, 4 insertions(+), 11 deletions(-)
> 
> diff --git a/scripts/common.c b/scripts/common.c
> index 3d07be3630..2be41615ea 100644
> --- a/scripts/common.c
> +++ b/scripts/common.c
> @@ -102,33 +102,26 @@ int write_file(const char *filename, const void *buf, size_t size)
>   {
>   	int fd, ret = 0;
>   	int now;
> -	size_t left = size;
>   
> -	/* The same file may be mmapped currently, so can't use O_TRUNC here */
> -	fd = open(filename, O_WRONLY | O_CREAT,
> +	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT,
>   		  S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
>   	if (fd < 0) {
>   		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
>   		return -errno;
>   	}
>   
> -	while (left) {
> -		now = write(fd, buf, left);
> +	while (size) {
> +		now = write(fd, buf, size);
>   		if (now < 0) {
>   			fprintf(stderr, "Cannot write to %s: %s\n", filename,
>   				strerror(errno));
>   			ret = -errno;
>   			goto out;
>   		}
> -		left -= now;
> +		size -= now;
>   		buf += now;
>   	}
>   
> -	if (ftruncate(fd, size) < 0) {
> -		fprintf(stderr, "Cannot truncate file: %s", strerror(errno));
> -		ret = -errno;
> -	}
> -
>   out:
>   	close(fd);
>   

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

