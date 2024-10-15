Delivery-date: Tue, 15 Oct 2024 09:17:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bnh-004ZZd-0o
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 09:17:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0bng-0002z8-Jk
	for lore@pengutronix.de; Tue, 15 Oct 2024 09:17:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N9JNACWFHehuL78S/sP3G6tisozzLl0+61h3dHtJDkU=; b=slEdZXQncd5bSgIOqK8asmeCFI
	k+u9dBaOKny6bFNWHMezvx4+4o4ujJBR2x75kg2FGpYRltbw+E3cL20Pz/tD7hkYuyHDetWltFaBS
	tsRPC8nzF/J35nyvuZfhn503Cz3VQQOL3c5P/SXpL5+eBVnE8rz/wlAylVN64xayJbOkQPxUg6Rkd
	/Rzm7ptwoVOGQtgZYcs5ZDn8jEEg8BOYiCvUAfQtKklZSoLovd6YLF9tNIQrXmUYXCItv63pHQ3tL
	WEPcMXo2w2a/riDte5kIMzWiu5nl5rzXmkAFmmlQHkh3CPvAoEfwHwNMJ21s7g08RhuXvVGJOhLgp
	oEA4qqkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bn4-00000007Jxd-0d9s;
	Tue, 15 Oct 2024 07:16:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0bn1-00000007Jwo-0KWi
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 07:16:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t0bmz-0002vL-IN; Tue, 15 Oct 2024 09:16:17 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1t0bmz-001yXc-5t; Tue, 15 Oct 2024 09:16:17 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t0bmz-00Calu-0J;
	Tue, 15 Oct 2024 09:16:17 +0200
Date: Tue, 15 Oct 2024 09:16:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <Zw4Wwc6OfcLs3Qt4@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
 <172897622912.1432196.9754934695481714584.b4-ty@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <172897622912.1432196.9754934695481714584.b4-ty@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_001619_157703_8493E860 
X-CRM114-Status: GOOD (  19.11  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/12] include: common.h: make it include only headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 15, 2024 at 09:10:29AM +0200, Sascha Hauer wrote:
> 
> On Mon, 14 Oct 2024 13:50:28 +0200, Ahmad Fatoum wrote:
> > Symbols exclusively defined in common.h are a problem, because other
> > headers that require them will need to include a lot of extra baggage,
> > which in the worst case can lead to cyclic dependencies and in every
> > case leads to longer compile times.
> > 
> > This series prepare for removing common.h in other headers by moving
> > everything it contains apart from #includes into more fitting existing
> > headers that are already being included.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [01/12] include: common.h: move barebox startup functions into separate header
>         https://git.pengutronix.de/cgit/barebox/commit/?id=e723ea2ed886 (link may not be stable)
> [02/12] include: common.h: move ctrlc() functions into stdio.h
>         https://git.pengutronix.de/cgit/barebox/commit/?id=0421e3c77def (link may not be stable)
> [03/12] include: common.h: move out integer string parsing functions
>         https://git.pengutronix.de/cgit/barebox/commit/?id=af51386c2627 (link may not be stable)
> [04/12] include: common.h: move out endianness macro sanity check
>         https://git.pengutronix.de/cgit/barebox/commit/?id=2a8222c22c2d (link may not be stable)
> [05/12] include: common.h: move out user interface functions into stdio.h
>         https://git.pengutronix.de/cgit/barebox/commit/?id=b3c618880ed5 (link may not be stable)
> [06/12] include: common.h: move out memory option parsing prototypes
>         https://git.pengutronix.de/cgit/barebox/commit/?id=7fa8ca6a4094 (link may not be stable)
> [07/12] include: common.h: move out RW_BUF_SIZE definition
>         https://git.pengutronix.de/cgit/barebox/commit/?id=1b33d75d4b07 (link may not be stable)
> [08/12] commands: add macro to simplify defining one shot commands
>         (no commit info)
> [09/12] commands: reginfo: make command mpc5xxx-specific
>         (no commit info)
> [10/12] include: common.h: move out get_ram_size
>         (no commit info)
> [11/12] include: align: reword STACK_ALIGN_ARRAY macro parameter for clarity
>         (no commit info)
> [12/12] ARM: bcm283x: remove common.h include in mbox.h
>         (no commit info)

Hm, I assumed b4 ty would automatically send a "partly applied" message.
I've seen this with others using b4 ty apparently. I don't know what
went wrong here.

In fact I applied patches 1-7.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


