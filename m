Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PjuJp-0007pF-Ek
	for barebox@lists.infradead.org; Mon, 31 Jan 2011 14:01:26 +0000
Date: Mon, 31 Jan 2011 15:01:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110131140122.GO9041@pengutronix.de>
References: <20110131133435.GE26656@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110131133435.GE26656@game.jcrosoft.org>
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
Subject: Re: mci/stm378x warning
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 31, 2011 at 02:34:35PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	durring some night build I see this on the drivers/mci/stm378x.c
> 
> 	/opt/work/barebox/drivers/mci/stm378x.c: In function 'mci_request':
> 	/opt/work/barebox/drivers/mci/stm378x.c:354: warning: 'length' may be used uninitialized in this function
> 	/opt/work/barebox/drivers/mci/stm378x.c:354: note: 'length' was declared here
> 
> 	so I guess length will initialized at 0

That's a false positive:

> static int transfer_data(struct device_d *hw_dev, struct mci_data *data)
> {
> 	unsigned length;
> 
> 	if (data != NULL) {
> 		length = data->blocks * data->blocksize;
> 	}

When we have date length gets initialized...

> 
> 	/*
> 	 * Everything is ready for the transaction now:
> 	 * - transfer configuration
> 	 * - command and its parameters
> 	 *
> 	 * Start the transaction right now
> 	 */
> 	writel(SSP_CTRL0_RUN, hw_dev->map_base + HW_SSP_CTRL0 + 4);
> 
> 	if (data != NULL) {

...and is only used in the same case.

> 		if (data->flags & MMC_DATA_READ)
> 			return read_data(hw_dev, data->dest, length);
> 		else
> 			return write_data(hw_dev, data->src, length);
> 	}
> 
> 	return 0;

Anyway, we should silence the compiler somehow. I'll prepare a patch for
this.

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
