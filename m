Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.97.mail-out.ovh.net ([188.165.49.176]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUvxt-0001nn-R8
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 07:17:10 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 006D34A7CA6
	for <barebox@lists.infradead.org>;
	Fri, 10 Jun 2011 09:17:44 +0200 (CEST)
Date: Fri, 10 Jun 2011 09:03:42 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110610070342.GP17584@game.jcrosoft.org>
References: <1307631354-5553-1-git-send-email-plagnioj@jcrosoft.com>
	<1307669367-3129-1-git-send-email-plagnioj@jcrosoft.com>
	<20110610065349.GO23771@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110610065349.GO23771@pengutronix.de>
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
Subject: Re: [PATCH v2] complete: add var and device param complete support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:53 Fri 10 Jun     , Sascha Hauer wrote:
> On Fri, Jun 10, 2011 at 03:29:27AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > with $xx or xx= or if device $xx.yy or xx.yy=
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> > v2:
> > 
> > make the call device_param_complete safe
> > 
> > Best Regards,
> > J.
> >  common/complete.c |  112 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
> >  1 files changed, 111 insertions(+), 1 deletions(-)
> > 
> > diff --git a/common/complete.c b/common/complete.c
> > index 46ba871..5f1df74 100644
> > --- a/common/complete.c
> > +++ b/common/complete.c
> > @@ -27,6 +27,7 @@
> >  #include <libgen.h>
> >  #include <command.h>
> >  #include <stringlist.h>
> > +#include <environment.h>
> >  
> >  static int file_complete(struct string_list *sl, char *instr)
> >  {
> > @@ -84,6 +85,111 @@ static int command_complete(struct string_list *sl, char *instr)
> >  	return 0;
> >  }
> >  
> > +static int device_param_complete(char begin, struct device_d *dev,
> > +				 struct string_list *sl, char *instr)
> > +{
> > +	struct param_d *param;
> > +	char cmd[128];
> > +	char *tmp = cmd;
> > +	int len, len2;
> > +
> > +	len = strlen(instr);
> > +	if (begin) {
> > +		tmp[0] = begin;
> > +		tmp++;
> > +	}
> > +	strcpy(tmp, dev_name(dev));
> > +	len2 = strlen(dev_name(dev));
> > +	tmp += len2;
> > +	tmp[0] = '.';
> > +	tmp++;
> > +
> > +	list_for_each_entry(param, &dev->parameters, list) {
> > +		memset(tmp, 0x0, 128 - (int)(tmp - cmd));
> > +		if (!strncmp(instr, param->name, len)) {
> > +			strcpy(tmp, param->name);
> > +			len2 = strlen(param->name);
> > +			if (begin)
> > +				tmp[len2] = ' ';
> > +			else
> > +				tmp[len2] = '=';
> > +			tmp[len2 + 1] = 0;
> > +			string_list_add(sl, cmd);
> > +		}
> > +	}
> 
> The fixed length arrays might overflow. Maybe not in this function, but
> when this becomes a template maybe in other functions. Looking at it
> this code could really improve with sprintf, more specifically
> string_list_asprintf. I'll post a patch in a minute.
can we do it in a second step?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
