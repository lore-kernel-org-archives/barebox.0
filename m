Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jacCE-0007mi-Tk
 for barebox@lists.infradead.org; Mon, 18 May 2020 09:36:32 +0000
Date: Mon, 18 May 2020 11:36:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200518093628.GE15934@pengutronix.de>
References: <20200513125348.6266-1-a.fatoum@pengutronix.de>
 <20200518063656.GO11869@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518063656.GO11869@pengutronix.de>
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
Subject: Re: [PATCH] Documentation: boards: stm32mp: document eMMC boot
 configuration
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 18, 2020 at 08:36:56AM +0200, Sascha Hauer wrote:
> On Wed, May 13, 2020 at 02:53:48PM +0200, Ahmad Fatoum wrote:
> > In order to boot from eMMC on the STM32MP15x, the boot_ack bit in the
> > ext_csd register must be set. Document this and while at it, fix a
> > misformatted code block in the same section.
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  Documentation/boards/stm32mp.rst | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> Applied, thanks

And dropped again until it's clear if we really want to handle this with
a device parameter.

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
