Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UxBRK-0000M5-LA
 for barebox@lists.infradead.org; Thu, 11 Jul 2013 07:37:23 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UxBQy-0004Jr-Rd
 for barebox@lists.infradead.org; Thu, 11 Jul 2013 09:37:00 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UxBQy-0001xO-QQ
 for barebox@lists.infradead.org; Thu, 11 Jul 2013 09:37:00 +0200
Date: Thu, 11 Jul 2013 09:37:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130711073700.GF14452@pengutronix.de>
References: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] Allow configuration from the devicetree
To: barebox@lists.infradead.org

On Wed, Jul 10, 2013 at 12:51:59PM +0200, Sascha Hauer wrote:
> Currently even the devicetree enabled boards need C code to
> configure where to store the environment. The following series
> makes this configurable via devicetree to further reduce the
> need of C code for boards.
> 
> As I often point out that the devicetree is for hardware description
> rather than for configuration, the configuration is done in the
> node explicitly intended for configuration: /chosen.
> 
> We add a hierarchy /chosen/barebox/ in the devicetree on which
> of_platform_populate is called.

As discussed with Jan and Philipp Will change this to /chosen/ in
the next round.

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
