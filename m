Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XDFhO-0003KT-Qr
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 16:28:55 +0000
Date: Fri, 1 Aug 2014 18:28:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140801162830.GZ23235@pengutronix.de>
References: <1406880396-3577-1-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406880396-3577-1-git-send-email-voice.shen@atmel.com>
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
Subject: Re: [PATCH] ARM: atmel: sama5d3_xplained: import smc timing from
 U-Boot
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 01, 2014 at 04:06:36PM +0800, Bo Shen wrote:
> From: Matteo Fortini <matteo.fortini@gmail.com>
> 
> The configuration for NAND has been aligned with values
> from U-Boot and completed with TIMINGS initialization
> 
> Signed-off-by: Matteo Fortini <matteo.fortini@gmail.com>
> [voice.shen@atmel.com: apply this patch from Matteo Fortini for
> 		       sama5d3xek to sama5d3_xplained board]
> Signed-off-by: Bo Shen <voice.shen@atmel.com>

Applied, thanks

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
