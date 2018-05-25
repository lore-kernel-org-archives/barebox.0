Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-sn1nam02on0720.outbound.protection.outlook.com
 ([2a01:111:f400:fe44::720]
 helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fM81C-0004bQ-3n
 for barebox@lists.infradead.org; Fri, 25 May 2018 08:24:19 +0000
From: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Date: Fri, 25 May 2018 08:23:58 +0000
Message-ID: <bd4f70ba1cfd3b817494cc4629bed17a5015a714.camel@allegion.com>
References: <264898e761473a90c2be407c7c0e9ae656bb39bf.camel@allegion.com>
 <20180525071156.txqmmif6qbqn4hnm@pengutronix.de>
In-Reply-To: <20180525071156.txqmmif6qbqn4hnm@pengutronix.de>
Content-Language: en-US
Content-ID: <DFC10356A693394CAC9F5E255296F684@prod.exchangelabs.com>
MIME-Version: 1.0
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
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Sascha,

Thanks for the review!

I've got one more question (below).

Am Freitag, den 25.05.2018, 09:11 +0200 schrieb Sascha Hauer:
> HI Florian,
> 
> looks good generally. Some small comments below.
> 
> On Thu, May 24, 2018 at 02:48:47PM +0000, Baeuerle, Florian wrote:
> > +static int of_fixup_property_set(struct device_node *root, void *context)
> > +{
> > +	const struct of_fixup_property_data *fixup = context;
> > +	int ret = do_of_property_set_now(root, fixup->path, fixup->propname,
> > +			fixup->data, fixup->len);
> > +
> > +	free(fixup->path);
> > +	free(fixup->propname);
> > +	free(fixup->data);
> 
> Don't free here. A fixup can be called multiple times.

It looks like I should not free at all (of_fixup_status neither does).
Can you confirm that?

> 
> > +
> > +	return ret;
> > +}
> > +
> > +static int of_fixup_property_delete(struct device_node *root, void *context)
> > +{
> > +	const struct of_fixup_property_data *fixup = context;
> > +	int ret = do_of_property_delete_now(root, fixup->path, fixup->propname);
> > +
> > +	free(fixup->path);
> > +	free(fixup->propname);
> 
> ditto.
> 
> > +
> > +	return ret;
> > +}
> > +
> > +static int do_of_property_set_fixup(const char *path, const char *propname,
> > +		void *data, int len)
> > +{
> > +	struct of_fixup_property_data *fixup;
> > +	int ret = -ENOMEM;
> > +
> > +	fixup = xzalloc(sizeof(*fixup));
> > +	if (!fixup)
> > +		goto out_fixup;
> 
> The 'x' versions of the alloc functions always return successfully, no
> need to check.
> 
> > +static int do_of_property_set_now(struct device_node *root, const char *path,
> > +		const char *propname, void *data, int len)
> > +{
> > +	struct device_node *node = of_find_node_by_path_or_alias(root, path);
> > +	struct property *pp = NULL;
> 
> No need to initialize.
> 
> > +
> > +	if (!node) {
> > +		printf("Cannot find nodepath %s\n", path);
> > +		return -ENOENT;
> > +	}
> > +
> > +	pp = of_find_property(node, propname, NULL);
> > +
> > +	if (pp) {
> > +		free(pp->value);
> > +		pp->value_const = NULL;
> > +
> > +		/* limit property data to the actual size */
> > +		if (len)
> > +			pp->value = xrealloc(data, len);
> > +		else
> > +			pp->value = NULL;
> > +
> > +		pp->length = len;
> > +	} else {
> > +		pp = of_new_property(node, propname, data, len);
> > +		if (!pp) {
> > +			printf("Cannot create property %s\n", propname);
> > +			return -ENOMEM;
> > +		}
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int do_of_property_delete_now(struct device_node *root, const char *path,
> > +		const char *propname)
> > +{
> > +	struct device_node *node = of_find_node_by_path_or_alias(root, path);
> > +	struct property *pp = NULL;
> 
> ditto.
> 
> Sascha
> 

-- Florian
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
