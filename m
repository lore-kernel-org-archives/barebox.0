Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WdDcl-0006Sl-DN
 for barebox@lists.infradead.org; Thu, 24 Apr 2014 06:59:12 +0000
Date: Thu, 24 Apr 2014 08:58:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140424065848.GV5858@pengutronix.de>
References: <1566538733.276756.1398269380974.open-xchange@email.1und1.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566538733.276756.1398269380974.open-xchange@email.1und1.de>
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
Subject: Re: New driver crashes with "unable to handle paging request"
To: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Cc: barebox@lists.infradead.org

Hi Rolf,

On Wed, Apr 23, 2014 at 06:09:40PM +0200, Rolf Evers-Fischer wrote:
> I'm just trying to port the USB driver "musb" (for the AM335x platform) from
> linux kernel to barebox.
> But whenever I want to read any address in the range 0x47401400-0x474017ff, the
> barebox crashes with "unable to handle paging request".
> I have already tried to invoke a "map_io_sections(0x0, 0x47400000, 0x2000)", but
> it didn't help.

barebox creates a flat 1:1 mapping when the MMU is enabled. You won't
need any calls to map_io_sections or some ioremap correspondent
function.

It may be that you have to enable some bus clocks in order to access the
musb.

To make sure you don't have MMU trouble could you post the output of
'mmuinfo 0x47400000'?

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
