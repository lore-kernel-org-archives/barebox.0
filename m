Delivery-date: Wed, 02 Nov 2022 09:08:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8nm-00C1Uf-QZ
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 09:08:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8nl-0001Fa-C9
	for lore@pengutronix.de; Wed, 02 Nov 2022 09:08:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qmlRWirrA0zK50YAO4PPYfmV0vGx+TJujQzBJ71FsFk=; b=I+Patutlr3wMbLXsQ1vGV+USXD
	cZYLWcYOBSXp3JkS9kyAfWTBc3iS5TMJaU4N7r/x89+gsjVd5Z4PYmSx/pMUudCccvgjivVoiMjnc
	FGCZOJIIC/v63Yzn5s79GZcRooNZxFMX5Vwv8I93/tBLGuiUGsarzgSz9eIO6gMo50FO7FDdvdaLC
	EJfNf/snqtXLh510pQ3oSSY9foeZkrT7XE2Mw1IjUHsQygRplRXAhXTjkJiscOcOaFwUAAXiXP0h/
	ZX3PgSLJ3IOb9+gT6x4jlKSuixqcZ3qJPCRiX7kEMnKu1ubgkHpYvdS8KjDvmZnYLAXMCk45M+z1k
	NkhdEYFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8mY-008l80-6h; Wed, 02 Nov 2022 08:07:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8mT-008l7A-KZ
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 08:07:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8mS-00018C-Bs; Wed, 02 Nov 2022 09:07:24 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8mQ-0007RY-7k; Wed, 02 Nov 2022 09:07:22 +0100
Date: Wed, 2 Nov 2022 09:07:22 +0100
To: Vyacheslav Yurkov <uvv.mail@gmail.com>
Cc: barebox@lists.infradead.org,
	Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
Message-ID: <20221102080722.GF3143@pengutronix.de>
References: <20221101103327.985435-1-uvv.mail@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221101103327.985435-1-uvv.mail@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_010725_744590_85DD4BA1 
X-CRM114-Status: GOOD (  20.27  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] ARM: socfpga: Fix SDRAM firewall init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Nov 01, 2022 at 11:33:26AM +0100, Vyacheslav Yurkov wrote:
> From: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
> 
> Incorrect enable bits were used in initialization sequence of SDRAM
> firewall. This enables the FPGA to access regions of SDRAM, which were
> previously inaccessible.
> 
> Signed-off-by: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
> ---
>  arch/arm/mach-socfpga/arria10-sdram.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-socfpga/arria10-sdram.c b/arch/arm/mach-socfpga/arria10-sdram.c
> index 35c355df71..b7eade0b17 100644
> --- a/arch/arm/mach-socfpga/arria10-sdram.c
> +++ b/arch/arm/mach-socfpga/arria10-sdram.c
> @@ -486,7 +486,7 @@ static int arria10_sdram_firewall_setup(void)
>  	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_MPUREGION3ADDR);
>  	writel(0xffff0000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM0REGION0ADDR);
>  
> -	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_MPUREG1EN;
> +	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_F2SDR0REG0EN;
>  	writel(mpu_en, ARRIA10_SDR_FW_MPU_FPGA_EN);
>  
>  	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM0REGION1ADDR);
> @@ -494,7 +494,7 @@ static int arria10_sdram_firewall_setup(void)
>  	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM0REGION3ADDR);
>  	writel(0xffff0000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM1REGION0ADDR);
>  
> -	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_MPUREG2EN;
> +	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_F2SDR1REG0EN;
>  	writel(mpu_en, ARRIA10_SDR_FW_MPU_FPGA_EN);
>  
>  	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM1REGION1ADDR);
> @@ -502,7 +502,7 @@ static int arria10_sdram_firewall_setup(void)
>  	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM1REGION3ADDR);
>  	writel(0xffff0000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM2REGION0ADDR);
>  
> -	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_MPUREG3EN;
> +	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_F2SDR2REG0EN;
>  	writel(mpu_en, ARRIA10_SDR_FW_MPU_FPGA_EN);
>  
>  	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM2REGION1ADDR);
> -- 
> 2.25.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


