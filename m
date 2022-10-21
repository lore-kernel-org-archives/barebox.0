Delivery-date: Fri, 21 Oct 2022 13:57:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olqem-002pWw-5D
	for lore@lore.pengutronix.de; Fri, 21 Oct 2022 13:57:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olqej-0000Ro-8m
	for lore@pengutronix.de; Fri, 21 Oct 2022 13:57:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HhsOr8WItv2eIjrd4RKHEAQ1AIFW15MnJSSONoEu5XQ=; b=Ezp3aGjVfx2KXmmoA04TRRFM5x
	aSYsdP+I1G6MVyuhswXd8KgYlaYtAgPUraywS8hoTGBlYqp39L+cC3mZk3VFT/na1H9cacW/msicp
	/jXcS3sQCmvO/lme+DZkegdjplAliCquFBQUCKgdOUuWezFp7MyWwdFt3iitOYtDbP4LUYwTZE7Kw
	rohmpFYD9ASdLjSTc5ItYA1vevK37k5048RazmeqxBePCCDTH09wlcqijEnmHy7uimJhl7t+SbNWo
	53whLmKMHYzHoiRaL0hWMqMJf61BvIuhClkLWnXlvCSTHu1n8qYtpOTl4mHC0xv70XhDvk/8QcO5R
	UIizIb8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olqdP-007Umv-Tc; Fri, 21 Oct 2022 11:56:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olqdK-007Ulj-NV
	for barebox@lists.infradead.org; Fri, 21 Oct 2022 11:56:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1olqdJ-0000GH-7x; Fri, 21 Oct 2022 13:56:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1olqdI-00032R-Ow; Fri, 21 Oct 2022 13:56:12 +0200
Date: Fri, 21 Oct 2022 13:56:12 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Barebox List <barebox@lists.infradead.org>
Message-ID: <20221021115612.GB6702@pengutronix.de>
References: <CAP1tNvRrPDLuzS3NSEO3DF4wF8NeXsoDiBh6hTCA5sxaKR1rKA@mail.gmail.com>
 <20221021114350.GA6702@pengutronix.de>
 <00b11081-9943-0806-9efc-6d17f1e59c8d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <00b11081-9943-0806-9efc-6d17f1e59c8d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_045614_789180_82424338 
X-CRM114-Status: GOOD (  23.58  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: i.MX watchdog druver regression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Oct 21, 2022 at 01:47:35PM +0200, Ahmad Fatoum wrote:
> On 21.10.22 13:43, Sascha Hauer wrote:
> > On Fri, Oct 21, 2022 at 12:53:59PM +0300, Alexander Shiyan wrote:
> >> Hello!
> >>
> >> An error occurred while registering the i.MX watchdog driver:
> >>
> >> barebox 2022.06.0-00530-g31d9ff81c63c-dirty #44 Fri Oct 21 12:13:36 MSK 2022
> >> ...
> >> ERROR: imx-watchdog 73f98000.watchdog@73f98000.of: probe failed: No
> >> such file or directory
> >> ...
> >>
> >> Thought it was the result of a patch "watchdog: imxwd: get and enable clock",
> >> and added the line:
> >> clks[IMX5_CLK_DUMMY] = clk_fixed("dummy", 0);
> >> into the beginning of the mx5_clocks_common_init() function, but this
> >> does not help...
> > 
> > If the missing clock is the problem then you also have to tell the clock
> > core that the dummy clock shall be provided to the watchdog, something
> > like:
> > 
> > 	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX53_WDOG1_BASE_ADDR, NULL);
> > 	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX53_WDOG2_BASE_ADDR, NULL);
> > 
> > similar is missing for i.MX51 as well
> 
> But the imx50.dtsi device tree already has
> 
> 	clocks = <&clks IMX5_CLK_DUMMY>;

I thought the device tree clocks are unused, because otherwise we could
remove the clkdev_add_physbase() calls. Ok, these are there for the
remaining non device tree boards.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


