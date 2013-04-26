Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f196.mail.ru ([217.69.129.205])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVm9B-0000YJ-FD
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 17:09:23 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 26 Apr 2013 21:09:16 +0400
Message-ID: <1366996156.522173565@f196.mail.ru>
In-Reply-To: <20130426165928.GH13393@game.jcrosoft.org>
References: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
 <1366994474-21325-3-git-send-email-shc_work@mail.ru>
 <20130426165928.GH13393@game.jcrosoft.org>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAzLzldIEFSTTogYXQ5MSBzbWM6IEZpeCBwb3NzaWJs?=
 =?UTF-8?B?ZSB1bmluaXRpYWxpemVkIHZhcmlhYmxl?=
To: =?UTF-8?B?SmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9MLVZJTExBUkQ=?= <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

...
> >  arch/arm/mach-at91/sam9_smc.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
> > index b48275e..a137da4 100644
> > --- a/arch/arm/mach-at91/sam9_smc.c
> > +++ b/arch/arm/mach-at91/sam9_smc.c
> > @@ -120,12 +120,12 @@ void sam9_smc_read(int id, int cs, struct sam9_smc_config *config)
> >  
> >  static int at91sam9_smc_probe(struct device_d *dev)
> >  {
> you fix nothing here

As far I understand, id can be 0 and 1. In case of dev->id=1, id is not set.

> > -	int id;
> > +	int id = dev->id;
> >  
> > -	if (dev->id < 0) {
> > +	if (id < 0) {
> >  		id = 0;
> > -	} else if (dev->id > 1) {
> > -		dev_warn(dev, ": id > 2\n");
> > +	} else if (id > 1) {
> > +		dev_warn(dev, "id > 1\n");
> >  		return -EIO;
> >  	}

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
