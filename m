Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9R1-0004ih-CR
 for barebox@lists.infradead.org; Wed, 08 Jan 2020 11:23:36 +0000
Date: Wed, 8 Jan 2020 12:23:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200108112333.oq5phovukrcgwh2h@pengutronix.de>
References: <20200106173540.20367-1-ahmad@a3f.at>
 <20200106173540.20367-4-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106173540.20367-4-ahmad@a3f.at>
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
Subject: Re: [RFC PATCH 3/5] mci: add first-stage at91-sdhci driver
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, lst@pengutronix.de

On Mon, Jan 06, 2020 at 06:35:38PM +0100, Ahmad Fatoum wrote:
> diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
> index a307dc97cd9a..48dc3f36530c 100644
> --- a/drivers/mci/sdhci.h
> +++ b/drivers/mci/sdhci.h
> @@ -38,6 +38,7 @@
>  #define SDHCI_RESPONSE_1					0x14
>  #define SDHCI_RESPONSE_2					0x18
>  #define SDHCI_RESPONSE_3					0x1c
> +#define SDHCI_RESPONSE(i)					(SDHCI_RESPONSE_0 + 4 * (i))
>  #define SDHCI_BUFFER						0x20
>  #define SDHCI_PRESENT_STATE					0x24
>  #define  SDHCI_WRITE_PROTECT			BIT(19)
> @@ -53,6 +54,7 @@
>  #define  SDHCI_CARD_DETECT_SIGNAL_SELECTION	BIT(7)
>  #define  SDHCI_CARD_DETECT_TEST_LEVEL		BIT(6)
>  #define  SDHCI_DATA_WIDTH_8BIT			BIT(5)
> +#define  SDHCI_DMASEL_ADMA32			BIT(4)

Have you verified that all bits you add in this file are valid for the
generic SDHCI controller? There shouldn't be any Atmel specific bits
between them.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
