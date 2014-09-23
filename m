Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XWKw8-0004ae-Do
 for barebox@lists.infradead.org; Tue, 23 Sep 2014 07:55:00 +0000
Date: Tue, 23 Sep 2014 09:54:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140923075437.GW4992@pengutronix.de>
References: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
 <1410949295-30296-8-git-send-email-voice.shen@atmel.com>
 <20140918061028.GY4992@pengutronix.de> <5420E2D9.9000006@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5420E2D9.9000006@atmel.com>
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
Subject: Re: [PATCH 7/9] ARM: at91: add sama5d4 soc support #1
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 23, 2014 at 11:02:49AM +0800, Bo Shen wrote:
> Hi Sascha,
> 
> On 09/18/2014 02:10 PM, Sascha Hauer wrote:
> >On Wed, Sep 17, 2014 at 06:21:33PM +0800, Bo Shen wrote:
> >>Signed-off-by: Bo Shen <voice.shen@atmel.com>
> >>---
> >>
> >>diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
> >>index 9f02807..5df7109 100644
> >>--- a/arch/arm/mach-at91/sam9_smc.c
> >>+++ b/arch/arm/mach-at91/sam9_smc.c
> >>@@ -19,7 +19,7 @@
> >>
> >>  #define AT91_SAM9_SMC_CS_STRIDE		0x10
> >>  #define AT91_SAMA5_SMC_CS_STRIDE	0x14
> >>-#define AT91_SMC_CS_STRIDE      ((at91_soc_initdata.type == AT91_SOC_SAMA5D3) ? AT91_SAMA5_SMC_CS_STRIDE : AT91_SAM9_SMC_CS_STRIDE)
> >>+#define AT91_SMC_CS_STRIDE      ((at91_soc_initdata.type == AT91_SOC_SAMA5D3 || at91_soc_initdata.type == AT91_SOC_SAMA5D4) ? AT91_SAMA5_SMC_CS_STRIDE : AT91_SAM9_SMC_CS_STRIDE)
> >
> >I'm no fan of the 80 character limit, too, but this is really too long
> >;)
> 
> Use multi-line format, would it be acceptable?

Yes please.

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
