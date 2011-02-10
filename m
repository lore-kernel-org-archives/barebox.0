Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PnQqy-0001b6-TA
	for barebox@lists.infradead.org; Thu, 10 Feb 2011 07:22:13 +0000
Date: Thu, 10 Feb 2011 08:22:11 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20110210072211.GU22009@pengutronix.de>
References: <20110209170724.GK22009@pengutronix.de>
	<20110210071927.GQ9041@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110210071927.GQ9041@pengutronix.de>
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
Subject: Re: [PATCH] tx28: fix kconfig warning
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 10, 2011 at 08:19:27AM +0100, Sascha Hauer wrote:
> I would go with the following instead which moves the ARCH_HAS_FEC_IMX
> to drivers/net where it's accessible for all archs which need it.

Yes, sounds better!

thx, rsc
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
