Delivery-date: Fri, 11 Apr 2025 18:22:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u3H9F-00BJRa-1z
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 18:22:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u3H9E-0002tb-VZ
	for lore@pengutronix.de; Fri, 11 Apr 2025 18:22:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P8gPEzklFwcRUqZtx5shfFTd+84bIOOz3C+UunmY0VI=; b=QZ+k/GhdavTEl8D4Yj8hbC8Eas
	T2V1TFAYhU54M7RJEtlls+HNajRru4A7A1WerVyYHgMKP5D01PphT7mxFZ1nxqjWQKj7Rehqjc17t
	2M8CbEqXQoY4D+QHvU7rpyFMWytftlZ4k7Xhrz0mOJdJRI0Rz73ThKPvhYZ+bh3Gz4cTpDAJGrsJn
	oA2seUDWcERmdUJ0dsJG5TfbyIibr8KIu8gHK9M2kL+YXYrzl/TvEC0kU44DQ6AVQArTPWxMNLaNs
	2WqQ4XcATQ1Z67jD8NM5roZUpyczsXScEhNZVyyEsV9EgGZccz3p8Zbs9qy7kpy45hil3g5mm5f8B
	x//NqRng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3H8c-0000000ELUI-3Urw;
	Fri, 11 Apr 2025 16:21:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3H8Z-0000000ELTl-3puf
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 16:21:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u3H8X-0002eF-7g; Fri, 11 Apr 2025 18:21:49 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u3H8X-004SXM-0A;
	Fri, 11 Apr 2025 18:21:49 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u3H8W-00CJXT-33;
	Fri, 11 Apr 2025 18:21:48 +0200
Date: Fri, 11 Apr 2025 18:21:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z_lBnMOJQNNN4T6l@pengutronix.de>
References: <20250411152020.2783640-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250411152020.2783640-1-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_092151_951084_0E89C4C9 
X-CRM114-Status: GOOD (  33.84  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: dmc: fix DRAM for sizes 16+ GiB on rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Apr 11, 2025 at 05:20:20PM +0200, Michael Tretter wrote:
> RK3588 has two known memory gaps when using 16+ GiB DRAM,
> [0x3fc000000, 0x3fc500000) and [0x3fff00000, 0x400000000).
> 
> Skip both gaps when initializing the DRAM on rk3588 to avoid running
> into an exception when running memtest on an rk3588 board with 16+ GiB
> DRAM.
> 
> The information about the gaps is taken from a patch by Jonas Karlman to
> the U-Boot mailing list [0].
> 
> [0] https://lore.kernel.org/all/20250405153832.1427549-5-jonas@kwiboo.se/
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
> The start and end addresses of the gaps probably should be put into of
> rockchip_dmc_drvdata and only set for the rk3588. Any suggestion how to
> implement this more nicely would be very welcome.

Looks like the rk3588 currently is the only SoC that can have that much
memory that it hits the gaps. You could add a comment that the gaps are
only verified on rk3588 and need another look once the next SoC is
added.

Once we are there we can add a function pointer into struct rockchip_dmc_drvdata
doing the right thing, but I think for now it's fine the way you did it.

Sascha

> ---
>  arch/arm/mach-rockchip/dmc.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
> index 86e61f311661..cf63fdb5a8bb 100644
> --- a/arch/arm/mach-rockchip/dmc.c
> +++ b/arch/arm/mach-rockchip/dmc.c
> @@ -27,6 +27,12 @@
>  #define RK3568_INT_REG_START		RK3399_INT_REG_START
>  #define RK3588_INT_REG_START		RK3399_INT_REG_START
>  
> +/* RK3588 has two known memory gaps when using 16+ GiB DRAM */
> +#define DRAM_GAP1_START         0x3fc000000
> +#define DRAM_GAP1_END           0x3fc500000
> +#define DRAM_GAP2_START         0x3fff00000
> +#define DRAM_GAP2_END           0x400000000
> +
>  struct rockchip_dmc_drvdata {
>  	unsigned int os_reg2;
>  	unsigned int os_reg3;
> @@ -220,9 +226,19 @@ static int rockchip_dmc_probe(struct device *dev)
>  	arm_add_mem_device("ram0", membase,
>  		min_t(resource_size_t, drvdata->internal_registers_start, memsize) - membase);
>  
> -	/* ram1, remaining RAM beyond 32bit space */
> +	/* ram1, RAM beyond 32bit space up to first gap */
>  	if (memsize > SZ_4G)
> -		arm_add_mem_device("ram1", SZ_4G, memsize - SZ_4G);
> +		arm_add_mem_device("ram1", SZ_4G,
> +			min_t(resource_size_t, DRAM_GAP1_START, memsize) - SZ_4G);
> +
> +	/* ram2, RAM between first and second gap */
> +	if (memsize > DRAM_GAP1_END)
> +		arm_add_mem_device("ram2", DRAM_GAP1_END,
> +			min_t(resource_size_t, DRAM_GAP2_START, memsize) - DRAM_GAP1_END);
> +
> +	/* ram3, remaining RAM after second gap */
> +	if (memsize > DRAM_GAP2_END)
> +		arm_add_mem_device("ram3", DRAM_GAP2_END, memsize - DRAM_GAP2_END);
>  
>  	return 0;
>  }
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


