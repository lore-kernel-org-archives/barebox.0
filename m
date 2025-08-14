Delivery-date: Thu, 14 Aug 2025 16:10:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYeo-000WqI-1w
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 16:10:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYen-0000QY-Bz
	for lore@pengutronix.de; Thu, 14 Aug 2025 16:10:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LOiZ6TYCf47x9lDjEzX5rbm3Snq70ZPCDLFfY0X2djs=; b=Hb6f6bKiZfoDW6N/okOpv9TJcL
	3jbkYGJrEJyYV+uF5CCprd8ebIBvNaOAkwMB4r9BTOB07XpP5MtoOA9oVFxqiT+FptvPbltc7gXzx
	ysNNz4sSs1AcAzXcpWvjxkZJf16r6+IM20S71C5JxYn1hml0SHdQ9zYczGGZD/7hwlKCIOO6qWIdd
	C6FS8u6ryA19j7U373d56VSTgzp0rBzE5kX8IJ64jTC0/qVNIo/WKqTdyU+Qg4jU41WdmER+qsSzR
	PuQ0Wp3krPzWeONR+saywKQ3K9UsGtxSs7QB5tSMnVRu+o00SvPTKc5wEyCGXzZrUv3fyt6ZRzCrt
	5MU3JMrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYeH-0000000HAob-2gVG;
	Thu, 14 Aug 2025 14:09:45 +0000
Received: from smtp28.bhosted.nl ([94.124.121.40])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXw7-0000000H2cf-00di
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:24:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=LOiZ6TYCf47x9lDjEzX5rbm3Snq70ZPCDLFfY0X2djs=;
	b=ZGiJopEFLJt7XfnJL1KddDEhPI7JDBtuiSpRFkxbJMfdIvAjUPZklUbgKlnmnI6o/znKbbppJbtKE
	 7BHroZYvr59tOs3+l9NxMBwQ04HMxIbbPS5uRJexapkDklM/Psdx6tUuZAHLnQPTOunAShc0Gpsyo7
	 IqskUqv+kkA1amjt3kUVcWOlotOeuIlpqPWKI/1d8hT2+fmCHlCEZLJXoPh8Y6xhJsDTVavZ3doouU
	 lPVz92FVGQHD/BILVg9s8xzO14dHRFmY8XV+u8tYLELlQKvlukdo5ije0HiY5xP0X8bTcS6IFtgbO7
	 PxdTXlho1jR5olluSl4+5AviIJ2DjxQ==
X-MSG-ID: cccf1be6-7911-11f0-8663-0050568164d1
Date: Thu, 14 Aug 2025 15:23:00 +0200
From: David Jander <david@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250814152300.4189e792@erd003.prtnl>
In-Reply-To: <aJ3H5z8f_ePriB-T@pengutronix.de>
References: <20250813070149.855341-1-david@protonic.nl>
	<aJ3H5z8f_ePriB-T@pengutronix.de>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_062407_446209_75B67285 
X-CRM114-Status: GOOD (  25.90  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: boards: Add support for Protonic PRTPUK board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Dear Sascha,

On Thu, 14 Aug 2025 13:26:31 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi David,
> 
> On Wed, Aug 13, 2025 at 09:01:49AM +0200, David Jander wrote:
> > PRTPUK is a credit-card sized ISOBUS virtual terminal, based on the
> > Rockchip RK3576 SoC, that features a CAN interface and a 100/1000Base-T1
> > interface for HS-ISOBUS (HSI), as well as a USB-C port for connecting to a
> > touch-screen monitor.
> > 
> > +&sdhci {
> > +	no-sd;
> > +
> > +	partitions {
> > +		compatible = "barebox,fixed-partitions";
> > +		#address-cells = <2>;
> > +		#size-cells = <2>;
> > +
> > +		/* eMMC reserved 8MiB for barebox (2 copies?), env and state */
> > +		environment_emmc: partition@7b0000 {
> > +			label = "barebox-environment";
> > +			reg = <0x0 0x7b0000 0x0 0x10000>;
> > +		};
> > +
> > +		/* eMMC state after barebox and environment */
> > +		state_backend_emmc: partition@7c0000 {
> > +			label = "state";
> > +			reg = <0x0 0x7c0000 0x0 0x40000>;
> > +		};
> > +	};  
> 
> We are trying to get away from hardcoding partitions outside the GPT in
> the device tree and I think we are there.
> 
> A partition with the type UUID PARTITION_BAREBOX_ENVIRONMENT_GUID will be
> used as environment partition automatically.
> 
> A partition with the type UUID BAREBOX_STATE_PARTITION_GUID will be used
> as state partition provided the state node points to the device
> containing this partition.
> 
> We also have a parted command to create/modify partitions and for
> further convenience a createnv command which will create a barebox
> environment partition in case you haven't built a full partition image
> from a BSP.
> 
> It would be great if you could test this and eventually switch over to
> it.

This was copied over from MECSBC. I didn't know things had changed since.

I agree it is much better to have all storage areas indexed by a GPT, but it
will mean that we will need to change every instance of identifying a
partition from number-based indexes to UUID or labels. And of course there are
a lot more partitions that will have to be included for completeness,
specially on Rockchip platforms. See here:

https://opensource.rock-chips.com/wiki_Partitions

This looks like a big mess, but I suppose we should at leas have loader1
(which is the whole of barebox, TF-A and optee). "U-Boot ENV" would be
replaced by barebox environment, and loader2 and trust would disappear.
On the MECSBC platform we started to use the Vendor Storage partition for
storing serial number and MAC address, so unless there is a better place for
these, we'd continue adhering to the Rockchip standard... for lack of a better
standard.

I'll try to come up with a partition layout that includes everything,
including the GUID's you mentioned above. Thanks.

Best regards,

-- 
David Jander


