Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUQ24-0007Ow-9d
 for barebox@lists.infradead.org; Mon, 19 Oct 2020 07:56:41 +0000
Date: Mon, 19 Oct 2020 09:56:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201019075638.GM13710@pengutronix.de>
References: <20201014140951.5184-1-a.fatoum@pengutronix.de>
 <20201014140951.5184-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201014140951.5184-2-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 2/2] ARM: at91: define new at91_multi_defconfig
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 14, 2020 at 04:09:51PM +0200, Ahmad Fatoum wrote:
> We now have 5 boards supporting multi-image, so add a defconfig that
> covers these three boards:
>   - Microchip KSZ-9477 EVB
>   - Microchip SAMA5D27-SOM1-EK
>   - Groboards Giantboard
> 
> For the latter two, two images are built. One with only a first stage
> PBL and another with a second-stage barebox proper.
> 
> Two more at91 multi-image boards are left out:
>   - Atmel AT91SAM9263-EK
>   - Atmel AT91SAM9x5 Series Evaluation Kit

With the updated NAND partitioning I enabled these as well for the
at91_multi_defconfig.

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
