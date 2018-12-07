Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVI4a-0004qx-G4
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 15:29:52 +0000
Date: Fri, 7 Dec 2018 16:29:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181207152935.b3b2ohuslcex4pec@pengutronix.de>
References: <9fe4263a-2331-362f-2e68-7563115a3b8a@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9fe4263a-2331-362f-2e68-7563115a3b8a@mev.co.uk>
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
Subject: Re: GPIO support missing for SoCFPGA?
To: Ian Abbott <abbotti@mev.co.uk>
Cc: Barebox List <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi Ian,

On Fri, Dec 07, 2018 at 03:19:58PM +0000, Ian Abbott wrote:
> Hi,
> 
> Commit 8a680e3c9b5dd8470b7437654877d5439e9a6407 ("ARM: socfpga: Arria10:
> support programming FPGA in PBL") deselected GPIOLIB, so none of the SoCFPGA
> boards support GPIO any more.  There is no mention of this in the commit
> message.  Was this a deliberate change, or accidental?  Where is the best
> place to re-enable the option?

Should be fixed by 34a9cd2a46 already, no?

Sascha


commit 34a9cd2a46511510683863d1b07f691665c00d1b
Author: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date:   Thu Nov 15 10:05:30 2018 +0100

    ARM: socfpga: select GPIOLIB for non-xload
    
    SoCFPGA has GPIOs. Select it for the normal bootloader. For the xload barebox,
    do not select it to not waste space.


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
