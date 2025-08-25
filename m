Delivery-date: Mon, 25 Aug 2025 13:29:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqVNo-004LNG-06
	for lore@lore.pengutronix.de;
	Mon, 25 Aug 2025 13:29:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqVNm-0006Fv-Nc
	for lore@pengutronix.de; Mon, 25 Aug 2025 13:29:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XlI1fZxRx9l6ZTYsqpWsuoruN+nLL7/Hl1rH3b44kyI=; b=OPdmZ682YO3QHCFeVafgVrALyS
	F4EiX+F0HT2rc2LjI3P9ah0pUT4BPDFyT96WySQW4H7/VCHfUF/LdMRCQXlCoerxTUYqOGW5hSmIz
	LK6V2HZEwqYqDw++LPGPk+8UMtrSSAf+Gz4oiHdmvFgr6rcu/P7+vx86JmuEHAVjMwuZTBh5RMV6Z
	PB2pc9OOybniSdVGW1G4Z0XqDp/vNJ9w7Rzl9mJcBaWdmQFyyP1mZgSFeu6xkZ6SRQjpYm+YqaytY
	1Y9bhRg6VH8q+mLC2RZfE2CHenQA63Jd2aBjne/XjKyHhjzK5z6xdtTdeALcvuuoHaxVX020NsV4m
	N3PrJpCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqVN7-00000007jpp-0RZF;
	Mon, 25 Aug 2025 11:28:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqT8P-00000007RKz-38dY
	for barebox@lists.infradead.org;
	Mon, 25 Aug 2025 09:05:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uqT8O-0006Bv-GD; Mon, 25 Aug 2025 11:05:00 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uqT8O-0022Xq-0r;
	Mon, 25 Aug 2025 11:05:00 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uqT8O-00GI2Z-0U;
	Mon, 25 Aug 2025 11:05:00 +0200
Date: Mon, 25 Aug 2025 11:05:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Jander <david@protonic.nl>
Cc: barebox@lists.infradead.org
Message-ID: <aKwnPBfs3rjNaqDv@pengutronix.de>
References: <20250813070149.855341-1-david@protonic.nl>
 <aJ3H5z8f_ePriB-T@pengutronix.de>
 <20250814152300.4189e792@erd003.prtnl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250814152300.4189e792@erd003.prtnl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_020501_794631_83ED1B66 
X-CRM114-Status: GOOD (  39.75  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: boards: Add support for Protonic PRTPUK board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Aug 14, 2025 at 03:23:00PM +0200, David Jander wrote:
> 
> Dear Sascha,
> 
> On Thu, 14 Aug 2025 13:26:31 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Hi David,
> > 
> > On Wed, Aug 13, 2025 at 09:01:49AM +0200, David Jander wrote:
> > > PRTPUK is a credit-card sized ISOBUS virtual terminal, based on the
> > > Rockchip RK3576 SoC, that features a CAN interface and a 100/1000Base-T1
> > > interface for HS-ISOBUS (HSI), as well as a USB-C port for connecting to a
> > > touch-screen monitor.
> > > 
> > > +&sdhci {
> > > +	no-sd;
> > > +
> > > +	partitions {
> > > +		compatible = "barebox,fixed-partitions";
> > > +		#address-cells = <2>;
> > > +		#size-cells = <2>;
> > > +
> > > +		/* eMMC reserved 8MiB for barebox (2 copies?), env and state */
> > > +		environment_emmc: partition@7b0000 {
> > > +			label = "barebox-environment";
> > > +			reg = <0x0 0x7b0000 0x0 0x10000>;
> > > +		};
> > > +
> > > +		/* eMMC state after barebox and environment */
> > > +		state_backend_emmc: partition@7c0000 {
> > > +			label = "state";
> > > +			reg = <0x0 0x7c0000 0x0 0x40000>;
> > > +		};
> > > +	};  
> > 
> > We are trying to get away from hardcoding partitions outside the GPT in
> > the device tree and I think we are there.
> > 
> > A partition with the type UUID PARTITION_BAREBOX_ENVIRONMENT_GUID will be
> > used as environment partition automatically.
> > 
> > A partition with the type UUID BAREBOX_STATE_PARTITION_GUID will be used
> > as state partition provided the state node points to the device
> > containing this partition.
> > 
> > We also have a parted command to create/modify partitions and for
> > further convenience a createnv command which will create a barebox
> > environment partition in case you haven't built a full partition image
> > from a BSP.
> > 
> > It would be great if you could test this and eventually switch over to
> > it.
> 
> This was copied over from MECSBC. I didn't know things had changed since.
> 
> I agree it is much better to have all storage areas indexed by a GPT, but it
> will mean that we will need to change every instance of identifying a
> partition from number-based indexes to UUID or labels. And of course there are
> a lot more partitions that will have to be included for completeness,
> specially on Rockchip platforms. See here:
> 
> https://opensource.rock-chips.com/wiki_Partitions
> 
> This looks like a big mess, but I suppose we should at leas have loader1
> (which is the whole of barebox, TF-A and optee). "U-Boot ENV" would be
> replaced by barebox environment, and loader2 and trust would disappear.
> On the MECSBC platform we started to use the Vendor Storage partition for
> storing serial number and MAC address, so unless there is a better place for
> these, we'd continue adhering to the Rockchip standard... for lack of a better
> standard.
> 
> I'll try to come up with a partition layout that includes everything,
> including the GUID's you mentioned above. Thanks.

I'm not sure how it helps us to adhere to the partitioning scheme
described in your link. If you want to do it, you can do it and still
give the barebox environment partition the expected UUID so that barebox
detects it.

Anyway, I applied the patch as-is to get some compile coverage for
RK3576, you can still change the partitioning later.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


