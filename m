Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5PjO-0004C0-M8
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 08:34:03 +0000
Date: Tue, 11 Aug 2020 10:34:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200811083401.GK9475@pengutronix.de>
References: <20200805101628.4698-1-o.rempel@pengutronix.de>
 <20200805101628.4698-13-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200805101628.4698-13-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 12/13] of: add barebox-serial driver
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl

On Wed, Aug 05, 2020 at 12:16:27PM +0200, Oleksij Rempel wrote:
> Provide a driver which should act as nvmem consumer
> for board serial number information.
> 
> To make use of this driver, DTS should contain a serial
> node with compatibe "barebox,serial" and nvmem-cell-names
> "serial-number":
> 
> ...
> 	chosen {
> 		serial {
> 			compatible = "barebox,serial";
> 			nvmem-cell-names = "serial-number";
> 			nvmem-cells = &some_provider;
> 		};
> 	};

This driver only works when the EEPROM or whatever provides the NVMEM
contains the serial number in exactly the same format as shall be added
to the /serial-number property. This seems to be a special case only and
doesn't seem to justify a generic driver.

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
