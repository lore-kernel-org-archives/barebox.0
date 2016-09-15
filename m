Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkSdY-0008Lx-JX
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 09:07:17 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <mol@pengutronix.de>) id 1bkSdC-00005k-OT
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 11:06:54 +0200
Received: from mol by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1bkSdC-0000Kt-Hg
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 11:06:54 +0200
Date: Thu, 15 Sep 2016 11:06:54 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20160915090654.ujb6i4h5n3dy7c57@pengutronix.de>
References: <20160915061014.16943-1-m.olbrich@pengutronix.de>
 <20160915081336.fgw53sbm3youxupt@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160915081336.fgw53sbm3youxupt@pengutronix.de>
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
Subject: Re: [PATCH 1/2] state: don't keep pointers to any device tree data
To: barebox@lists.infradead.org

On Thu, Sep 15, 2016 at 10:13:36AM +0200, Sascha Hauer wrote:
> On Thu, Sep 15, 2016 at 08:10:13AM +0200, Michael Olbrich wrote:
> > Caching pointers to device tree nodes or names is not save. The barebox
> > internal device tree may be changed by loading a new device tree or through
> > fixup handlers.
> > Use local copies of the full path instead and resolve the node as needed.
> >
> 
> This should be two patches, one for backend->of_path and one
> state->root. When reviewing this I first had to understand that this
> patch has two unrelated changes.

Ok.

> > Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> > ---
> >  common/state/backend.c |  3 ++-
> >  common/state/state.c   | 19 ++++++++++++-------
> >  common/state/state.h   |  4 ++--
> >  3 files changed, 16 insertions(+), 10 deletions(-)
> > 
> > diff --git a/common/state/backend.c b/common/state/backend.c
> > index 2f2e6dfd32d1..5235bb0283dd 100644
> > --- a/common/state/backend.c
> > +++ b/common/state/backend.c
> > @@ -164,7 +164,7 @@ int state_backend_init(struct state_backend *backend, struct device_d *dev,
> >  	if (ret)
> >  		goto out_free_format;
> >  
> > -	backend->of_path = of_path;
> > +	backend->of_path = xstrdup(of_path);
> >  
> >  	return 0;
> >  
> > @@ -185,4 +185,5 @@ void state_backend_free(struct state_backend *backend)
> >  	state_storage_free(&backend->storage);
> >  	if (backend->format)
> >  		state_format_free(backend->format);
> > +	free(backend->of_path);
> >  }
> > diff --git a/common/state/state.c b/common/state/state.c
> > index 9b1d4edef132..0c329cd67548 100644
> > --- a/common/state/state.c
> > +++ b/common/state/state.c
> > @@ -202,15 +202,19 @@ struct device_node *state_to_node(struct state *state,
> >  				  enum state_convert conv)
> >  {
> >  	struct device_node *child;
> > -	struct device_node *root;
> > +	struct device_node *root, *state_root;
> >  	int ret;
> >  
> > -	root = of_new_node(parent, state->root->name);
> > +	state_root = of_find_node_by_path(state->of_path);
> > +	if (!state_root)
> > +		return ERR_PTR(-ENODEV);
> 
> Shouldn't you create the node if it's not there in the target device
> tree?

This looks for the node in the barebox internal device tree, not the target
device tree. If this node is missing, then state does not work any more.

Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
