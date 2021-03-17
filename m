Delivery-date: Wed, 17 Mar 2021 10:48:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMSnT-00048n-VO
	for lore@lore.pengutronix.de; Wed, 17 Mar 2021 10:48:59 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMSnR-0001Og-QZ
	for lore@pengutronix.de; Wed, 17 Mar 2021 10:48:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FcoUmRpcMtD3SHfwcoLN8u2baq5s3fJFd5ByF5WGjJI=; b=WpIaycp+d2qn0YO6u7X3a0580
	v9U9snEafeBk1rj5Sk1DRNNEfMG2T6YXYQhGnwB1w2+WGhOqH8XlGNmswz+NousldGie4F8yAO703
	UJ8RFL+CEGDtDnf5K51gGgjNNahdkvJ4GoM6m+LfWspQVVtvlsss9ehz/F/pju477C1uu5aKfOB+/
	ufko7kIP5WQawJ7gAFyntyGH6dGN+YJzUrxdMh/r87g3W4Zb6RrybRbLTQPAR8og1R6NUoBPCPLWC
	e+2EGP5j8Ur4s0osko09MzaQebm/Kmp717zhUho+EPtgyio6miBSCmZbWWQB1P92zralAtIWAZWkB
	lrsJ0+9GA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMSmM-002tBx-H1; Wed, 17 Mar 2021 09:47:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMSmC-002t9M-Ai
 for barebox@lists.infradead.org; Wed, 17 Mar 2021 09:47:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lMSmB-0001JD-FZ; Wed, 17 Mar 2021 10:47:39 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lMSmB-00039r-6E; Wed, 17 Mar 2021 10:47:39 +0100
Date: Wed, 17 Mar 2021 10:47:39 +0100
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210317094739.GA23724@pengutronix.de>
References: <20210316124420.26239-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210316124420.26239-1-s.riedmueller@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:47:29 up 27 days, 13:11, 82 users,  load average: 0.14, 0.10, 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_094740_520460_4CEC4EB0 
X-CRM114-Status: GOOD (  24.70  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mtd: Notify user when erasure of a block failed during
 erase op
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 16, 2021 at 01:44:20PM +0100, Stefan Riedmueller wrote:
> Give the user information about the faulty block when an erase
> operation fails with error.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  drivers/mtd/core.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index af33ad665c5a..22eb2a056c4e 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -222,8 +222,11 @@ static int mtd_op_erase(struct cdev *cdev, loff_t count, loff_t offset)
>  			printf("Skipping bad block at 0x%08llx\n", addr);
>  		} else {
>  			ret = mtd_erase(mtd, &erase);
> -			if (ret)
> +			if (ret) {
> +				printf("%s: failed to erase block at 0x%08llx\n",
> +					__func__, addr);
>  				return ret;
> +			}
>  		}
>  
>  		addr += mtd->erasesize;
> -- 
> 2.25.1
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

