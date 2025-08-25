Delivery-date: Mon, 25 Aug 2025 13:29:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqVO5-004LNz-23
	for lore@lore.pengutronix.de;
	Mon, 25 Aug 2025 13:29:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqVO4-0006Nx-4P
	for lore@pengutronix.de; Mon, 25 Aug 2025 13:29:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ObZgVVz7WvPDku94mKevuG9ii9D7T+HELLEBq2FX4es=; b=PRdfczB4PJzMfuxfqztjcct8RQ
	37agRrbhaCp0j+++JvKQ4PeQnWTyA5i7I9wgULFkvHJyMuTKrBMOlid4XziMnaSsuucqy2ohl/uZ7
	szhe+7PY49ok7RjSPSMTbQ+rbz57EDkhpKW7CqMZedud+GF8ygQj7nLTc5+NooQYzGjHnBXO/tCEN
	QL3KO6Bhy2Mtcm4BgUZvwSz1zecWBAMS3k1Wk2zNleJGb8RK/g9ck75WUaSX9thjD+vfq/BcYSgtx
	V+fIhmeOgT+5o4akdaitVnrn8iBaeJz5t54QjqjuHC9xaYT+rPdJJP7WqC/clCo4vxFe++vBxAXDC
	LbeaSbtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqVNZ-00000007kYc-2tsv;
	Mon, 25 Aug 2025 11:28:49 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqTXL-00000007VZI-1l2j
	for barebox@lists.infradead.org;
	Mon, 25 Aug 2025 09:30:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=ObZgVVz7WvPDku94mKevuG9ii9D7T+HELLEBq2FX4es=;
	b=ayOX8ZOgDwQDp9M+Vf9gnr2MP8YrGCODBzWvMOzK9IqoY0JhRHqegcFZYcsv3vgSfesFBvgVua4eP
	 hAGPV8ANId+VGF3ZWQ8EW/CZ0Y6dHQ0kFv30i/0MnMYBw7sTHyTEpSK/HGQWdqQpIL9muqxo6HTjKO
	 o0MEmHXhAfj1JIozKgPvT4PpurmVyUbMKE6I4wyRStGdIu9SATQWVHvbsXPl1Irx3My6dz7ATR/7qs
	 EAtT8uRrNGX9Xlq4Lbm39dir3qjab8D+//zx2Js4xHJ4qbk74GCvVg9JcxpUwLd7aqYZbCa02cHfec
	 1cuu79JbmY2aAnB1WdfWW2EAZ96KKRg==
X-MSG-ID: 2a83ff73-8196-11f0-8569-005056817704
Date: Mon, 25 Aug 2025 11:30:40 +0200
From: David Jander <david@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250825113040.42cade82@erd003.prtnl>
In-Reply-To: <aKwnPBfs3rjNaqDv@pengutronix.de>
References: <20250813070149.855341-1-david@protonic.nl>
	<aJ3H5z8f_ePriB-T@pengutronix.de>
	<20250814152300.4189e792@erd003.prtnl>
	<aKwnPBfs3rjNaqDv@pengutronix.de>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_023047_866246_B45D4BBE 
X-CRM114-Status: GOOD (  39.51  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: boards: Add support for Protonic PRTPUK board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, 25 Aug 2025 11:05:00 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Aug 14, 2025 at 03:23:00PM +0200, David Jander wrote:
> > 
> > Dear Sascha,
> > 
> > On Thu, 14 Aug 2025 13:26:31 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >   
> > > Hi David,
> > > 
> > > On Wed, Aug 13, 2025 at 09:01:49AM +0200, David Jander wrote:  
> > > > PRTPUK is a credit-card sized ISOBUS virtual terminal, based on the
> > > > Rockchip RK3576 SoC, that features a CAN interface and a 100/1000Base-T1
> > > > interface for HS-ISOBUS (HSI), as well as a USB-C port for connecting to a
> > > > touch-screen monitor.
> > > > 
> > > > +&sdhci {
> > > > +	no-sd;
> > > > +
> > > > +	partitions {
> > > > +		compatible = "barebox,fixed-partitions";
> > > > +		#address-cells = <2>;
> > > > +		#size-cells = <2>;
> > > > +
> > > > +		/* eMMC reserved 8MiB for barebox (2 copies?), env and state */
> > > > +		environment_emmc: partition@7b0000 {
> > > > +			label = "barebox-environment";
> > > > +			reg = <0x0 0x7b0000 0x0 0x10000>;
> > > > +		};
> > > > +
> > > > +		/* eMMC state after barebox and environment */
> > > > +		state_backend_emmc: partition@7c0000 {
> > > > +			label = "state";
> > > > +			reg = <0x0 0x7c0000 0x0 0x40000>;
> > > > +		};
> > > > +	};    
> > > 
> > > We are trying to get away from hardcoding partitions outside the GPT in
> > > the device tree and I think we are there.
> > > 
> > > A partition with the type UUID PARTITION_BAREBOX_ENVIRONMENT_GUID will be
> > > used as environment partition automatically.
> > > 
> > > A partition with the type UUID BAREBOX_STATE_PARTITION_GUID will be used
> > > as state partition provided the state node points to the device
> > > containing this partition.
> > > 
> > > We also have a parted command to create/modify partitions and for
> > > further convenience a createnv command which will create a barebox
> > > environment partition in case you haven't built a full partition image
> > > from a BSP.
> > > 
> > > It would be great if you could test this and eventually switch over to
> > > it.  
> > 
> > This was copied over from MECSBC. I didn't know things had changed since.
> > 
> > I agree it is much better to have all storage areas indexed by a GPT, but it
> > will mean that we will need to change every instance of identifying a
> > partition from number-based indexes to UUID or labels. And of course there are
> > a lot more partitions that will have to be included for completeness,
> > specially on Rockchip platforms. See here:
> > 
> > https://opensource.rock-chips.com/wiki_Partitions
> > 
> > This looks like a big mess, but I suppose we should at leas have loader1
> > (which is the whole of barebox, TF-A and optee). "U-Boot ENV" would be
> > replaced by barebox environment, and loader2 and trust would disappear.
> > On the MECSBC platform we started to use the Vendor Storage partition for
> > storing serial number and MAC address, so unless there is a better place for
> > these, we'd continue adhering to the Rockchip standard... for lack of a better
> > standard.
> > 
> > I'll try to come up with a partition layout that includes everything,
> > including the GUID's you mentioned above. Thanks.  
> 
> I'm not sure how it helps us to adhere to the partitioning scheme
> described in your link. If you want to do it, you can do it and still
> give the barebox environment partition the expected UUID so that barebox
> detects it.

Sure. The link was more or less informative in case you hadn't seen this.

> Anyway, I applied the patch as-is to get some compile coverage for
> RK3576, you can still change the partitioning later.

Ok, thanks. Sorry I couldn't find time to resubmit a new version yet. I will
look into this later and send incremental patches if needed.

Best regards,

-- 
David Jander



