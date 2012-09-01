Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7n8M-0007nh-Lu
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 12:49:07 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D8B17DC677D
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 14:54:19 +0200 (CEST)
Date: Sat, 1 Sep 2012 14:49:22 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120901124922.GC19233@game.jcrosoft.org>
References: <20120824050332.GK6271@game.jcrosoft.org>
 <1345784816-31344-1-git-send-email-plagnioj@jcrosoft.com>
 <20120828084038.GD26594@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120828084038.GD26594@pengutronix.de>
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
Subject: Re: [PATCH 1/7] dhcp: add global var support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:40 Tue 28 Aug     , Sascha Hauer wrote:
> On Fri, Aug 24, 2012 at 07:06:50AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > This way you can specify as previously set the dhcp parameter via global.dhcp.xxx
> > and get the result via global.dhcp.xxx
> > 
> > This is need for the defaultenv-2 to add the bootp suppport.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  net/dhcp.c |  100 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 99 insertions(+), 1 deletion(-)
> > 
> > diff --git a/net/dhcp.c b/net/dhcp.c
> > index 79efa3e..51c4283 100644
> > --- a/net/dhcp.c
> > +++ b/net/dhcp.c
> > @@ -19,6 +19,8 @@
> >  #include <magicvar.h>
> >  #include <linux/err.h>
> >  #include <getopt.h>
> > +#include <globalvar.h>
> > +#include <init.h>
> >  
> >  #define OPT_SIZE 312	/* Minimum DHCP Options size per RFC2131 - results in 576 byte pkt */
> >  
> > @@ -78,11 +80,39 @@ static IPaddr_t net_dhcp_server_ip;
> >  static uint64_t dhcp_start;
> >  static char dhcp_tftpname[256];
> >  
> > +static const char* dhcp_get_barebox_global(const char * var)
> 
> static const char *dhcp_get_barebox_global
> 
> > +{
> > +	char * var_global = asprintf("global.dhcp.%s", var);
> 
> char *var_global =
> 
> Generally I don't think we should introduce a second set of variables.
> Drop The other ones instead.
I'm ok with it as I 'm going to switch all my board to the defaultenv-2

but other people may not so the only to keep this feature on both env are

1) 2 set of var
2) use glovalbar on defaultenv

I've no preference

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
