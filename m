Delivery-date: Mon, 12 Jun 2023 15:00:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hAD-003qRh-VE
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:00:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hAB-00080t-Le
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:00:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wj3WCRxpj7GFnCoJxVDVaRx0qoNVJiIRtayX4dGxCSc=; b=N+Mdhe1Y78dY4kjy6I8Lg/h5HB
	+Oh22dkzsKpgbZQxnilcU4GhCFXjRPOyTdwnwnHi7PUED2lN6weVLfmOWbbsu1LXBsHBqcH4ytgMA
	NtGEa8lCt3n/oJAP4eBA05+3BU23371oTlqgZ3oB3Fz+oyUSiz3o8OshIx5K2gs9bKREc9Ye+k9Fy
	88sz0GCft++lPkV3Vvn4XdoINQzWfHuSCg8S9D/OcE60p9TPVkD3fIFbN6atQDgDD2VFiVNrivZ8l
	NSAuB7WsQm+x3pNghjEP183wdSOejVd+wn+Ch02sop+1gL19BHEcm9N4gSC1x6m/Ex9jeKcS95oS9
	4zBKblEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h9V-0046o1-0k;
	Mon, 12 Jun 2023 13:00:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8h9S-0046nA-04
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:00:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8h9Q-0007bD-QD; Mon, 12 Jun 2023 15:00:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8h9Q-0005vX-HC; Mon, 12 Jun 2023 15:00:04 +0200
Date: Mon, 12 Jun 2023 15:00:04 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230612130004.GC18491@pengutronix.de>
References: <20230612065741.407205-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612065741.407205-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060006_058958_FF0B0473 
X-CRM114-Status: GOOD (  18.97  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! block: parse partition table on block device
 registration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 12, 2023 at 08:57:41AM +0200, Ahmad Fatoum wrote:
> efi: block: drop now unused variable definition
> 
> We now directly return blockdevice_register(...), so the ret variable is
> unused.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/block/efi-block-io.c | 1 -
>  1 file changed, 1 deletion(-)

Appplied, thanks

Sascha

> 
> diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
> index 7162106ab8ea..79a62d53d30a 100644
> --- a/drivers/block/efi-block-io.c
> +++ b/drivers/block/efi-block-io.c
> @@ -146,7 +146,6 @@ static bool is_bio_usbdev(struct efi_device *efidev)
>  
>  static int efi_bio_probe(struct efi_device *efidev)
>  {
> -	int ret;
>  	int instance;
>  	struct efi_bio_priv *priv;
>  	struct efi_block_io_media *media;
> -- 
> 2.40.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


