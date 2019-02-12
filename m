Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtTwC-0000Ta-0O
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 09:01:09 +0000
Date: Tue, 12 Feb 2019 10:01:06 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20190212090106.rpqazqn3qn7zvpmm@pengutronix.de>
References: <20190211162013.5320-1-m.felsch@pengutronix.de>
 <20190211162013.5320-2-m.felsch@pengutronix.de>
 <20190212080330.canqv5wijgy2bnye@pengutronix.de>
 <20190212084525.l5xsdltn6kq5bv2q@pengutronix.de>
 <20190212085622.ni5juzgay6ifrsuf@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190212085622.ni5juzgay6ifrsuf@pengutronix.de>
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
Subject: Re: [PATCH 2/2] memory: of_fixup: adapt to new memory layout
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 19-02-12 09:56, Sascha Hauer wrote:
> On Tue, Feb 12, 2019 at 09:45:25AM +0100, Marco Felsch wrote:
> > Hi Sascha,
> > 
> > On 19-02-12 09:03, Sascha Hauer wrote:
> > > On Mon, Feb 11, 2019 at 05:20:13PM +0100, Marco Felsch wrote:
> > > > Since kernel 4.16 the memory nodes got a @<reg> suffix so the fixup
> > > > won't work correctly anymore, because instead of adapting the extisting
> > > > one it creates a new node.
> > > > 
> > > > To be compatible with the old and new layout delete the found memory
> > > > node and create a new one. The new node follows the new @<reg> style.
> > > > 
> > > > The patch also renames the node element to root to make it more clear.
> > > > 
> > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > ---
> > > >  common/memory.c | 24 ++++++++++++++++++++++--
> > > >  1 file changed, 22 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/common/memory.c b/common/memory.c
> > > > index 00fa7c50ff..5402acab8e 100644
> > > > --- a/common/memory.c
> > > > +++ b/common/memory.c
> > > > @@ -224,7 +224,7 @@ int memory_bank_first_find_space(resource_size_t *retstart,
> > > >  
> > > >  #ifdef CONFIG_OFTREE
> > > >  
> > > > -static int of_memory_fixup(struct device_node *node, void *unused)
> > > > +static int of_memory_fixup(struct device_node *root, void *unused)
> > > >  {
> > > >  	struct memory_bank *bank;
> > > >  	int err;
> > > > @@ -232,7 +232,23 @@ static int of_memory_fixup(struct device_node *node, void *unused)
> > > >  	struct device_node *memnode;
> > > >  	u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
> > > >  
> > > > -	memnode = of_create_node(node, "/memory");
> > > > +	/*
> > > > +	 * Since kernel 4.16 the memory node got a @<reg> suffix. To support
> > > > +	 * the old and the new style delete any found memory node and add it
> > > > +	 * again to be sure that the memory node exists only once. It shouldn't
> > > > +	 * bother older kernels if the memory node has this suffix so adding it
> > > > +	 * following the new style.
> > > > +	 */
> > > > +
> > > > +	memnode = of_find_node_by_name(root, "memory");
> > > 
> > > We don't need this as the /memory node must have device_type = memory.
> > 
> > Okay, tought about the old devicetrees where the QA wasn't that good. I
> > will drop this.
> > 
> > > 
> > > > +	if (!memnode)
> > > > +		memnode = of_find_node_by_type(root, "memory");
> > > 
> > > You shouldn't assume that there's only one /memory node. There can be
> > > multiple.
> > 
> > Sure.. damn, checked only a few devicetree's where multiple banks are
> > mapped to the reg property. I will change this.
> > 
> > > The /memory node must be a direct child of the root node, so it's
> > > unnecessary to traverse the whole tree using of_find_node_by_type().
> > > Something like for_each_child_of_node_safe(root, tmp, np) fits better.
> > 
> > Okay.
> > 
> > > 
> > > > +
> > > > +	if (memnode)
> > > > +		of_delete_node(memnode);
> > > > +
> > > > +	/* At this moment we don't know the <reg> val */
> > > > +	memnode = of_create_node(root, "/memory");
> > > >  	if (!memnode)
> > > >  		return -ENOMEM;
> > > >  
> > > > @@ -256,6 +272,10 @@ static int of_memory_fixup(struct device_node *node, void *unused)
> > > >  		return err;
> > > >  	}
> > > >  
> > > > +	/* now adapt the node name */
> > > > +	of_rename_node(memnode, basprintf("memory@%llx",
> > > > +				 of_read_number((u32 *)tmp, addr_cell_len)));
> > > 
> > > It's also allowed to create one /memory node per memory bank. Maybe
> > > that's more straightforward to implement.
> > 
> > Is it wrong to adapt the name later? As specified by DT-Spec [1], the
> > @<reg> should be set to the first address.
> 
> What do they mean with the first address? Currently the memory banks in
> barebox are not sorted, so you are setting @reg indeed to the first
> address, but this is not currently necessarily the lowest one.

By first I mean the lowest, sorry. Oh I tought the banks are sorted, now
I got you. In that case it is easier to add one /memory node per memory
bank, as you mentoined. I will change that in my v2.

Regards,
Marco

> 
> Sascha
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
