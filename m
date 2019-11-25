Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ9Pt-0006Ap-NT
 for barebox@lists.infradead.org; Mon, 25 Nov 2019 08:08:19 +0000
Date: Mon, 25 Nov 2019 09:08:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191125080815.umvey5mi3txljupj@pengutronix.de>
References: <20191120083537.2548-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120083537.2548-1-ahmad@a3f.at>
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
Subject: Re: [PATCH 1/2] remoteproc: register a device for new remoteproc
 instances
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>

On Wed, Nov 20, 2019 at 09:35:36AM +0100, Ahmad Fatoum wrote:
> struct rproc has a device_d dev field, but so far it was unregistered.
> The implementation had a few downsides:
> 
> - dev_printf prints NULL, because the unique_name of the device is NULL
> - The name used by firmwareload is the device tree node's name, which
>   might be unnecessarily verbose, e.g. mlahb:m4@10000000.of
> - All remoteproc devices are given the same (unused) name and index
> 
> Fix these by registering a device for the remoteproc and using it where
> appropriate. While at it, allow the remoteproc name to come from a
> device tree alias as well.
> 
> This breaks user behavior in that firmwareload now uses the alias or
> remoteprocN to reference the remoteproc instance. This is probably
> acceptable as the driver is a very recent addition.
> 
> Cc: Oleksij Rempel <o.rempel@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/remoteproc/remoteproc_core.c | 29 ++++++++++++++++++++++------
>  include/linux/remoteproc.h           |  1 -
>  2 files changed, 23 insertions(+), 7 deletions(-)

Applied, thanks

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
