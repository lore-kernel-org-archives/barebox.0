Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f5nMm-0001bg-Mu
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 07:06:58 +0000
Date: Tue, 10 Apr 2018 09:06:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180410070644.txdv22zpawbua2jf@pengutronix.de>
References: <1523032404-7416-1-git-send-email-andrey.gusakov@cogentembedded.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1523032404-7416-1-git-send-email-andrey.gusakov@cogentembedded.com>
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
Subject: Re: [PATCH 0/2] mfd: mc13xxx: ADC support
To: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Cc: barebox@lists.infradead.org, cphealy@gmail.com

Hi Andrey,

On Fri, Apr 06, 2018 at 07:33:22PM +0300, Andrey Gusakov wrote:
> This set of pathces adds ADC support for MC13783 and MC13892 PMICs.

Applied, thanks. Out of curiosity, what do you use the ADCs for?

Sascha

> 
> Andrey Gusakov (2):
>   mfd: mc13xxx: add function returning mc13xxx type
>   aiodev: mc13xxx: add adc support
> 
>  drivers/aiodev/Kconfig       |   6 ++
>  drivers/aiodev/Makefile      |   1 +
>  drivers/aiodev/mc13xxx_adc.c | 234 +++++++++++++++++++++++++++++++++++++++++++
>  drivers/mfd/mc13xxx.c        |  15 +++
>  include/mfd/mc13xxx.h        |  19 ++++
>  5 files changed, 275 insertions(+)
>  create mode 100644 drivers/aiodev/mc13xxx_adc.c
> 
> -- 
> 1.9.1
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
