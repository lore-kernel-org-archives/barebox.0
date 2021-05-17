Delivery-date: Mon, 17 May 2021 10:33:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liYh7-0000zN-Im
	for lore@lore.pengutronix.de; Mon, 17 May 2021 10:33:45 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liYh3-000691-SM
	for lore@pengutronix.de; Mon, 17 May 2021 10:33:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DNBrT7CsKJjsXB0YCQwHU/ows8ot7kw/r6ZhdKaRIDs=; b=PsHFNWVdmjFMyDOKZj4bwN+OK
	qukuycfUq5GhXS/z3fwF/atPuvxfb99bP4qOSHlIrVkbKCCq4Xg/tQ5zjZBSBghQt1gR10kkTfxfb
	oKib94cDUE65DhTorztWXnWY/Q4p28I8AFmyF3k+kUu+yh8jiqmGIXE6wT+0HH8hRZ0sCJdqL1jgI
	6tY7kfkoe3sxwhzIlVRYcO6s7/+X+VOnepoP7uGjohdSrkPalbJfWnTJSWgyCuYb+z4J2wBwKn0PY
	u2xgWuAlhgW9z7E/k6TRCnsr2HsAq8eKgSPUZGOA92Tf/Q0KX3psCqrXzxuruZeLortQjfM4NwEEQ
	2X3pkj/Zg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liYfK-00EFph-PW; Mon, 17 May 2021 08:31:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liYXL-00EDZd-Ev
 for barebox@desiato.infradead.org; Mon, 17 May 2021 08:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hTaEBnjEInsEu51ntlfVSACNB6IHKYMdE9A8o+MtM4Q=; b=B6GIjaQlM5oGL6e846oT3d4uOW
 WJGYPEfZqQSFJyU3kqlOJ2fQy5zXCDEWommy8MA2J8s77EMQhT0MtiarVCdVxf1gQ2T55GM0IbhQ8
 KkmWrCnsgqkNnCJuNHtZ276M9wmyBm6UQdfzwZjj5Od2kdYr4qN5lfdckhwHY2AnwE4R7112z0E56
 aK8duBw1Wio3r3XtCWMRRbAJtLtN7WnQzWdqvMd0XyxgTFHRP4zswvOwevZpRKvBQP6DRuswn13rt
 5HtbII4QwKsoNnVA9udpBmQvBkBLYRGFPVwnk40QlwWfK1Cihvx5eO8T5SYiw40oH919+J64clejD
 D/haAo9Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liYXI-00Darv-EW
 for barebox@lists.infradead.org; Mon, 17 May 2021 08:23:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1liYXF-0004c3-66; Mon, 17 May 2021 10:23:33 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1liYXE-0000BC-Ba; Mon, 17 May 2021 10:23:32 +0200
Date: Mon, 17 May 2021 10:23:32 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Michael Graichen <michael.graichen@hotmail.com>
Message-ID: <20210517082332.GA27865@pengutronix.de>
References: <AM9P192MB0870CBDAD8B3CC328A1C2D6CAB5B9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
 <369badc3290605924915f46e445041dd8e3a0ff1.camel@pengutronix.de>
 <AM9P192MB087024D17024B43EFE9CACAEAB599@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM9P192MB087024D17024B43EFE9CACAEAB599@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:17:02 up 88 days, 11:40, 102 users,  load average: 0.04, 0.17,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_012336_505015_A3D9BCC2 
X-CRM114-Status: GOOD (  21.43  )
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
Cc: barebox <barebox@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/1] Zynq: add support to chainload another barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 05 May 2021 09:40:29 +0000, Michael Graichen wrote:
[...]
> I'm currently booting from SDcard and i have not realised any problems with
> the FAT support so far. But with the arasan-sdhci driver when writing, see
> my patch below which fixes it for me but I haven't dived into the drivers
> very deeply yet.
> 
> best regards
> Michael
> 
> 
>  drivers/mci/arasan-sdhci.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> index 520bf30ff..669675369 100644
> --- a/drivers/mci/arasan-sdhci.c
> +++ b/drivers/mci/arasan-sdhci.c
> @@ -265,7 +265,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  	if (cmd->cmdidx != MMC_CMD_STOP_TRANSMISSION)
>  		mask |= SDHCI_CMD_INHIBIT_DATA;
>  
> -	ret = wait_on_timeout(10 * MSECOND,
> +	ret = wait_on_timeout(100 * MSECOND,
>  			!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & mask));
>  
>  	if (ret) {
> @@ -277,8 +277,6 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
>  
>  	mask = SDHCI_INT_CMD_COMPLETE;
> -	if (data)
> -		mask |= SDHCI_INT_DATA_AVAIL;

This looks familiar. I have a similar patch that sets SDHCI_INT_DATA_AVAIL
only if the command is a READ, but I didn't yet have time to verify, that this
is the correct fix.

Michael

>  
>  	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, false, &command, &xfer);

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

