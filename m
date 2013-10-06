Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VStDE-000224-Jr
 for barebox@lists.infradead.org; Sun, 06 Oct 2013 18:37:53 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 75272DC2027
 for <barebox@lists.infradead.org>; Sun,  6 Oct 2013 20:37:27 +0200 (CEST)
Date: Sun, 6 Oct 2013 20:38:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131006183856.GS32444@ns203013.ovh.net>
References: <20131003071723.GP32444@ns203013.ovh.net>
 <1380784920-30890-1-git-send-email-plagnioj@jcrosoft.com>
 <1380784920-30890-2-git-send-email-plagnioj@jcrosoft.com>
 <20131006112454.GO30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131006112454.GO30088@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:24 Sun 06 Oct     , Sascha Hauer wrote:
> On Thu, Oct 03, 2013 at 09:21:54AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > rename it to console_get_by_name
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> > +struct console_device *console_get_by_name(const char *cname)
> > +{
> > +	struct console_device *cdev;
> > +	const char *target;
> > +
> > +	for_each_console(cdev) {
> > +		target = dev_id(&cdev->class_dev);
> > +		if (strcmp(cname, target))
> > +			continue;
> > +		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT))
> > +			return cdev;
> > +		return NULL;
> > +	}
> > +	return NULL;
> > +}
> > +EXPORT_SYMBOL(console_get_by_name);
> 
> I think this function should return the console regardless of whether
> it's active or not. This makes the console_get_by_name_flags you
> introduce later unnecessary. Also the loadxyz code shouldn't care if
> it's activated but instead just activate the console if necessary.

agreed that's why I change this in patch 5
as now the loadxyz just check if the cdev support input and output
and not if active or not

but first I factorise it in this patch to do not 2 stuff at a time
I hate doing 2 stuff in the same patch impossible to bisect

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
