Delivery-date: Thu, 24 Apr 2025 18:04:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7z3e-004vzu-2Y
	for lore@lore.pengutronix.de;
	Thu, 24 Apr 2025 18:04:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7z3e-00080F-2X
	for lore@pengutronix.de; Thu, 24 Apr 2025 18:04:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s4qio22D1lrccsQuS4NGFl1MO3ehLpzM7sn0K+Ja/WQ=; b=0HYFFti98cUFZqOn2FlU6aqpF4
	lwGHZ8SQwap/8YDXP/LxXf/efVzLRHjuwCwZ5hdjFzuqVx1s8RITDzn3Ri1/E4JON2UBtEZdK/Ben
	w3HHqWGvSJCyRYMrST6vtkX5kt8F8KFpf0RfM3HHDvUwKa96IASACFHYc9qYEI6ylOIjd3KR4p7+G
	uURYpTTdyMVFRROmiR7imOEVMzThwuOmbb58lu7vkbnpJS2a7ZydbRNLd/fX35egNCTfj0MuJhgqB
	lFw1j1pgRCWt00osV4gQKlmExMcPJWvjKF28c/woZHXJ053rWR6ZiSVAao/I451W6w0eDZucDWA5n
	FkMb3ifQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7z3U-0000000EaR1-0ks0;
	Thu, 24 Apr 2025 16:04:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7vNo-0000000DyEB-1Wwq
	for barebox@lists.infradead.org;
	Thu, 24 Apr 2025 12:08:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u7vNk-0007Ro-Vz; Thu, 24 Apr 2025 14:08:45 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7vNk-001sPn-2a;
	Thu, 24 Apr 2025 14:08:44 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7vNk-001LPR-2F;
	Thu, 24 Apr 2025 14:08:44 +0200
Date: Thu, 24 Apr 2025 14:08:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aAopzC7K6bqoxunE@pengutronix.de>
References: <20250423140913.1530237-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250423140913.1530237-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_050848_398756_3A4271E4 
X-CRM114-Status: GOOD (  14.88  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/4] partitions: efi: add support to specify
 gpt-location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 23, 2025 at 04:09:10PM +0200, Marco Felsch wrote:
> -static __maybe_unused struct partition_desc *efi_partition_create_table(struct block_device *blk)
> +static __maybe_unused struct partition_desc *
> +efi_partition_create_table(struct block_device *blk, sector_t gpt_location)
>  {
>  	struct efi_partition_desc *epd = xzalloc(sizeof(*epd));
>  	gpt_header *gpt;
>  
> +	if (gpt_location < 2) {
> +		pr_err("Invalid starting LBA (%llu) of array of partition entries\n",
> +		       gpt_location);
> +		return ERR_PTR(-EINVAL);
> +	}
> +
>  	partition_desc_init(&epd->pd, blk);
>  
>  	epd->gpt = xzalloc(512);
> @@ -594,10 +601,10 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
>  	gpt->header_size = cpu_to_le32(sizeof(*gpt));
>  	gpt->my_lba = cpu_to_le64(1);
>  	gpt->alternate_lba = cpu_to_le64(last_lba(blk));
> -	gpt->first_usable_lba = cpu_to_le64(34);
> +	gpt->first_usable_lba = cpu_to_le64(gpt_location + 32);

Since you are changing this default you should also check against
gpt->first_usable_lba in efi_partition_mkpart():

	if (start_lba < 34) {
		pr_err("invalid start LBA %lld, minimum is 34\n", start_lba);
		return -EINVAL;
	}

We should have done that from the start, but now that you are touching
it it's your turn ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


