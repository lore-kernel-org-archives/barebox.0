Delivery-date: Wed, 01 Nov 2023 09:53:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qy6yW-00DPcc-QQ
	for lore@lore.pengutronix.de; Wed, 01 Nov 2023 09:53:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qy6yT-0007v7-Qm
	for lore@pengutronix.de; Wed, 01 Nov 2023 09:53:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PmiaL/vUA/lIA83ErVWMxTMUvbONlXPCC4mrDjKz19c=; b=F0Hvfcpljwcm0xKCD+zuVvqdnN
	Fc8ajzyuPJ2uyA4dtLLxwGUABGjBYTw2CAbCXMsnbgKTjkFjhZ0zBFRgSlm4aCVeQUim9wut193fy
	301eMApemLtxA3DFIBNy6CqHJ+VGyX+IXNcvVeoiKQtI9azD1IXjyhQJjkORiz/FBQ3llONf1TVck
	3w8UEOnaMihkl73jPkcXFdcTksj0cUCkuYh3gQsnsTkUhdbDAwczgRv/D/rkIwn8X6S1jJWfAB23J
	8uSolR0k4nSTSH7Lw58l2PHglqf07kUjx4PwyVmtbvcy5HDLLuYSHw/KpuWUHgBdTRGC5IZAJgbIU
	YL6w86QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qy6x6-006uF9-0Z;
	Wed, 01 Nov 2023 08:51:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qy6x0-006uE2-2T
	for barebox@lists.infradead.org;
	Wed, 01 Nov 2023 08:51:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qy6wz-0007hv-Iu; Wed, 01 Nov 2023 09:51:45 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qy6wy-005lRz-VU; Wed, 01 Nov 2023 09:51:44 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qy6wy-00HPMN-TK; Wed, 01 Nov 2023 09:51:44 +0100
Date: Wed, 1 Nov 2023 09:51:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20231101085144.GE3359458@pengutronix.de>
References: <20231030223619.344784-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231030223619.344784-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231101_015146_802272_84CC4000 
X-CRM114-Status: GOOD (  22.02  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] MIPS: qemu-malta: use 320 MHz input clock for CP0
 clocksource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 31, 2023 at 01:36:19AM +0300, Antony Pavlov wrote:
> Modern qemu uses 24Kf CPU at 320 MHz for malta board.
> By default arch/mips/lib/csrc-r4k.c clocksource driver
> relies on CPU running at 200 MHz and CP0 timer runs
> at the half of CPU clock that is 100 MHz.
> As a result the `sleep 15` command runs for only
> 9 seconds on qemu-malta.
> 
> Setting CPU clock to 320 MHz in the qemu-malta.dts file
> fixes the problem.
> 
> See these qemu commits for details:
> 
>   eea1f5bac6f hw/mips/malta: Set CPU frequency to 320 MHz
>   a7519f2b39b mips: malta/boston: replace cpu_model with cpu_type
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/Kconfig            |  3 +++
>  arch/mips/dts/qemu-malta.dts | 20 ++++++++++++++++++++
>  2 files changed, 23 insertions(+)

Applied to master, thanks

Sascha

> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index e05ee2d7f1a..89fc16be133 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -79,6 +79,9 @@ config MACH_MIPS_MALTA
>  	select SYS_SUPPORTS_BIG_ENDIAN
>  	select SYS_SUPPORTS_LITTLE_ENDIAN
>  	select HAS_DEBUG_LL
> +	select COMMON_CLK
> +	select COMMON_CLK_OF_PROVIDER
> +	select CLKDEV_LOOKUP
>  	select GPIOLIB
>  	select HW_HAS_PCI
>  	select HAVE_PBL_IMAGE
> diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
> index f08832735f8..c2bc03dd463 100644
> --- a/arch/mips/dts/qemu-malta.dts
> +++ b/arch/mips/dts/qemu-malta.dts
> @@ -19,6 +19,26 @@ memory@0 {
>  		reg = <0x00000000 0x10000000>;
>  	};
>  
> +	clocks {
> +		ref_clk: ref_clk {
> +			#clock-cells = <0>;
> +			compatible = "fixed-clock";
> +			clock-frequency = <320000000>;
> +		};
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu@0 {
> +			device_type = "cpu";
> +			compatible = "mips,mips24Kf";
> +			clocks = <&ref_clk>;
> +			reg = <0>;
> +		};
> +	};
> +
>  	uart0: serial@180003f8 {
>  		compatible = "ns16550a";
>  		reg = <0x180003f8 0x08>;
> -- 
> 2.39.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


