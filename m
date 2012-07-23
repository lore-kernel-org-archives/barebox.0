Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StOzX-0000Ya-Ko
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 20:12:32 +0000
Date: Mon, 23 Jul 2012 22:11:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120723201120.GD30009@pengutronix.de>
References: <201207201534.50481.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201207201534.50481.jbe@pengutronix.de>
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
Subject: Re: [PATCH/master] ARM/MXS: pull-up and bitkeeper must be handled
 differently
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 20, 2012 at 03:34:49PM +0200, Juergen Beisert wrote:
> Since commit 2f6b1f7690640f571f8e72fc2f2564acb2e13778 the pull-up and
> bitkeeper handling for i.MX23/28 is correct. But now it is important to
> distinguish these pin features as their programmed bit values are different.
> With this patch the bitkeeper and pull-up enable/disable bits are now handled
> separately.
> 

Applied, thanks

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
