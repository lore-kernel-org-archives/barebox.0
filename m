Delivery-date: Tue, 24 Jun 2025 13:17:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1eQ-00AaCR-1o
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 13:17:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1eP-0007FH-Uz
	for lore@pengutronix.de; Tue, 24 Jun 2025 13:17:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3y3xozB6CI7cGRB6F7j92vkYTqcclpZS2YTCyaF5h2Q=; b=o14J91VwyN83x65E9nGjNyWiGx
	Q+3rACdN7a2FshmWzIzSI5DiGz1iroZcAWVqSBB276xBztbzCysyG/neKXpXzSnp2ioiumRzauIjS
	WgqCAuugELMtQnhxGn0HD3Ygbd4Xpjt3gyMV0EjRexQB6NOS/Kh9ewVB7a+AtbTWU2JfAB62DxE0M
	ppHE+6jGcyo8gL0qT+0OkkPwtOsqqraWsBWe8ypVZnFcdeBPMdYQnbRRqKQXhxOodJLKEA05Q8Zx2
	6/exx0nFyOowFbQVQ8ffpZpuo9bfYJEatmqCzHKTuCDssymp2RnHzMvneVu+6UnODwUxl+qUQnaAR
	1dyF4+Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU1e0-00000005PVA-3wTv;
	Tue, 24 Jun 2025 11:16:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU0vV-00000005JTK-2xdk
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 10:30:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uU0vT-0002kG-8t; Tue, 24 Jun 2025 12:30:51 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uU0vT-00563N-0I;
	Tue, 24 Jun 2025 12:30:51 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uU0vT-00F8v2-00;
	Tue, 24 Jun 2025 12:30:51 +0200
Date: Tue, 24 Jun 2025 12:30:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250624103050.apwnypp2qjmf7kc6@pengutronix.de>
References: <20250623220009.3898126-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250623220009.3898126-1-m.grzeschik@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_033053_778597_E4B88910 
X-CRM114-Status: GOOD (  17.71  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] arch: arm: imx: esdctl: limit ram to 1GB on imx93 in
 case OPTEE is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Michael,

thanks for the patch.

On 25-06-24, Michael Grzeschik wrote:
> In MX93 the ELE (Edge Lock Enclave) is limited to communicate with
> messages addressed under 1.5GB. The ELE can not reach the memory between
> (0xE0000000-0xFFFFFFFF).
> 
> So we limit the usable memory in case OPTEE is used.

Out of curiosity. This limits the memory for barebox but what about
Linux? You don't want to limit memory for Linux because ELE is not
capable of using memory above 0xe0000000.

> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> 
> ---
> v1 -> v2: moved the limitation to be active in imx93_barebox_entry only
> ---
>  arch/arm/mach-imx/esdctl.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 4b67b52ca45..c79d7c29245 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -1046,9 +1046,20 @@ void __noreturn imx7d_barebox_entry(void *boarddata)
>  
>  void __noreturn imx93_barebox_entry(void *boarddata)
>  {
> +	resource_size_t mem = 0;
> +
>  	imx93_init_scratch_space(false);
>  	optee_set_membase(imx_scratch_get_optee_hdr());
>  
> -	barebox_arm_entry(MX9_DDR_CSD1_BASE_ADDR,
> -			  imx9_ddrc_sdram_size(), boarddata);
> +	mem = imx9_ddrc_sdram_size();
> +	/* In MX93 the ELE is limited to comunicate with messages
> +	 * under 1.5GB address space. This limits the overal memory
> +	 * to be 1GB in case OPTEE is used.
> +	 */

What is the role of OP-TEE here? Is the ELE communication done by
barebox or op-tee or both?

Regards,
  Marco

> +	if (IS_ENABLED(CONFIG_PBL_OPTEE)) {
> +	        if (mem > 0x40000000)
> +	                mem = 0x40000000;
> +	}
> +
> +	barebox_arm_entry(MX9_DDR_CSD1_BASE_ADDR, mem, boarddata);
>  }
> -- 
> 2.39.5
> 
> 
> 


