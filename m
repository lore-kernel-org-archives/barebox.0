Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbGlB-0000pi-M9
 for barebox@lists.infradead.org; Wed, 20 May 2020 04:55:19 +0000
Date: Wed, 20 May 2020 06:55:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200520045513.GQ11869@pengutronix.de>
References: <cover.1589477005.git.dg@emlix.com>
 <24116d80272b13dc1e38eaf0bb3beb7b2f4a5f79.1589477005.git.dg@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24116d80272b13dc1e38eaf0bb3beb7b2f4a5f79.1589477005.git.dg@emlix.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 08/10] fastboot: rename usbgadget.fastboot_* variables
 to fastboot.*
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: barebox@lists.infradead.org

On Thu, May 14, 2020 at 08:21:56PM +0200, Daniel Gl=F6ckner wrote:
> There is nothing USB-specific in the defined usbgadget.fastboot_*
> variables. Rename them to be usable also for the UDP fastboot transport.
> =

> The usbgadget.fastboot_function variable is used to define the files and
> devices accessible with the erase and flash commands. Since "function" is
> a term from the USB specification and the Fastboot specification uses the
> term "partition", we rename that variable to "fastboot.partitions".
> =

> Signed-off-by: Daniel Gl=F6ckner <dg@emlix.com>
> ---
>  Documentation/user/usb.rst |  4 ++--
>  commands/usbgadget.c       |  2 +-
>  common/fastboot.c          | 15 +++++++++++++--
>  common/usbgadget.c         | 16 ++--------------
>  include/fastboot.h         |  3 +++
>  5 files changed, 21 insertions(+), 19 deletions(-)
> =

> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
>  device_initcall(fastboot_globalvars_init);
>  =

> -BAREBOX_MAGICVAR_NAMED(global_usbgadget_fastboot_max_download_size,
> -		       global.usbgadget.fastboot_max_download_size,
> +BAREBOX_MAGICVAR_NAMED(global_fastboot_max_download_size,
> +		       global.fastboot.max_download_size,
>  		       "Fastboot maximum download size");

This renames the magicvar description for this variable, but not the
variable itself.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
