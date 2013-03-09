Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEGru-00061t-MJ
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 10:19:12 +0000
Date: Sat, 9 Mar 2013 11:19:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130309101903.GI1906@pengutronix.de>
References: <20130307215402.GA32347@game.jcrosoft.org>
 <1362743983-11462-1-git-send-email-plagnioj@jcrosoft.com>
 <1362743983-11462-7-git-send-email-plagnioj@jcrosoft.com>
 <20130308172559.GH1906@pengutronix.de>
 <20130308174349.GJ32347@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130308174349.GJ32347@game.jcrosoft.org>
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
Subject: Re: [PATCH 07/11] net/console: switch to pr_xxx
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 08, 2013 at 06:43:49PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 18:25 Fri 08 Mar     , Sascha Hauer wrote:
> > On Fri, Mar 08, 2013 at 12:59:39PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > >  net/netconsole.c |    4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/net/netconsole.c b/net/netconsole.c
> > > index 7d0f3f4..8db8356 100644
> > > --- a/net/netconsole.c
> > > +++ b/net/netconsole.c
> > > @@ -185,7 +185,7 @@ static int netconsole_init(void)
> > >  
> > >  	ret = console_register(cdev);
> > >  	if (ret) {
> > > -		printf("netconsole: registering failed with %s\n", strerror(-ret));
> > > +		pr_err("netconsole: registering failed with %s\n", strerror(-ret));
> > 
> > Same comment as I already made: Please use pr_fmt
> can you apply the other one
> 
> I'll resend just this one

Fixed this myself.

Sascha

> 
> Best Regards,
> J.
> > 
> > Sascha
> > 
> > -- 
> > Pengutronix e.K.                           |                             |
> > Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
