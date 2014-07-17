Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X7eKg-0004AR-59
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 05:34:19 +0000
Date: Thu, 17 Jul 2014 07:33:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140717053355.GI23235@pengutronix.de>
References: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
 <53C70795.5050308@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53C70795.5050308@gmail.com>
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
Subject: Re: Update/include some functions from the Kernel
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 17, 2014 at 01:15:33AM +0200, Sebastian Hesselbarth wrote:
> On 07/15/2014 03:49 PM, Sascha Hauer wrote:
> > This adds/updates some lowlevel bitmap/bitop stuff from the
> > Kernel. Needed by upcoming USB updates.
> 
> Sascha,
> 
> just curious what "USB updates" there are?

The updates are only USB core related, like turning the hub driver into
a device and make fix up the USB device hierarchy. The other stuff is
USB gadget specific: Update to v3.15 and composite gadget support

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
