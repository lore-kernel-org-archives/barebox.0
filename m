Delivery-date: Tue, 28 Oct 2025 11:47:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDhEV-00Cerf-2t
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 11:47:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDhEU-0006GD-P2
	for lore@pengutronix.de; Tue, 28 Oct 2025 11:47:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AW9s/IAdTJDnrPK/9TNGZ9D3WVe/WxjaabcIDuW0ygU=; b=j1QalaZISx1Ckh+oxflJ5Zhjid
	MysHaM8GZ7J9OyoIrqkxxazsVMdSrhPCOc2RaBRaBlCUQd+wgTnEWM5kUFAuWP9HpsEqz8C2neWzA
	Z4yi2zzERlpqtYE1R+OTTeJUUwLt2xGBfSRoaYFZb8leQj3F/5TB1SjyyXb3rGRPr5qxbVAX47vWP
	/ifSKWTJaJQ/Fbbr5H3aDl7nZrLth9eKyxaV/iUnw+2pE8EJhBWgzN1kWwDV0wgxCxhhEqUUkjTS8
	2qKt53QB8lVGr5YObYQ/Oh6bBNt847CKbUqo5ya1JdIjQZgH6nAB2PRHvBHEqaxZNmhMfZw7x6CwJ
	vi8B/Z7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDhE3-0000000FmwJ-0uIm;
	Tue, 28 Oct 2025 10:46:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDhE0-0000000Fmv8-0M8Z
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 10:46:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vDhDx-00068h-19; Tue, 28 Oct 2025 11:46:45 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDhDw-005rMH-2D;
	Tue, 28 Oct 2025 11:46:44 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDhDw-0052Wd-1r;
	Tue, 28 Oct 2025 11:46:44 +0100
Date: Tue, 28 Oct 2025 11:46:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org,
	Alexander Shiyan <eagle.alexander923@gmail.com>,
	Michael Tretter <m.tretter@pengutronix.de>
Message-ID: <aQCfFOfYug9S7Hd-@pengutronix.de>
References: <20251027192938.2586566-1-a.fatoum@barebox.org>
 <20251027192938.2586566-5-a.fatoum@barebox.org>
 <aQCFYqNbaavn3pYU@pengutronix.de>
 <10308082-4d36-488f-b87c-9357e0e7125d@pengutronix.de>
 <aQCRW2k8IkHPTW_-@pengutronix.de>
 <482391c4-ff05-4af3-b3ee-41977923b689@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <482391c4-ff05-4af3-b3ee-41977923b689@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_034648_132907_39B2A0AC 
X-CRM114-Status: GOOD (  24.26  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 5/5] pmdomain: add Rockchip power domain support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 28, 2025 at 11:41:47AM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 10/28/25 10:48 AM, Sascha Hauer wrote:
> > On Tue, Oct 28, 2025 at 10:04:06AM +0100, Ahmad Fatoum wrote:
> >>
> >>
> >> On 10/28/25 9:57 AM, Sascha Hauer wrote:
> >>> On Mon, Oct 27, 2025 at 08:28:20PM +0100, Ahmad Fatoum wrote:
> >>>> +static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
> >>>> +				     struct device_node *parent)
> >>>> +{
> >>>> +	struct device_node *np;
> >>>> +
> >>>> +	for_each_child_of_node(parent, np)
> >>>> +		return -ENOSYS;
> >>>> +
> >>>
> >>> I gave it a quick try on RK3588 and driver probe fails here. RK3588 has
> >>> several subdomains in its power controller.
> >>
> >> I need it on rk3566 though, otherwise the probe hangs. Should I drop the
> >> rk358x compatibles?
> > 
> > That leaves us with the warnings introduced with the last patch:
> > 
> > WARNING: dwc3 fc000000.usb@fc000000.of: power domain not found (ignoring)
> > WARNING: rockchip-dw-pcie a40c00000.pcie@fe180000.of: power domain not found (ignoring)
> > WARNING: rockchip-dw-pcie a41000000.pcie@fe190000.of: power domain not found (ignoring)
> > WARNING: dw_mmc fe2c0000.mmc@fe2c0000.of: power domain not found (ignoring)
> > WARNING: dwc3 fc400000.usb@fc400000.of: power domain not found (ignoring)
> > WARNING: rockchip-dw-pcie a40400000.pcie@fe160000.of: power domain not found (ignoring)
> 
> Is PCIe working right now?

Not this particular port which still has a missing phy, but generally
yes. The Rock5t has ethernet connected to PCIe.

> 
> > Maybe add a dummy driver where people can add their compatible to when
> > they encounter the warning knowing that their SoC doesn't need a power
> > domain driver?
> 
> Are you sure the power domains are indeed unneeded?

No, I am not, but currently it seems all power domains we need are
turned on.

If it's more convenient for you you could of course still add power
domain support for RK3588 ;)

Having a dummy driver might turn out useful for other SoCs, I am not
sure how many SoCs we have which lack a power domain driver, but have
power domains in specified in the device tree.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


