Delivery-date: Fri, 02 Sep 2022 20:40:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oUBaj-004cW9-Hv
	for lore@lore.pengutronix.de; Fri, 02 Sep 2022 20:40:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oUBaj-0005Hg-HB
	for lore@pengutronix.de; Fri, 02 Sep 2022 20:40:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kXdFPjRFiKUFic+AJ3z8+S1ZETirHdlOm1FPL+m3Av8=; b=nQAKSfcOpJLM5YAmjyRB5z78OV
	Q9bFvIJZkCNXh6Qfo6QJsFJXRn3CcKRNms9DNmIgcRGLzraxrvPDRkHSsmv6sgEkhTtbG9VrFUSjn
	tYwFWh/cfJ1laUT7YMN0hctAfqwYvwUmuAwFONX024M5uEt9CBueA8GfVMRsbRx7LtFfQUAQDudPd
	VA8GcmUwwOiUqdTsbGVf1L9+xNAjgUH9tZzxYbUNNjrC3q+mNHx/lynDIAWSyi+iaI12UGMyXDhNK
	Yems0JkyEXtUgI32oCiHgT/D7bIKim30jfh6T6vfHnzIdGjNHF29VszEJ779SfBow4smX/+gYeCms
	Vqc3p7JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUBYq-009cO5-Cm; Fri, 02 Sep 2022 18:38:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUBYl-009c6B-Vr
	for barebox@lists.infradead.org; Fri, 02 Sep 2022 18:38:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oUBYf-00054t-RJ; Fri, 02 Sep 2022 20:38:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oUBYf-0007FJ-Ia; Fri, 02 Sep 2022 20:38:25 +0200
Date: Fri, 2 Sep 2022 20:38:25 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220902183825.GW24324@pengutronix.de>
References: <20220830083937.466171-1-j.zink@pengutronix.de>
 <20220830150522.GI24324@pengutronix.de>
 <ea03c971490b991a53b332beaded392862525f50.camel@pengutronix.de>
 <5a0c3e08-e47c-d01c-aa9a-b41da6a3f4af@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5a0c3e08-e47c-d01c-aa9a-b41da6a3f4af@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_113832_074000_23699805 
X-CRM114-Status: GOOD (  29.66  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clks: imx7: fix initial clock setup with deep probe
 enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 02, 2022 at 04:02:32PM +0200, Ahmad Fatoum wrote:
> Hello,
> 
> On 31.08.22 10:21, Johannes Zink wrote:
> > Hi Sascha,
> > 
> > On Tue, 2022-08-30 at 17:05 +0200, Sascha Hauer wrote:
> >> On Tue, Aug 30, 2022 at 10:39:37AM +0200, Johannes Zink wrote:
> >>> We register the i.MX7 clock controller driver at core_initcall
> >>> level and
> >>> then do some initial clock setup/reparenting at postcore_initcall
> >>> level.
> >>> This doesn't work as expected when deep probe is enabled, because
> >>> while
> >>> the driver is registered at core_initcall level, it's only probed
> >>> later on, currently at postcore_initcall level because it's a
> >>> dependency
> >>> of the timer for which of_ensure_device_probed is called.
> >>>
> >>> As the initial clock setup is also at postcore_initcall level, it's
> >>> no
> >>> longer guaranteed that the code executes in the same order. Fix
> >>> this by
> >>> directly doing the setup at the end of the probe function.
> >>
> >> Does this still work with deep probe disabled?
> >>
> >> I am asking because this effectively reverts bce79428773 ("clk:
> >> i.MX7: do
> >> clock reparenting when all clocks are initialized"). Switching all
> >> i.MX7 boards to deep probe might be a solution as well.
> 
> fixed clocks are registered via CLK_OF_DECLARE, so by the time the
> imx7 clock probe runs, they will always be available, independent of
> whether deep probe is enabled.

So this problem is already fixed, great.

> 
> > Though I would not _expect_ any problems here, I would like to check
> > that more thoroughly. This will probably take a bit, please stand by.
> 
> I looked at this with Johannes and I am puzzled how the problem
> that bce79428773 aimed to fix occurred. Could you elaborate?

Have a look at the tree at bce79428773. Back then the i.MX7 clock driver
was registered at core_initcall level, the same level that of_probe()
was running which first called of_platform_populate() and then
of_clk_init().

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


