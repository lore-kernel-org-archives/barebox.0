Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sufgg-0006bC-0Z
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 08:14:19 +0000
Date: Fri, 27 Jul 2012 10:14:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120727081414.GX30009@pengutronix.de>
References: <1343296420-25857-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343296420-25857-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH RFC] arm/imx: provide command to add ram device with
 autodetected size
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 26, 2012 at 11:53:40AM +0200, Uwe Kleine-K=F6nig wrote:
> The amount of available ram is determined by the ESDCTL register, so
> better don't hardcode the value.
> =

> This commit provides a command that can be used instead of
> arm_add_mem_device and convertes pcm043 (on which this patch was tested)
> to it.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
> =

> maybe better move the new function into a new file
> arch/arm/mach-imx/esdctl.c and the prototype into <mach/esdctl.h>?
> =

> Also imx_add_ram1() is still missing. I will implement that when we
> agree the patch's idea is useful.

I agree it's useful

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
