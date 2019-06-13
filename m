Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJ2r-0007Af-7T
 for barebox@lists.infradead.org; Thu, 13 Jun 2019 06:17:10 +0000
Date: Thu, 13 Jun 2019 08:17:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190613061707.nwgi2dj2sga5q45e@pengutronix.de>
References: <20190611091253.12491-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611091253.12491-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] treewide: remove stale mentions of CONFIG_OF in comments
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 11, 2019 at 11:12:53AM +0200, Ahmad Fatoum wrote:
> barebox doesn't define a CONFIG_OF kconfig option, but CONFIG_OFTREE
> for the device tree handling and CONFIG_OFDEVICE for probing devices
> out of the device tree.
> 
> Replace comment mentions of CONFIG_OF with mentions of either as
> appropriate.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/i2c/i2c-mux.c          | 2 +-
>  drivers/usb/misc/usb251xb.c    | 4 ++--
>  include/linux/nvmem-consumer.h | 2 +-
>  include/of_device.h            | 4 ++--
>  4 files changed, 6 insertions(+), 6 deletions(-)

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
