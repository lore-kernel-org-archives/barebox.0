Delivery-date: Tue, 12 Oct 2021 09:47:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCVf-0002YM-T7
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 09:47:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCVe-0007Fl-Uv
	for lore@pengutronix.de; Tue, 12 Oct 2021 09:47:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6ap005v31NrwgfZ2ktPNbcRP7J/ADnUeUWOYeBWwyUo=; b=N0Ql7Ih3c9JLnUfUu78Q2jeIbT
	1ZqF/pUuS1Gh373IeV6x05vBMkkptjLlYTLfoPdmMyBN4+xMvBzJvBmsfTy5h2SuQSfu8S5sftOB6
	MyZXOJez7s9nbfJyjCG6MTaFscAvPwAqEh6t/vs/cnRRgbh/GlXs9HLpMOBQNnD9fbj5TlpCSmN5C
	fwUPC341FBPHNn7eBwRFlJhEBXyJNvMYz6H3RemOwEX4FxHSn2tIi82Fc0qiFkO9BPV/XtdGK9Xii
	jbm8DLNJWW+v4X4xWf6X8+Wdnop07ASdScMXQzgC9/dkVf39AoftZ+FGVCkhmqpLBGxQt5b+xhrAm
	Vuzg52ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maCUW-00Bq79-9W; Tue, 12 Oct 2021 07:46:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maCUR-00Bq5z-AR
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 07:46:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCUQ-00073y-3i; Tue, 12 Oct 2021 09:46:22 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCUP-0000vK-Pv; Tue, 12 Oct 2021 09:46:21 +0200
Date: Tue, 12 Oct 2021 09:46:21 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211012074621.GK28453@pengutronix.de>
References: <20211011190725.856597-1-trent.piepho@igorinstitute.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211011190725.856597-1-trent.piepho@igorinstitute.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:45:51 up 236 days, 11:09, 140 users,  load average: 0.16, 0.15,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_004623_382358_9A4FC709 
X-CRM114-Status: GOOD (  27.85  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nandtest: Add more fields when bad byte found
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 11, 2021 at 12:07:25PM -0700, Trent Piepho wrote:
> This can help to determine what is causing the problem.  E.g., is the
> bad byte always in the same eraseblock?  Is it always 513 bytes into a
> page with a hardware ECC chunk size of 512 bytes?
> 
> Example before and after (error at absolute address 123456 with 128kB
> eraseblock and 2kB page sizes):
> 
> Byte 0xe240 is 12 should be 34
> Block 0x1 byte 0xe240 (page 0x1c offset 0x240) is 0x12 should be 0x34
> 
> Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
> ---
>  commands/nandtest.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/nandtest.c b/commands/nandtest.c
> index 1bb59c7fd..4a7db9cc7 100644
> --- a/commands/nandtest.c
> +++ b/commands/nandtest.c
> @@ -169,8 +169,10 @@ static int erase_and_write(loff_t ofs, unsigned char *data,
>  		printf("\ncompare failed. seed %d\n", seed);
>  		for (i = 0; i < meminfo.erasesize; i++) {
>  			if (data[i] != rbuf[i])
> -				printf("Byte 0x%x is %02x should be %02x\n",
> -				       i, rbuf[i], data[i]);
> +				printf("Block 0x%llx byte 0x%0x (page 0x%x offset 0x%x) is %02x should be %02x\n",
> +				       div64_ul(ofs, meminfo.erasesize), i,
> +				       i / meminfo.writesize, i % meminfo.writesize,
> +				       rbuf[i], data[i]);
>  		}
>  		return ret;
>  	}
> -- 
> 2.31.1
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

