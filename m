Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QUwfr-0002Au-Rr
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 08:02:38 +0000
Date: Fri, 10 Jun 2011 10:02:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110610080233.GW23771@pengutronix.de>
References: <1307642584-23695-1-git-send-email-plagnioj@jcrosoft.com>
	<20110610070447.GP23771@pengutronix.de>
	<20110610070507.GQ17584@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110610070507.GQ17584@game.jcrosoft.org>
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
Subject: Re: [RFC PATCH] cammand/gpio: switch to getopt
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 10, 2011 at 09:05:07AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:04 Fri 10 Jun     , Sascha Hauer wrote:
> > On Thu, Jun 09, 2011 at 08:03:04PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > this will simplify the implementation and save 296 bytes
> > 
> > This is both true. Still I like the old syntax of the commands very
> > much. Actually the commands have the same name as in the kernel and
> > it feels just good to type.
> maybe we can drop the command
> and add a devfs entry

How? With the gpio commands you have to specify two parameters at once.
I can't see how to archieve this with device parameters.

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
