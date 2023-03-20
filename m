Delivery-date: Mon, 20 Mar 2023 09:21:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peAlk-007aVJ-Vk
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 09:21:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peAlk-0008P7-MV
	for lore@pengutronix.de; Mon, 20 Mar 2023 09:21:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G6gZte5uwL966sttKdxvC422U1xroVSGi40fz0WT/CE=; b=V5l3E4cH0vrV7BqZcZ/NAG460B
	jt57WORMJw+DgOgkxfmCucWiCDrrKIqbD9g/GwsatrMfEa9fXmNR8OI+G9g+UnCuVkff1DQ+sAs1V
	34Swe4xR7+UoavVzCylRyvqxxD1VJNWFg4lQjEh7BKmNuYiecNkdx35mwRKh+HuvvuaBMCjlHE8xP
	P9DYEA9htSiYWlmsRMicROq5aE+NUoaIFk8/TfcvZ8VTyuJK7t8J+OM5EwTiZmfB4d7ecTmnQbiOq
	mE3YCg1lq2oHyZm1aLYDvUBncNQJX63zaKt9AFuK77tkMOgYCXOGvL+wu+zsPFw7NqpOvGBvmADOi
	SILOgnZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peAkK-008MeT-1t;
	Mon, 20 Mar 2023 08:20:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peAkH-008MdA-1E
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 08:19:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1peAkA-00084M-P7; Mon, 20 Mar 2023 09:19:50 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1peAkA-0002Lw-8m; Mon, 20 Mar 2023 09:19:50 +0100
Date: Mon, 20 Mar 2023 09:19:50 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org, Rouven Czerwinski <rouven@czerwinskis.de>
Message-ID: <20230320081950.sjxg2st6qgqh6l4o@pengutronix.de>
References: <20230318160635.216749-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230318160635.216749-1-r.czerwinski@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_011957_415930_46C9E314 
X-CRM114-Status: GOOD (  15.45  )
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
Subject: Re: [PATCH] arm: rockchip: add support for CM3 on IO board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Rouven,

On 23-03-18, Rouven Czerwinski wrote:
> From: Rouven Czerwinski <rouven@czerwinskis.de>
> 
> Working:
> - RKBIN DDR training (rk3566_ddr_1056MHz_v1.13.bin)
> - RKBIN TF-A (v1.34) from RKBIN

Can please add the board to Documentation/boards/rockchip.rst?

> - Environment storage
> - DHCP, ping and link detection
> 
> Signed-off-by: Rouven Czerwinski <rouven@czerwinskis.de>
> ---
>  arch/arm/boards/Makefile             |  1 +
>  arch/arm/boards/radxa-cm3/.gitignore |  1 +
>  arch/arm/boards/radxa-cm3/Makefile   |  3 ++
>  arch/arm/boards/radxa-cm3/board.c    | 56 ++++++++++++++++++++++++++++
>  arch/arm/boards/radxa-cm3/lowlevel.c | 50 +++++++++++++++++++++++++
>  arch/arm/dts/Makefile                |  1 +
>  arch/arm/dts/rk3566-cm3-io.dts       | 55 +++++++++++++++++++++++++++
>  arch/arm/mach-rockchip/Kconfig       |  6 +++
>  images/Makefile.rockchip             |  7 ++++
>  9 files changed, 180 insertions(+)
>  create mode 100644 arch/arm/boards/radxa-cm3/.gitignore
>  create mode 100644 arch/arm/boards/radxa-cm3/Makefile
>  create mode 100644 arch/arm/boards/radxa-cm3/board.c
>  create mode 100644 arch/arm/boards/radxa-cm3/lowlevel.c
>  create mode 100644 arch/arm/dts/rk3566-cm3-io.dts

...

> diff --git a/arch/arm/dts/rk3566-cm3-io.dts b/arch/arm/dts/rk3566-cm3-io.dts
> new file mode 100644
> index 0000000000..81f896b943
> --- /dev/null
> +++ b/arch/arm/dts/rk3566-cm3-io.dts
> @@ -0,0 +1,55 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <arm64/rockchip/rk3566-radxa-cm3-io.dts>
> +#include "rk356x.dtsi"
> +
> +/ {
> +	chosen: chosen {
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &environment_sd;
> +			status = "disabled";
> +		};
> +
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &environment_emmc;
> +			status = "disabled";
> +		};
> +	};
> +
> +	memory@a00000 {
> +		device_type = "memory";
> +		reg = <0x0 0x00a00000 0x0 0x7f600000>;
> +	};

Do we need the memoty node here? I recently encountered issues with it
on a i.MX8MP.

Regards,
  Marco


