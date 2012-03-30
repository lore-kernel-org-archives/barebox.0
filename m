Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDZ7Y-0003aF-Vv
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 10:31:53 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id C377DFF93F6
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 12:32:21 +0200 (CEST)
Date: Fri, 30 Mar 2012 12:16:52 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120330101652.GB8116@game.jcrosoft.org>
References: <20120330042713.GX444@game.jcrosoft.org>
 <1333081913-19168-7-git-send-email-plagnioj@jcrosoft.com>
 <20120330091255.GX3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120330091255.GX3852@pengutronix.de>
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
Subject: Re: [PATCH 7/8] net: dns: export resolved ip to var resolved_ip
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:12 Fri 30 Mar     , Sascha Hauer wrote:
> On Fri, Mar 30, 2012 at 06:31:52AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > This will allow to use it in scripting.
> > 
> >  {
> >  	IPaddr_t ip;
> >  
> > +	setenv("resolved_ip", "");
> > +
> >  	if (argc != 2)
> >  		return COMMAND_ERROR_USAGE;
> >  
> > @@ -248,6 +251,7 @@ static int do_host(int argc, char *argv[])
> >  		printf("%s is at ", argv[1]);
> >  		print_IPaddr(ip);
> >  		printf("\n");
> > +		setenv_ip("resolved_ip", ip);
> 
> I smell complex environment scripts here. Maybe we should rather
> integrate dns into getenv_ip. This will help all commands using ip
> addresses instead of putting the burden of resolving a host name into
> the environment.

yeah didn't think about it

not really complex sript but bootp with tftp server with name instead of IP

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
