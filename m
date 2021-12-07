Delivery-date: Tue, 07 Dec 2021 10:12:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWWl-0007sk-HN
	for lore@lore.pengutronix.de; Tue, 07 Dec 2021 10:12:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWWj-00024v-FP
	for lore@pengutronix.de; Tue, 07 Dec 2021 10:12:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/bQKujPPwtONSVXca3EumhcJNNwy30+OQTex30DW5Oo=; b=WLv/9Xejc2OWSP19hriH8+G3k7
	ZmOHpmHv1APprvyN2H8BDWrs6pTOQsIRILwDgp0ph6zkWiEM81SQ+nAm1lGnbhq+d1VdzvntLu2HS
	fqjihOYxiehjEColf/iOajwVipyUr+LdNk25oYkr6AHtbrNP2qUo2u7PkMNpM6WMSO0b8iajJGnyj
	B9tMfqjS9ct5t2ahhD8BjUnZnbXl7QMYUoVTGiqm070r8xHhqp8eIS0VXLRSuA5vxJIsL0uDn5YJD
	5oyRpksgUAmaCo9XHy2Hdf31UZW3L1ZaiV0OV2UkoYjik7ScKTzNFUEH8kP5XRKSFiBsCfhAX4MtS
	UrZEGC/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muWVI-007jPP-FN; Tue, 07 Dec 2021 09:11:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muWQU-007hR3-CI
 for barebox@lists.infradead.org; Tue, 07 Dec 2021 09:06:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWQT-0000ou-3E; Tue, 07 Dec 2021 10:06:17 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWQR-000381-Qu; Tue, 07 Dec 2021 10:06:15 +0100
Date: Tue, 7 Dec 2021 10:06:15 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Yann Sionneau <ysionneau@kalray.eu>
Message-ID: <20211207090615.GF28260@pengutronix.de>
References: <20211204130854.1624493-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211204130854.1624493-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:06:05 up 292 days, 12:29, 143 users,  load average: 0.33, 0.39,
 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_010618_468115_A2F4059A 
X-CRM114-Status: GOOD (  20.67  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] RISC-V: cpu: fix build with
 CONFIG_RISCV_EXCEPTIONS=n
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Dec 04, 2021 at 02:08:54PM +0100, Ahmad Fatoum wrote:
> Building without CONFIG_RISCV_EXCEPTIONS causes a compile error, because
> of a definition mismatch. data_abort_mask is a no-op without exception
> support, but interrupt.c defines it as a different type of symbol. Skip
> interrupt.c compilation to fix the build error.
> 
> Reported-by: Yann Sionneau <ysionneau@kalray.eu>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/riscv/cpu/Makefile | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/riscv/cpu/Makefile b/arch/riscv/cpu/Makefile
> index 717baaaaa727..d79bafc6f142 100644
> --- a/arch/riscv/cpu/Makefile
> +++ b/arch/riscv/cpu/Makefile
> @@ -2,6 +2,8 @@
>  
>  obj-y += core.o time.o
>  obj-$(CONFIG_HAS_DMA) += dma.o
> +ifeq ($(CONFIG_RISCV_EXCEPTIONS),y)
>  obj-pbl-$(CONFIG_RISCV_M_MODE) += mtrap.o
>  obj-pbl-$(CONFIG_RISCV_S_MODE) += strap.o
>  obj-pbl-y += interrupts.o
> +endif
> -- 
> 2.33.0
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

