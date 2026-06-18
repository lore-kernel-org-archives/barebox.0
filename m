Delivery-date: Thu, 18 Jun 2026 09:13:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wa6wk-007BFo-2n
	for lore@lore.pengutronix.de;
	Thu, 18 Jun 2026 09:13:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wa6wk-00009d-8g
	for lore@pengutronix.de; Thu, 18 Jun 2026 09:13:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k58PjPjhmQDXtBXImmu8twb7IUdGBJAwHGCwnCwI4F8=; b=glTP1ETu6+VHnTmOjqBtlCKRU4
	5LBn7EkcOP+yBjA0b1EKeLs4jt9A/84RnMMB30Ki9RvUZmgDhRdB8bu4aN+WFwYA2t4YX53NHyYDA
	ALgGqPDepuBfe6ogXueN9XfTsgLacQZJz6vY/QGqvtjDJ80FJ+lyZoH7z2yIraWfcIjfwnNX/2W7I
	Sbx0jpjnkmfash/ReYp8WEfhvQW+FPkh7Vs8yCOvDVB9vlSKbUop88huZNKRhj0NO02guLFW6QL49
	sjJ0jOHeLMKrqsyaucRn9xydLSZD0fWU5yHAh4YtWr5FEGBZBkzqBgh1Na+S0u8ddrsTFqWW5l1Z8
	NFujAS1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa6tm-00000000jtG-1peU;
	Thu, 18 Jun 2026 07:10:50 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa6tj-00000000jsY-2mPP
	for barebox@lists.infradead.org;
	Thu, 18 Jun 2026 07:10:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C1C942002AA;
	Thu, 18 Jun 2026 09:10:45 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wa6th-003Ovz-2J;
	Thu, 18 Jun 2026 09:10:45 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wa6th-0000000Dkbw-2mTK;
	Thu, 18 Jun 2026 09:10:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, a.fatoum@pengutronix.de, 
 Johannes Schneider <johannes.schneider@leica-geosystems.com>
Cc: thomas.haemmerle@leica-geosystems.com
In-Reply-To: <20260604054047.2624155-1-johannes.schneider@leica-geosystems.com>
References: <20260604054047.2624155-1-johannes.schneider@leica-geosystems.com>
Message-Id: <178176664565.3277071.3626992450320466900.b4-ty@pengutronix.de>
Date: Thu, 18 Jun 2026 09:10:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_001047_863077_E52D00EB 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] lib: gui: png_pico: fix use-after-free and
 double-free in png_open
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 04 Jun 2026 05:40:47 +0000, Johannes Schneider wrote:
> png_open() set img->data from png_info->image->data and then called
> png_alloc_free_all(), which freed every buffer the picopng allocator
> tracks -- including the decoded pixel buffer.  Callers held a
> dangling img->data, and the later png_close() free()'d it again.
> 
> Add png_alloc_detach() to drop a tracked address from the allocator
> without freeing it, transferring ownership to the caller, and use it
> in png_open() before png_alloc_free_all() runs.
> 
> [...]

Applied, thanks!

[1/1] lib: gui: png_pico: fix use-after-free and double-free in png_open
      https://git.pengutronix.de/cgit/barebox/commit/?id=b94f31ff9f3a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



