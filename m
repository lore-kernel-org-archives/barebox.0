Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gom7Q-0002vv-T3
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 09:25:18 +0000
Date: Wed, 30 Jan 2019 10:25:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190130092514.hqmsvvnpvxpnmr3n@pengutronix.de>
References: <c0358da915d386604bf576935cb49530@moritz.augsburger.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0358da915d386604bf576935cb49530@moritz.augsburger.name>
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
Subject: Re: Raspberry Pi: Access Firmware-FDT
To: Moritz Augsburger <ml+barebox@moritz.augsburger.name>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Moritz,

On Tue, Jan 29, 2019 at 11:42:13AM +0100, Moritz Augsburger wrote:
> Hi,
> 
> on the RPi, the firmware binary blob assembles and enriches the dtb/dtbo
> files, puts the created fdt into memory, storing the location in r2.
> 
> I found a discussion proposing a patch
> (http://lists.infradead.org/pipermail/barebox/2018-June/033460.html) that
> was never included.

BTW with "See other mail I just sent you" in this thread I meant:
http://lists.infradead.org/pipermail/barebox/2018-June/033469.html

> 
> Is there currently any way to boot the kernel with the firmware created fdt?

No, there's currently no way to do said. We would need a fresh version
of the patch you referenced.

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
