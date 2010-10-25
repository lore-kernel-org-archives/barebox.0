Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PARBg-0004fJ-FF
	for barebox@lists.infradead.org; Mon, 25 Oct 2010 17:50:25 +0000
Date: Mon, 25 Oct 2010 19:50:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101025175021.GB6017@pengutronix.de>
References: <1288010393-3644-1-git-send-email-marek.belisko@gmail.com>
	<20101025163457.GA6017@pengutronix.de>
	<AANLkTimr_PZaNnHhURxkxOuuRippEpeqWA_c8Hex4FXs@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimr_PZaNnHhURxkxOuuRippEpeqWA_c8Hex4FXs@mail.gmail.com>
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
Subject: Re: [PATCH] barebox:usb_gadget:Remove compilation error.
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 25, 2010 at 07:07:04PM +0200, Belisko Marek wrote:
> Hi Sascha,
> 
> On Mon, Oct 25, 2010 at 6:34 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > Hi Marek,
> >
> > On Mon, Oct 25, 2010 at 02:39:53PM +0200, Marek Belisko wrote:
> >> Missing include <init.h> caused that __initdata was
> >> undeclared what lead to compilation error.
> >
> > You probably mean the master branch, because next already has a fix for
> > this from Eric. I cherry-picked his patch to the master branch.
> Yes I found it in master branch. Suppose I have to use next branch when develop
> some new functionality.

In this case I'm glad you found this is relevant for the master branch
;)

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
