Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZDDG-0001Qz-5f
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 07:53:23 +0000
Message-ID: <1456473175.3401.4.camel@lws-tremmet.phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 26 Feb 2016 08:52:55 +0100
In-Reply-To: <1456424342.25961.17.camel@rtred1test09.kymeta.local>
References: <1456385809-46968-1-git-send-email-t.remmet@phytec.de>
 <1456424342.25961.17.camel@rtred1test09.kymeta.local>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 1/3] common: oftree: Add fuction to register set
 status fixup
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello Trent,

Am Donnerstag, den 25.02.2016, 18:18 +0000 schrieb Trent Piepho:
> On Thu, 2016-02-25 at 08:36 +0100, Teresa Remmet wrote:
> 
> >  
> > +struct of_fixup_status_data {
> > +	char *node;
> 
> const char *node.
> 
> I think path would be a better name, as node usually is a device_node
> pointer, not a path.

I named it node as it could also be an alias and not only a path.
But I don't might to rename it.

I'll send a fixup, also for the rest.

Regards,
Teresa

> 
> > +	bool status;
> > +};
> > +
> > +static int of_fixup_status(struct device_node *root, void *context)
> > +{
> > +	struct of_fixup_status_data *data = context;
> 
> const struct of_fixup_status_data *data
> 
> > +	struct device_node *node;
> > +
> > +	node = of_find_node_by_path_or_alias(root, data->node);
> > +	if (!node)
> > +		return -ENODEV;
> > +
> > +	if (data->status)
> > +		return of_device_enable(node);
> > +	else
> > +		return of_device_disable(node);
> > +}
> > +
> > +/**
> > + * of_register_set_status_fixup - register fix up to set status of nodes
> > + * Register a fixup to enable or disable a node in the devicet tree by
> > + * passing the path or alias.
> > + */
> > +int of_register_set_status_fixup(char *node, bool status)
> 
> (const char *path, bool status)
> 
> > +{
> > +	struct of_fixup_status_data *data;
> > +
> > +	data = xzalloc(sizeof(*data));
> > +	data->node = node;
> > +	data->status = status;
> > +
> > +	return of_register_fixup(of_fixup_status, (void *)data);
> > +}



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
