Delivery-date: Fri, 29 Apr 2022 09:17:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkKsv-001lEO-FU
	for lore@lore.pengutronix.de; Fri, 29 Apr 2022 09:17:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkKss-0007pS-K2
	for lore@pengutronix.de; Fri, 29 Apr 2022 09:17:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cjvlxB1k2UgjwcuaCR1okpFyTGEtF0Jkojf98prrJ0=; b=vIMd7KsklvXHgF
	km1V0GP7FIYmeVLpyO68IMfx+Ph9UU8qkeAhBTkOsR+mKa8jis+GHjZZTtmq9KbPyI8/Mky/r/d/O
	YNS2KAdMt9F/8Jv25pwUU0uPYZ0o+V1H7SmxPLBmAClQSbepdViJTaVkLJBrmWijky5H6arWIixSd
	5lSBUB3Oy0B4o7LwVl5y13FI9yf9y5XYN2FXhg12SpicL13Q2VSSk4qEFe5A95rnDJAOd1dF7u+z+
	PkkfEQlwlNRTSq/p56WYJb38qMeY2NCwmQOW8Qjmq8s9eSDkbkOqWz3Y97EaRwx1FkxRd/fXdMiF9
	geClXAOnxSKks69aRRjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkKre-009wmM-3R; Fri, 29 Apr 2022 07:16:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkKrZ-009wlM-R8
 for barebox@lists.infradead.org; Fri, 29 Apr 2022 07:16:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkKrY-0007Xx-LP; Fri, 29 Apr 2022 09:16:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkKrY-00046s-CY; Fri, 29 Apr 2022 09:16:24 +0200
Date: Fri, 29 Apr 2022 09:16:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220429071624.GQ4012@pengutronix.de>
References: <20220426123434.18865-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426123434.18865-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:16:14 up 29 days, 19:45, 77 users,  load average: 0.12, 0.15, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_001625_928031_26AEDFFF 
X-CRM114-Status: GOOD (  22.87  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ata: disk_ata_drive: clean up code in ata_dump_id()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 26, 2022 at 03:34:34PM +0300, Denis Orlov wrote:
> Add missing macros and fix misspellings.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  drivers/ata/disk_ata_drive.c | 23 +++++++++++++----------
>  include/ata_drive.h          |  5 +++++
>  2 files changed, 18 insertions(+), 10 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
> index f36e06328c..7df0879b19 100644
> --- a/drivers/ata/disk_ata_drive.c
> +++ b/drivers/ata/disk_ata_drive.c
> @@ -80,9 +80,9 @@ static void __maybe_unused ata_dump_id(uint16_t *id)
>  	ata_id_c_string(id, product, ATA_ID_PROD, sizeof(product));
>  	printf("Product model number: %s\n\r", product);
>  
> -	/* Total sectors of device  */
> +	/* Total sectors of device */
>  	n_sectors = ata_id_n_sectors(id);
> -	printf("Capablity: %lld sectors\n\r", n_sectors);
> +	printf("Capacity: %lld sectors\n\r", n_sectors);
>  
>  	printf ("id[49]: capabilities = 0x%04x\n"
>  		"id[53]: field valid = 0x%04x\n"
> @@ -95,12 +95,14 @@ static void __maybe_unused ata_dump_id(uint16_t *id)
>  		id[ATA_ID_PIO_MODES],
>  		id[ATA_ID_QUEUE_DEPTH]);
>  
> -	printf ("id[76]: sata capablity = 0x%04x\n"
> +	printf ("id[76]: sata capabilities 1 = 0x%04x\n"
> +		"id[77]: sata capabilities 2 = 0x%04x\n"
>  		"id[78]: sata features supported = 0x%04x\n"
> -		"id[79]: sata features enable = 0x%04x\n",
> -		id[76], /* FIXME */
> -		id[78], /* FIXME */
> -		id[79]); /* FIXME */
> +		"id[79]: sata features enabled = 0x%04x\n",
> +		id[ATA_ID_SATA_CAPAB_1],
> +		id[ATA_ID_SATA_CAPAB_2],
> +		id[ATA_ID_SATA_FEAT_SUPP],
> +		id[ATA_ID_SATA_FEAT_ENABLE]);
>  
>  	printf ("id[80]: major version = 0x%04x\n"
>  		"id[81]: minor version = 0x%04x\n"
> @@ -108,12 +110,13 @@ static void __maybe_unused ata_dump_id(uint16_t *id)
>  		"id[83]: command set supported 2 = 0x%04x\n"
>  		"id[84]: command set extension = 0x%04x\n",
>  		id[ATA_ID_MAJOR_VER],
> -		id[81], /* FIXME */
> +		id[ATA_ID_MINOR_VER],
>  		id[ATA_ID_COMMAND_SET_1],
>  		id[ATA_ID_COMMAND_SET_2],
>  		id[ATA_ID_CFSSE]);
> -	printf ("id[85]: command set enable 1 = 0x%04x\n"
> -		"id[86]: command set enable 2 = 0x%04x\n"
> +
> +	printf ("id[85]: command set enabled 1 = 0x%04x\n"
> +		"id[86]: command set enabled 2 = 0x%04x\n"
>  		"id[87]: command set default = 0x%04x\n"
>  		"id[88]: udma = 0x%04x\n"
>  		"id[93]: hardware reset result = 0x%04x\n",
> diff --git a/include/ata_drive.h b/include/ata_drive.h
> index 6b8915c9cb..e11172ba39 100644
> --- a/include/ata_drive.h
> +++ b/include/ata_drive.h
> @@ -67,7 +67,12 @@ enum {
>  	ATA_ID_MWDMA_MODES	= 63,
>  	ATA_ID_PIO_MODES	= 64,
>  	ATA_ID_QUEUE_DEPTH	= 75,
> +	ATA_ID_SATA_CAPAB_1	= 76,
> +	ATA_ID_SATA_CAPAB_2	= 77,
> +	ATA_ID_SATA_FEAT_SUPP	= 78,
> +	ATA_ID_SATA_FEAT_ENABLE	= 79,
>  	ATA_ID_MAJOR_VER	= 80,
> +	ATA_ID_MINOR_VER	= 81,
>  	ATA_ID_COMMAND_SET_1	= 82,
>  	ATA_ID_COMMAND_SET_2	= 83,
>  	ATA_ID_CFSSE		= 84,
> -- 
> 2.20.1
> 
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

