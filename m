Delivery-date: Fri, 03 Feb 2023 08:53:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNqtS-00CPBA-M5
	for lore@lore.pengutronix.de; Fri, 03 Feb 2023 08:53:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNqtQ-0001U6-1u
	for lore@pengutronix.de; Fri, 03 Feb 2023 08:53:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=la1qoBWzmc9MdPYZqhRDlkV4VF38P73zGOeb36lQMzQ=; b=pstsP/RBivQzpY98Hsq/vKTjlY
	DbZ/cXSNZZuA5byRiiZ/OXT2fxIRWVLkDgkpyN8t5aGzkU/qic7hrOPMF4Ml0rIq9O7iGFDV3t0+k
	r843yeQdObkQFnhjsUhxveyK2scBYjW5CIFeXEUA+6hCEkXsZBnjoiyGQm9q18cIoKeJiQXEDtTo9
	hoAd2nuLE74BmyqQMlyP5xglJ38x2+nioZEtrskIf/3CYptuoYNkmdK1lcDXmz4l81UVPHYmdlEVU
	js+uXQW03PB10k+3NW4r3FyhL/4GsLk/oWdqzIKYysvIs5T8xeJWzEg6NDMW8NhoIParZAky3QPjF
	SDtYUNmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNqrx-000s3v-Hn; Fri, 03 Feb 2023 07:52:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNqrs-000s2Z-Ed
	for barebox@lists.infradead.org; Fri, 03 Feb 2023 07:52:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNqrg-0001Pb-8W; Fri, 03 Feb 2023 08:52:08 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNqrg-0004oH-0j; Fri, 03 Feb 2023 08:52:08 +0100
Date: Fri, 3 Feb 2023 08:52:07 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20230203075207.GM13319@pengutronix.de>
References: <20230202122000.195253-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230202122000.195253-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_235220_510124_ABBBFB9F 
X-CRM114-Status: GOOD (  23.49  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] fs: align truncate return codes with POSIX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 02, 2023 at 01:20:00PM +0100, Ahmad Fatoum wrote:
> Writing past end of a file results in a cryptic error code:
> 
>   barebox@board:/ cp /dev/zero /dev/mmc0.part
>   write: Operation not permitted
>   cp: Operation not permitted
> 
> Because the cdev's truncate is not implemented and as such partition
> can't be increased in size. POSIX specifies EPERM as the correct return
> code for truncate(2) in such a situation, but for write(2) it is ENOSPC.
> Thus most truncate callbacks in barebox instead return ENOSPC, when
> according to POSIX, EPERM would have been the correct error code to
> propagate.
> 
> Switching all truncate drivers is a bit more involved, so for now let's
> treat EPERM and ENOSPC instead when truncate fails to enlarge a file.
> 
> Reported-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/fs.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 752688b574a0..c463466e1be0 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -441,6 +441,8 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
>  	if (f->size != FILE_SIZE_STREAM && f->pos + count > f->size) {
>  		ret = fsdev_truncate(&f->fsdev->dev, f, f->pos + count);
>  		if (ret) {
> +			if (ret == -EPERM)
> +				ret = -ENOSPC;
>  			if (ret != -ENOSPC)
>  				goto out;
>  			count = f->size - f->pos;
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


