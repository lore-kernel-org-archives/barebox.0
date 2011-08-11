Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QrXHd-0001Zp-32
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 15:34:57 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 0F525FF839B
	for <barebox@lists.infradead.org>;
	Thu, 11 Aug 2011 17:24:57 +0200 (CEST)
Date: Thu, 11 Aug 2011 17:05:58 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110811150558.GF22213@game.jcrosoft.org>
References: <1312838236-646-1-git-send-email-plagnioj@jcrosoft.com>
	<1312838236-646-2-git-send-email-plagnioj@jcrosoft.com>
	<20110810073000.GV31404@pengutronix.de>
	<20110810104454.GT22213@game.jcrosoft.org>
	<20110810125328.GY31404@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110810125328.GY31404@pengutronix.de>
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
Subject: Re: [PATCH 2/5] arm_dcc: fix missing switch to resource
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:53 Wed 10 Aug     , Sascha Hauer wrote:
> On Wed, Aug 10, 2011 at 12:44:54PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 09:30 Wed 10 Aug     , Sascha Hauer wrote:
> > > On Mon, Aug 08, 2011 at 11:17:13PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > ---
> > > >  drivers/serial/arm_dcc.c |    1 -
> > > >  1 files changed, 0 insertions(+), 1 deletions(-)
> > > > 
> > > > diff --git a/drivers/serial/arm_dcc.c b/drivers/serial/arm_dcc.c
> > > > index 0199da3..e1066ab 100644
> > > > --- a/drivers/serial/arm_dcc.c
> > > > +++ b/drivers/serial/arm_dcc.c
> > > > @@ -157,7 +157,6 @@ static struct driver_d arm_dcc_driver = {
> > > >  static struct device_d arm_dcc_device = {
> > > >  	.id	= -1,
> > > >  	.name	= "arm_dcc",
> > > > -	.size	= 4096,
> > > >  };
> > > >  
> > > >  static int arm_dcc_init(void)
> > > 
> > > I suppose this one is for master?
> > the 5 are for the master
> > 
> > 
> > as the at91, nomadik and verstaile can not run without them
> 
> Ok, applied.
I did a mistake for nomadif and versatile I send the wrong patch

it's DEV_ID not CON_id to use

I send 3 new patch to fix this

at91 work fine

sorry

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
