Delivery-date: Mon, 14 Apr 2025 10:38:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4FKi-000ZH5-2s
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 10:38:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4FKi-0006cT-91
	for lore@pengutronix.de; Mon, 14 Apr 2025 10:38:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ERNgAzhPNMOwf7j7cQ8benbLMQWdKzsEQGbxh2vutnw=; b=FI+AhFceGAg/LfbmukdrFTAsKq
	2cvKUTqULpd5pXvLWjSDnslJgeF+OFGIx1PtEMrS42A/lI/kRsyCiET8DMPvJZlOexV5GJJeKqtXc
	asO/oCNT52aZpmZJcfLYGdeROAgqCTIQB1shTtVuQbwtUok1v8z0dvkf23xqhyUOPC4HahRPpYqHF
	GWo2rXuiYE91Xw4ipVciz9wm4eAyPwWI32fg6Lj16JVi+ilCt4GuM6Sy1+NFmwXNEatWVxHJcHOWC
	lC9GByJMIvmLLEiy5QSGRqQwzeFNhtba7dlYUKgUFpCpfCEGGAgno8jBun3c3pCV8kB/k9bmSIHZ+
	xs7VZpSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4FK2-000000018JV-0cpp;
	Mon, 14 Apr 2025 08:37:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4FK0-000000018Hl-0Mlj
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 08:37:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u4FJx-0006N9-2W; Mon, 14 Apr 2025 10:37:37 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4FJw-000Diu-2q;
	Mon, 14 Apr 2025 10:37:36 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4FJw-000DbG-2T;
	Mon, 14 Apr 2025 10:37:36 +0200
Date: Mon, 14 Apr 2025 10:37:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z_zJUIijGZGEqcAu@pengutronix.de>
References: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_013740_126706_E5586935 
X-CRM114-Status: GOOD (  21.23  )
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
Subject: Re: [PATCH 1/6] ARM: dts: i.MX8MP: drop now upstream
 imx8mp-nominal.dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Apr 14, 2025 at 08:50:04AM +0200, Ahmad Fatoum wrote:
> This file is now available in Linux since v6.15-rc1, so we do not need
> to duplicate it in barebox for boards to make use of it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/dts/imx8mp-nominal.dtsi | 49 --------------------------------
>  1 file changed, 49 deletions(-)
>  delete mode 100644 arch/arm/dts/imx8mp-nominal.dtsi
> 
> diff --git a/arch/arm/dts/imx8mp-nominal.dtsi b/arch/arm/dts/imx8mp-nominal.dtsi
> deleted file mode 100644

This is used by imx8mp-skov-reva.dtsi. Should the include be changed to
use <> instead of "" now?

Sascha

> index d675d1e5486e..000000000000
> --- a/arch/arm/dts/imx8mp-nominal.dtsi
> +++ /dev/null
> @@ -1,49 +0,0 @@
> -// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> -
> -&clk {
> -	assigned-clocks = <&clk IMX8MP_CLK_A53_SRC>,
> -			  <&clk IMX8MP_CLK_A53_CORE>,
> -			  <&clk IMX8MP_SYS_PLL3>,
> -			  <&clk IMX8MP_CLK_NOC>,
> -			  <&clk IMX8MP_CLK_NOC_IO>,
> -			  <&clk IMX8MP_CLK_GIC>;
> -	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
> -				 <&clk IMX8MP_ARM_PLL_OUT>,
> -				 <0>,
> -				 <&clk IMX8MP_SYS_PLL1_800M>,
> -				 <&clk IMX8MP_SYS_PLL3_OUT>,
> -				 <&clk IMX8MP_SYS_PLL1_800M>;
> -	assigned-clock-rates = <0>, <0>,
> -			       <600000000>,
> -			       <800000000>,
> -			       <600000000>,
> -			       <400000000>;
> -};
> -
> -&pgc_hsiomix {
> -	assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
> -	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>;
> -	assigned-clock-rates = <400000000>;
> -};
> -
> -&pgc_gpumix {
> -	assigned-clocks = <&clk IMX8MP_CLK_GPU_AXI>,
> -			  <&clk IMX8MP_CLK_GPU_AHB>;
> -	assigned-clock-parents = <&clk IMX8MP_SYS_PLL3_OUT>,
> -				 <&clk IMX8MP_SYS_PLL3_OUT>;
> -	assigned-clock-rates = <600000000>, <300000000>;
> -};
> -
> -&media_blk_ctrl {
> -	assigned-clocks = <&clk IMX8MP_CLK_MEDIA_AXI>,
> -			  <&clk IMX8MP_CLK_MEDIA_APB>,
> -			  <&clk IMX8MP_CLK_MEDIA_DISP1_PIX>,
> -			  <&clk IMX8MP_CLK_MEDIA_DISP2_PIX>,
> -			  <&clk IMX8MP_VIDEO_PLL1>;
> -	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
> -				 <&clk IMX8MP_SYS_PLL1_800M>,
> -				 <&clk IMX8MP_VIDEO_PLL1_OUT>,
> -				 <&clk IMX8MP_VIDEO_PLL1_OUT>;
> -	assigned-clock-rates = <400000000>, <200000000>,
> -			       <0>, <0>, <1039500000>;
> -};
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


