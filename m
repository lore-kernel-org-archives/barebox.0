Delivery-date: Tue, 16 Aug 2022 08:36:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNqBZ-000OL5-4w
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 08:36:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNqBW-0001e6-Q8
	for lore@pengutronix.de; Tue, 16 Aug 2022 08:36:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TFUJSB3MdS1Tuys6DmnaI3gdTG8P2cQqZNCDDso8u3Y=; b=HPdESFGlaVcTRERiGaUHTl2M/k
	8Q8P+96Abc/lvYfxjJeiMxH8FABH3BlmWTBhsPthgm4QZMIAMYDyfFgb4+X5j5/vtpgdd9KbHsuIA
	E9I2AYktMYYZywCeihmvnsexBijB2/nj2NXLagcbq0lleVOxYLYz3/NDFsXmgsCRxOkXqwY6mMNvH
	l1p3EsM2IoGb42K0e8GYEI/4eY4xR3fvVTGHDFqVuXsbrofqGEThOTffSHNyW7mmDF2pYtTZ1EedV
	LW0ccjry6yjQ8HgPRg/gW71ijQ3cPYJaOsyFOQiCv/tSyS1MYsj8q0X2Yph9+mqgSbc1B07cgIjk3
	ASsOA94A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNq9Y-00Dp3K-08; Tue, 16 Aug 2022 06:34:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNq9F-00Dor2-2t
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 06:34:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNq9A-00016p-Uw; Tue, 16 Aug 2022 08:33:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNq9A-0007tI-MD; Tue, 16 Aug 2022 08:33:52 +0200
Date: Tue, 16 Aug 2022 08:33:52 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220816063352.GD17485@pengutronix.de>
References: <20220815064001.702879-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220815064001.702879-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_233357_556196_4A376C69 
X-CRM114-Status: GOOD (  20.26  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pstore: disable double memory reservation fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 15, 2022 at 08:40:01AM +0200, Ahmad Fatoum wrote:
> Device tree fixup ramoops_of_fixup registered directly after
> of_add_reserve_entry already takes care to create a /reserved-memory
> entry, so adding one to the FDT reserved memory list is redundant.
> Thus keep only the /reserved-memory entry.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/pstore/ram.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
> index 0d8bb8f418f4..b484ecd55201 100644
> --- a/fs/pstore/ram.c
> +++ b/fs/pstore/ram.c
> @@ -639,7 +639,6 @@ static int ramoops_probe(struct device_d *dev)
>  			  ramoops_ecc);
>  		globalvar_add_simple("linux.bootargs.ramoops", kernelargs);
>  	} else {
> -		of_add_reserve_entry(cxt->phys_addr, cxt->phys_addr + mem_size);
>  		of_register_fixup(ramoops_of_fixup, pdata);
>  	}
>  
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


