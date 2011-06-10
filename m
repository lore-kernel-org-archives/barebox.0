Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QUwdv-00029g-D0
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 08:00:36 +0000
Date: Fri, 10 Jun 2011 10:00:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110610080032.GV23771@pengutronix.de>
References: <1307631354-5553-1-git-send-email-plagnioj@jcrosoft.com>
	<1307669367-3129-1-git-send-email-plagnioj@jcrosoft.com>
	<20110610065349.GO23771@pengutronix.de>
	<20110610070342.GP17584@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110610070342.GP17584@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 10, 2011 at 09:03:42AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > >  
> > > +static int device_param_complete(char begin, struct device_d *dev,
> > > +				 struct string_list *sl, char *instr)
> > > +{
> > > +	struct param_d *param;
> > > +	char cmd[128];
> > > +	char *tmp = cmd;
> > > +	int len, len2;
> > > +
> > > +	len = strlen(instr);
> > > +	if (begin) {
> > > +		tmp[0] = begin;
> > > +		tmp++;
> > > +	}
> > > +	strcpy(tmp, dev_name(dev));
> > > +	len2 = strlen(dev_name(dev));
> > > +	tmp += len2;
> > > +	tmp[0] = '.';
> > > +	tmp++;
> > > +
> > > +	list_for_each_entry(param, &dev->parameters, list) {
> > > +		memset(tmp, 0x0, 128 - (int)(tmp - cmd));
> > > +		if (!strncmp(instr, param->name, len)) {
> > > +			strcpy(tmp, param->name);
> > > +			len2 = strlen(param->name);
> > > +			if (begin)
> > > +				tmp[len2] = ' ';
> > > +			else
> > > +				tmp[len2] = '=';
> > > +			tmp[len2 + 1] = 0;
> > > +			string_list_add(sl, cmd);
> > > +		}
> > > +	}
> > 
> > The fixed length arrays might overflow. Maybe not in this function, but
> > when this becomes a template maybe in other functions. Looking at it
> > this code could really improve with sprintf, more specifically
> > string_list_asprintf. I'll post a patch in a minute.
> can we do it in a second step?

No, this creates more work for all of us. Consider your code may have
bugs, then by applying this patch we will expose them to the users which
will cause bug reports we have to work on. Then we switch to
string_list_asprintf which may have bugs aswell.

I know you have limited time and for this reason you want to see your
patches upstream asap, but this can't be the excuse for delaying
cleanups as we *all* have limited time.

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
