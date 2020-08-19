Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8IbA-0002Uh-IW
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 07:33:29 +0000
Date: Wed, 19 Aug 2020 09:33:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200819073326.GR13023@pengutronix.de>
References: <20200818131816.7700-1-a.fatoum@pengutronix.de>
 <20200819065951.GQ13023@pengutronix.de>
 <1596f917-83af-a467-e1ee-02c83a309b7d@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1596f917-83af-a467-e1ee-02c83a309b7d@pengutronix.de>
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
Subject: Re: [PATCH] watchdog: fix watchdog_set_timeout breakage for drivers
 like imxwd
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>

On Wed, Aug 19, 2020 at 09:18:44AM +0200, Ahmad Fatoum wrote:
> On 8/19/20 8:59 AM, Sascha Hauer wrote:
> > Hi Ahmad,
> > 
> > On Tue, Aug 18, 2020 at 03:18:16PM +0200, Ahmad Fatoum wrote:
> >> Commit 0b944fce55f4 ("watchdog: permit `wd 0` for non-stoppable, but
> >> inactive, watchdogs") silently broke use of non-stoppable, but inactive,
> >> watchdogs altogether.
> > 
> > Didn't this commit break *all* watchdogs? With 0b944fce55f4 an inactive
> > watchdog will never be activated anymore.
> 
> watchdog_hw_running() returns -ENOSYS for watchdog that don't report whether
> they are running, so it broke all those who do report it and are inactive at
> driver probe time.

Ah, I see. I didn't look at the implementation of watchdog_hw_running().
The code explicitly tested for a boolean result, so it seemed obvious to
me that this function returns either true or false, but not an error.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
