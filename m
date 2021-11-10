Delivery-date: Wed, 10 Nov 2021 14:52:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mko1e-00020t-7z
	for lore@lore.pengutronix.de; Wed, 10 Nov 2021 14:52:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mko1d-00024Q-C8
	for lore@pengutronix.de; Wed, 10 Nov 2021 14:52:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYbOOT5BGx5Mqxcg7OsDD+umfn8eM+O/uoyW5us+fN8=; b=CT47QhCYTFv+H4
	bV10yxZU/vURwIg1hhf0FJF2AGjDcg0Ms3D6U7vGnBmgc5et0V2LI2X/b8+6CwY2xrQB346hZIDRl
	9NbwFx64LW7yGlCOw7+HtNstajTAVpcby/q5hTPFHZ9aEgFypdnIRyXm/0gfglCUmHw3QwzZS6j8s
	w4u2eGMMdYvtZZWDpmATHvcoBscTIhxtbER60ioMbj8rV+ukzk1Zu297cDHgk/N4Vns2YAnKbdZQH
	JGVlzdtxeGNZPcw5KJHGnW0aJWr8dIV0EC3OiSXEZzmuMS6Xv2eZLQ9LHTDh9H8nxWW220+l8jJl1
	usFACAd1Isvg8KJ0rV3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mko02-005ak7-C5; Wed, 10 Nov 2021 13:50:50 +0000
Received: from mailout12.rmx.de ([94.199.88.78])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mknzw-005aiX-MA
 for barebox@lists.infradead.org; Wed, 10 Nov 2021 13:50:46 +0000
Received: from kdin02.retarus.com (kdin02.dmz1.retloc [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout12.rmx.de (Postfix) with ESMTPS id 4Hq5pP3psHzRqJW;
 Wed, 10 Nov 2021 14:50:37 +0100 (CET)
Received: from mta.arri.de (unknown [217.111.95.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 4Hq5pM480Pz2TTJK;
 Wed, 10 Nov 2021 14:50:35 +0100 (CET)
Received: from n95hx1g2.localnet (192.168.201.115) by mta.arri.de
 (192.168.100.104) with Microsoft SMTP Server (TLS) id 14.3.498.0; Wed, 10 Nov
 2021 14:50:35 +0100
From: Christian Eggers <ceggers@arri.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Nov 2021 14:50:34 +0100
Message-ID: <2182678.iZASKD2KPV@n95hx1g2>
Organization: Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
In-Reply-To: <20211108103426.GL25698@pengutronix.de>
References: <3170930.44csPzL39Z@n95hx1g2>
 <20211108103426.GL25698@pengutronix.de>
MIME-Version: 1.0
X-Originating-IP: [192.168.201.115]
X-RMX-ID: 20211110-145035-rnRVYdrsDQFh-0@out02.hq
X-RMX-SOURCE: 217.111.95.66
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211110_055044_938098_5DB62484 
X-CRM114-Status: GOOD (  18.73  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [Barebox] Polling infrastructure causes reentrancy problem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On Monday, 8 November 2021, 11:34:26 CET, Sascha Hauer wrote:
> Hi Christian,
> 
> On Fri, Nov 05, 2021 at 01:40:52PM +0100, Christian Eggers wrote:
> > Disclaimer: I stumbled over this on barebox 2020.01.
> > I haven't tried to reproduce this on the current version.
> 
> Please update to a recent barebox. The fastboot commands now run in a
> workqueue which itself only runs when we are outside any critical pathes
> in barebox.
thanks for the hint. I just upgraded to 2021.10.

> Particularly fastboot commands will only execute when you called
> command_slice_release() beforehand. You'll have to call
> command_slice_acquire() before entering any critical pathes like probing
> for USB devices.
I guess that more or less all commands can be critical because
is_timeout() is called from many places. As parallelism for fastboot
is not mandatory, I implemented it the following way: 

	struct usbgadget_funcs const fastboot_funcs= {
		.flags = USBGADGET_FASTBOOT,
		.fastboot_opts = "/dev/null(null)",
	};

	/*
	 *  Register fastboot gadget (will run in background)
	 */
	ret = usbgadget_register(&fastboot_funcs);
	if (ret)
		goto error_usb_gadget;

	/* fastboot runs within a work queue. Allow fastboot execution within
	 * the next 5 seconds...
	 */
	command_slice_release();
	mdelay(5000);
	command_slice_acquire();


BTW: I use a modified/stripped down version of the Android fastboot for booting
Barebox FIT images. Is there any interest integrating this into barebox/scripts/?
- more or less stand alone (about 15 files at all)
- currently USB-only
- Apache-2.0 / BSD-2-clause
- C++
- CMake (only 60 lines, so it can be ported to Kbuild)

regards
Christian




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

