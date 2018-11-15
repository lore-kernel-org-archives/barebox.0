Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNE1W-0007ez-SP
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 09:33:20 +0000
Date: Thu, 15 Nov 2018 10:33:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181115093306.344snwqocwfhhgsr@pengutronix.de>
References: <20181114085233.5000-1-s.hauer@pengutronix.de>
 <CAHQ1cqFY+9+atQh+ZHHgQL_eRV+gFebAp=X6=TZwrtJsztpx=g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFY+9+atQh+ZHHgQL_eRV+gFebAp=X6=TZwrtJsztpx=g@mail.gmail.com>
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
Subject: Re: [PATCH] of: Add .of suffix to device names from devicetree
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Nov 14, 2018 at 07:59:25AM -0800, Andrey Smirnov wrote:
> On Wed, Nov 14, 2018 at 12:52 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > Previous implementation used to add a number to the device names
> > for devices registered from the device tree which did not have a 'reg'
> > property, thus a device node named "state" resulted in a device name
> > "state.<x>". Current implementation skips that number and we get a
> > device named "state". This conflicts with our barebox state
> > implementation which tries to register a device named "state" itself.
> > We could rename the state device nodes of all our device trees, but it
> > causes less trouble to rename the devices.
> >
> 
> State implementation will register a device named the same as alias
> pointing to corresponding node, so the problem only arises if DT has
> both a state node named "foo" and an alias to it named "foo" as well.
> It seems that the whole alias/standalone device creation code in
> common/state/state.c was written precisely because original DT naming
> scheme was not producing "fixed/stable" names, so changing then naming
> scheme from matching what Linux does in order to fit some assumptions
> in state code and unfortunate DT naming, while the easiest solution,
> seems a bit backwards.
> 
> Can we fix this using an early internal DT fixup that would rename
> problematic node and maybe even print a warning urging users to rename
> their state nodes?

We have boards that have multiple state instances registered with
different names, but all follow the same pattern and have the same
problem, so it's not only "state" that causes problems, but could be
any string. Lucas noted there were problems with imx-thermal aswell.
We have the general problem that devices that have variables attached
to them shall have a specific name, so we must make sure these are
not used by devices registered from the device tree.

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
