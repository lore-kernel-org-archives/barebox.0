Delivery-date: Tue, 06 Jan 2026 08:12:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1Ea-001o9C-2R
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:12:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1Ea-0002sF-37
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:12:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CH6fdUN3y/CfbRqGUCT4LNrCpK22nz9IcDtmGBJtycw=; b=HixkpmyuoqtvLvQFXeSPYHr247
	xWZklFrQzH08hnFXfOsdNfxDyYoQryYEIYN0ggi0bXmlTXaL9mAqwSzE75VWz8wgR+6Ld6VtVgRdX
	n06fY2LebvLHa344/aonzY2VwfeurvPFHQfb4bqZByLQWM2b9+Pnc2SjUIyqnOmIHezz/aD6gi6RG
	AI/d4lbUOWoxcdI0wlBQVgpVKbluiCdnjyxxEGGHlG3sOY1ttXC7vDplqpZnwby0WfUSHm4wOyujA
	o/slTHWhYLZ0xB1QABtojAxfqKvs/oiCYZcV33Z2GnWSFYlmiAfrsAbXkQFDx5u9pllYf/Z9u9m8Q
	mSdezvyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1Du-0000000CUwC-0kZP;
	Tue, 06 Jan 2026 07:11:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1Dq-0000000CUuo-42oi
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:11:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vd1Do-0002hX-Rv; Tue, 06 Jan 2026 08:11:16 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vd1Do-009JBS-2C;
	Tue, 06 Jan 2026 08:11:16 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vd1Do-00EFzg-1m;
	Tue, 06 Jan 2026 08:11:16 +0100
Date: Tue, 6 Jan 2026 08:11:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aVy1lFT-kNasbH3h@pengutronix.de>
References: <aVvF7LW9-lAvPTuZ@pengutronix.de>
 <7bf80d43-af4b-4cfa-b341-615a519ad55d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7bf80d43-af4b-4cfa-b341-615a519ad55d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_231119_003058_9AAAAE8D 
X-CRM114-Status: GOOD (  31.07  )
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
Subject: Re: barebox-bringup utility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 05, 2026 at 03:40:55PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 1/5/26 3:08 PM, Sascha Hauer wrote:
> > Hi,
> > 
> > Claude Code struggles to to bring up barebox properly with
> > labgrid-pytest and running barebox on real hardware with the barebox
> > integrated pytest infrastructure is also not easy as there are several
> > assumptions about QEMU in it.
> 
> We have a container to address this.
> 
> > I thought letting Claude write a small
> > python tool to start barebox in QEMU. It turned out to be useful for
> > interactive usage as well, so here it is:
> > 
> > https://github.com/saschahauer/barebox-bringup
> > 
> > It makes starting barebox as easy as:
> > 
> > barebox-bringup -c ~/test/arm/imx6s-riotboard.yaml
> > barebox-bringup -c test/arm/virt@multi_v7_defconfig.yaml
> 
> Does
> 
> ./scripts/container.sh pytest --interactive \
> 	--lg-env test/arm/virt@multi_v8_defconfig.yaml
> 
> not work for you?

No, I don't have podman installed.

However, labgrid-pytest --lg-env test/arm/virt@multi_v8_defconfig.yaml
--interactive works

> > It will open a console which captures the barebox output from the start.
> > The tool has options to capture to a log file
> 
> This can be achieved with --lg-log when using pytest.

With --lg-log a logfile is created, but it's empty.
With output redirection to a file I get pytest output, but not the console.
Maybe that's different when using ./scripts/container.sh instead of
labgrid-pytest.

> 
> > and to accept input from a
> > fifo.
> 
> Untested, but should be possible with mkfifo and redirection?

Likely, yes.

> 
> > At least with real hardware the closest I could get was:
> > 
> > labgrid-client -c ~/test/arm/imx6s-riotboard.yaml -s barebox console
> 
> By the way, I think we should start adding YAMLs for real hardware as
> well into the repository.

How do we accomplish this? The YAML files contain many site specific
details, like RemotePlace name, coordinator_address, which PowerDriver,
wether to use a USB loader, SD-MUX or JTAG for bringup. There's not much
left that is generic.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


