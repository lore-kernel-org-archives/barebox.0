Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViLUb-0006Je-JY
 for barebox@lists.infradead.org; Mon, 18 Nov 2013 09:51:42 +0000
Date: Mon, 18 Nov 2013 10:51:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131118095118.GA24559@pengutronix.de>
References: <1384365934-7693-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1384365934-7693-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 0/2] DA923RC: add PCI support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 13, 2013 at 06:05:32PM +0000, Renaud Barbier wrote:
> This patch set adds the fsl,mpic node frequency property
> needed by Linux version 3.x for the PCI driver to function.
> Also it was noticed that the board device reset was held
> low preventing full probing of the PCI bus.
> 
> Renaud Barbier (2):
>   ppc: mpc85xx: add fsl,mpic node frequency property
>   ppc: DA923RC: update board initialisation

Applied, thanks

Sascha

> 
>  arch/ppc/boards/geip-da923rc/da923rc.c          |    4 ++--
>  arch/ppc/mach-mpc85xx/fdt.c                     |    5 +++++
>  arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h |    3 +++
>  3 files changed, 10 insertions(+), 2 deletions(-)
> 
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
