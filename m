Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wzguk-0003Uw-KN
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 06:42:39 +0000
Date: Wed, 25 Jun 2014 08:42:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140625064212.GK15686@pengutronix.de>
References: <1403609192-5862-1-git-send-email-matteo.fortini@gmail.com>
 <assp.02522ea1fe.1403609192-5862-2-git-send-email-matteo.fortini@gmail.com>
 <53AA29CD.3040506@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53AA29CD.3040506@atmel.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] sama5d3x: fix HSMC MODE register offset and add
 TIMINGS register
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 25, 2014 at 09:45:49AM +0800, Bo Shen wrote:
> Hi Matteo,
>   Thanks for your patch.
> 
> Hi Jean-Christophe PLAGNIOL-VILLARD,
>   For this patch series, can you give some comments (maybe the
> question from I need more discussion)? Thanks.
> 
> On 06/24/2014 07:26 PM, Matteo Fortini wrote:
> >As stated in section 29.19.35 of SAMA5D3 Series Datasheet,
> >MODE register has offset 0x10 and at offset 0x0C there is
> >a TIMINGS register.
> >
> >Signed-off-by: Matteo Fortini <matteo.fortini@gmail.com>
> >---
> >  arch/arm/mach-at91/include/mach/at91sam9_smc.h | 35 +++++++++++++++++++++++++-
> >  arch/arm/mach-at91/sam9_smc.c                  | 21 ++++++++++++++++
> >  2 files changed, 55 insertions(+), 1 deletion(-)
> >
> >diff --git a/arch/arm/mach-at91/include/mach/at91sam9_smc.h b/arch/arm/mach-at91/include/mach/at91sam9_smc.h
> >index d5cf5f7..e4f0f54 100644
> >--- a/arch/arm/mach-at91/include/mach/at91sam9_smc.h
> >+++ b/arch/arm/mach-at91/include/mach/at91sam9_smc.h
> >@@ -45,10 +45,24 @@ struct sam9_smc_config {
> >  	u8 tdf_cycles:4;
> >  };
> >
> >+struct sam9_smc_sama5d3_extra_config {
> 
> Nitpick: I am thinking another name, maybe: sama5d3_timing_config (?)
> 
> >+	/* Timings register */
> >+	u8 tclr;
> >+	u8 tadl;
> >+	u8 tar;
> >+	u8 ocms;
> >+	u8 trr;
> >+	u8 twb;
> >+	u8 rbnsel;
> >+	u8 nfsel;
> >+};
> >+
> >  extern void sam9_smc_configure(int id, int cs, struct sam9_smc_config *config);
> >  extern void sam9_smc_read(int id, int cs, struct sam9_smc_config *config);
> >  extern void sam9_smc_read_mode(int id, int cs, struct sam9_smc_config *config);
> >  extern void sam9_smc_write_mode(int id, int cs, struct sam9_smc_config *config);
> >+
> >+extern void sam9_smc_sama5d3_configure(int id, int cs, struct sam9_smc_config *config, struct sam9_smc_sama5d3_extra_config *sama5d3_extra_config);
> 
> Ditto
> 
> >  #endif
> >
> >  #define AT91_SMC_SETUP		0x00				/* Setup Register for CS n */
> >@@ -77,7 +91,25 @@ extern void sam9_smc_write_mode(int id, int cs, struct sam9_smc_config *config);
> >  #define		AT91_SMC_NRDCYCLE	(0x1ff << 16)			/* Total Read Cycle Length */
> >  #define			AT91_SMC_NRDCYCLE_(x)	((x) << 16)
> >
> >-#define AT91_SMC_MODE		0x0c				/* Mode Register for CS n */
> >+#define AT91_SMC_TIMINGS	0x0c				/* Timings register for CS n */
> >+#define		AT91_SMC_TCLR		(0x0f  <<  0)			/* CLE to REN Low Delay */
> >+#define			AT91_SMC_TCLR_(x)	((x) << 0)
> >+#define		AT91_SMC_TADL		(0x0f  <<  4)			/* ALE to Data Start */
> >+#define			AT91_SMC_TADL_(x)	((x) << 4)
> >+#define		AT91_SMC_TAR		(0x0f  <<  8)			/* ALE to REN Low Delay */
> >+#define			AT91_SMC_TAR_(x)	((x) << 8)
> >+#define		AT91_SMC_OCMS		(0x1   << 12)			/* Off Chip Memory Scrambling Enable */
> >+#define			AT91_SMC_OCMS_(x)	((x) << 12)
> >+#define		AT91_SMC_TRR		(0x0f  << 16)			/* Ready to REN Low Delay */
> >+#define			AT91_SMC_TRR_(x)        ((x) << 16)
> >+#define		AT91_SMC_TWB		(0x0f  << 24)			/* WEN High to REN to Busy */
> >+#define			AT91_SMC_TWB_(x)	((x) << 24)
> >+#define		AT91_SMC_RBNSEL		(0x07  << 28)			/* Ready/Busy Line Selection */
> >+#define			AT91_SMC_RBNSEL_(x)	((x) << 28)
> >+#define		AT91_SMC_NFSEL		(0x01  << 31)			/* Nand Flash Selection */
> >+#define			AT91_SMC_NFSEL_(x)	((x) << 31)
> >+
> >+#define AT91_SMC_MODE		((at91_soc_initdata.type == AT91_SOC_SAMA5D3) ? 0x10 : 0x0c)				/* Mode Register for CS n */
> 
> Here make me thinking more, if new SoC added and MODE register's
> offset is the same as sama5d3, then it will be:
> (at91_soc_initdata.type == AT91_SOC_SAMA5D3) ||
> (at91_soc_initdata.type == AT91_SOC_NEW1) || (at91_soc_initdata.type
> == AT91_SOC_NEW2)
> 
> Will this be acceptable?

No.

I think two SoC specific defines, for example

#define AT91_SMC_MODE 0xc
#define AT91_SAMA5_SMC_MODE 0x10

and handling the differences in the code will scale better. I don't like
hiding SoC differences in defines like done in this patch. If there show
up even more differences a SoC specific struct with register offsets
might help.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
