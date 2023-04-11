Delivery-date: Tue, 11 Apr 2023 14:35:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmDDT-00HX3M-Nv
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 14:35:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmDDS-0000Mm-Ny
	for lore@pengutronix.de; Tue, 11 Apr 2023 14:35:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OCCzkg2vyaQGvZ8Z0kXxVUz3h4FwBjQ/4lgNPKkdWE4=; b=qkYk9yntV+utBoO2ghufLHd8Lv
	5qnck3ZhFMr+hDhDDtQPKmEVC7h9KDe3yMmixrHa51qTvCYhEkaXUuXP9RnWJcsVD/67KUKgwq3LV
	4RP9R1UKfX10TVzkJGX4ZccwqfDrt/yyNv97H+iX4EmCfEA+YeKXhAdV9IknnxYTUjSiTP3FxeOv/
	a4owqsqFDkk79XqJqK8dDNTqc1aHGR9FiLW82VW0k60IsXEkkTWdaSsldkcs9B5XM4lSeKlHns2pK
	9+SOa8LFePFlp0hWW5c5HSa7Q9EOyT6ghTND5j7BOH2SIOZAwo5czLd/v3R80+M40DdHNtVEnxPBk
	HE9Gp0CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDCO-00HYuX-2R;
	Tue, 11 Apr 2023 12:34:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDCK-00HYtX-3B
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 12:34:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmDCJ-0000Ah-Nh; Tue, 11 Apr 2023 14:34:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmDCI-0008PY-Hj; Tue, 11 Apr 2023 14:34:06 +0200
Date: Tue, 11 Apr 2023 14:34:06 +0200
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230411123406.GK19113@pengutronix.de>
References: <BL0PR07MB5665E8DA118845ED96A8289DEC959@BL0PR07MB5665.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL0PR07MB5665E8DA118845ED96A8289DEC959@BL0PR07MB5665.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_053409_023904_FC152272 
X-CRM114-Status: GOOD (  19.96  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: LS1021A: slow boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Apr 10, 2023 at 02:58:08PM +0000, Renaud Barbier wrote:
> It was noticed that the LS1021A-IOT was slow to boot and perform
> computing intensive operations. Enable SMP so the cortex-a7 cache
> works as expected.
> 
> Signed-off-by: Renaud Barbier mailto:renaud.barbier@ametek.com
> ---
>  arch/arm/boards/ls1021aiot/lowlevel.c       | 1 -
>  arch/arm/mach-layerscape/lowlevel-ls102xa.c | 4 ++++
>  2 files changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/ls1021aiot/lowlevel.c b/arch/arm/boards/ls1021aiot/lowlevel.c
> index 4dec451558..b7106887f2 100644
> --- a/arch/arm/boards/ls1021aiot/lowlevel.c
> +++ b/arch/arm/boards/ls1021aiot/lowlevel.c
> @@ -86,7 +86,6 @@ static noinline __noreturn void ls1021aiot_r_entry(void)
>                   __dtb_fsl_ls1021a_iot_start);
>     }
> 
> -   arm_cpu_lowlevel_init();
>     ls102xa_init_lowlevel();
>     ls102xa_debug_ll_init();
> 
> diff --git a/arch/arm/mach-layerscape/lowlevel-ls102xa.c b/arch/arm/mach-layerscape/lowlevel-ls102xa.c
> index 7f4fcdf55c..259d8866d5 100644
> --- a/arch/arm/mach-layerscape/lowlevel-ls102xa.c
> +++ b/arch/arm/mach-layerscape/lowlevel-ls102xa.c
> @@ -6,6 +6,7 @@
>  #include <common.h>
>  #include <io.h>
>  #include <clock.h>
> +#include <asm/barebox-arm-head.h>
>  #include <asm/syscounter.h>
>  #include <asm/system.h>
>  #include <mach/layerscape/errata.h>
> @@ -311,6 +312,9 @@ void ls102xa_init_lowlevel(void)
>     uint32_t state, major, ctrl, freq;
>     uint64_t val;
> 
> +   cortex_a7_lowlevel_init();
> +   arm_cpu_lowlevel_init();
> +
>     init_csu();
> 
>     writel(SYS_COUNTER_CTRL_ENABLE, LSCH2_SYS_COUNTER_ADDR);
> --
> 2.34.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


