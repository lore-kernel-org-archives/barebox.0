Delivery-date: Tue, 27 Feb 2024 09:45:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ret5x-00A9Z8-1w
	for lore@lore.pengutronix.de;
	Tue, 27 Feb 2024 09:45:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ret5w-00032O-P7
	for lore@pengutronix.de; Tue, 27 Feb 2024 09:45:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GjSXVd/GnZNzeuVLpBjZ/SJ2qEUqvV5wsY9eDIh6Iu0=; b=tMxCJe9tidYAJhvkipnBJ488sQ
	pvVuTj/PtMJOaEuH/ZHqGdGO4XRufbPrA3X7/k/Ub4p6ezE1+86nKOuksR7PnD/AFz76yioqqAgwJ
	S0vihUbZfw9SbA+O+3aZ5xACr5We/otexmqJzkrVvQ2dNAQWUpnxMEToGDpeOyIJbgxjz6yMvWR6A
	WGFpfEOZN5P5Q5usU/3rW7U3RUJ9Xanfr1b0YmptpLCRVwoJJm2O1Zm08zwvymOF84Y7w5W/oxy6d
	wJZP0NddrfpXOKY73XEdMkJdizi9VG/z30q6MmhP0uJSsvs/0y48xGdQfR8dJ782j2lmtF06rAtrY
	nKe37W9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ret5D-00000004Mm3-0b8x;
	Tue, 27 Feb 2024 08:45:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ret59-00000004MiP-2ttm
	for barebox@lists.infradead.org;
	Tue, 27 Feb 2024 08:45:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ret57-0002r8-1q; Tue, 27 Feb 2024 09:44:57 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ret56-0039kG-LN; Tue, 27 Feb 2024 09:44:56 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ret56-00AXSv-1s;
	Tue, 27 Feb 2024 09:44:56 +0100
Date: Tue, 27 Feb 2024 09:44:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <Zd2hCMY_b_KvSz4I@pengutronix.de>
References: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-0-2df2430da984@pengutronix.de>
 <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-3-2df2430da984@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-3-2df2430da984@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_004459_776685_0837F9B3 
X-CRM114-Status: GOOD (  25.69  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] arm: mach-imx: tzasc: convert to cpu_is_mx8xyz macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 26, 2024 at 03:40:23PM +0100, Stefan Kerkmann wrote:
> Instead of passing in configuration parameters at runtime we can utilize
> the `cpu_is_mx8xyz` macro family to determine which bits should be set.
> 
> As the tzasc driver is imx specific, all functions are prefixed with
> `imx8m_` as well.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  arch/arm/mach-imx/atf.c   |  8 ++++----
>  arch/arm/mach-imx/imx8m.c |  2 +-
>  arch/arm/mach-imx/tzasc.c | 25 +++++--------------------
>  include/mach/imx/tzasc.h  |  8 ++------
>  4 files changed, 12 insertions(+), 31 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index e8060ebd95..9cbc38ef11 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -158,7 +158,7 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *bl33)
>  		size_t bl32_size;
>  		void *bl32_image;
>  
> -		imx8mm_tzc380_init();
> +		imx8m_tzc380_init();

I am not so sure about this patch. So far the whole PBL is coded in the
way that we inherently know the SoC type from the code path chosen.

This patch changes this. It doesn't really matter for this patch, but it
sends a sign how we want to solve this in future.

One implication of this patch is that cpu_is_mx() is a runtime decision,
so code paths behind an unused cpu_is_mx() can't be discarded anymore.

Another thing is that the usage of cpu_is() has the tendency to lead to
cascades of if (cpu_is_x() || cpu_is_y() || cpu_is_z()) which is not
paticularly nice to read.

Both are not really strong points, but on the other hand there's not
much improvement in this patch, so I tend to not take it.

> -bool tzc380_is_enabled(void)
> +bool imx8m_tzc380_is_enabled(void)

This change is good though as the function is clearly i.MX8 specific.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


