Delivery-date: Mon, 14 Apr 2025 17:25:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4LgQ-000gqY-1F
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 17:25:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4LgP-0001dI-PD
	for lore@pengutronix.de; Mon, 14 Apr 2025 17:25:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tVDDzdxPnrxM3VVf2V7VyBrNBYmyGun1AKui1eRYiAg=; b=RY8gk4BxJ0k0y8+FHwrY15Rbvm
	hXExuh3v04MjDsAMTTyBZWKXf1o/9nXUbYvatELNNVZ5yESbBK9T6sNOxrfb7LnoGfmooRcWKDYVc
	+hHPb/49ggZYFPjwLfoG/VS86zbZCI0byaLKBE3Q8B6/3dMAhY9fPmg/q4OdYNDRuFvfD7ksybFVY
	LlWSkOOohpE/4b7DF6+JjAGCM62nuuCFpMXfNrF96otLPVNyZ8tmG4tEAXxDFvuhaIgJ12bsierCH
	ssNi6LJC6qf/5dgXLWCuLA1jjLLgLBi9diog4VhlMLqs8jK49ESUkjyaBP8FkHMa1qbuOI7NlFOJA
	kGxNm6lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Lfy-00000002cC9-0obl;
	Mon, 14 Apr 2025 15:24:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LNt-00000002Y74-3kTn
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 15:06:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u4LNs-00036x-DL; Mon, 14 Apr 2025 17:06:04 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4LNs-000Gvt-0k;
	Mon, 14 Apr 2025 17:06:04 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4LNs-000L3Q-0O;
	Mon, 14 Apr 2025 17:06:04 +0200
Date: Mon, 14 Apr 2025 17:06:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z_0kXHVDRZpqJ64q@pengutronix.de>
References: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
 <20250411074045.2019372-5-a.fatoum@pengutronix.de>
 <Z_0glf7ptAh3RtAF@pengutronix.de>
 <f6fbe760-c64a-4d73-b820-fda3f5c69e43@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f6fbe760-c64a-4d73-b820-fda3f5c69e43@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_080605_931028_9FA249D1 
X-CRM114-Status: GOOD (  25.97  )
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
Subject: Re: [PATCH 04/10] common: add barebox TLV support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Apr 14, 2025 at 04:57:35PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 4/14/25 16:49, Sascha Hauer wrote:
> > On Fri, Apr 11, 2025 at 09:40:39AM +0200, Ahmad Fatoum wrote:
> >> barebox TLV is a scheme for storing factory data on non-volatile
> >> storage. Unlike state, it's meant to be read-only and if content
> >> is limited to already specified tags, it can be extended later on,
> >> without modifying the bootloader binary.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >> +struct tlv_mapping barebox_tlv_v1_mappings[] = {
> >> +	{ 0x0002, tlv_format_str, "device-hardware-release" },
> >> +	{ 0x0003, tlv_format_dec, "factory-timestamp" },
> > 
> > The numbers in the examples suggest that the format is in epoch time,
> > but shouldn't this be documented?
> 
> Good point. Yes, it's seconds since the UNIX epoch.
> Will document it for v2.
> 
> >> +	{ 0x0004, tlv_handle_serial, "device-serial-number"},
> >> +	{ 0x0005, tlv_format_dec, "modification" },
> >> +	{ 0x0006, tlv_format_str, "featureset" },
> > 
> > I think things like "device-hardware-release", "modification" and "featureset"
> > need (better) documentation, at least when they are supposed to be generic.
> 
> In the end the revision scheme and the concrete interpretation of bits
> depends on the project, but I can add some generic documentation inline,
> e.g.:
> 
> device-hardware-release: Detailed release information string for the device
> 
> modification: 0: Device is unmodified. Any set bits indicate a
> board-specific modification after assembly

Ok, the schema file describes this as a boolean.

> 
> featureset: Any set bits indicate enablement of board-specific features

This is interpreted as a string with the example in test/self/tlv.dts
being "base,PoE"

... Just to emphasize we should document this :)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


