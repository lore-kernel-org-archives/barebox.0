Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gMuay-0002FL-4F
 for barebox@lists.infradead.org; Wed, 14 Nov 2018 12:48:37 +0000
Message-ID: <1542199701.5526.57.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 14 Nov 2018 13:48:21 +0100
In-Reply-To: <20181114085233.5000-1-s.hauer@pengutronix.de>
References: <20181114085233.5000-1-s.hauer@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: jlu@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] of: Add .of suffix to device names from devicetree
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On Wed, 2018-11-14 at 09:52 +0100, Sascha Hauer wrote:
> Previous implementation used to add a number to the device names
> for devices registered from the device tree which did not have a 'reg'
> property, thus a device node named "state" resulted in a device name
> "state.<x>". Current implementation skips that number and we get a
> device named "state". This conflicts with our barebox state
> implementation which tries to register a device named "state" itself.
> We could rename the state device nodes of all our device trees, but it
> causes less trouble to rename the devices.
> 
> This adds a ".of" suffix to the device names for devices registered from
> the device tree which also has the nice effect that they now can easily
> be recognized.
> 
> Fixes: 7e497d48acbd11 ("of: Port latest of_device_make_bus_id()
> implementation")

This looks like it should the fix the problem I saw in my integration
test.

Thanks,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
