Delivery-date: Mon, 26 May 2025 09:26:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJSDw-000Rut-1E
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 09:26:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJSDv-0003wl-SP
	for lore@pengutronix.de; Mon, 26 May 2025 09:26:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oQmKqpFPKEaW3Z2ol6Uh3QU/STvteQxSkDazEeyzUyY=; b=kGctLaxHp6ojFwIcKBq9ttDvNr
	3VkWuhWg+IoUWggSO7vYpqAMwuwcT8cWZgEnD5eLTE+avMaEA6K/NBn2KoyGtOYxY7PYo/qB6PzHC
	seKStn06WV34O3KWpxC3PVJrlt5fwZU6j6KEZahkPkTD2qrZEf3LLRjcK9KwoywCINiONowEpQGBb
	GhcooZwEewwWSlwPt91lBQ1n6Xs9TNiGiOdzNZoEr82OMLTb9SMaK/vsqfWSgVS/AJkcZsmCzAImp
	0ebFhS+8mVkck2qIHzULofA6Hss9PgBzJ3u7fQlZz2XOMCAaAKxA6jdC9RQk442rZY3dyqCPFObZe
	oqqGRdIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJSDC-00000008H4d-42V3;
	Mon, 26 May 2025 07:25:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJSBY-00000008GzH-1Asl
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 07:23:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJSBU-0003OZ-VO; Mon, 26 May 2025 09:23:44 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJSBU-000D6N-2G;
	Mon, 26 May 2025 09:23:44 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJSBU-00AS07-1s;
	Mon, 26 May 2025 09:23:44 +0200
Date: Mon, 26 May 2025 09:23:44 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Johannes Roith <johannes@gnu-linux.rocks>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <aDQXAEr1fl0wgV4k@pengutronix.de>
References: <DB7PR02MB43321CDF6386A16A725DC131ABF40@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <845b2228ae93d93e331556bb983f19cf67a025b8.camel@pengutronix.de>
 <DB7PR02MB4332F692229D1F189B11EC49ABF00@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <aCeMAO9MFhGJBStt@Precision-T3610>
 <9babe122-45a3-4843-a2bb-178979164339@pengutronix.de>
 <aCoTbGjxgymNPSQF@Precision-T3610>
 <933c22ee-bafe-4736-80bc-0674d7782124@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <933c22ee-bafe-4736-80bc-0674d7782124@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_002348_335681_583614CB 
X-CRM114-Status: GOOD (  13.78  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Barebox for Zedboard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, 19 May 2025 06:55:52 +0200, Ahmad Fatoum wrote:
> On 18.05.25 19:06, Johannes Roith wrote:
> > Am Fri, May 16, 2025 at 09:28:03PM +0200 schrieb Ahmad Fatoum:
> >> Loading OF overlays can already load firmware that way.
> > 
> > Could you give me an example for an OF overlay to load a firmware?
> 
> Should look the same as in Linux (with overlay patches applied).
> 
> Michael, do you happen to have an example to share?

The overlay looks the same as in Linux and documented in
fpga-region.yaml.

For example, if your device tree contains a node with a fpga-region for
the fpga named fpga_full and the fpga-mgr property has a phandle to the
node of the FPGA Manager, the following overlay should instruct the FPGA
Manager to load the bitstream.bit firmware into the FPGA.

	/dts-v1/;
	/plugin/;
	&fpga_full {
		firmware-name = "bitstream.bin";
	};

In the overlay you should also describe the gateware implemented in the
bitstream. This allows Linux to detect what's actually implemented in
the bitstream and probe the proper drivers.

Michael


