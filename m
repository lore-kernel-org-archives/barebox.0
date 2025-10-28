Delivery-date: Tue, 28 Oct 2025 10:48:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDgJp-00CdxV-0m
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 10:48:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDgJo-0006Zh-Me
	for lore@pengutronix.de; Tue, 28 Oct 2025 10:48:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TZcyaT88knIgW3qyIbIyLhgKZp9wWdyVHZJl5+uJ7qs=; b=AWKBzoSlKcWB/cjM7GblrBZscA
	b+GUlYR9Y01m7HOMZbkJXZAidbkvWKxx/1fYKV/Z9dqiXS9c6PwulF1CLWzbfa64rLA3/ekOQ0pad
	qXPr/1OsL4Fs5jxOiDQvfn39lyEu1eZ6Voq0U2up6APC+ItdAHbTak9MIkRkQruOfRIKQHepHrkqO
	hUfwOnNlFCKFrvVD5sq8Df6jAY5CNmqI75U3U0kSwPt7GWKZP+FZGR+xZc9zIRebHlPjslrF/ImH0
	TC0wPWlSd1ay1a+9SOV2OxzFp6BUY0gS8xmCchWn0n8evkfEipRvfv9gPJPLbOmS6DhEAQaVD3sez
	n9sPM1kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDgJM-0000000FfLw-0w6S;
	Tue, 28 Oct 2025 09:48:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDgJK-0000000FfLY-0LZO
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 09:48:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vDgJH-0006Ta-Vt; Tue, 28 Oct 2025 10:48:12 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDgJH-005qvz-2a;
	Tue, 28 Oct 2025 10:48:11 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDgJH-005199-2C;
	Tue, 28 Oct 2025 10:48:11 +0100
Date: Tue, 28 Oct 2025 10:48:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
Message-ID: <aQCRW2k8IkHPTW_-@pengutronix.de>
References: <20251027192938.2586566-1-a.fatoum@barebox.org>
 <20251027192938.2586566-5-a.fatoum@barebox.org>
 <aQCFYqNbaavn3pYU@pengutronix.de>
 <10308082-4d36-488f-b87c-9357e0e7125d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10308082-4d36-488f-b87c-9357e0e7125d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_024814_123644_5DF4154D 
X-CRM114-Status: GOOD (  17.51  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 5/5] pmdomain: add Rockchip power domain support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 28, 2025 at 10:04:06AM +0100, Ahmad Fatoum wrote:
> 
> 
> On 10/28/25 9:57 AM, Sascha Hauer wrote:
> > On Mon, Oct 27, 2025 at 08:28:20PM +0100, Ahmad Fatoum wrote:
> >> +static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
> >> +				     struct device_node *parent)
> >> +{
> >> +	struct device_node *np;
> >> +
> >> +	for_each_child_of_node(parent, np)
> >> +		return -ENOSYS;
> >> +
> > 
> > I gave it a quick try on RK3588 and driver probe fails here. RK3588 has
> > several subdomains in its power controller.
> 
> I need it on rk3566 though, otherwise the probe hangs. Should I drop the
> rk358x compatibles?

That leaves us with the warnings introduced with the last patch:

WARNING: dwc3 fc000000.usb@fc000000.of: power domain not found (ignoring)
WARNING: rockchip-dw-pcie a40c00000.pcie@fe180000.of: power domain not found (ignoring)
WARNING: rockchip-dw-pcie a41000000.pcie@fe190000.of: power domain not found (ignoring)
WARNING: dw_mmc fe2c0000.mmc@fe2c0000.of: power domain not found (ignoring)
WARNING: dwc3 fc400000.usb@fc400000.of: power domain not found (ignoring)
WARNING: rockchip-dw-pcie a40400000.pcie@fe160000.of: power domain not found (ignoring)

Maybe add a dummy driver where people can add their compatible to when
they encounter the warning knowing that their SoC doesn't need a power
domain driver?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


