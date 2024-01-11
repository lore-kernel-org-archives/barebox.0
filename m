Delivery-date: Thu, 11 Jan 2024 08:11:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNpE4-00Ce1O-3C
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 08:11:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNpE4-00056o-Cf
	for lore@pengutronix.de; Thu, 11 Jan 2024 08:11:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=THULfDN+5MqN3q+T2VyljTAj+VqiYMBdV6EAA5vSwn0=; b=UkimI0lVOfNw+WnkfjW5O4DEKM
	PbjMy3JkXC084UJfgq0ZHktTAfrRP++oOeegvFdFF/42j1X8oeq55KnOdUuzbyQdlMm1AcVn3veSl
	7pH0saaPbvDfHgsVXxV1yf8AJcp+Tc+zUAm7HLeKHWc/vQek+FLtfknc2PhtEm0mPH+78yN+HohUV
	BzWRe56MqT5o+T8dnXTC7Q70uVOz8Q0yP6lmvEPOZxG0e4tSHmqHVpMCXlHTxwmCILwgoGYp8okTr
	cl+ydjMv7Hpv9HT/FYsUfu25tkVUD6RaRTkrs75RZb6tH/jxD8OeURO7OG+qx76JoYiF+JM0GQ90S
	SN4izZtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNpD3-00GEF0-0B;
	Thu, 11 Jan 2024 07:10:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNpD0-00GEEO-0N
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 07:10:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNpCy-0004x7-Ne; Thu, 11 Jan 2024 08:10:32 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNpCy-001sHI-B2; Thu, 11 Jan 2024 08:10:32 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNpCy-00BKVN-8L; Thu, 11 Jan 2024 08:10:32 +0100
Date: Thu, 11 Jan 2024 08:10:32 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240111071032.GT1318922@pengutronix.de>
References: <20240110143958.3773360-1-a.fatoum@pengutronix.de>
 <20240110151806.GS1318922@pengutronix.de>
 <4989ac29-de40-4e29-8402-fb707fd9f8d4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4989ac29-de40-4e29-8402-fb707fd9f8d4@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_231034_152458_E8AFA1F7 
X-CRM114-Status: GOOD (  25.95  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFC] bootm: support printing bootm parameters determined
 at runtime to file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 10, 2024 at 04:26:11PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 10.01.24 16:18, Sascha Hauer wrote:
> > On Wed, Jan 10, 2024 at 03:39:58PM +0100, Ahmad Fatoum wrote:
> >> The barebox bootm command is often not called directly, but via
> >> bootloader spec or FIT image boot handlers. For debugging, it can be
> >> useful to reuse those boot handlers, but replace single artifacts, e.g.
> >> using the barebox device tree instead of the bootloader-spec provided
> >> device tree.
> >>
> >> To make this easier, have boot -v -d (verbose + dry run) write a boot
> >> script that reproduces the cancelled boot to /env/boot/cancelled.
> > 
> > I like the idea very much. I also had this problem more than once.
> > 
> > I think an explicit option rather than "-v -d" would be better. With
> > this there would be a natural way to document this behaviour in the
> > boot help output.
> > 
> > /env/boot/cancelled would be saved in the environment with a saveenv
> > which is likely not desirable. Maybe better put it somewhere in /tmp/?
> 
> Or have the new option take an argument, which would be the path to save
> the file to?

We could make that argument optional, then we could still fall back to a
default when no path is given.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


