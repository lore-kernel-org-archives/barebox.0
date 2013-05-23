Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfT0g-0008Qp-U9
 for barebox@lists.infradead.org; Thu, 23 May 2013 10:44:40 +0000
Message-ID: <1369305856.4961.5.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 23 May 2013 12:44:16 +0200
In-Reply-To: <20130523094655.GD8595@lukather>
References: <20130523094655.GD8595@lukather>
Mime-Version: 1.0
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
Subject: Re: 2013.05 breaking Linux boot on imx28 CFA-10036
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org

On Thu, 2013-05-23 at 11:46 +0200, Maxime Ripard wrote:
> I've tested lately both 2013.05.0 and the master of Barebox on the imx28
> cfa-10036 board we have.
> 
> Everything works fine with 2013.04.0.
> 
> The issue I have is that Barebox in itself works fine, however, Linux
> fails to boot after it has been started by Barebox, quite early and
> badly:
> 
> http://code.bulix.org/s3z010-83581

Could you try the not-yet-released stable branch?
http://git.pengutronix.de/?p=barebox.git;a=shortlog;h=refs/heads/stable/v2013.05

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
