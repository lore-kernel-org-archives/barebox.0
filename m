Delivery-date: Wed, 26 Jul 2023 14:30:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOdfB-00Aqe3-AO
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 14:30:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOdf8-0004Ja-S0
	for lore@pengutronix.de; Wed, 26 Jul 2023 14:30:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NglhH7t3RoixQn3YNm6crMMSp5HVW1/89/0+THEjgvI=; b=SHTc7CImkJi2evuycZtpDhCoG7
	qi536rFx/bgqkfabYq79/oBOpSUic5K22QWOy1e9qVcvijtW180RYqK4FYixvvd+fTU9sXwY4rUQB
	LFkQ+itnWYglimFY9vaayTHInfX/KrDhNTSMRD8fDAcFtqu6koAGQIPxK2p/kxmKSTYp89D26J5ul
	FciC5XuSfwHqqmZuk/Ce79mecygVkULsZ5ozwRx9U3q6t/o7+8DeZjRR0upv/zPtcoCH3dhw8leHS
	rY/f1u9e5rayb0flMFOiJyxO1FelDz2rjKPBdSaEzKg1n9k2SZaf8GqAklWQ00bEGAxgqS6Uegj+k
	CUpkNhvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOde9-00ALTs-1B;
	Wed, 26 Jul 2023 12:29:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOde6-00ALTR-2d
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 12:29:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOde5-00044t-IE; Wed, 26 Jul 2023 14:29:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOde5-0005cF-8d; Wed, 26 Jul 2023 14:29:37 +0200
Date: Wed, 26 Jul 2023 14:29:37 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
Message-ID: <20230726122937.GR18491@pengutronix.de>
References: <20230711090841.18373-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230711090841.18373-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_052938_851512_20EC1C5D 
X-CRM114-Status: GOOD (  17.23  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] kvx: Remove unused defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 11, 2023 at 11:08:41AM +0200, Jules Maselbas wrote:
> Since commit f6dcd5c03b ("kvx: dma: Remove arch dma_map/unmap_single"),
> theses defines are not used anymore, remove them.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  arch/kvx/include/asm/dma.h | 4 ----
>  1 file changed, 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/kvx/include/asm/dma.h b/arch/kvx/include/asm/dma.h
> index 5bf601307e..f35eafba8f 100644
> --- a/arch/kvx/include/asm/dma.h
> +++ b/arch/kvx/include/asm/dma.h
> @@ -6,10 +6,6 @@
>  
>  #include <common.h>
>  
> -#define KVX_DDR_32BIT_RAM_WINDOW_BA	(0x80000000ULL)
> -#define KVX_DDR_64BIT_RAM_WINDOW_BA	(0x100000000ULL)
> -#define MAX_32BIT_ADDR			(0xffffffffULL)
> -
>  #define dma_alloc dma_alloc
>  static inline void *dma_alloc(size_t size)
>  {
> -- 
> 2.17.1
> 
> 
> 
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


