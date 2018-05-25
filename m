Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fM8Fu-0005BD-LZ
 for barebox@lists.infradead.org; Fri, 25 May 2018 08:39:24 +0000
Date: Fri, 25 May 2018 10:39:10 +0200
From: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Message-ID: <20180525083910.rv3p7mi5keoc7i5h@pengutronix.de>
References: <264898e761473a90c2be407c7c0e9ae656bb39bf.camel@allegion.com>
 <20180525071156.txqmmif6qbqn4hnm@pengutronix.de>
 <bd4f70ba1cfd3b817494cc4629bed17a5015a714.camel@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd4f70ba1cfd3b817494cc4629bed17a5015a714.camel@allegion.com>
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
Subject: Re: [PATCH] commands/of_property: add option to apply changes as fixup
To: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, May 25, 2018 at 08:23:58AM +0000, Baeuerle, Florian wrote:
> Hi Sascha,
> 
> Thanks for the review!
> 
> I've got one more question (below).
> 
> Am Freitag, den 25.05.2018, 09:11 +0200 schrieb Sascha Hauer:
> > HI Florian,
> > 
> > looks good generally. Some small comments below.
> > 
> > On Thu, May 24, 2018 at 02:48:47PM +0000, Baeuerle, Florian wrote:
> > > +static int of_fixup_property_set(struct device_node *root, void *context)
> > > +{
> > > +	const struct of_fixup_property_data *fixup = context;
> > > +	int ret = do_of_property_set_now(root, fixup->path, fixup->propname,
> > > +			fixup->data, fixup->len);
> > > +
> > > +	free(fixup->path);
> > > +	free(fixup->propname);
> > > +	free(fixup->data);
> > 
> > Don't free here. A fixup can be called multiple times.
> 
> It looks like I should not free at all (of_fixup_status neither does).
> Can you confirm that?

Yes.

Freeing should be done at of_unregister_fixup time, but that doesn't
exist (yet).

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
