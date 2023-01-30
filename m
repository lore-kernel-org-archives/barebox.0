Delivery-date: Mon, 30 Jan 2023 19:36:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ13-007tO9-8t
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 19:36:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ10-0003ih-6R
	for lore@pengutronix.de; Mon, 30 Jan 2023 19:36:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SQh7oimJnRvlqGu/il4HFk7Gn4SVTKPVFsPlYOJAZ6M=; b=gwwX1vbj0pUaPSWtTEtXLaI5xh
	8Fee3ZBpXVhzVNLB6vzItLHzmroAmR+UrVMK5WVxTkjpqp35eMmg3T4lQkV8G6GqvxQsk9bLhA186
	ew/O0x3oJRrAQKCyAAWsO2EZITSJcwA0XGOd1ch2zUOjvrjppwQ6ogyYx38uZ5de1vvzl2vGtecXL
	4s9P22AvTxSOSnFzi2AzeKI+JhMWMXm/UZkkWBERF30SQUZuZd7RU19InjZn0rX88UNC4Akj4fFmA
	VrnhzcUxn8wK6Pm4rK5w7Ol72Jm6edhJpoABDsy6W1ESRV1AJJurLo52DX9Edk81gECfaEBhnmggY
	BnjpypnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMYzn-0052vc-DF; Mon, 30 Jan 2023 18:35:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMYyi-0052Wd-8j
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 18:34:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMYyf-000322-2n
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 19:34:01 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMPD4-0006Sr-5s; Mon, 30 Jan 2023 09:08:14 +0100
Date: Mon, 30 Jan 2023 09:08:14 +0100
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230130080814.GP13319@pengutronix.de>
References: <20230126183624.85500-1-contact@jookia.org>
 <20230126190258.110423-1-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230126190258.110423-1-contact@jookia.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_103404_352039_570A242A 
X-CRM114-Status: GOOD (  22.20  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DATE_IN_PAST_06_12,DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX6: Specify OCRAM base address and size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 27, 2023 at 06:02:58AM +1100, John Watts wrote:
> The i.MX6 includes some on-chip RAM: 128KiB on most variants, with 256KiB on
> the Dual and Quad variants.
> 
> This region is where the first stage of Barebox gets loaded if RAM
> initialization isn't hard coded using DCD information.
> 
> Add the base address and size so it can be used to calculate where to put the
> stack at boot.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
> Changes v1 -> v2:
> - Fixed wrong size (thanks Marco!)
> ---
>  arch/arm/mach-imx/include/mach/imx6-regs.h | 6 ++++++
>  1 file changed, 6 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
> index 39e2751533..89a3b267c6 100644
> --- a/arch/arm/mach-imx/include/mach/imx6-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
> @@ -3,6 +3,12 @@
>  #ifndef __MACH_IMX6_REGS_H
>  #define __MACH_IMX6_REGS_H
>  
> +#include <linux/sizes.h>
> +
> +/* Set MAX_SIZE to 128K, only the Quad and Dual have 256K */
> +#define MX6_OCRAM_BASE_ADDR		0x00900000
> +#define MX6_OCRAM_MAX_SIZE		SZ_128K
> +
>  #define MX6_APBH_BASE_ADDR		0x00110000
>  #define MX6_GPMI_BASE_ADDR		0x00112000
>  #define MX6_BCH_BASE_ADDR		0x00114000
> -- 
> 2.39.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


