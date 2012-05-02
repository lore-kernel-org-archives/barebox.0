Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SPZ7T-0002JZ-F9
 for barebox@lists.infradead.org; Wed, 02 May 2012 12:57:24 +0000
Date: Wed, 2 May 2012 14:57:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120502125711.GA4141@pengutronix.de>
References: <4FA12DB0.6010507@protonic.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4FA12DB0.6010507@protonic.nl>
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
Subject: Re: drivers/power ? drivers/hwmon ?
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org

On Wed, May 02, 2012 at 02:50:56PM +0200, Robin van der Gracht wrote:
> Hello,
> 
> Currently i'm writing a BSP for our new board. I quickly figured out
> there are no
> driver sections: hwmon and power. Why don't they exist (yet)?
> Can i give a shot at creating them?

They are not there because we did not need them yet. You can create
them, but of course you should put something in them ;)

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
