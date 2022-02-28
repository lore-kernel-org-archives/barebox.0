Delivery-date: Mon, 28 Feb 2022 13:24:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOf4d-00DDxd-D5
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 13:24:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOf4b-0001AT-8P
	for lore@pengutronix.de; Mon, 28 Feb 2022 13:24:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vZmVmp4+Lb7/BN48tw6CpgqHOzkAaOKcJmChtVVaPYA=; b=s172v0SrgDbvnjDgHgyUqQGtP8
	UKy9HXhKfbNFFad3OuqqtpgO+rM36F6wqVGcYuav1G/xJMS1Qatf8mxURFXwOlspfrLZlJk3V6dX+
	QX86tuZy7MsJXjKz0FVxlCmC+ouTqcWlQi6eIZOd+TliNJtpOxD+3vq4M9iCEYHp+UsLfGxSxAn7O
	BgfmLoLvAF8OctbDLhJstRyLqGWOIS8jGVPBzm+aDrdP8A14yWv3eKXlyb18jCpPIRwf2oz1Mrjl5
	RC+rhbsUo94abN+w80EM/Gk2NBXcAk1nb2zpBQbMGai/urOLF+GS9D3heS6rW10OC4Pcu/6DYkDnO
	cnhRQV0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOf38-00C9wc-8p; Mon, 28 Feb 2022 12:22:46 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOeVl-00ByvV-EN
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 11:48:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+rdTrMWnkvmhG+stkpGlUOEaSoNN0dNX2rknxOZsSpM=; b=ZEDD/p8KA2AF714FFyj1QSu536
 PWm45LQcqP/PS6dqBvg9MLVNFtoOyfiKYZOqKYwP3KN8hW4/XSjRKcNzm03Vy21sEduNaNEkFRaEU
 5dmEtJ6nCPhxzbkevKi0HO41QS1B0xIzyuk9FAqlsPNzMli3JoxKFTCiGvcjYH4fw4joxx7gCAGBK
 0A8i/0NpAHZTCbhUi4FGFkWWn4EDMNibdHSe+jPOI49QOe6aKCqvlSGXo1ucynIF79NANAMDXohQk
 6eiaHJed8rtKLVZnTg0Gt9wO1F0WgX2QBtCjrvGlrFwgQxm+3w3eLK9Q3kCFYwyPveaz9f7G/QZdT
 qfuvxVfQ==;
Received: from [89.212.21.243] (port=33480 helo=[192.168.69.86])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1nOeVf-006STB-3U; Mon, 28 Feb 2022 12:48:11 +0100
Message-ID: <5a446868-9929-9174-a941-a912b36e9bc5@norik.com>
Date: Mon, 28 Feb 2022 12:48:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20220228101523.1058032-1-s.hauer@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
In-Reply-To: <20220228101523.1058032-1-s.hauer@pengutronix.de>
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
X-CRM114-CacheID: sfid-20220228_034817_698193_9F80A735 
X-CRM114-Status: GOOD (  17.84  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] scripts: bareboximd: Fix -c option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 28. 02. 22 11:15, Sascha Hauer wrote:
> Using mmap in read_file doesn't work when the same file is written
> afterwards with write_file. This problem was fixed in 738601e125
> ("scripts/common: fix write_file when opened with mmap"). Using mmap in
> read_file was removed in 07b87a0908 ("scripts/common: Do not mmap in
> read_file_2()") but then re-introduced for bareboximd in 013e8ea757
> ("scripts: bareboximd: Use mmap when possible"). I'll put my brown paper
> bag on for this :(
> 
> This patch fixes the issue by explicitly avoiding mmap when the file
> is written later as done with the -c option to bareboximd
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Reported-by: Andrej Picej <andrej.picej@norik.com>

You can add: Tested-by: Andrej Picej <andrej.picej@norik.com>
if you want.

Thanks.

> ---
>   common/imd.c         | 7 +++++--
>   scripts/bareboximd.c | 9 ++++++---
>   2 files changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/common/imd.c b/common/imd.c
> index 9ca0248523..1100e6878a 100644
> --- a/common/imd.c
> +++ b/common/imd.c
> @@ -22,7 +22,8 @@ static inline void read_file_2_free(void *buf)
>   	free(buf);
>   }
>   
> -static int imd_read_file(const char *filename, size_t *size, void **outbuf)
> +static int imd_read_file(const char *filename, size_t *size, void **outbuf,
> +			 bool allow_mmap)
>   {
>   	return read_file_2(filename, size, outbuf, 0x100000);
>   }
> @@ -439,6 +440,7 @@ int imd_command(int argc, char *argv[])
>   	char *str;
>   	uint32_t checksum = 0;
>   	uint32_t verify = 0;
> +	bool allow_mmap = true;
>   
>   	imd_command_verbose = 0;
>   
> @@ -462,6 +464,7 @@ int imd_command(int argc, char *argv[])
>   			break;
>   		case 'c':
>   			checksum = 1;
> +			allow_mmap = false;
>   			break;
>   		case 'V':
>   			verify = 1;
> @@ -478,7 +481,7 @@ int imd_command(int argc, char *argv[])
>   
>   	filename = argv[optind];
>   
> -	ret = imd_read_file(filename, &size, &buf);
> +	ret = imd_read_file(filename, &size, &buf, allow_mmap);
>   	if (ret && ret != -EFBIG)
>   		return -errno;
>   
> diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
> index 2d4750d7fb..d01bd27007 100644
> --- a/scripts/bareboximd.c
> +++ b/scripts/bareboximd.c
> @@ -55,9 +55,10 @@ static unsigned long simple_strtoul(const char *cp, char **endp, unsigned int ba
>   	return strtoul(cp, endp, base);
>   }
>   
> -static int imd_read_file(const char *filename, size_t *size, void **outbuf)
> +static int imd_read_file(const char *filename, size_t *size, void **outbuf,
> +			 bool allow_mmap)
>   {
> -	void *buf;
> +	void *buf = MAP_FAILED;
>   	int fd, ret;
>   	size_t fsize;
>   
> @@ -74,7 +75,9 @@ static int imd_read_file(const char *filename, size_t *size, void **outbuf)
>   		goto close;
>   	}
>   
> -	buf = mmap(NULL, fsize, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0);
> +	if (allow_mmap)
> +		buf = mmap(NULL, fsize, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0);
> +
>   	if (buf == MAP_FAILED) {
>   		close(fd);
>   		return read_file_2(filename, size, outbuf, 0x100000);

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

