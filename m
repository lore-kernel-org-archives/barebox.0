Delivery-date: Mon, 17 May 2021 18:41:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ligIh-0004Z4-Qd
	for lore@lore.pengutronix.de; Mon, 17 May 2021 18:41:03 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ligIg-0005TD-Tf
	for lore@pengutronix.de; Mon, 17 May 2021 18:41:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5P1rWm9ggAOcq6McKOHsSi+SkSZiDG4wOUAc75vYoQo=; b=nArNL0YZ9fGQnufRNKu8upxVh
	G+gnh+YJqCZ9yUeK22H0wCDGvhvFq7jnA6iVg+522W+G7SUiDZVKO/zswr9+pphTt8yFYU3/D5H6E
	belxfN+bv3gmfxV/M7WI+kdaw+LgpCQCxxqoyFAZC5sZT/71XmIEYwAoBkNKESqNQjqN1aG/uW8V0
	2r8uWz7g0yOKSVPHUfYDPrIPRR3BsBPcIJbHWPpMl8MBGSD07OdU6WsRApHAAHWFy/r8wSkmXbsR7
	p6tA1QHGMJt/8DBhw0Vg900oInuKBNd1LZl2ysVnQZ0xRUFSZcwS0Mfzr28aSQ8paFOWvGNfTHFY8
	VZ4hvdYaw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ligHV-00FY5w-T1; Mon, 17 May 2021 16:39:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ligHO-00FY5c-To
 for barebox@desiato.infradead.org; Mon, 17 May 2021 16:39:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=YdjeWtsT5nA9btfI8KVqqf03coksQtTEgP0UqPkXBB0=; b=lbPNwbMHAno1mASyze3QJrO9DD
 q5u0PJPXG0IQkdGthv8ZrJJhzprgmT50f21xIzBzcml/09Gn8b8s9bcB69TvePhw+NioykaPdPVQz
 bNLXGurvplxu2dIrLB2Gk+M1snLgc/rMwS85rkSHi8XNE6fC97o4NIFqwfX6fKtrX6cagaURPt5yn
 8/i/2NqjYYt1I4k8iS9OHgPvM4m735kxW4hCLnZBuixxGAurWeax4dW0SG+X2bMZLwt+5EaxRGKO4
 3XXRyk1MIJslJERsxoz6xAoDlj7t5rG04E5bD/z//Pq5HA3j+LZqx1Nk9OrUvWhYogIDzo+KppW9I
 HPOvFRCw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ligHM-00DzDI-7Z
 for barebox@lists.infradead.org; Mon, 17 May 2021 16:39:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1ligHI-0005FI-RY; Mon, 17 May 2021 18:39:36 +0200
Message-ID: <a8e307c3a1426412c836283ad35e32a005674bce.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Holger Assmann <h.assmann@pengutronix.de>, barebox@lists.infradead.org
Date: Mon, 17 May 2021 18:39:36 +0200
In-Reply-To: <20210517160308.24069-1-h.assmann@pengutronix.de>
References: <20210517160308.24069-1-h.assmann@pengutronix.de>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.40.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_093940_302234_80152B22 
X-CRM114-Status: GOOD (  18.52  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: webasto-ccbv2: Add variant with 512MB RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Holger,

it looks like the changes to arch/arm/boards/webasto-ccbv2/lowlevel.c
and images/Makefile.imx have gone missing, so unfortunately the new
flash header isn't used and the old flash header can no longer be used
since images/Makefile.imx was not adjusted.

Regards,
Rouven

On Mon, 2021-05-17 at 18:03 +0200, Holger Assmann wrote:
> Add variant for 512MB RAM board.
> 
> v1 -> v2:
> 
>  by Rouven Czerwinski <r.czerwinski@pengutronix.de>:
>   - just ship one single firmware version, depending on the underlying
>     board variant
> 
>  by Ahmad Fatoum <a.fatoum@pengutronix.de>:
>   - account for the 512MB variant by hard-coding memsize == SZ_512
> 
> Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
> ---
>  ...sh-header-imx6ul-webasto-ccbv2-256.imxcfg} |  0
>  ...ash-header-imx6ul-webasto-ccbv2-512.imxcfg | 88 +++++++++++++++++++
>  arch/arm/boards/webasto-ccbv2/lowlevel.c      |  2 +-
>  3 files changed, 89 insertions(+), 1 deletion(-)
>  rename arch/arm/boards/webasto-ccbv2/{flash-header-imx6ul-webasto-ccbv2.imxcfg => flash-header-imx6ul-webasto-ccbv2-256.imxcfg} (100%)
>  create mode 100644 arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512.imxcfg
> 
> diff --git a/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2.imxcfg b/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-256.imxcfg
> similarity index 100%
> rename from arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2.imxcfg
> rename to arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-256.imxcfg
> diff --git a/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512.imxcfg b/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512.imxcfg
> new file mode 100644
> index 0000000000..d438a665f1
> --- /dev/null
> +++ b/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512.imxcfg
> @@ -0,0 +1,88 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +loadaddr 0x80000000
> +soc imx6
> +ivtofs 0x400
> +
> +/* Enable all clocks */
> +wm 32 0x020c4068 0xffffffff
> +wm 32 0x020c406c 0xffffffff
> +wm 32 0x020c4070 0xffffffff
> +wm 32 0x020c4074 0xffffffff
> +wm 32 0x020c4078 0xffffffff
> +wm 32 0x020c407c 0xffffffff
> +wm 32 0x020c4080 0xffffffff
> +
> +/* IOMUX */
> +/* DDR IO type */
> +wm 32 0x020E04B4 0x000C0000
> +wm 32 0x020E04AC 0x00000000
> +/* Clock */
> +wm 32 0x020E027C 0x00000028
> +/* Control */
> +wm 32 0x020E0250 0x00000028
> +wm 32 0x020E024C 0x00000028
> +wm 32 0x020E0490 0x00000028
> +wm 32 0x020E0288 0x00000028
> +wm 32 0x020E0270 0x00000000
> +wm 32 0x020E0260 0x00000028
> +wm 32 0x020E0264 0x00000028
> +wm 32 0x020E04A0 0x00000028
> +/* Data strobe */
> +wm 32 0x020E0494 0x00020000
> +wm 32 0x020E0280 0x00000028
> +wm 32 0x020E0284 0x00000028
> +/* Data */
> +wm 32 0x020E04B0 0x00020000
> +wm 32 0x020E0498 0x00000028
> +wm 32 0x020E04A4 0x00000028
> +wm 32 0x020E0244 0x00000028
> +wm 32 0x020E0248 0x00000028
> +
> +/* DDR Controller registers */
> +wm 32 0x021B001C 0x00008000
> +wm 32 0x021B0800 0xA1390003
> +/* Calibration values */
> +wm 32 0x021B080C 0x00090000
> +wm 32 0x021B083C 0x01580158
> +wm 32 0x021B0848 0x40405050
> +wm 32 0x021B0850 0x4040524C
> +wm 32 0x021B081C 0x33333333
> +wm 32 0x021B0820 0x33333333
> +wm 32 0x021B082C 0xf3333333
> +wm 32 0x021B0830 0xf3333333
> +/* END of calibration values */
> +wm 32 0x021B08C0 0x00921012
> +wm 32 0x021B08b8 0x00000800
> +
> +/* MMDC init */
> +wm 32 0x021B0004 0x0002002D
> +wm 32 0x021B0008 0x1b333030
> +wm 32 0x021B000C 0x676B52F3
> +wm 32 0x021B0010 0xB66D0B63
> +wm 32 0x021B0014 0x01FF00DB
> +/* Consider reducing RALAT (currently set to 5) */
> +wm 32 0x021B0018 0x00211740
> +wm 32 0x021B001C 0x00008000
> +wm 32 0x021B002C 0x000026D2
> +wm 32 0x021B0030 0x006B1023
> +wm 32 0x021B0040 0x0000004F
> +wm 32 0x021B0000 0x84180000
> +
> +/* Mode registers writes for CS0 */
> +wm 32 0x021B001C 0x02008032
> +wm 32 0x021B001C 0x00008033
> +wm 32 0x021B001C 0x00048031
> +wm 32 0x021B001C 0x15208030
> +wm 32 0x021B001C 0x04008040
> +
> +/* Final DDR setup */
> +wm 32 0x021B0020 0x00007800
> +wm 32 0x021B0818 0x00000227
> +wm 32 0x021B0004 0x0002556D
> +wm 32 0x021B0404 0x00011006
> +wm 32 0x021B001C 0x00000000
> +
> +/* Disable TZASC bypass */
> +wm 32 0x020E4024 0x00000001
> +
> +#include <mach/habv4-imx6-gencsf.h>
> diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
> index 8529ea3735..5b6115bed5 100644
> --- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
> +++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
> @@ -48,7 +48,7 @@ static void noinline start_ccbv2(u32 r0)
>  	 */
>  	if(IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE)
>  	   && !(r0 > MX6_MMDC_P0_BASE_ADDR
> -	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + SZ_256M)) {
> +	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + SZ_512M)) {
>  		get_builtin_firmware(ccbv2_optee_bin, &tee, &tee_size);
>  
>  		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

