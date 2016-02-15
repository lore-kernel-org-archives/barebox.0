Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVCh5-0006f5-Bc
 for barebox@lists.infradead.org; Mon, 15 Feb 2016 06:31:36 +0000
Date: Mon, 15 Feb 2016 07:31:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160215063113.GB19372@pengutronix.de>
References: <1455282758-312-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455282758-312-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v4 0/3] i.MX6: CAAM engine support
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 12, 2016 at 02:12:35PM +0100, Steffen Trumtrar wrote:
> Hi!
> 
> This series adds basic support for the i.MX6
> Cryptographic Acceleration and Assurance Module (CAAM).
> 
> The CAAM supports multiple hashing/encryption engines,
> this series only supports the included hardware random
> number generator.
> 
> Changes since v3:
> 
>   - remove jobring config option
>     - the CAAM driver doesn't do anything useful without
>       them anyway, so always build the jr.c and probe the
>       subdevices in ctrl.c instead of just registering the
>       devices.
>   - probe the RNG in ctrl.c
>     - the RNG is a subdevice of the CAAM. Call the
>       probe function manually if driver is enabled.
>   - merge old patch 4/5 into new 3/3
>   - get rid of superfluous old patch 5/5
> 
> Tested with a riotboard.
> 
> Regards,
> Steffen
> 
> Steffen Trumtrar (3):
>   include: linux: add circular buffers
>   ARM: imx6: add caam clks
>   crypto: add i.MX6 CAAM support

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
