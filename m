Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoUAF-0007ZO-Un
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 07:47:49 +0000
Date: Mon, 17 Jun 2013 09:47:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130617074724.GK32299@pengutronix.de>
References: <1368400146-30443-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130519073403.GY32299@pengutronix.de>
 <51B6EED2.3010707@gmail.com>
 <20130613092557.GC32299@pengutronix.de>
 <51B9930B.8080609@gmail.com>
 <20130613124833.GD32299@pengutronix.de>
 <51BA1476.3060309@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51BA1476.3060309@gmail.com>
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
Subject: Re: [PATCH] of: add ranges address translation for default bus
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Thu, Jun 13, 2013 at 08:50:30PM +0200, Sebastian Hesselbarth wrote:
> On 06/13/13 14:48, Sascha Hauer wrote:
> >On Thu, Jun 13, 2013 at 11:38:19AM +0200, Sebastian Hesselbarth wrote:
> >>On 06/13/13 11:25, Sascha Hauer wrote:
> >>>Sounds like a plan. Functions existing both in barebox and Linux should
> >>>behave the same way. However, if Linux turns out to do something silly
> >>>or (for our usecase) too bloated, we shouldn't do the same just because
> >>>Linux does it.
> 
> Sascha,
> 
> pushed a branch you can have a first look at to
> 
> git://github.com/shesselba/barebox-dove.git of-sync-v1

I had a quick look at this branch. It has some really good stuff in it.
You should post it for a closer review if you consider it ready.

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
