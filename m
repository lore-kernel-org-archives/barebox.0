Delivery-date: Mon, 12 Sep 2022 08:23:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXcqy-001s0k-Ad
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 08:23:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXcqw-0004BL-Ul
	for lore@pengutronix.de; Mon, 12 Sep 2022 08:23:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NsArW6Y+4gJoIUaMASXGfdLoXj5RDSwixaTDLlJQshM=; b=luRTtMWTtgoPKKyK6kZ15g1DN+
	BZKFbymYgbU+oDy93n5FyucXEIv+zAtIGkIhbBzv4q61ByjTuJ45aIXOiFKpcKh6c5F4G8RMAVBfu
	gydlqG8HpPTm2Ed5+Ju0HJCRoFk3EH5lzENO02mj5rsVdAyHVENC+7DggqpgeAJbKH12Kr6i/8fKf
	Jj170IDjaWOP3uRvXO5Ff+B9BWq603h9uFirETzliC0BW7zKRnBErkdyFhRPwMGmpo9noisccgoTJ
	cJJqNnF4vsgJRmF1lsZD5pe30II8DdeoKmRGjF1kilBnalDjiKKyNIG4T4JchKRwMhx2XA/sASiXC
	uO3t2I8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXcok-007EDM-Rg; Mon, 12 Sep 2022 06:21:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXcof-007EBz-8g
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 06:21:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXcoa-0003kl-BN; Mon, 12 Sep 2022 08:21:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXcoY-0004dR-9m; Mon, 12 Sep 2022 08:21:02 +0200
Date: Mon, 12 Sep 2022 08:21:02 +0200
To: Bastian Krause <bst@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>,
	=?iso-8859-15?Q?J=FCrgen?= Borleis <jbe@pengutronix.de>
Message-ID: <20220912062102.GC24324@pengutronix.de>
References: <20220909143915.4081275-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220909143915.4081275-1-bst@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220911_232109_349142_540E3501 
X-CRM114-Status: GOOD (  26.37  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX23: fix memory size calulcation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 09, 2022 at 04:39:15PM +0200, Bastian Krause wrote:
> According to the i.MX233 Reference Manual (i.MX233RM, Rev. 4, 03 April
> 2009) section "14.1.1 AHB Address Ranges", the formula to calculate the
> DRAM memory size is:
> 
>   dram_memory_available = 2 * 2^col * 2^row * (# dram_devices) * (# banks_per_device)
> 
> The calulcation in barebox misses the first factor, so the result is
> only half as big as it should be.
> 
> On an iMX233 OLinuXino board the following errors can be observed:
> 
>   mmu: Critical Error: Can't request SDRAM region for ttb at 43fe4000
>   Error: Cannot request SDRAM region for stack
> 
> The faulty calulcation leads to 32 MB being detected (as seen in the
> output of `iomem`), although 64 MB should be available (as passed to
> barebox_arm_entry() in lowlevel code).
> 
> Fix the memory calculation by adding the missing factor 2.
> 
> Fixes: 7158c5987e6 ("ARM: i.MX23: Add memory size detection")
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> Signed-off-by: Jürgen Borleis <jbe@pengutronix.de>
> ---
>  arch/arm/mach-mxs/include/mach/imx23.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to master, thanks

Sascha

> 
> diff --git a/arch/arm/mach-mxs/include/mach/imx23.h b/arch/arm/mach-mxs/include/mach/imx23.h
> index bdd3ae4407a..03eddabed0a 100644
> --- a/arch/arm/mach-mxs/include/mach/imx23.h
> +++ b/arch/arm/mach-mxs/include/mach/imx23.h
> @@ -25,7 +25,7 @@ static inline u32 imx23_get_memsize(void)
>  	cs0 = FIELD_GET(DRAM_CTL14_CS0_EN, ctl14);
>  	cs1 = FIELD_GET(DRAM_CTL14_CS1_EN, ctl14);
>  
> -	return (1 << columns) * (1 << rows) * banks * (cs0 + cs1);
> +	return 2 * (1 << columns) * (1 << rows) * banks * (cs0 + cs1);
>  }
>  
>  #endif /* __MACH_IMX23_H */
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


