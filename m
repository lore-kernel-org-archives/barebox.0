Delivery-date: Thu, 27 Jan 2022 01:20:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCsWx-00EKOa-0U
	for lore@lore.pengutronix.de; Thu, 27 Jan 2022 01:20:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCsWu-0004PQ-Op
	for lore@pengutronix.de; Thu, 27 Jan 2022 01:20:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wjVrtAnqdWfq7DATXTA7tbpVxA8fPw37slXkQrGtNZw=; b=n71y2htneWNLTFnKTQ4KYwsaY0
	7aG9TN9SwsnLK6cVcfOC8iwgvKvDY9YrBgYNZGM+KkRnODCuTluwoo91Ia57JAY76nG5pg7E72UdG
	HglCv2y9nWS+St4NWaFbDxy3yfZQaQn2pjLpsrHH5Bz74JHBHJ7mu23PI75R6sM4SX091mcrzUKGw
	kkNc/7qbVqMVD63nvxq+a+byIaYQxN4/ZA9gSGhr5CwDfM0e7xBFoBGGHcj/v9JDZl/oRnzhmweyM
	utC2cddTTnFgT3QDmSQcaMAmu8tzx99xn2Xr+MlSn3em8O8W5ixMS9/RHotzWO+KvtVX/CWLuk80y
	PSppBqhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCsVK-00DngP-GR; Thu, 27 Jan 2022 00:19:10 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCsVE-00Dnfy-PX
 for barebox@lists.infradead.org; Thu, 27 Jan 2022 00:19:06 +0000
Received: by mail-lf1-x134.google.com with SMTP id n8so2082471lfq.4
 for <barebox@lists.infradead.org>; Wed, 26 Jan 2022 16:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=fyqDF6R2ALUYd56VHHmHcsY/KAhaK8IXNLVXDErPGTw=;
 b=0h16ZIc7TPxqolYML8wlU/XYZXy4T1QrUgCJuCi9lqvKRtsuwys3wjDOwCI+TF7yTl
 yG6WIcQMLosZymVnFQ/L6+35jpM0dHg6YgZTzC6qwvxEygYllVOx3+/0pX3Wd5Rsll5w
 SG8dR8CizF2c8RCvOo1WasnbXgiXKWFvtCpgq2r22Q4s94thPhkxE4dvsmVUwAdzmIzG
 jbq1BxzfXN/UlkKXKGoKeqTmIfn8CcLQ8ztPUa6CKeKDQwtYSZ0yhZHBmxp0h7X8gs2z
 IMxc7QfWhKIVsGt/Ah/xJ9clSU9Ws5AGm5gEcC2K4QIiJsyS/sJqbgW70wURVvfBdWhu
 JRlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=fyqDF6R2ALUYd56VHHmHcsY/KAhaK8IXNLVXDErPGTw=;
 b=UW7qGwWf14I78v8zkYvmUBcxdkGv0Ne3wdAqGricJwe1ndh1qK5MfPJqQ3CsmpEP6c
 sEuiWhWmlBZ9dP4viXm7zMHYgOJ5r5iedx2jWRPGQ+BwTK/mISdApY0Ya92vd6HLUTcy
 35ha7eGwQqaGDobRQnD8dSD4UX9arKlVe4s+ruyKolf3v47Kz0vxHazfBVb36ZqvEIWa
 Ut+09tDLBRHYf+LasLufGdihKlWc+MtzfOdHygYSGj9mCnFk2tdLR+oWdTwfbhS1BPGt
 cn6WM4xU24S4E/mDLOE9OPnGUAld4x8+YwZMGs7kL1ar9Z+7aUWYUdUpmWjB/4qtkD5C
 f3Zw==
X-Gm-Message-State: AOAM532SmnkPeQUWcST3NgRNLsm/33jMJIVSqbMjZm3+BTlF+MzXvO/s
 oq/4+slYExVx9WaVuekTMdJAmaqUqcoZlCIxzzP7iQ==
X-Google-Smtp-Source: ABdhPJw2BslyxIUUG2w6DjeutoxVtS2WcfbzBSMggS6Dc/S3Ya8xn8dgPdlVlO9+egYGLoH16xX5stwyBcnyWRuAzj4=
X-Received: by 2002:a05:6512:446:: with SMTP id
 y6mr1111565lfk.44.1643242742520; 
 Wed, 26 Jan 2022 16:19:02 -0800 (PST)
MIME-Version: 1.0
References: <20220124100458.2924679-1-m.olbrich@pengutronix.de>
 <20220124100458.2924679-4-m.olbrich@pengutronix.de>
 <20220126075727.GD23490@pengutronix.de>
 <20220126093513.GI11273@pengutronix.de>
 <20220126101524.GH23490@pengutronix.de>
 <20220126111609.GK11273@pengutronix.de>
In-Reply-To: <20220126111609.GK11273@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 26 Jan 2022 16:18:51 -0800
Message-ID: <CAMHeXxPJJuC=MrtXp2iiQUnozs+2p1a8nC40LZd0Wf43t_g0Og@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_161905_042924_70E5AC23 
X-CRM114-Status: GOOD (  63.88  )
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

DTS ranges are usually specified as <offset> <length> in one property.
The sizes of offset and length fields are done with the #address-cells
and #size-cells of the bus the node is on.  I.e., barebox state
shouldn't be defining if offsets or lengths are 32 or 64 bits, it
should/is done by the device the offset or length refers to.

Like the normal 'reg' property in most nodes for register banks, or
the various "ranges" properties map an address space in the current
node to one in another node.

This backend-diskuuid, backend-offset, and backend-length seems like a
custom alternative version of a range that is specific to barebox
state.  Also, if the backend is a partition defined in the dts, then
the node of the partition specifies its size.  But if the partition is
found by uuid, then the barebox state device specifies the size of the
partition.  Seems inconsistent.

It seems like there should be a better and more consistent way to do this.

Here's an idea.  Identify the device by uuid and use existing
fixed-partitions.  Example:

{
    compatible = "storage-by-uuid";
    uuid = "abcd-1234";
    // Everything below here already exists and is unchanged
    partitions {
        compatible = "fixed-partitions";
        barebox_state: state@1000 {
            label = "barebox-state";
            reg = <0x1000 0x200>;
        };
        barebox_env: env@1200 {
            label = "barebox-env";
            reg = <0x1200 0x1000>;
        };
    };
};

When the top level node here is found, the matching device is located
by uuid and contents of the node are added to that device.  Adding
fixed partitions is done the same way it's already done.  The
difference is we can specify the device by uuid instead of needing to
locate the path of the exact hardware device.


On Wed, Jan 26, 2022 at 3:23 AM Michael Olbrich
<m.olbrich@pengutronix.de> wrote:
>
> On Wed, Jan 26, 2022 at 11:15:24AM +0100, Sascha Hauer wrote:
> > On Wed, Jan 26, 2022 at 10:35:13AM +0100, Michael Olbrich wrote:
> > > On Wed, Jan 26, 2022 at 08:57:27AM +0100, Sascha Hauer wrote:
> > > > On Mon, Jan 24, 2022 at 11:04:58AM +0100, Michael Olbrich wrote:
> > > > > On some platforms (e.g. EFI on x86_64) the state backend can only be
> > > > > selected by a partiton UUID. On existing devices with a DOS partition
> > > > > table, there may be no spare partition available for state.
> > > > >
> > > > > This makes it possible to select the disk via UUID. The exact position is
> > > > > defined by an explicitly specified offset.
> > > > >
> > > > > Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> > > > > ---
> > > > >
> > > > > I wasn't sure where to add the helper function. Is include/fs.h ok or
> > > > > should I put it somewhere else?
> > > > >
> > > > > I'll implement the same helper for dt-utils, so we can avoid additional
> > > > > #ifdef here.
> > > > >
> > > > >  common/state/state.c | 55 +++++++++++++++++++++++++++++---------------
> > > > >  include/fs.h         | 12 ++++++++++
> > > > >  2 files changed, 49 insertions(+), 18 deletions(-)
> > > > >
> > > > > diff --git a/common/state/state.c b/common/state/state.c
> > > > > index 8c34ae83e52b..2a8b12d20c5a 100644
> > > > > --- a/common/state/state.c
> > > > > +++ b/common/state/state.c
> > > > > @@ -592,6 +592,7 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
> > > > >         const char *backend_type;
> > > > >         const char *storage_type = NULL;
> > > > >         const char *alias;
> > > > > +       const char *diskuuid;
> > > > >         uint32_t stridesize;
> > > > >         struct device_node *partition_node;
> > > > >         off_t offset = 0;
> > > > > @@ -607,30 +608,48 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
> > > > >         if (IS_ERR(state))
> > > > >                 return state;
> > > > >
> > > > > -       partition_node = of_parse_phandle(node, "backend", 0);
> > > > > -       if (!partition_node) {
> > > > > -               dev_err(&state->dev, "Cannot resolve \"backend\" phandle\n");
> > > > > -               ret = -EINVAL;
> > > > > -               goto out_release_state;
> > > > > -       }
> > > > > +       ret = of_property_read_string(node, "backend-diskuuid", &diskuuid);
> > > >
> > > > This needs some documentation in
> > > > Documentation/devicetree/bindings/barebox/barebox,state.rst.
> > >
> > > I can do that.
> > >
> > > > > +       if (ret == 0) {
> > > > > +               u64 off;
> > > > > +
> > > > > +               ret = devpath_from_diskuuid(diskuuid, &state->backend_path);
> > > > > +               if (ret) {
> > > > > +                       dev_err(&state->dev, "state failed find backend device for diskuuid='%s'\n",
> > > > > +                               diskuuid);
> > > > > +                       goto out_release_state;
> > > > > +               }
> > > > > +               ret = of_property_read_u64(node, "backend-offset", &off);
> > > >
> > > > I stumbled upon this because you have to use a 64bit type here instead
> > > > of using 'offset' directly. I think 'offset' should be 64bit instead so
> > > > that larger offsets can be used.
> > >
> > > It's not that simple. 'offset' used as a 'off_t' and 'ssize_t' all over the
> > > place in the state framework. On 32bit architecture both are defined as
> > > 'long' or 'int'. Both are 32 bit types so changing 'offset' to a 64bit type
> > > here doesn't really help.
> >
> > Of course not, we would have to replace all variables which are used as
> > offset into a device to 64bit types. That's a separate topic which
> > doesn't have to be solved as part of this series.
>
> So what should I do here?
> - use 'u64' for 'offset' and remove the separate variable
> - use 'loff_t' for 'offset'
> - keep it as it is
> - something else?
>
> > > > > +               }
> > > > > +               offset = off;
> > > >
> > > > What about the size of the state partition? This is not set anywhere in
> > > > this case so it's still zero. It should be specified the in device tree
> > > > as well. At the same time I'm a bit nervous that it apparently still
> > > > works with size zero.
> > >
> > > The code explicitly checks if the size is specified and skips any range
> > > checks if it's not. From what I can tell, it has been like that from the
> > > beginning.
> >
> > That's likely ok for real partitions. When reading/writing them past the end
> > we'll get an error from the lower layers which can be handled, but not
> > so in this case where size is potentially the rest of the whole disk.
> >
> > >
> > > If that's not ok, then I could add a 'backend-size' property, or do you
> > > have something else in mind?
> >
> > Yes, that's what I had in mind. And I think it should be mandatory.
>
> So, if we add a size, then it should also be validated in some way, right?
> Maybe ensure that it does not overlap with existing partitions?
>
> Michael
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

