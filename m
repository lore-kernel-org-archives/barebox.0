Delivery-date: Mon, 05 Jan 2026 17:48:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcnkp-001aOo-2U
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 17:48:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcnkp-0007Wk-5Q
	for lore@pengutronix.de; Mon, 05 Jan 2026 17:48:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v1pNiN1tlKBzFUFOcYvxo0AmzFfuqjskTLJLaouJou8=; b=TZS7xZuatTDXFYCf9C6a01tYCB
	1I7sK9hFiJZis6tO1Gk74KwJ5nvMZ2It66p84Q4oXtB+8B3cveZ4ckJveheSG8tjc9Smu984BRwW/
	40eiYRWtDZ+Wo9ZbU7katxdWnNu9PZbbgiuv7AQwiVrVfK0U2iGH7Kdar9kVfdHTTI6RcFl/imf+A
	RJ83oGhwdI5ogkBh8Cv+8pQ0tQZokZK+6huyxh99agaUBAueW53xUGCgmqEbaluxm+V8klVubH/Xw
	rBkTkWSO4BjJLxj8KgWvqzmq3NsDpDlpbAYOcfOxc8Qh7EuzIt9FehuovmTMUq9xRU/2KEAiFGwSu
	/7AiCnYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcnkH-0000000Bl8L-2wts;
	Mon, 05 Jan 2026 16:47:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcnkE-0000000Bl6g-2nTW
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 16:47:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vcnkC-0007Im-Ni; Mon, 05 Jan 2026 17:47:48 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vcnkC-009CyX-1T;
	Mon, 05 Jan 2026 17:47:48 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vcnkC-00CXj4-14;
	Mon, 05 Jan 2026 17:47:48 +0100
Date: Mon, 5 Jan 2026 17:47:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Message-ID: <aVvrNMgMrgCaPCiU@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <75be7502-faa6-4528-b438-feb58ba16ab7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <75be7502-faa6-4528-b438-feb58ba16ab7@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_084750_748082_CCFBFD02 
X-CRM114-Status: GOOD (  26.09  )
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
Subject: Re: [PATCH 00/19] PBL: Add PBL ELF loading support with dynamic
 relocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 05, 2026 at 03:08:03PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 1/5/26 12:26 PM, Sascha Hauer wrote:
> > Until now we linked the raw barebox proper binary into the PBL which
> > comes with a number of disadvantages. We rely on self-modifying code
> > to in barebox proper (relocate_to_current_adr()) and have no initialized
> > bss segment (setup_c()). Also we can only mark the .text and .rodata as
> > readonly during runtime of barebox proper.
> > 
> > This series overcomes this by linking a ELF image into the PBL. This
> > image is properly layed out, linked and initialized in the PBL. With
> > this barebox proper has a proper C environment and text/rodata
> > protection from the start.
> > 
> > As a bonus this series also adds initial MMU support for RISCV, also
> > based on loading the ELF image and configuring the MMU from the PBL.
> > 
> > This series also marks my start into AI assisted programming as you can
> > see in the Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
> > and 🤖 Generated with [Claude Code](https://claude.com/claude-code)
> > tags. Without it I wouldn't have started this series during my xmas
> > break, but with it it was actually quite fun to do; it felt like having
> > a programming team which I just had to delegate new tasks to while
> > having fun with my family myself ;)
> 
> Did you do size comparisons to determine how much this series affects
> binary size? I found that compressing every segment separately resulted
> in a smaller binary size even after addition of ELF parsing to PBL, but
> I used a purpose-built ELF loader unlike to what you did here.

I did now.

ARM64 barebox-dt-2nd.img raw:  1246506
ARM64 barebox-dt-2nd.img ELF:  1248892 (+ 2386 bytes)
ARM32 barebox-dt-2nd.img raw:  1217036
ARM32 barebox-dt-2nd.img ELF:  1219159 (+ 2123 bytes)

With --strip-section-headers instead of --strip-debug --strip-unneeded
the last image goes down to 1217940 bytes, so only 904 bytes size
increase.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


