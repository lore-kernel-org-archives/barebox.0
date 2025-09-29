Delivery-date: Mon, 29 Sep 2025 09:50:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38eK-002LQP-1A
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 09:50:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38eJ-0003fx-ME
	for lore@pengutronix.de; Mon, 29 Sep 2025 09:50:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Psm1IzWSSWvEaTtcgbZtod5h/0iXhgStkYpeUUfvnZk=; b=thHxLRacqeWmEGFdcTt2G0z0sv
	wgwXO4Jh9bZATgcNi7jwhzLZUeSkHAcJSBqnnCDGknxf7qLgU3RFaCXbXgrtU6PerQmyGCXTigqRt
	fEmJv9Gmp4lxFDxn1e8AxiXg/fQjWGJmADH0gNEpBDsllVb3I/CTZxk/mH88jGBzV9SrleXDNsUF1
	o/QQOcEG2f0ReydfkycHO/xslDMENqBPvGJF9Tudgp0zwm8nolxCWfR9zkXI9E3cxcUAn+nGleqzA
	yu7ERA98L9YWYnE4F0FFdT/qamd/0BbF77EutIllLwKJmlwgInkNvh7nOiLu2fmqpfsqe8nvGPRUX
	hczVIm7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38dp-00000001gPa-47cJ;
	Mon, 29 Sep 2025 07:49:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38dn-00000001gOb-36Jn
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 07:49:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1v38dk-0003PZ-QK; Mon, 29 Sep 2025 09:49:44 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1v38dk-0012Vm-1Z;
	Mon, 29 Sep 2025 09:49:44 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1v38dk-002X4o-1B;
	Mon, 29 Sep 2025 09:49:44 +0200
Date: Mon, 29 Sep 2025 09:49:44 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <aNo6GD3kw4l3g_Ks@pengutronix.de>
References: <CAP1tNvQLfni2s37JYe-hDBxQfWLc2TNhrypH+-bicWXmW9o6Og@mail.gmail.com>
 <Z-6TBYRYiazahICg@pengutronix.de>
 <CAP1tNvR6mxe8gMSb05U20GdGqaO4N9zq-7so74+fm0DJ0iopVA@mail.gmail.com>
 <Z-6WbLbIkVS_wvLj@pengutronix.de>
 <CAP1tNvTfCC=f+naoA5MJXnwr8EGxL2wEsMpOVbKWGBjb=CGztg@mail.gmail.com>
 <Z--KaWCsJbI7hyxw@pengutronix.de>
 <CAP1tNvSL6vMx=ePmwHx-=yJGtWi2PdAfpa34PEZFPCgNrP1nhQ@mail.gmail.com>
 <CAP1tNvRcKkBfqP_mTQf2KOzqPU=RnzjEZkfQ2kgS9MpQ9Vo6Fw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvRcKkBfqP_mTQf2KOzqPU=RnzjEZkfQ2kgS9MpQ9Vo6Fw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_004947_777979_8130C5E3 
X-CRM114-Status: GOOD (  32.48  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: RK3588 CPLL question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Wed, 24 Sep 2025 16:05:02 +0300, Alexander Shiyan wrote:
> There's still no successful result with properly configuring the CPLL
> for the RK3588.
> Without it, kernel startup becomes pointless, as important frequencies
> for network
> interfaces, and likely some others, remain half the speed required for
> system operation.
> The CPLL in U-Boot is programmed for a frequency of 1500 MHz, and it
> works there,
> but in barebox these actions do not bring success.
> 
> CRU_CPLL_CON1 Address: Operational Base + offset (0x01A4)
> CRU_CPLL_CON6 Address: Operational Base + offset (0x01B8)
> CRU_MODE_CON00 Address: Operational Base + offset (0x0280)
> 
> md -l 0xfd7c0280+1
> fd7c0280: 00000545
> 
> md -l 0xfd7c01a0+28
> fd7c01a0: 0000007d 00000081 00000000 00000000
> fd7c01b0: 00000000 00000000 00009c00
> 
> clk_set_parent cpll xin24m
> md -l 0xfd7c0280+1
> fd7c0280: 00000445
> 
> md -l 0xfd7c01a0+28
> fd7c01a0: 0000007d 00002081 00000000 00000000
> fd7c01b0: 00000000 00000000 00004000
> 
> mw -l 0xfd7c01a4 0x20000000
> <Freeze here>
> 
> So the error occurs when the CPLL is turned on. Line:
> writel(HIWORD_UPDATE(0, RK3588_PLLCON1_PWRDOWN, 0), pll->reg_base +
> RK3588_PLLCON(1));
> 
> I don't know what else to try...
> Has anyone had any successful experience running a barebox for RK3588
> with working network interfaces?

I have barebox running with working network interfaces on a Radxa ROCK
5T board. I'm not familiar with the clock tree, yet, but on my system,
the CPLL is also set to 750 MHz and child clocks seem to be running at
half their rate.

Michael

> 
> Thanks!
> 
> пн, 7 апр. 2025 г. в 15:31, Alexander Shiyan <eagle.alexander923@gmail.com>:
> 
> >
> > Hello.
> >
> > Unfortunately, there is still a stupor in this issue
> > Any PLL can be configured normally, except CPLL.
> > Changing CPLL freezes the system. I tried to use some tricks from
> > U-boot, but to no avail...
> >
> > barebox@Diasom DS-RK3588-BTB-EVB:/ clk_set_parent cpll xin24m
> > barebox@Diasom DS-RK3588-BTB-EVB:/ clk_set_rate pll_cpll 816000000
> > rockchip_rk3588_pll_set_rate: changing pll_cpll to 816000000 with a
> > parent rate of 24000000
> > rockchip_rk3588_pll_set_params: rate settings for 816000000 p: 2, m:
> > 272, s: 2, k: 0
> > <freeze here>
> >
> > пт, 4 апр. 2025 г. в 10:29, Sascha Hauer <s.hauer@pengutronix.de>:
> > >
> > > On Thu, Apr 03, 2025 at 05:20:33PM +0300, Alexander Shiyan wrote:
> > > > I found this hack:
> > > > https://github.com/u-boot/u-boot/blob/master/drivers/clk/rockchip/clk_rk3588.c#L1933
> > >
> > > Let's do the same then.
> > >
> > > It would be nicer to have the CPLL setting in the assigned-clock-rates
> > > property. That should be done in the upstream dtsi though, overwriting
> > > the assigned-clock-rates in the barebox dtsi would mean we would have to
> > > copy the many existing settings and hope they don't change upstream.
> > >
> > > Sascha
> > >
> > > >
> > > > чт, 3 апр. 2025 г. в 17:08, Sascha Hauer <s.hauer@pengutronix.de>:
> > > > >
> > > > > On Thu, Apr 03, 2025 at 05:01:05PM +0300, Alexander Shiyan wrote:
> > > > > > Thanks Sascha!
> > > > > >
> > > > > > So something is wrong here.
> > > > > > At least the GMAC0/1 interfaces end up with the wrong frequency.
> > > > > > I have another image with u-boot and Rockchip kernel where CPLL
> > > > > > is 1.5GHz and network is ok.
> > > > >
> > > > > The only place where the PLL rates are configured in barebox is via
> > > > > assigned-clock-rates in the clock controller node. PLL_CPLL doesn't show
> > > > > up there, so I would assume it is just left to the default whatever that
> > > > > is.
> > > > >
> > > > > You could chainload barebox from U-Boot and see what the CPLL rate is
> > > > > then.
> > > > >
> > > > > Sascha


