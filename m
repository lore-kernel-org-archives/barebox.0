Delivery-date: Fri, 10 Sep 2021 16:01:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOh5Y-000610-GB
	for lore@lore.pengutronix.de; Fri, 10 Sep 2021 16:01:08 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOh5X-0004LX-Hw
	for lore@pengutronix.de; Fri, 10 Sep 2021 16:01:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4UGfpLJisAUWxOBUa7fRBJzPc/YDtsyAFw3s1eIh0+Q=; b=jkfF0aQbtKeLfJ
	L+k+LuKmseFrSCX3Tga6MRt8wUHWz0OyEsnuvTmP54VH/Z1Kcs3JMkklOlVmefv0IWHcV3vr0Fhcl
	Oj8v3hawtwh1NBL/2k9ou9XSncZ6vgpcEt5rf6vlezgsBpHOhdsnJiDxkSDAFwMsZ2VYP7ERcILR1
	lHuNFg63mRkPDYZpLq1Ac62mpUkKeeevSedz5bnTOiTpofXDFrtGEPRPvOBu5Hb8pPxVnwhj4oBa1
	QOA2t9KDcaMuoXsGa0HAMINbZ2OzaeJPuErcxbh8JRh1mTI6oZMIoAOrWflaF5eTp/n4JCOuMC1qf
	hZnVKvOkCBNLCEbL40xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOh4A-00CrxP-PQ; Fri, 10 Sep 2021 13:59:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOh45-00CrwH-CW
 for barebox@lists.infradead.org; Fri, 10 Sep 2021 13:59:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1mOh42-0003z2-2t; Fri, 10 Sep 2021 15:59:34 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1mOh41-0006eG-9Y; Fri, 10 Sep 2021 15:59:33 +0200
Date: Fri, 10 Sep 2021 15:59:33 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20210910135933.GA24395@pengutronix.de>
References: <20210910134323.26136-1-michael.riesch@wolfvision.net>
 <20210910134323.26136-4-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210910134323.26136-4-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:52:16 up 204 days, 17:16, 82 users,  load average: 0.07, 0.12,
 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_065937_468536_2FAB1A49 
X-CRM114-Status: GOOD (  26.84  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] arm: zynqmp: add boot source support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 10 Sep 2021 15:43:23 +0200, Michael Riesch wrote:
> The ZynqMP reports the mode pins sampled at POR via the register
> ZYNQMP_CRL_APB_BOOT_MODE_USER. This commit adds a function that reads
> the register and populates the boot source.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  arch/arm/mach-zynqmp/zynqmp.c | 43 +++++++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm/mach-zynqmp/zynqmp.c b/arch/arm/mach-zynqmp/zynqmp.c
> index 5871c145b..262bc0dd4 100644
> --- a/arch/arm/mach-zynqmp/zynqmp.c
> +++ b/arch/arm/mach-zynqmp/zynqmp.c
> @@ -6,9 +6,11 @@
>  #include <common.h>
>  #include <init.h>
>  #include <linux/types.h>
> +#include <bootsource.h>
>  #include <reset_source.h>
>  
>  #define ZYNQMP_CRL_APB_BASE		0xff5e0000
> +#define ZYNQMP_CRL_APB_BOOT_MODE_USER	(ZYNQMP_CRL_APB_BASE + 0x200)
>  #define ZYNQMP_CRL_APB_RESET_REASON	(ZYNQMP_CRL_APB_BASE + 0x220)
>  
>  /* External POR: The PS_POR_B reset signal pin was asserted. */
> @@ -26,6 +28,46 @@
>  /* Software debugger reset: Write to BLOCKONLY_RST [debug_only]. */
>  #define ZYNQMP_CRL_APB_RESET_REASON_DEBUG_SYS  BIT(6)
>  
> +struct zynqmp_bootsource {
> +	enum bootsource src;
> +	int instance;
> +};
> +
> +/* cf. Table 11-1 "Boot Modes" in UG1085 Zynq UltraScale+ Device TRM */
> +static struct zynqmp_bootsource boot_modes[] = {
> +	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
> +	{ .src = BOOTSOURCE_SPI, .instance = 0 },
> +	{ .src = BOOTSOURCE_SPI, .instance = 0 },
> +	{ .src = BOOTSOURCE_MMC, .instance = 0 },
> +	{ .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
> +	{ .src = BOOTSOURCE_MMC, .instance = 1 },
> +	{ .src = BOOTSOURCE_MMC, .instance = 0 },
> +	{ .src = BOOTSOURCE_USB, .instance = 0 },
> +	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
> +	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
> +	{ .src = BOOTSOURCE_MMC, .instance = 1 },
> +};

Thanks for the patch.

Please make the mapping of the Boot Mode value to the BOOTSOURCE explicit
instead of hiding in as the index into this array.

> +
> +static enum bootsource zynqmp_bootsource(void)
> +{
> +	u32 v;
> +
> +	v = readl(ZYNQMP_CRL_APB_BOOT_MODE_USER);
> +	v &= 0x0F;
> +
> +	if (v >= ARRAY_SIZE(boot_modes))
> +		return BOOTSOURCE_UNKNOWN;
> +
> +	bootsource_set(boot_modes[v].src);
> +	bootsource_set_instance(boot_modes[v].instance);

Don't set the bootsource as a side effect of this function. This function
should only lookup of the boot mode and zynqmp_init should actually set it.

Michael

> +
> +	return boot_modes[v].src;
> +}
> +
>  struct zynqmp_reset_reason {
>  	u32 mask;
>  	enum reset_src_type type;
> @@ -65,6 +107,7 @@ static enum reset_src_type zynqmp_get_reset_src(void)
>  
>  static int zynqmp_init(void)
>  {
> +	zynqmp_bootsource();
>  	reset_source_set(zynqmp_get_reset_src());
>  
>  	return 0;
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

