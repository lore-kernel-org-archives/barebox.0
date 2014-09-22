Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XVvld-0007Y1-Bc
 for barebox@lists.infradead.org; Mon, 22 Sep 2014 05:02:29 +0000
Date: Mon, 22 Sep 2014 07:02:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140922050206.GM4992@pengutronix.de>
References: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
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
Subject: Re: [PATCH 0/9] ARM: at91: add sama5d4ek board support
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 17, 2014 at 06:21:26PM +0800, Bo Shen wrote:
> This patch series add Atmel new SoC SAMA5D4 support, which embedded
> the Cortex-A5 core.
> This patch series also add the EK board base on SAMA5D4 SoC support.
> 
> 
> Bo Shen (9):
>   ARM: at91: move pmc base address into soc header
>   ARM: atmel: sama5d3 is a family member of sama5
>   ARM: at91: clock: use cpu_has_pcr for pcr1 checking
>   nand: atmel: runtime to generate galois table
>   net: macb: using default value for FBLDO
>   mci: atmel: add new ip version 0x600 support
>   ARM: at91: add sama5d4 soc support #1
>   ARM: at91: add sama5d4 soc support #2
>   ARM: at91: add sama5d4ek board support

Applied 1-4 and 6 for now.

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
