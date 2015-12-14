Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8PO8-0006pR-PH
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 09:25:50 +0000
Date: Mon, 14 Dec 2015 10:25:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151214092525.GE11966@pengutronix.de>
References: <1449830435-6964-1-git-send-email-s.hauer@pengutronix.de>
 <1449830435-6964-2-git-send-email-s.hauer@pengutronix.de>
 <1449862171.26955.115.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449862171.26955.115.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 2/2] partition: Create links with partition names
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Dec 11, 2015 at 07:29:25PM +0000, Trent Piepho wrote:
> On Fri, 2015-12-11 at 11:40 +0100, Sascha Hauer wrote:
> > When a partition has a name create a link to the original partition
> > rather than registering a second cdev.
> 
> What does devinfo look like now?  Do named partition still show up?

No, they won't. Is that necessary? At least an ls -l in /dev/ now shows
that the different devices are really the same.

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
