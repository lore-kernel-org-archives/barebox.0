Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Un3nS-00075J-2d
 for barebox@lists.infradead.org; Thu, 13 Jun 2013 09:26:23 +0000
Date: Thu, 13 Jun 2013 11:25:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130613092557.GC32299@pengutronix.de>
References: <1368400146-30443-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130519073403.GY32299@pengutronix.de>
 <51B6EED2.3010707@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51B6EED2.3010707@gmail.com>
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

On Tue, Jun 11, 2013 at 11:33:06AM +0200, Sebastian Hesselbarth wrote:
> On 05/19/13 09:34, Sascha Hauer wrote:
> >Hi Sebastian,
> >
> >On Mon, May 13, 2013 at 01:09:06AM +0200, Sebastian Hesselbarth wrote:
> >>This patch adds address translation for default bus types. It has been
> >>shamelessly ported from Linux device tree address translation with the
> >>following exceptions:
> >>- only default bus map and translate are supported
> >>- of_bus has not been ported
> >>- check for #size-cells > 0 has been removed
> >>
> >>Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> >
> >I just gave this one a test.
> >
> >First of all you dropped 1:1 translation, see the attached fixup.
> >
> >Then, since this code duplicates the majority of drivers/of/address.c,
> >would it make sense to move it to the same file in barebox aswell?
> 
> Sascha,
> 
> coming back to this I am wondering if a full sync of linux' drivers/of
> with barebox' drivers/of should be done. IMHO at least for the core
> stuff (base/address/fdt) it makes sense, of_* can come later if
> required.
> 
> I started merging already, and from what I can see we should just remove
> the spinlocks and OF_DYNAMIC stuff (but leave of_node_get/_put as stubs)

Sounds like a plan. Functions existing both in barebox and Linux should
behave the same way. However, if Linux turns out to do something silly
or (for our usecase) too bloated, we shouldn't do the same just because
Linux does it.

I want to keep the Linux list usage in the devicetree, so they won't be
really in sync.

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
