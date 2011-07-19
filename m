Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjE4T-00059X-Rg
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 17:27:05 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id B517DFFA403
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 19:27:30 +0200 (CEST)
Date: Tue, 19 Jul 2011 19:10:12 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110719171012.GM5727@game.jcrosoft.org>
References: <20110719160758.GK5727@game.jcrosoft.org>
	<1311091752-9114-4-git-send-email-plagnioj@jcrosoft.com>
	<20110719171910.GP20587@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110719171910.GP20587@pengutronix.de>
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
Subject: Re: [PATCH 04/16] add a add_mem_device function
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 19:19 Tue 19 Jul     , Sascha Hauer wrote:
> On Tue, Jul 19, 2011 at 06:09:00PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > Add a helper function for boards to register their memory
> > devices. This makes the board code smaller and also helps
> > getting rid of map_base and struct memory_platform_data.
> > 
> > And switch all of the memory to it
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> 
> > diff --git a/common/Makefile b/common/Makefile
> > index 9fed2ae..27aebae 100644
> > --- a/common/Makefile
> > +++ b/common/Makefile
> > @@ -9,6 +9,7 @@ obj-$(CONFIG_POLLER)		+= poller.o
> >  obj-$(CONFIG_BLOCK)		+= block.o
> >  
> >  obj-y += memory.o
> > +obj-y += mem.o
> 
> Seems you forgot to git add common/mem.c.
> 
> I think the previous patch can be squashed into this one. Other than
> that the series looks good.
I see I resend the v3 with it

no we need to new helpper in common otherwise the xload config will not
compile

the git is update you can pull it with the v3 of it inside

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
