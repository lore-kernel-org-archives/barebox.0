Delivery-date: Wed, 26 Jan 2022 12:24:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCgPQ-00DlUk-Sf
	for lore@lore.pengutronix.de; Wed, 26 Jan 2022 12:24:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCgPO-0003j5-Hk
	for lore@pengutronix.de; Wed, 26 Jan 2022 12:24:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BdmoIz8OWJ5dR7bUtE7LeDBdAk5FBMNSIf9ip5BNnN0=; b=TS6zqo9z1g6ln7
	GfvNK6Fwq1rDntcslCTSFXOBrQm2GYEIBTP4NUxK9BowgVCGwEGXjJJ/cxCOjVAAHtQudyI+wea8J
	S1KY3Iza+K0UFxyVMbMHUP+mb2Zhkr0CPwBTqRzFvxHqUhP4do0QdNJL6f4GOOaPo+DFJfx1jt8hs
	cixA+Oj1fGczvsDPT3bmDn8s2nbeYxzu/bmDiAAqJ+LgFKkZH0iVI0eChgXQL94DbXi18jSuE9qHW
	zqj0jqF8gwmBtQ8CaNqHqrS+/QQnBzF+ek5hjf2qUl/bsLtGM/LCERvICgFL6BSd5rnklsBbqZ8sm
	jxxKrP2I3dR7VE5Z9htA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCgNd-00BS5U-Gi; Wed, 26 Jan 2022 11:22:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCgHb-00BQXJ-TG
 for barebox@lists.infradead.org; Wed, 26 Jan 2022 11:16:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1nCgHZ-0002pG-TI; Wed, 26 Jan 2022 12:16:09 +0100
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1nCgHZ-0001R6-JU; Wed, 26 Jan 2022 12:16:09 +0100
Date: Wed, 26 Jan 2022 12:16:09 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220126111609.GK11273@pengutronix.de>
Mail-Followup-To: Sascha Hauer <sha@pengutronix.de>,
 barebox@lists.infradead.org
References: <20220124100458.2924679-1-m.olbrich@pengutronix.de>
 <20220124100458.2924679-4-m.olbrich@pengutronix.de>
 <20220126075727.GD23490@pengutronix.de>
 <20220126093513.GI11273@pengutronix.de>
 <20220126101524.GH23490@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220126101524.GH23490@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:02:16 up 46 days, 19:47, 85 users,  load average: 0.46, 0.27, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_031612_015591_EB9B171D 
X-CRM114-Status: GOOD (  60.33  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] state: support backend-diskuuid / backend-offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 26, 2022 at 11:15:24AM +0100, Sascha Hauer wrote:
> On Wed, Jan 26, 2022 at 10:35:13AM +0100, Michael Olbrich wrote:
> > On Wed, Jan 26, 2022 at 08:57:27AM +0100, Sascha Hauer wrote:
> > > On Mon, Jan 24, 2022 at 11:04:58AM +0100, Michael Olbrich wrote:
> > > > On some platforms (e.g. EFI on x86_64) the state backend can only be
> > > > selected by a partiton UUID. On existing devices with a DOS partition
> > > > table, there may be no spare partition available for state.
> > > > 
> > > > This makes it possible to select the disk via UUID. The exact position is
> > > > defined by an explicitly specified offset.
> > > > 
> > > > Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> > > > ---
> > > > 
> > > > I wasn't sure where to add the helper function. Is include/fs.h ok or
> > > > should I put it somewhere else?
> > > > 
> > > > I'll implement the same helper for dt-utils, so we can avoid additional
> > > > #ifdef here.
> > > > 
> > > >  common/state/state.c | 55 +++++++++++++++++++++++++++++---------------
> > > >  include/fs.h         | 12 ++++++++++
> > > >  2 files changed, 49 insertions(+), 18 deletions(-)
> > > > 
> > > > diff --git a/common/state/state.c b/common/state/state.c
> > > > index 8c34ae83e52b..2a8b12d20c5a 100644
> > > > --- a/common/state/state.c
> > > > +++ b/common/state/state.c
> > > > @@ -592,6 +592,7 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
> > > >  	const char *backend_type;
> > > >  	const char *storage_type = NULL;
> > > >  	const char *alias;
> > > > +	const char *diskuuid;
> > > >  	uint32_t stridesize;
> > > >  	struct device_node *partition_node;
> > > >  	off_t offset = 0;
> > > > @@ -607,30 +608,48 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
> > > >  	if (IS_ERR(state))
> > > >  		return state;
> > > >  
> > > > -	partition_node = of_parse_phandle(node, "backend", 0);
> > > > -	if (!partition_node) {
> > > > -		dev_err(&state->dev, "Cannot resolve \"backend\" phandle\n");
> > > > -		ret = -EINVAL;
> > > > -		goto out_release_state;
> > > > -	}
> > > > +	ret = of_property_read_string(node, "backend-diskuuid", &diskuuid);
> > > 
> > > This needs some documentation in
> > > Documentation/devicetree/bindings/barebox/barebox,state.rst.
> > 
> > I can do that.
> > 
> > > > +	if (ret == 0) {
> > > > +		u64 off;
> > > > +
> > > > +		ret = devpath_from_diskuuid(diskuuid, &state->backend_path);
> > > > +		if (ret) {
> > > > +			dev_err(&state->dev, "state failed find backend device for diskuuid='%s'\n",
> > > > +				diskuuid);
> > > > +			goto out_release_state;
> > > > +		}
> > > > +		ret = of_property_read_u64(node, "backend-offset", &off);
> > > 
> > > I stumbled upon this because you have to use a 64bit type here instead
> > > of using 'offset' directly. I think 'offset' should be 64bit instead so
> > > that larger offsets can be used.
> > 
> > It's not that simple. 'offset' used as a 'off_t' and 'ssize_t' all over the
> > place in the state framework. On 32bit architecture both are defined as
> > 'long' or 'int'. Both are 32 bit types so changing 'offset' to a 64bit type
> > here doesn't really help.
> 
> Of course not, we would have to replace all variables which are used as
> offset into a device to 64bit types. That's a separate topic which
> doesn't have to be solved as part of this series.

So what should I do here?
- use 'u64' for 'offset' and remove the separate variable
- use 'loff_t' for 'offset'
- keep it as it is
- something else?

> > > > +		}
> > > > +		offset = off;
> > > 
> > > What about the size of the state partition? This is not set anywhere in
> > > this case so it's still zero. It should be specified the in device tree
> > > as well. At the same time I'm a bit nervous that it apparently still
> > > works with size zero.
> > 
> > The code explicitly checks if the size is specified and skips any range
> > checks if it's not. From what I can tell, it has been like that from the
> > beginning.
> 
> That's likely ok for real partitions. When reading/writing them past the end
> we'll get an error from the lower layers which can be handled, but not
> so in this case where size is potentially the rest of the whole disk.
> 
> > 
> > If that's not ok, then I could add a 'backend-size' property, or do you
> > have something else in mind?
> 
> Yes, that's what I had in mind. And I think it should be mandatory.

So, if we add a size, then it should also be validated in some way, right?
Maybe ensure that it does not overlap with existing partitions?

Michael

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

