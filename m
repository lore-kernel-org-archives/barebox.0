Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dAD1i-0002Qp-SA
 for barebox@lists.infradead.org; Mon, 15 May 2017 10:14:56 +0000
Date: Mon, 15 May 2017 12:14:28 +0200
From: Jan Remmet <J.Remmet@phytec.de>
Message-ID: <20170515101428.GB4612@lws-weitzel2@phytec.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
 <20170331070346.26878-2-s.hauer@pengutronix.de>
 <20170515091800.GA4612@lws-weitzel2@phytec.de>
MIME-Version: 1.0
In-Reply-To: <20170515091800.GA4612@lws-weitzel2@phytec.de>
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Jan Remmet <J.Remmet@phytec.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 01/42] state: Make pointing to the backend using a
 phandle the only supported method
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, May 15, 2017 at 11:18:00AM +0200, Jan Remmet wrote:
> On Fri, Mar 31, 2017 at 09:03:05AM +0200, Sascha Hauer wrote:
> > All other methods are broken for some time already: When starting the
> > kernel the state code rewrites the state node in the device tree and
> > replaced the "backend" property with a phandle - even when the target
> > can't be described as a phandle. Since using phandles is the nicest way
> > to point to the storage device anyway remove the other methods.
> Is there a way to use block devices as storage? On eMMC we use mtd style
> partitios inside the sd/mmc host node to access barebox and
> barebox-environment. But using this barebox-state didn't find the backend
> path.
Using barebox-state 2016.12.0 the states from the mtd style partition is found
now.

Jan

> 
> Jan
> 
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  .../devicetree/bindings/barebox/barebox,state.rst  | 27 ++++++++++++++++------
> >  common/state/state.c                               | 21 ++++++++---------
> >  2 files changed, 29 insertions(+), 19 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> > index 438cc434a2..e9daa65f1a 100644
> > --- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
> > +++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> > @@ -29,7 +29,8 @@ Required properties:
> >  
> >  * ``compatible``: should be ``barebox,state``;
> >  * ``magic``: A 32bit number used as a magic to identify the state
> > -* ``backend``: describes where the data for this state is stored
> > +* ``backend``: contains a phandle to the device/partition which holds the
> > +  actual state data.
> >  * ``backend-type``: should be ``raw`` or ``dtb``.
> >  
> >  Optional properties:
> > @@ -77,19 +78,31 @@ Example::
> >    	magic = <0x27031977>;
> >    	compatible = "barebox,state";
> >    	backend-type = "raw";
> > -  	backend = &eeprom, "partname:state";
> > +  	backend = &state_part;
> >  
> >    	foo {
> > -		reg = <0x00 0x4>;
> > -		type = "uint32";
> > +  		reg = <0x00 0x4>;
> > +  		type = "uint32";
> >    		default = <0x0>;
> >    	};
> >  
> >    	bar {
> > -		reg = <0x10 0x4>;
> > -		type = "enum32";
> > +  		reg = <0x10 0x4>;
> > +  		type = "enum32";
> >    		names = "baz", "qux";
> > -		default = <1>;
> > +  		default = <1>;
> > +  	};
> > +  };
> > +
> > +  &nand_flash {
> > +  	partitions {
> > +  		compatible = "fixed-partitions";
> > +  		#address-cells = <1>;
> > +  		#size-cells = <1>;
> > +  		state_part: state@10000 {
> > +  			label = "state";
> > +  			reg = <0x10000 0x10000>;
> > +  		};
> >    	};
> >    };
> >  
> > diff --git a/common/state/state.c b/common/state/state.c
> > index 02bb1bb24a..6e6b3a6f08 100644
> > --- a/common/state/state.c
> > +++ b/common/state/state.c
> > @@ -452,19 +452,16 @@ struct state *state_new_from_node(struct device_node *node, char *path,
> >  	}
> >  
> >  	if (!path) {
> > -		/* guess if of_path is a path, not a phandle */
> > -		if (of_path[0] == '/' && len > 1) {
> > -			ret = of_find_path(node, "backend", &path, 0);
> > -		} else {
> > -			struct device_node *partition_node;
> > -
> > -			partition_node = of_parse_phandle(node, "backend", 0);
> > -			if (!partition_node)
> > -				goto out_release_state;
> > -
> > -			of_path = partition_node->full_name;
> > -			ret = of_find_path_by_node(partition_node, &path, 0);
> > +		struct device_node *partition_node;
> > +
> > +		partition_node = of_parse_phandle(node, "backend", 0);
> > +		if (!partition_node) {
> > +			dev_err(&state->dev, "Cannot resolve \"backend\" phandle\n");
> > +			goto out_release_state;
> >  		}
> > +
> > +		of_path = partition_node->full_name;
> > +		ret = of_find_path_by_node(partition_node, &path, 0);
> >  		if (ret) {
> >  			if (ret != -EPROBE_DEFER)
> >  				dev_err(&state->dev, "state failed to parse path to backend: %s\n",
> > -- 
> > 2.11.0
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
