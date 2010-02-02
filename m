Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NcDJW-0006pH-7a
	for barebox@lists.infradead.org; Tue, 02 Feb 2010 07:36:51 +0000
Date: Tue, 2 Feb 2010 08:36:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100202073619.GD6130@pengutronix.de>
References: <20100201184957.GI8053@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100201184957.GI8053@darwin>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ep93xx eth driver: Fix dump_xxx_queue() parameter list
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

Hi Matthias,

On Mon, Feb 01, 2010 at 07:49:57PM +0100, Matthias Kaehlcke wrote:
> ep93xx eth driver: Add missing parameter to dump_rx_status_queue(),
> dump_tx_descriptor_queue() and dump_tx_status_queue()

Ok, applied.

Thanks
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
