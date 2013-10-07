Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VT4E6-0001Sm-UM
 for barebox@lists.infradead.org; Mon, 07 Oct 2013 06:23:32 +0000
Date: Mon, 7 Oct 2013 08:23:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131007062304.GR30088@pengutronix.de>
References: <20131003071723.GP32444@ns203013.ovh.net>
 <1380784920-30890-1-git-send-email-plagnioj@jcrosoft.com>
 <1380784920-30890-2-git-send-email-plagnioj@jcrosoft.com>
 <20131006112454.GO30088@pengutronix.de>
 <20131006183856.GS32444@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131006183856.GS32444@ns203013.ovh.net>
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
Subject: Re: [PATCH 2/8] console: factorise function to get the console by name
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 06, 2013 at 08:38:56PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 13:24 Sun 06 Oct     , Sascha Hauer wrote:
> > On Thu, Oct 03, 2013 at 09:21:54AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > rename it to console_get_by_name
> > > 
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > > +struct console_device *console_get_by_name(const char *cname)
> > > +{
> > > +	struct console_device *cdev;
> > > +	const char *target;
> > > +
> > > +	for_each_console(cdev) {
> > > +		target = dev_id(&cdev->class_dev);
> > > +		if (strcmp(cname, target))
> > > +			continue;
> > > +		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT))
> > > +			return cdev;
> > > +		return NULL;
> > > +	}
> > > +	return NULL;
> > > +}
> > > +EXPORT_SYMBOL(console_get_by_name);
> > 
> > I think this function should return the console regardless of whether
> > it's active or not. This makes the console_get_by_name_flags you
> > introduce later unnecessary. Also the loadxyz code shouldn't care if
> > it's activated but instead just activate the console if necessary.
> 
> agreed that's why I change this in patch 5
> as now the loadxyz just check if the cdev support input and output
> and not if active or not

Ok, I somewhat misread the patch. I still think though that a function

struct console_device *console_get_by_name(const char *cname, int flags);

is a bit unclear. This function should either return the cdev by name
*or* check the flags, but not both,

The loadxy code now ends up with:

	if (cname)
		cdev = console_get_by_name(cname, CONSOLE_STDIN & CONSOLE_STDOUT);
	else
		cdev = console_get_first_active();

So if cname is given you explicitly ask for a console capable of input
*and* output. If not, you ask for the first actve console, that is the
first console which has input *or* output activated.

The loadxy code should rather look like:

	if (cname)
		cdev = console_get_by_name(cname);
	else
		cdev = console_get_first_active();

	if (!cdev)
		barf_and_bail_out;

	if (!console_can_do_input(cdev) || !console_can_do_output())
		barf_and_bail_out;


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
