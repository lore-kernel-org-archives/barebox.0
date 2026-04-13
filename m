Delivery-date: Mon, 13 Apr 2026 10:12:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCPW-00BeHE-2t
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 10:12:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCPW-0003HO-Cc
	for lore@pengutronix.de; Mon, 13 Apr 2026 10:12:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1Xe4VI5Ix2r6N0KGuN0VO0z33JxfheyltNWwfbIwEaw=; b=3GLWbkijZRHQyjOMHNWyReAtVv
	DFIinNuePIgrp5nPDyUg7PtmO43tqgDWzOck2GBkOAuhtku/j7TpOLGitB6xmiqpe1TIK5LgGwH8B
	U5k99KQ/tUsiHRCuKWC055AWjR003HkgJl6bK1HG+r63e/i7LBf8hdszb6juSO3JDRzCQV1ON6/PE
	skmpxVR+hmGzMJ9cw7skobC61/CEDHsOQjRgvWXJgIEUx/BPBx9sXcZGdCqOexScqqkY3ZyqjEOl3
	9EGqcbF5Xi8BfKC1+N8V36VlKldp8YOY3TOv/754GAEmeaKnmvOGGeA4+BWOqCNGBYKblYxaaPues
	9UFRB7vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCP9-0000000FEsu-0Uv5;
	Mon, 13 Apr 2026 08:12:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCP7-0000000FEsI-1TSx
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 08:12:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=1Xe4VI5Ix2r6N0KGuN0VO0z33JxfheyltNWwfbIwEaw=; b=NbLiczlF33Yaj+33PUftiYAM38
	3GHUwPRrxRfAE8BJ5l/BMkukFUd99peMZeOPquABbxl/LXVE8s/87v0wpKACSNo7SUKlx5TSC3qbl
	xJzjpeb9zyy+X4jm7ATFy+GORIm5DqgnKl1bG1sN3MCJdZXtAPErL6zejHL049OG5qPaOfb0JrbQq
	gAvokXSVetnssKZOPLmFV3fZocLPDwUax0rB3gH9thP8tkYc9ZjvrZU2PVh06Z5yfAbREzGVlqz+R
	/9XECtAtUeF4b8RXQqquBKmekYCN+a2HgnV807fEKAmap4sUwaOB6mUqZXY8yc4V5p315KgExMasv
	vgYpWYdQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCP2-0000000GMmS-45PH
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 08:12:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCP2-0003Bi-2x; Mon, 13 Apr 2026 10:12:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCP1-0058e6-2u;
	Mon, 13 Apr 2026 10:12:15 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCP1-0000000EiQR-3W7l;
	Mon, 13 Apr 2026 10:12:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260329073034.857282-1-a.fatoum@barebox.org>
References: <20260329073034.857282-1-a.fatoum@barebox.org>
Message-Id: <177606793583.3507336.3002040910764831031.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 10:12:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_091217_263774_56F0A6D2 
X-CRM114-Status: UNSURE (   5.83  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: bfetch: use 64-bit integer types for sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 29 Mar 2026 09:30:33 +0200, Ahmad Fatoum wrote:
> size_human_readable() accepts a 64-bit argument (unsigned long long),
> but we pass smaller types into it, leading to truncation when computing
> the total sizes for display.
> 
> Switch to 64-bit variables to fix this.
> 
> 
> [...]

Applied, thanks!

[1/1] commands: bfetch: use 64-bit integer types for sizes
      https://git.pengutronix.de/cgit/barebox/commit/?id=18a66f3dd416 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



