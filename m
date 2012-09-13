Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TC485-00071X-55
 for barebox@lists.infradead.org; Thu, 13 Sep 2012 07:46:30 +0000
Date: Thu, 13 Sep 2012 09:43:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120913074348.GF6180@pengutronix.de>
References: <20120912142743.GR31207@game.jcrosoft.org>
 <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
 <1347461308-24208-6-git-send-email-plagnioj@jcrosoft.com>
 <20120913071203.GD6180@pengutronix.de>
 <20120913073838.GF28928@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120913073838.GF28928@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 13, 2012 at 09:38:38AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:12 Thu 13 Sep     , Sascha Hauer wrote:
> > On Wed, Sep 12, 2012 at 04:48:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > via -r opt, global.dhcp.retries or dhcp_retries
> > > 
> > > set the priority order;
> > > 
> > > This will allow to do not stay infinite loop if no dhcp availlable
> > 
> > s/availlable/available/
> > 
> > > @@ -746,11 +767,17 @@ static int do_dhcp(int argc, char *argv[])
> > >  	while (dhcp_state != BOUND) {
> > >  		if (ctrlc())
> > >  			break;
> > > +		if (!retries) {
> > > +			ret = ETIMEDOUT;
> > 
> > -ETIMEDOUT
> > 
> > BTW currently we have in most commands:
> > 
> > 	return ret ? 1 : 0;
> > 
> > This is because the shell interpreted negative values as 'exit'. hush
> > does not do this anymore, so now we can think about a path to just
> > return negative error codes from the commands.
> > 
> > 
> > > @@ -785,7 +812,8 @@ BAREBOX_CMD_HELP_OPT  ("-u <client_uuid>",
> > >  BAREBOX_CMD_HELP_OPT  ("-U <user_class>",
> > >  "DHCP User class (code 77) submitted in DHCP requests. It can\n"
> > >  "be used in the DHCP server's configuration to select options\n"
> > > -"(e.g. bootfile or server) which are valid for barebox clients only.\n");
> > > +"(e.g. bootfile or server) which are valid for barebox clients only.\n")
> > > +BAREBOX_CMD_HELP_OPT  ("-r <retry>", "retry limi\n");
> > 
> > s/limi/limit/
> what do you think to put something else than infinite loop by default
> 
> I thinnk 20 is enough

Yes, ok, maybe even less. How long does one retry take?

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
