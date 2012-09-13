Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo5.mail-out.ovh.net ([178.33.109.111]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TC46w-0008De-5L
 for barebox@lists.infradead.org; Thu, 13 Sep 2012 07:45:19 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id D7423FF99B3
 for <barebox@lists.infradead.org>; Thu, 13 Sep 2012 09:46:50 +0200 (CEST)
Date: Thu, 13 Sep 2012 09:38:38 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120913073838.GF28928@game.jcrosoft.org>
References: <20120912142743.GR31207@game.jcrosoft.org>
 <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
 <1347461308-24208-6-git-send-email-plagnioj@jcrosoft.com>
 <20120913071203.GD6180@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120913071203.GD6180@pengutronix.de>
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
Subject: Re: [PATCH 6/7] dhcp: add retries limit support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:12 Thu 13 Sep     , Sascha Hauer wrote:
> On Wed, Sep 12, 2012 at 04:48:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > via -r opt, global.dhcp.retries or dhcp_retries
> > 
> > set the priority order;
> > 
> > This will allow to do not stay infinite loop if no dhcp availlable
> 
> s/availlable/available/
> 
> > @@ -746,11 +767,17 @@ static int do_dhcp(int argc, char *argv[])
> >  	while (dhcp_state != BOUND) {
> >  		if (ctrlc())
> >  			break;
> > +		if (!retries) {
> > +			ret = ETIMEDOUT;
> 
> -ETIMEDOUT
> 
> BTW currently we have in most commands:
> 
> 	return ret ? 1 : 0;
> 
> This is because the shell interpreted negative values as 'exit'. hush
> does not do this anymore, so now we can think about a path to just
> return negative error codes from the commands.
> 
> 
> > @@ -785,7 +812,8 @@ BAREBOX_CMD_HELP_OPT  ("-u <client_uuid>",
> >  BAREBOX_CMD_HELP_OPT  ("-U <user_class>",
> >  "DHCP User class (code 77) submitted in DHCP requests. It can\n"
> >  "be used in the DHCP server's configuration to select options\n"
> > -"(e.g. bootfile or server) which are valid for barebox clients only.\n");
> > +"(e.g. bootfile or server) which are valid for barebox clients only.\n")
> > +BAREBOX_CMD_HELP_OPT  ("-r <retry>", "retry limi\n");
> 
> s/limi/limit/
what do you think to put something else than infinite loop by default

I thinnk 20 is enough

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
