Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9WNq-0007Er-DT
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 07:20:15 +0000
Date: Thu, 6 Sep 2012 09:20:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120906072012.GN26594@pengutronix.de>
References: <1346860337-777-1-git-send-email-jlu@pengutronix.de>
 <1346860337-777-7-git-send-email-jlu@pengutronix.de>
 <20120905180320.GA4761@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120905180320.GA4761@game.jcrosoft.org>
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
Subject: Re: [PATCH 6/8] drivers/net: add driver for the EMAC device found in
 some TI SoCs
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 05, 2012 at 08:03:20PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 17:52 Wed 05 Sep     , Jan Luebbe wrote:
> > Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> Again NACK
> 
> drop the struct XXXX on hte reg

I also don't like it, but let's not be religious about it.
Wolfgang currently forces all people to use structs for registers.
Forcing exactly the opposite is counterproductive I think. The original
drivers uses the structs and at some point it can be useful to compare
to this driver.

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
