Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tm0gj-0000nm-6s
 for barebox@lists.infradead.org; Fri, 21 Dec 2012 11:22:49 +0000
Date: Fri, 21 Dec 2012 12:22:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121221112247.GP26326@pengutronix.de>
References: <1356013354-25832-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1356013354-25832-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCHv2 0/6] Add PCM051 support
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 20, 2012 at 03:22:28PM +0100, Teresa G=E1mez wrote:
> This is rebased on the new AM33XX patch stack of Jan Luebbe.
> It adds phyCORE-AM335x (pcm051) support.
> Added also device register functions for SRAM, RAM and EHCI.
> =

> Teresa G=E1mez (6):
>   ARM AM33XX: Add mmc0 pin mux function
>   ARM OMAP: Add SRAM and DRAM to device register functions
>   ARM OMAP: Apply RAM device register functions to boards
>   ARM OMAP: Add EHCI to device register functions
>   ARM OMAP: Apply EHCI device register functions
>   pcm051: Add inital support

Applied, thanks. The autodetection of the SDRAM indeed would be nice,
but not necessary now. This could be added later.

Jan, Teresa, please check if the result is ok.

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
