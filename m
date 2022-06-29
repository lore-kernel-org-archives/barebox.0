Delivery-date: Wed, 29 Jun 2022 08:51:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RYJ-000wip-4x
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 08:51:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RYK-0008VN-5j
	for lore@pengutronix.de; Wed, 29 Jun 2022 08:51:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z312nbOumSYSBi3pRUV7yPM48EWmrePw7jAxqK6/N3M=; b=WxVAtcjggTmAan2dAMJhB5FEdX
	nmBVzNPpngTOaZDCity7gW79wAvgN/0PcLVbNlKbDhcILaBmoyW+z189UJmD4mlyJv01YbtUOgStV
	kahSdDVppM9imH4zGtyEHbJJvWCNUtRTYjNijD7x3rTrG0aOqOrcqTc/dMb2/LJKowmY1R4MGbkL0
	s907xuNsHezPpb1Kl9u3cJMUkq1drpCphouEg2vyS28aoPlr1Xwg9m8yVBChf/6CqhW+RqoCNm/u+
	7tXc9H2hInYrthWl65FCX0IQwg5NqVV5upLfpneI1kGt19woRF0eDrL6ucJe3RFb1VrEFUZF4ki+2
	3CuBqydg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RWo-009tZj-Kd; Wed, 29 Jun 2022 06:50:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RWf-009tRB-Jc
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 06:50:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o6RWP-0007tG-TM; Wed, 29 Jun 2022 08:49:58 +0200
Message-ID: <01eca5ea-fd73-4e17-b4cf-8e7b34ce51b8@pengutronix.de>
Date: Wed, 29 Jun 2022 08:49:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
References: <20220628203849.2785611-1-sam@ravnborg.org>
 <20220628203849.2785611-8-sam@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220628203849.2785611-8-sam@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_235014_036704_B063F071 
X-CRM114-Status: GOOD (  19.54  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 07/11] ARM: at91: Add extra register definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.06.22 22:38, Sam Ravnborg wrote:
> Copied from at91bootstrap. Required in subsequent patches.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  arch/arm/mach-at91/include/mach/at91_pmc.h    |   2 +
>  arch/arm/mach-at91/include/mach/at91sam9263.h |  14 +++
>  .../include/mach/at91sam9263_matrix.h         |  23 +++-
>  arch/arm/mach-at91/include/mach/at91sam926x.h |   2 +
>  .../mach-at91/include/mach/at91sam9_sdramc.h  | 108 +++++++++++++++++-
>  5 files changed, 141 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/include/mach/at91_pmc.h b/arch/arm/mach-at91/include/mach/at91_pmc.h
> index 2860ea485..c5ce0f82a 100644
> --- a/arch/arm/mach-at91/include/mach/at91_pmc.h
> +++ b/arch/arm/mach-at91/include/mach/at91_pmc.h
> @@ -170,6 +170,8 @@
>  #define			AT91_PMC_IPLLA_1		(1 <<  8)
>  #define			AT91_PMC_IPLLA_2		(2 <<  8)
>  #define			AT91_PMC_IPLLA_3		(3 <<  8)
> +#define		AT91SAM9_PMC_ICPPLLA	(1 << 0)
> +#define		AT91SAM9_PMC_ICPPLLB	(1 << 16)
>  
>  
>  #define AT91_PMC_PROT		0xe4			/* Write Protect Mode Register [some SAM9] */
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9263.h b/arch/arm/mach-at91/include/mach/at91sam9263.h
> index 2ea9aadaf..229f8d16b 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9263.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9263.h
> @@ -108,4 +108,18 @@
>  #define AT91SAM9263_DMAC_BASE	0x00800000	/* DMA Controller */
>  #define AT91SAM9263_UHP_BASE	0x00a00000	/* USB Host controller */
>  
> +/*
> + * External memory
> + */
> +#define AT91SAM9263_BASE_EBI0_CS0	0x10000000
> +#define AT91SAM9263_BASE_EBI0_CS1	0x20000000	/* EBI0 SDRAMC */
> +#define AT91SAM9263_BASE_EBI0_CS2	0x30000000
> +#define AT91SAM9263_BASE_EBI0_CS3	0x40000000	/* EBI0 NANDFlash */
> +#define AT91SAM9263_BASE_EBI0_CS4	0x50000000	/* Compact Flash Slot 0 */
> +#define AT91SAM9263_BASE_EBI0_CS5	0x60000000	/* Compact Flash Slot 1 */
> +#define AT91SAM9263_BASE_EBI1_CS0	0x70000000
> +#define AT91SAM9263_BASE_EBI1_CS1	0x80000000	/* EBI1 SDRAMC */
> +#define AT91SAM9263_BASE_EBI1_CS2	0x90000000	/* EBI1 NANDFlash */
> +
> +
>  #endif
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9263_matrix.h b/arch/arm/mach-at91/include/mach/at91sam9263_matrix.h
> index 2f10ce096..837cceb41 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9263_matrix.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9263_matrix.h
> @@ -25,7 +25,7 @@
>  #define			AT91SAM9263_MATRIX_ULBT_SINGLE		(1 << 0)
>  #define			AT91SAM9263_MATRIX_ULBT_FOUR		(2 << 0)
>  #define			AT91SAM9263_MATRIX_ULBT_EIGHT		(3 << 0)
> -#define			AT91SAM9263_MATRIX_ULBT_SIXTEEN	(4 << 0)
> +#define			AT91SAM9263_MATRIX_ULBT_SIXTEEN		(4 << 0)
>  
>  #define AT91SAM9263_MATRIX_SCFG0	(0x40)	/* Slave Configuration Register 0 */
>  #define AT91SAM9263_MATRIX_SCFG1	(0x44)	/* Slave Configuration Register 1 */
> @@ -35,12 +35,22 @@
>  #define AT91SAM9263_MATRIX_SCFG5	(0x54)	/* Slave Configuration Register 5 */
>  #define AT91SAM9263_MATRIX_SCFG6	(0x58)	/* Slave Configuration Register 6 */
>  #define AT91SAM9263_MATRIX_SCFG7	(0x5C)	/* Slave Configuration Register 7 */
> -#define		AT91SAM9263_MATRIX_SLOT_CYCLE		(0xff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
> +#define		AT91SAM9263_MATRIX_SLOT_CYCLE	(0xff << 0)	/* Maximum Number of Allowed Cycles for a Burst */
> +#define		AT91SAM9263_MATRIX_SLOT_CYCLE_(x)	(x << 0)
>  #define		AT91SAM9263_MATRIX_DEFMSTR_TYPE	(3    << 16)	/* Default Master Type */
>  #define			AT91SAM9263_MATRIX_DEFMSTR_TYPE_NONE	(0 << 16)
>  #define			AT91SAM9263_MATRIX_DEFMSTR_TYPE_LAST	(1 << 16)
>  #define			AT91SAM9263_MATRIX_DEFMSTR_TYPE_FIXED	(2 << 16)
>  #define		AT91SAM9263_MATRIX_FIXED_DEFMSTR	(0xf  << 18)	/* Fixed Index of Default Master */
> +#define			AT91SAM9263_MATRIX_FIXED_DEFMSTR_ARM926I	(0x0 << 18)
> +#define			AT91SAM9263_MATRIX_FIXED_DEFMSTR_ARM926D	(0x1 << 18)
> +#define			AT91SAM9263_MATRIX_FIXED_DEFMSTR_PDC		(0x2 << 18)
> +#define			AT91SAM9263_MATRIX_FIXED_DEFMSTR_LCDC		(0x3 << 18)
> +#define			AT91SAM9263_MATRIX_FIXED_DEFMSTR_2DGC		(0x4 << 18)
> +#define			AT91SAM9263_MATRIX_FIXED_DEFMSTR_ISI		(0x5 << 18)
> +#define			AT91SAM9263_MATRIX_FIXED_DEFMSTR_DMA		(0x6 << 18)
> +#define			AT91SAM9263_MATRIX_FIXED_DEFMSTR_EMAC		(0x7 << 18)
> +#define			AT91SAM9263_MATRIX_FIXED_DEFMSTR_USB		(0x8 << 18)
>  #define		AT91SAM9263_MATRIX_ARBT		(3    << 24)	/* Arbitration Type */
>  #define			AT91SAM9263_MATRIX_ARBT_ROUND_ROBIN	(0 << 24)
>  #define			AT91SAM9263_MATRIX_ARBT_FIXED_PRIORITY	(1 << 24)
> @@ -62,14 +72,23 @@
>  #define AT91SAM9263_MATRIX_PRAS7	(0xB8)	/* Priority Register A for Slave 7 */
>  #define AT91SAM9263_MATRIX_PRBS7	(0xBC)	/* Priority Register B for Slave 7 */
>  #define		AT91SAM9263_MATRIX_M0PR		(3 << 0)	/* Master 0 Priority */
> +#define		AT91SAM9263_MATRIX_M0PR_(x)	(x << 0)	/* ARM926EJ-S Instruction priority */
>  #define		AT91SAM9263_MATRIX_M1PR		(3 << 4)	/* Master 1 Priority */
> +#define		AT91SAM9263_MATRIX_M1PR_(x)	(x << 4)	/* ARM926EJ-S Data priority */
>  #define		AT91SAM9263_MATRIX_M2PR		(3 << 8)	/* Master 2 Priority */
> +#define		AT91SAM9263_MATRIX_M2PR_(x)	(x << 8)	/* PDC priority */
>  #define		AT91SAM9263_MATRIX_M3PR		(3 << 12)	/* Master 3 Priority */
> +#define		AT91SAM9263_MATRIX_M3PR_(x)	(x << 12)	/* LCDC priority */
>  #define		AT91SAM9263_MATRIX_M4PR		(3 << 16)	/* Master 4 Priority */
> +#define		AT91SAM9263_MATRIX_M4PR_(x)	(x << 16)	/* 2DGC priority */
>  #define		AT91SAM9263_MATRIX_M5PR		(3 << 20)	/* Master 5 Priority */
> +#define		AT91SAM9263_MATRIX_M5PR_(x)	(x << 20)	/* ISI priority */
>  #define		AT91SAM9263_MATRIX_M6PR		(3 << 24)	/* Master 6 Priority */
> +#define		AT91SAM9263_MATRIX_M6PR_(x)	(x << 24)	/* DMA priority */
>  #define		AT91SAM9263_MATRIX_M7PR		(3 << 28)	/* Master 7 Priority */
> +#define		AT91SAM9263_MATRIX_M7PR_(x)	(x << 28)	/* EMAC priority */
>  #define		AT91SAM9263_MATRIX_M8PR		(3 << 0)	/* Master 8 Priority (in Register B) */
> +#define		AT91SAM9263_MATRIX_M8PR_(x)	(x << 0)	/* USB Priority */
>  
>  #define AT91SAM9263_MATRIX_MRCR	(0x100)	/* Master Remap Control Register */
>  #define		AT91SAM9263_MATRIX_RCB0		(1 << 0)	/* Remap Command for AHB Master 0 (ARM926EJ-S Instruction Master) */
> diff --git a/arch/arm/mach-at91/include/mach/at91sam926x.h b/arch/arm/mach-at91/include/mach/at91sam926x.h
> index 8ef83010d..ae7e224a7 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam926x.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam926x.h
> @@ -7,4 +7,6 @@
>  #define AT91SAM926X_BASE_RSTC	0xfffffd00
>  #define AT91SAM926X_BASE_WDT	0xfffffd40
>  
> +#define AT91SAM926X_ID_SYS	1	/* System Controller Interrupt */
> +
>  #endif /* __MACH_AT91SAM926X_H */
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
> index c5271af82..0e05387aa 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
> @@ -47,12 +47,108 @@
>  #define		AT91_SDRAMC_DBW		(1 << 7)		/* Data Bus Width */
>  #define			AT91_SDRAMC_DBW_32	(0 << 7)
>  #define			AT91_SDRAMC_DBW_16	(1 << 7)
> -#define		AT91_SDRAMC_TWR		(0xf <<  8)		/* Write Recovery Delay */
> -#define		AT91_SDRAMC_TRC		(0xf << 12)		/* Row Cycle Delay */
> -#define		AT91_SDRAMC_TRP		(0xf << 16)		/* Row Precharge Delay */
> -#define		AT91_SDRAMC_TRCD	(0xf << 20)		/* Row to Column Delay */
> -#define		AT91_SDRAMC_TRAS	(0xf << 24)		/* Active to Precharge Delay */
> -#define		AT91_SDRAMC_TXSR	(0xf << 28)		/* Exit Self Refresh to Active Delay */
> +#define AT91_SDRAMC_TWR	(0xF << 8)	/* Number of Write Recovery Time Cycles */
> +#define 	AT91_SDRAMC_TWR_0		(0x0 << 8)
> +#define 	AT91_SDRAMC_TWR_1		(0x1 << 8)
> +#define 	AT91_SDRAMC_TWR_2		(0x2 << 8)
> +#define 	AT91_SDRAMC_TWR_3		(0x3 << 8)
> +#define 	AT91_SDRAMC_TWR_4		(0x4 << 8)
> +#define 	AT91_SDRAMC_TWR_5		(0x5 << 8)
> +#define 	AT91_SDRAMC_TWR_6		(0x6 << 8)
> +#define 	AT91_SDRAMC_TWR_7		(0x7 << 8)
> +#define 	AT91_SDRAMC_TWR_8		(0x8 << 8)
> +#define 	AT91_SDRAMC_TWR_9		(0x9 << 8)
> +#define 	AT91_SDRAMC_TWR_10		(0xA << 8)
> +#define 	AT91_SDRAMC_TWR_11		(0xB << 8)
> +#define 	AT91_SDRAMC_TWR_12		(0xC << 8)
> +#define 	AT91_SDRAMC_TWR_13		(0xD << 8)
> +#define 	AT91_SDRAMC_TWR_14		(0xE << 8)
> +#define 	AT91_SDRAMC_TWR_15		(0xF << 8)
> +#define AT91_SDRAMC_TRC	(0xF << 12)	/* Number of Row Cycle Delay Time Cycles */
> +#define 	AT91_SDRAMC_TRC_0		(0x0 << 12)
> +#define 	AT91_SDRAMC_TRC_1		(0x1 << 12)
> +#define 	AT91_SDRAMC_TRC_2		(0x2 << 12)
> +#define 	AT91_SDRAMC_TRC_3		(0x3 << 12)
> +#define 	AT91_SDRAMC_TRC_4		(0x4 << 12)
> +#define 	AT91_SDRAMC_TRC_5		(0x5 << 12)
> +#define 	AT91_SDRAMC_TRC_6		(0x6 << 12)
> +#define 	AT91_SDRAMC_TRC_7		(0x7 << 12)
> +#define 	AT91_SDRAMC_TRC_8		(0x8 << 12)
> +#define 	AT91_SDRAMC_TRC_9		(0x9 << 12)
> +#define 	AT91_SDRAMC_TRC_10		(0xA << 12)
> +#define 	AT91_SDRAMC_TRC_11		(0xB << 12)
> +#define 	AT91_SDRAMC_TRC_12		(0xC << 12)
> +#define 	AT91_SDRAMC_TRC_13		(0xD << 12)
> +#define 	AT91_SDRAMC_TRC_14		(0xE << 12)
> +#define 	AT91_SDRAMC_TRC_15		(0xF << 12)
> +#define AT91_SDRAMC_TRP	(0xF << 16)	/* Number of Row Precharge Delay Time Cycles */
> +#define 	AT91_SDRAMC_TRP_0		(0x0 << 16)
> +#define 	AT91_SDRAMC_TRP_1		(0x1 << 16)
> +#define 	AT91_SDRAMC_TRP_2		(0x2 << 16)
> +#define 	AT91_SDRAMC_TRP_3		(0x3 << 16)
> +#define 	AT91_SDRAMC_TRP_4		(0x4 << 16)
> +#define 	AT91_SDRAMC_TRP_5		(0x5 << 16)
> +#define 	AT91_SDRAMC_TRP_6		(0x6 << 16)
> +#define 	AT91_SDRAMC_TRP_7		(0x7 << 16)
> +#define 	AT91_SDRAMC_TRP_8		(0x8 << 16)
> +#define 	AT91_SDRAMC_TRP_9		(0x9 << 16)
> +#define 	AT91_SDRAMC_TRP_10		(0xA << 16)
> +#define 	AT91_SDRAMC_TRP_11		(0xB << 16)
> +#define 	AT91_SDRAMC_TRP_12		(0xC << 16)
> +#define 	AT91_SDRAMC_TRP_13		(0xD << 16)
> +#define 	AT91_SDRAMC_TRP_14		(0xE << 16)
> +#define 	AT91_SDRAMC_TRP_15		(0xF << 16)
> +#define AT91_SDRAMC_TRCD	(0xF << 20)	/* Number of Row to Column Delay Time Cycles */
> +#define 	AT91_SDRAMC_TRCD_0		(0x0 << 20)
> +#define 	AT91_SDRAMC_TRCD_1		(0x1 << 20)
> +#define 	AT91_SDRAMC_TRCD_2		(0x2 << 20)
> +#define 	AT91_SDRAMC_TRCD_3		(0x3 << 20)
> +#define 	AT91_SDRAMC_TRCD_4		(0x4 << 20)
> +#define 	AT91_SDRAMC_TRCD_5		(0x5 << 20)
> +#define 	AT91_SDRAMC_TRCD_6		(0x6 << 20)
> +#define 	AT91_SDRAMC_TRCD_7		(0x7 << 20)
> +#define 	AT91_SDRAMC_TRCD_8		(0x8 << 20)
> +#define 	AT91_SDRAMC_TRCD_9		(0x9 << 20)
> +#define 	AT91_SDRAMC_TRCD_10		(0xA << 20)
> +#define 	AT91_SDRAMC_TRCD_11		(0xB << 20)
> +#define 	AT91_SDRAMC_TRCD_12		(0xC << 20)
> +#define 	AT91_SDRAMC_TRCD_13		(0xD << 20)
> +#define 	AT91_SDRAMC_TRCD_14		(0xE << 20)
> +#define 	AT91_SDRAMC_TRCD_15		(0xF << 20)
> +#define AT91_SDRAMC_TRAS	(0xF << 24)	/* Number of Active to Precharge Delay Time Cycles */
> +#define 	AT91_SDRAMC_TRAS_0		(0x0 << 24)
> +#define 	AT91_SDRAMC_TRAS_1		(0x1 << 24)
> +#define 	AT91_SDRAMC_TRAS_2		(0x2 << 24)
> +#define 	AT91_SDRAMC_TRAS_3		(0x3 << 24)
> +#define 	AT91_SDRAMC_TRAS_4		(0x4 << 24)
> +#define 	AT91_SDRAMC_TRAS_5		(0x5 << 24)
> +#define 	AT91_SDRAMC_TRAS_6		(0x6 << 24)
> +#define 	AT91_SDRAMC_TRAS_7		(0x7 << 24)
> +#define 	AT91_SDRAMC_TRAS_8		(0x8 << 24)
> +#define 	AT91_SDRAMC_TRAS_9		(0x9 << 24)
> +#define 	AT91_SDRAMC_TRAS_10		(0xA << 24)
> +#define 	AT91_SDRAMC_TRAS_11		(0xB << 24)
> +#define 	AT91_SDRAMC_TRAS_12		(0xC << 24)
> +#define 	AT91_SDRAMC_TRAS_13		(0xD << 24)
> +#define 	AT91_SDRAMC_TRAS_14		(0xE << 24)
> +#define 	AT91_SDRAMC_TRAS_15		(0xF << 24)
> +#define AT91_SDRAMC_TXS	(0xF << 28)	/* Number of Exit Self Refresh to Active Delay Time Cycles */
> +#define 	AT91_SDRAMC_TXSR_0		(0x0 << 28)
> +#define 	AT91_SDRAMC_TXSR_1		(0x1 << 28)
> +#define 	AT91_SDRAMC_TXSR_2		(0x2 << 28)
> +#define 	AT91_SDRAMC_TXSR_3		(0x3 << 28)
> +#define 	AT91_SDRAMC_TXSR_4		(0x4 << 28)
> +#define 	AT91_SDRAMC_TXSR_5		(0x5 << 28)
> +#define 	AT91_SDRAMC_TXSR_6		(0x6 << 28)
> +#define 	AT91_SDRAMC_TXSR_7		(0x7 << 28)
> +#define 	AT91_SDRAMC_TXSR_8		(0x8 << 28)
> +#define 	AT91_SDRAMC_TXSR_9		(0x9 << 28)
> +#define 	AT91_SDRAMC_TXSR_10		(0xA << 28)
> +#define 	AT91_SDRAMC_TXSR_11		(0xB << 28)
> +#define 	AT91_SDRAMC_TXSR_12		(0xC << 28)
> +#define 	AT91_SDRAMC_TXSR_13		(0xD << 28)
> +#define 	AT91_SDRAMC_TXSR_14		(0xE << 28)
> +#define 	AT91_SDRAMC_TXSR_15		(0xF << 28)
>  
>  #define AT91_SDRAMC_LPR		0x10	/* SDRAM Controller Low Power Register */
>  #define		AT91_SDRAMC_LPCB		(3 << 0)	/* Low-power Configurations */


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


