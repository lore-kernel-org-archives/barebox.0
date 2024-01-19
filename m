Delivery-date: Fri, 19 Jan 2024 16:22:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQqhC-007DNE-2O
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 16:22:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQqhD-0008RB-Ax
	for lore@pengutronix.de; Fri, 19 Jan 2024 16:22:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1XNBZaYEWOf35D34fjcty+7F500mh+X2cnLDafTOeu0=; b=pyNVU8PFgTwXRLBRj5JVcIt+9x
	kelGNohYXPIDKyuMykKP6eG0l+FBX15KRSKNYJtR9cfEMS3FwRcGS+7JVYlOx5FUOlRgsEvvX358f
	42C6jKmYtW9hlEolbqTue//2Xib/hmfUcU3KI3Yqvj9+2Igori2rSCrrtfq8I0lbp3hG4F4hE3bZ7
	HvcfEoGRbO8JlmOE8RjDHhj80SNIE8y0hSQjNyKZeEEodOSKw8chh+0WrzUxJB7ULead6M3ly7Oyy
	9hI9qmLsg0uw+n7VWIRWygoLycg05USgKEadmE2K2fsYUnNgbTxY8M70xeWsZzSp3TcVqlyweOon3
	UeoWJjfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQqg8-005yyW-2H;
	Fri, 19 Jan 2024 15:21:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQqg5-005yxZ-2g
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 15:21:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqg3-0008LO-W4; Fri, 19 Jan 2024 16:21:04 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqg3-000wsn-Fb; Fri, 19 Jan 2024 16:21:03 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqg3-000kJW-Cs; Fri, 19 Jan 2024 16:21:03 +0100
Date: Fri, 19 Jan 2024 16:21:03 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240119152103.4nhg4jtfctrfvl6v@pengutronix.de>
References: <20240119142413.3206832-1-s.hauer@pengutronix.de>
 <20240119142413.3206832-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240119142413.3206832-5-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_072105_864283_39DAE5D8 
X-CRM114-Status: GOOD (  16.63  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/7] ARM: i.MX93: add imx93_barebox_entry()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-19, Sascha Hauer wrote:
> We already have support for detecting the DDR size automatically on
> i.MX93. Create imx93_barebox_entry() from it and use it instead of
> the hardcoded DDR size in the tqmba9xxxca board.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/tqmba9xxxca/lowlevel.c |  4 +++-
>  arch/arm/mach-imx/esdctl.c             | 15 ++++++++++++---
>  include/mach/imx/esdctl.h              |  1 +
>  3 files changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boards/tqmba9xxxca/lowlevel.c b/arch/arm/boards/tqmba9xxxca/lowlevel.c
> index 0a57d02451..64913b8de9 100644
> --- a/arch/arm/boards/tqmba9xxxca/lowlevel.c
> +++ b/arch/arm/boards/tqmba9xxxca/lowlevel.c
> @@ -4,11 +4,13 @@
>  #include <debug_ll.h>
>  #include <mach/imx/debug_ll.h>
>  #include <mach/imx/generic.h>
> +#include <mach/imx/xload.h>
>  #include <asm/barebox-arm.h>
>  #include <soc/imx9/ddr.h>
>  #include <mach/imx/atf.h>
>  #include <mach/imx/xload.h>
>  #include <mach/imx/romapi.h>
> +#include <mach/imx/esdctl.h>
>  
>  extern char __dtb_z_imx93_tqma9352_mba93xxca_start[];
>  extern struct dram_timing_info tqma93xxca_dram_timing;
> @@ -29,7 +31,7 @@ static noinline void tqma9352_mba93xxca_continue(void)
>  		imx93_load_and_start_image_via_tfa();
>  	}
>  
> -	barebox_arm_entry(0x80000000, 0x40000000, __dtb_z_imx93_tqma9352_mba93xxca_start);
> +	imx93_barebox_entry(__dtb_z_imx93_tqma9352_mba93xxca_start);
>  }
>  
>  ENTRY_FUNCTION(start_imx93_tqma9352_mba93xxca, r0, r1, r2)
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 1bd22cc6ef..2dc858c87f 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -563,7 +563,7 @@ static int imx8mn_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>  #define IMX9_DDRC_CS_COL_BITS	GENMASK(2, 0)
>  #define IMX9_DDRC_CS_EN		BIT(31)
>  
> -static int imx9_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> +static resource_size_t imx9_ddrc_sdram_size(void __iomem *mmdcbase)
>  {
>  	int width = 2;
>  	int banks = 8;
> @@ -588,7 +588,12 @@ static int imx9_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>  		mem += memory_sdram_size(cols, rows, banks, width);
>  	}
>  
> -	return arm_add_mem_device("ram0", data->base0, mem);
> +	return mem;

Nit: make mem typeof resource_size_t?

Regards,
  Marco

> +}
> +
> +static int imx9_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> +{
> +	return arm_add_mem_device("ram0", data->base0, imx9_ddrc_sdram_size(mmdcbase));
>  }
>  
>  static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
> @@ -1039,4 +1044,8 @@ void __noreturn imx7d_barebox_entry(void *boarddata)
>  			  boarddata);
>  }
>  
> -
> +void __noreturn imx93_barebox_entry(void *boarddata)
> +{
> +	barebox_arm_entry(MX9_DDR_CSD1_BASE_ADDR,
> +			  imx9_ddrc_sdram_size(IOMEM(MX9_DDR_CTL_BASE)), boarddata);
> +}
> diff --git a/include/mach/imx/esdctl.h b/include/mach/imx/esdctl.h
> index 01533478cc..4898a3e682 100644
> --- a/include/mach/imx/esdctl.h
> +++ b/include/mach/imx/esdctl.h
> @@ -148,6 +148,7 @@ void __noreturn imx8mn_barebox_entry(void *boarddata);
>  void __noreturn imx8mp_barebox_entry(void *boarddata);
>  void __noreturn imx8mq_barebox_entry(void *boarddata);
>  void __noreturn imx7d_barebox_entry(void *boarddata);
> +void __noreturn imx93_barebox_entry(void *boarddata);
>  #define imx6sx_barebox_entry(boarddata) imx6ul_barebox_entry(boarddata)
>  void imx_esdctl_disable(void);
>  resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth);
> -- 
> 2.39.2
> 
> 
> 


