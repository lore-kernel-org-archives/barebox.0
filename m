Delivery-date: Mon, 28 Mar 2022 10:56:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYlAZ-008oeL-9i
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 10:56:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYlAb-0000sh-LK
	for lore@pengutronix.de; Mon, 28 Mar 2022 10:56:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eFSXqL6UWvcHvrjFaONKXoKh6lkuDTX/lw8FUDm1j7w=; b=ioHT2LEj4WeMXg2+C9D9PpiSLF
	XJkU0mZxVUPgUoqzNvK+kk9fJNKwG6diy8sfpXsv7zGTh6eFZFpUG8R19HHSprdFfyd/fZLY2pZXL
	Q2gcVGXgairTwxHxc1bzZXaiihXmQOBPYmXp4P3n13cefhBS8eM7ktGgZgk03TxlF8Te6YDvZbQwv
	BvBE57kvDJfKX4C8jEf7zrMB6yK9EGEN1FHOTAvV5DkX/fbXHlwSiYYlxCSQEm5ScXBAmWodVrhVe
	rTpT0lVtoXsnnITlb/ZwqTYzKEKRQQbA7RHRPRTostJXgpW5aJ2ghLKz9AOMuP5GJks3CDde27G0Y
	xZF7dNeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYl9Q-007vzV-14; Mon, 28 Mar 2022 08:55:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYl9K-007vyf-Mk
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 08:54:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYl9J-0000Xr-GP; Mon, 28 Mar 2022 10:54:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYl9J-0005eX-7F; Mon, 28 Mar 2022 10:54:53 +0200
Date: Mon, 28 Mar 2022 10:54:53 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220328085453.GL12181@pengutronix.de>
References: <20220319072427.1310855-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220319072427.1310855-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:54:45 up 107 days, 17:40, 85 users,  load average: 0.38, 0.26,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_015454_766890_186F21F8 
X-CRM114-Status: GOOD (  25.70  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] partitions: efi: print GPT offset in debug message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Mar 19, 2022 at 08:24:27AM +0100, Ahmad Fatoum wrote:
> This debug message is printed for the alternative GPT header as well,
> which may not exist at that location, because the medium has a different
> length than what's in the GPT header. Make it easier to differentiate,
> whether the message refers to the primary or alternate GPT header by
> printing the LBA the header was expected at.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  common/partitions/efi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index 0787b93f120b..848bed22610f 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -154,8 +154,8 @@ static int is_gpt_valid(struct block_device *blk, u64 lba,
>  
>  	/* Check the GPT header signature */
>  	if (le64_to_cpu((*gpt)->signature) != GPT_HEADER_SIGNATURE) {
> -		dev_dbg(blk->dev, "GUID Partition Table Header signature is wrong:"
> -			"0x%llX != 0x%llX\n",
> +		dev_dbg(blk->dev, "GUID Partition Table Header signature at LBA"
> +			"%llu is wrong: 0x%llX != 0x%llX\n", lba,
>  			(unsigned long long)le64_to_cpu((*gpt)->signature),
>  			(unsigned long long)GPT_HEADER_SIGNATURE);
>  		goto fail;
> -- 
> 2.34.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

