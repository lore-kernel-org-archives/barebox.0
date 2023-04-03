Delivery-date: Mon, 03 Apr 2023 09:33:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjEgn-008Hjm-AA
	for lore@lore.pengutronix.de; Mon, 03 Apr 2023 09:33:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjEgm-00063D-Sq
	for lore@pengutronix.de; Mon, 03 Apr 2023 09:33:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sMOSaatxRcH8jcnFqhx1/H6ZToyZbaAhSLVvf74Ud/g=; b=f5Oskgi12SdVzAGznB8cRJs3lF
	OSpLoOKYnjknltXX1heKns7E7pdv69JsMOOOIm0c4JrTb87q4X5elIkJShag3yyT8jW6oCicN9zfj
	7eRliu+zqFpGmQd7uoxIt61LTstbbi7rxcJ7/6PRgU1I37ZqoPW3wPBPzZAqQ+yBe65iiizkZkCCW
	4u9Bn8+yp1poDmPFEt9/qjxKMxad00nrvdV0HvnwiEP8RrLJvGa03FXwC1QzQ35eZkQAkLzCT0PXk
	3nkIINj/p0R/uVxa6FyPbO7eT8ym00XF5axjZaWNwytzp6w5fTcn9AoOW7Ho96aaBgNuzECpnivfy
	OEIw6gww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjEff-00EP5R-2z;
	Mon, 03 Apr 2023 07:32:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjEfc-00EP4D-1p
	for barebox@lists.infradead.org;
	Mon, 03 Apr 2023 07:32:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjEfa-0005rH-Sp; Mon, 03 Apr 2023 09:32:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjEfa-0000Q3-GH; Mon, 03 Apr 2023 09:32:02 +0200
Date: Mon, 3 Apr 2023 09:32:02 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20230403073202.GS19113@pengutronix.de>
References: <20230328074037.1202993-1-s.hauer@pengutronix.de>
 <2b65b588-aa9c-b6c7-a020-807ccea5dc58@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2b65b588-aa9c-b6c7-a020-807ccea5dc58@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_003204_609468_B847D05B 
X-CRM114-Status: GOOD (  33.59  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/6] ARM: Rockchip: Read amount of memory from DDR
 controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 31, 2023 at 05:42:54PM +0200, Michael Riesch wrote:
> Hi Sascha,
> 
> On 3/28/23 09:40, Sascha Hauer wrote:
> > This series adds support for reading the amount of memory from
> > the DDR controller. This helps on boards which come with
> > different amounts of memory like the Radxa Rock3a.
> > 
> > This series also fixes issues with an upstream TF-A firmware. With this
> > the IRAM where the bootsource is stored is no longer accessible in
> > normal mode. We have to read its contents before starting the TF-A.
> > For this it became necessary to add a common barebox entry function
> > for rk3568, to get a common place to read the IRAM contents.
> 
> Nice, thanks for your efforts! Now it should be possible to remove the
> memory nodes from arch/arm/dts/rk356*, right?
> 
> I tried this on a ROCK3A with 8 GB and the memory calculation returned
> the correct result. There are now two ram devices
> 
>    `-- mem0
>       `-- 0x00000000-0x10fffffff (   4.3 GiB): /dev/ram1
>    `-- mem1
>       `-- 0x00000000-0xef5fffff (   3.7 GiB): /dev/ram0
>    `-- mem2
>       `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/mem

At first sight I was a bit puzzled that both memory regions start a 0x0.
That's correct for the devinfo output of course. The output of 'iomem'
would show the situation better here.

> 
> that start at SZ_4G and 0xa00000, respectively.
> 
> However, after loading the kernel the system hangs:
> 
> Loaded kernel to 0x100000000, devicetree at 0x101970000
> 
> Is this a bug in barebox or is something special required to boot the
> kernel from SZ_4G?

I would have guessed that barebox puts the kernel below the malloc area
just as usual. Ok, apparently it doesn't. I haven't found anything in
Documentation/arm64/booting.rst that forbids placing the kernel above
the 32bit boundary. You could verify that the memory nodes barebox
writes meet your expectations by adding some -v to the boot command.
Also earlycon might help to get some output from the kernel.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


