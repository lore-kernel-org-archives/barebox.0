Delivery-date: Thu, 07 Sep 2023 15:39:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeFDr-0079dW-7D
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 15:39:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeFDo-000273-KC
	for lore@pengutronix.de; Thu, 07 Sep 2023 15:39:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OVY03qOIy1j5Sz1B9XcBscXhRfog05g7LPic8+Tc/A0=; b=KPxbfZ/wJ6KHACMxQ2FVIPz67C
	FwmhmnWhdUfhQYosY+qhiyV+7sTD0nSjfQwpuCagL4GcOOmibgI/sz8OfeLsBXa528dh/x3zrTeW2
	0JDA5cVbPMeBMMblD7evkoWC1fWeuRBusSwKbEVKmVQqP7BFUCVUw//DOMobMQ10vxd3I+5prOrQY
	VNeE0sR3oxlMf5hCuH8rMi+bdwgvIydq9VtfmCSc6LfS8MC1MaL8MMZTyLI3Z6qApcfqR3/CkCW/0
	u9DKSCa/ZEJgThwV8ZCr9OzW3Yxg9t527zDKfarsi49vHgKWsn9d6RExyvdZu75/2OluFt7VcGXsf
	eeqAuXvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeFCN-00C95d-0T;
	Thu, 07 Sep 2023 13:37:31 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeFCK-00C93s-0F
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 13:37:29 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0E8AB1BF21B
	for <barebox@lists.infradead.org>; Thu,  7 Sep 2023 13:37:18 +0000 (UTC)
Date: Thu, 7 Sep 2023 15:37:17 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Message-ID: <ZPnSDVXnrZoFDDs4@tour>
References: <20230906150857.32035-1-jmaselbas@zdiv.net>
 <20230907105142.39786-2-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230907105142.39786-2-jmaselbas@zdiv.net>
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_063728_257542_AC6C3302 
X-CRM114-Status: GOOD (  12.04  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! decompressors: Update xz to include ARM64 BCJ
 decoder
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 07, 2023 at 12:51:43PM +0200, Jules Maselbas wrote:
> This saves ~1.2KB from pbl binary size
yeah but that's because there are no BCJ filter at all...
this patch is broken, I have a fix and will send a v2.

> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> ---
>  lib/decompress_unxz.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/decompress_unxz.c b/lib/decompress_unxz.c
> index 5c906932f8..132ab4a239 100644
> --- a/lib/decompress_unxz.c
> +++ b/lib/decompress_unxz.c
> @@ -131,9 +131,10 @@
>  #	define XZ_DEC_POWERPC
>  #endif
>  #ifdef CONFIG_ARM
> -#	define XZ_DEC_ARM
>  #	ifdef CONFIG_CPU_64
>  #		define XZ_DEC_ARM64
> +#	else
> +#		define XZ_DEC_ARM
>  #	endif
>  #endif
>  #ifdef CONFIG_IA64
> -- 
> 2.42.0
> 
> 


