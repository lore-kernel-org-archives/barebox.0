Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P07qN-0007LH-S5
	for barebox@lists.infradead.org; Mon, 27 Sep 2010 07:09:48 +0000
Date: Mon, 27 Sep 2010 09:09:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100927070943.GU23406@pengutronix.de>
References: <201009251921.59904.jbe@pengutronix.de>
	<20100925200048.GH2111@game.jcrosoft.org>
	<4C9E8BBC.70103@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C9E8BBC.70103@pengutronix.de>
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
Subject: Re: [PATCH] Fix default baudrate setting
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, Sep 26, 2010 at 01:54:36AM +0200, Marc Kleine-Budde wrote:
> On 09/25/2010 10:00 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 19:21 Sat 25 Sep     , Juergen Beisert wrote:
> >> commit 604c99039f873952e252a5933309fc8e59b603db
> >> Author: Juergen Beisert <jbe@pengutronix.de>
> >> Date:   Sat Sep 25 19:18:25 2010 +0200
> >>
> >>     Fix default baudrate setting
> >>     
> >>     The menu entry to set the default baudrate (CONFIG_BAUDRATE) makes no sense,
> >>     as long as its content is not used. This patch makes barebox using the setting
> >>     again.
> >>     
> >>     Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> >>
> >> diff --git a/common/console.c b/common/console.c
> >> index 204a08c..71fa88f 100644
> >> --- a/common/console.c
> >> +++ b/common/console.c
> >> @@ -140,9 +140,12 @@ int console_register(struct console_device *newcdev)
> >>  	dev->type_data = newcdev;
> >>  	register_device(dev);
> >>  
> >> +#define xstr(s) str(s)
> >> +#define str(s) #s
> > can we put those macros in a more generic place?
> 
> The kernel calls this stringify, see [1]

Ok, then we should add include/linux/stringify.h, remove the duplicate
in include/command.h and use stringify in this patch.

Sascha



> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
