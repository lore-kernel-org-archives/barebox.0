Delivery-date: Wed, 21 Jan 2026 10:16:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viUKa-003i7k-0Y
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 10:16:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viUKZ-0000vM-3J
	for lore@pengutronix.de; Wed, 21 Jan 2026 10:16:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NtcjqBJFmI8JMTstRne8gWSj4sJU1UUl2X8TCwyD5kU=; b=G9kU8g693BDTz8fX6KFoxlO+U2
	pBLpJPH4beQLycI0ooR76oUxfU7HMr5jTqIpTh/aHvuNFGxoO4B4e8wLkErVnB928Xu8ZtC1O+S62
	txDVCADaQofFkXAiahylxevicPHVjEK/VcUOyTxp2YDC7DOvfeGfbEsfyEQtpgxwdnhRPdXTpkgyN
	V/wjRlsAqg2BQ8mtcRTOxwFOhITOdk1vPdfy2n1WQAXmtvIoUIfxvsoi5KK1SDgnepH4catzhq6Si
	slvgzV6bnVoK6lbTVF25dZuDCqjrhCQrCnENnYz3VrzFDc/KKd6toYCZ8oluRexesyqKHaly+mikl
	PKJqvt5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viUK8-00000005AWb-3TQM;
	Wed, 21 Jan 2026 09:16:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viUK6-00000005AWE-3P82
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 09:16:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1viUK5-0000nx-4l; Wed, 21 Jan 2026 10:16:21 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1viUK5-001j6f-21;
	Wed, 21 Jan 2026 10:16:20 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1viUK4-0074ys-2k;
	Wed, 21 Jan 2026 10:16:20 +0100
Date: Wed, 21 Jan 2026 10:16:20 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20260121091620.ihi23jg65xbjoupt@pengutronix.de>
References: <20260120181333.3375979-1-a.fatoum@pengutronix.de>
 <20260120181333.3375979-2-a.fatoum@pengutronix.de>
 <20260121000711.dyjo4pd56c6frd4x@pengutronix.de>
 <c31a90f3-7a3a-4f30-80c8-64bfbf0bd641@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c31a90f3-7a3a-4f30-80c8-64bfbf0bd641@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_011622_853264_AFDF363E 
X-CRM114-Status: GOOD (  36.76  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] arm: dts: rk356x: rock3a: disable pcie3x2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-01-21, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 1/21/26 01:07, Marco Felsch wrote:
> > Hi Ahmad,
> > 
> > On 26-01-20, Ahmad Fatoum wrote:
> >> The board hangs occasionally on PCI probe after:
> >>
> >>   phy7: lane number 0, val 1
> >>
> >> On other boots, it continues to:
> >>
> >>   rockchip-dw-pcie 3c0800000.pcie@fe280000.of: Phy link never came up
> >>
> >> In both cases, the hang affects the second PCIe host controller
> >> to probe and the first probe never hangs:
> >>
> >>   rockchip-dw-pcie 3c0000000.pcie@fe260000.of: Phy link never came up
> >>
> >> This hang happens on the very first read access to the PCI controller
> >> at register PCIE_ATU_VIEWPORT. Reading Linux code, the first access
> >> seems to be to PCIE_VERSION_NUMBER (0x8F8), but accessing that in
> >> barebox equally hangs from time to time.
> >>
> >> My board doesn't have any PCIe devices connected and this hang
> >> doesn't happen in Linux and doesn't happen on the QNAP
> >> TS433-eU, which is also RK3568, but actually has PCIe devices, which are
> >> probed normally.
> >>
> >> Disable the device in barebox, so the board is usable with
> >> rockchip_v8_defconfig, which enables the PCI driver.
> >> barebox,status is used, so the Linux device tree is not affected.
> > 
> > The barebox internal device-tree is passed to Linux? Else we just can
> > make use of the "normal" status field since it would be not propagated
> > to Linux as well.
> 
> With barebox as EFI loader, we always install the barebox DT in a configuration
> table and leaves it to grub or whatever to decide whether it wants to use it or
> if it wants to use another DT it finds itself.

Ah, thanks for the explanation :) this wasn't clear to me. Maybe it's
worth a comment when to use this within the barebox,status description.

That beeing said, is it worth tying to make it barebox unspecific and
try to upstream the binding. I had something like bootloader,status or
bl33,status in my mind.

> The support for the Android fastboot's protocol boot command also doesn't pass
> a DT and expects the bootloader to pass its.

Good to know :)

Thanks,
  Marco

> 
> Cheers,
> Ahmad
> > 
> > Regards,
> >   Marco
> > 
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  arch/arm/dts/rk3568-rock-3a.dts | 4 ++++
> >>  1 file changed, 4 insertions(+)
> >>
> >> diff --git a/arch/arm/dts/rk3568-rock-3a.dts b/arch/arm/dts/rk3568-rock-3a.dts
> >> index bcbfab14a580..b7258d7e61b3 100644
> >> --- a/arch/arm/dts/rk3568-rock-3a.dts
> >> +++ b/arch/arm/dts/rk3568-rock-3a.dts
> >> @@ -55,3 +55,7 @@ environment_sd: partition@408000 {
> >>  		};
> >>  	};
> >>  };
> >> +
> >> +&pcie3x2 {
> >> +	barebox,status = "disabled";
> >> +};
> >> -- 
> >> 2.47.3
> >>
> >>
> >>
> > 
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


