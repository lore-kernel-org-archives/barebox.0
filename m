Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z03Xq-0006zG-3A
 for barebox@lists.infradead.org; Wed, 03 Jun 2015 07:57:02 +0000
Date: Wed, 3 Jun 2015 09:56:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150603075639.GM6325@pengutronix.de>
References: <1433271831-16279-1-git-send-email-r.schwebel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1433271831-16279-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: Re: [PATCH 2/2] i2c: omap: fix i2c bus number output
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 02, 2015 at 09:03:51PM +0200, Robert Schwebel wrote:
> When probing from devicetree, the output for several i2c host
> controllers prints out a bus number of -1:
> 
> i2c-omap 44e0b000.i2c: bus -1 rev0.11 at 400 kHz
> i2c-omap 4802a000.i2c: bus -1 rev0.11 at 400 kHz
> i2c-omap 4819c000.i2c: bus -1 rev0.11 at 400 kHz
> 
> The call to i2c_add_numbered_adapter() in probe finds out the next free
> bus number, so we move the output to a location where the number is
> already determined.
> 
> Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
> ---
>  drivers/i2c/busses/i2c-omap.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

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
