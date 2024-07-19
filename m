Delivery-date: Fri, 19 Jul 2024 08:32:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUh9z-000kic-1I
	for lore@lore.pengutronix.de;
	Fri, 19 Jul 2024 08:32:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUh9y-000767-PS
	for lore@pengutronix.de; Fri, 19 Jul 2024 08:32:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Npq7TOzUp44OBtTVxDRGvF2F4UQ6EBiCBqN3NMN0dRY=; b=KphRiN1YTMGtTwBjxdm1ZzkmLh
	wAAlFz08r5PF7NCTsHg2ihmWn2qq4dMqBbwgayGNnJG35echCU4FWCUW3lvaNeG+dBJKOkOsBxd/f
	6p/YIL2hIdDYl5gFav5ybuXdF0aoAcS5hWnrzvUONshU0P0bO1rIRz/UXm9YkTcCCK5hmf5zoC3lP
	xpGMPDDG2Ghl6n8lPraAYuaCHf5TwDcnY90aiaOL/52xc/QIWsQig9OIBXEHfFFLYuhh+b4katR1c
	mSQ6dGZbFmuZ2sBqaRlr4V0jITygteBblsKyf8tUGMg+SZqF+c54WEhpMq4iZy6Ti8JLD3Y5Bik+w
	tW6L7v1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUh9W-00000001ofU-1ZXv;
	Fri, 19 Jul 2024 06:31:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUh9J-00000001oeW-3399
	for barebox@lists.infradead.org;
	Fri, 19 Jul 2024 06:31:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUh9I-00073B-4Q; Fri, 19 Jul 2024 08:31:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUh9H-000cdG-Ne; Fri, 19 Jul 2024 08:31:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUh9H-002QUh-28;
	Fri, 19 Jul 2024 08:31:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240716115834.1958413-1-a.fatoum@pengutronix.de>
References: <20240716115834.1958413-1-a.fatoum@pengutronix.de>
Message-Id: <172137068365.578448.13451617283942459194.b4-ty@pengutronix.de>
Date: Fri, 19 Jul 2024 08:31:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_233125_801716_24F19E58 
X-CRM114-Status: GOOD (  10.58  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/8] include: list: remove dependency on linux/kernel.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Jul 2024 13:58:26 +0200, Ahmad Fatoum wrote:
> <linux/kernel.h> defines a lot of things that go beyond what's needed for
> <linux/list.h>. The only thing actually needed for the list
> implementation is <linux/container_of.h>, so we should just include that
> directly.
> 
> This is also what Linux has been doing for a while, but it breaks the
> build of a number of source files, which are addressed in this series.
> 
> [...]

Applied, thanks!

[1/8] regmap-mmio: don't call kfree on non kmalloc allocated buffers
      https://git.pengutronix.de/cgit/barebox/commit/?id=47b17710a6d6 (link may not be stable)
[2/8] treewide: fix dependency on indirectly included linux/kernel.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=460a23bb44ab (link may not be stable)
[3/8] stringlist: make header self-contained
      https://git.pengutronix.de/cgit/barebox/commit/?id=517a4fae1139 (link may not be stable)
[4/8] module: retire MODULE_SYMBOL_PREFIX
      https://git.pengutronix.de/cgit/barebox/commit/?id=fb39544f95ee (link may not be stable)
[5/8] include: move MODULE_* macro definitions into own header
      https://git.pengutronix.de/cgit/barebox/commit/?id=2ad332d6eaf4 (link may not be stable)
[6/8] include: asm-generic/bug: break recursive dependency
      https://git.pengutronix.de/cgit/barebox/commit/?id=1ea777fbff9c (link may not be stable)
[7/8] include: linux/kernel.h: split off into multiple headers
      https://git.pengutronix.de/cgit/barebox/commit/?id=ce2b8d6e4b07 (link may not be stable)
[8/8] include: list: replace full kernel.h inclusion with smaller container_of.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=d7b6cda8fcda (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



