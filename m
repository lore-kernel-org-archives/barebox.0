Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVGf-0006ck-Km
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:26:47 +0000
Date: Wed, 1 Jul 2020 07:26:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200701052642.GI15485@pengutronix.de>
References: <20200626064129.12094-1-s.hauer@pengutronix.de>
 <fa8c9ed1-8cde-a015-86ee-10c86ff65bbf@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa8c9ed1-8cde-a015-86ee-10c86ff65bbf@pengutronix.de>
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
Subject: Re: [PATCH] startup: Fix do_autoboot_countdown() running multiple
 times
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jun 29, 2020 at 10:37:43AM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 6/26/20 8:41 AM, Sascha Hauer wrote:
> > The comment above do_autoboot_countdown() states: "This function can be
> > called multiple times, it is executed only the first time.". Since
> > 1973892533 ("startup: don't clobber original autoboot state") This is no
> > longer the case. Bring back the old and documented behaviour.
> 
> guilty as charged. I didn't read the comment..
> do_autoboot_countdown is called only once though in the code base.
> How do you make use of being able to call it multiple times?

We use this in a customer project. The decision whether we want to abort
boot or not has to be made earlier. That said, it's out of tree code, so
should this hurt anywhere else, we can change it and find another
solution for our customer.

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
