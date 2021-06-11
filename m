Delivery-date: Fri, 11 Jun 2021 12:26:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lreMf-0004Sm-NH
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 12:26:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lreMe-0000Jw-R3
	for lore@pengutronix.de; Fri, 11 Jun 2021 12:26:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4kh9Btt+tGy1vwH13pmzlTnvwejuKsa7fMIh93KiEkc=; b=uoDB0kRQ2Mm0xF
	QMmuyNDnLw3BFRJy6l+F3J8g2zwXgu6nfgp+T1goKEIuj3ot6zzoXo6MiepVXVLHsYdS50fDX8GIU
	xz1KXX/JL0V2ODqrwKGKDcMvKeI8wsDRiVoDngHdHtBne+fpIydX4gkW4uzkZCKxpYfHne5jeyQv+
	pZApokwEKAiqYh2PiQhF3myZezUHmn3rQJrctCBdxKp1BIjNGGnV23d4Aoy5sZSpAF6X8EI6uggHt
	3mzziZgI8IKPwycEUYp7zzdzkFhADononGbCXjx+RpAwzqXpBrjkonuKHkNv5+d2o7Bem6P7sEeZv
	NbgfMZU1H6kkGFihYfYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lreKo-004hgo-9W; Fri, 11 Jun 2021 10:24:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lreKU-004hd3-RD
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 10:24:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lreKT-0008Ll-3W; Fri, 11 Jun 2021 12:23:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lreKS-0001mN-IR; Fri, 11 Jun 2021 12:23:56 +0200
Date: Fri, 11 Jun 2021 12:23:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210611102356.GE22904@pengutronix.de>
References: <20210611063914.155796-1-antonynpavlov@gmail.com>
 <20210611063914.155796-2-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210611063914.155796-2-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:18:14 up 113 days, 13:42, 121 users,  load average: 0.49, 0.22,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_032358_921234_C8873268 
X-CRM114-Status: GOOD (  23.03  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] mtd: core: fix use of uninitialized struct member
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Antony,

On Fri, Jun 11, 2021 at 09:39:13AM +0300, Antony Pavlov wrote:
> E.g. mtd_read() calls mtd_read_oob(), mtd_read_oob()
> can check uninitialized ops->oobbuf. As a result
> mtd_read_oob() can return -EOPNOTSUPP.
> 
> Found on a MIPS board during /dev/m25p0 read, e.g.
> 
>   barebox:/ md -s /dev/m25p0
>   read: error 95
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/mtd/core.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index 37fccda6be..98820dfb4f 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -379,12 +379,13 @@ int mtd_block_markgood(struct mtd_info *mtd, loff_t ofs)
>  int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
>               u_char *buf)
>  {
> -	struct mtd_oob_ops ops = {
> -		.len = len,
> -		.datbuf = buf,
> -	};
> +	struct mtd_oob_ops ops;
>  	int ret;
>  
> +	memset(&ops, 0, sizeof(ops));
> +	ops.len = len;
> +	ops.datbuf = buf;

If this fixes something for you then you have severe problems with your
compiler. Omitted fields are implicitly initialized to zero, often you
can even find the corresponding call to memset in the objdump.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

