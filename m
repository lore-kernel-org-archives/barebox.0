Delivery-date: Tue, 18 Mar 2025 15:49:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYGQ-0014jG-1b
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 15:49:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYGP-0008WV-D9
	for lore@pengutronix.de; Tue, 18 Mar 2025 15:49:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Km6O2wlqQU8MiW7RnvAHmwJEYnA1Z/DITAEixQP8LLs=; b=2p0E7PjT9240ukvp4kLj3qxMB1
	FHs7JJBHPSzFmwkA2T46chOMZbT6h6PWImYpspje0t/ku7U2zTfs+Dfw4HTt/1njmE/cVF96UvCz5
	c9muBDDQBNKITEvv5d0OctquJQA5350dNcDGC8pB14K4S2VzB6G/wYOgi+49LNwWFRXttoWraZFeK
	S9SyK0v+rySv9iIZJovSDDEiMsWw0M3x1h9bmfUa8ayhpX5j8wA4YUjfDTv2dywlj0ymTu7dN3/5Y
	wsGt0iRfVTjoKONhv+g6smG9AL+oz1rfOql0U8zyawGLV1awcVheMpr25bnuTXX0PpMr6h/4HcZUT
	7dnZ7mSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYG1-00000006Eor-2aR4;
	Tue, 18 Mar 2025 14:49:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYFy-00000006Eo5-25G7
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 14:49:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuYFx-0008QP-8T; Tue, 18 Mar 2025 15:49:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuYFw-000Rbf-26;
	Tue, 18 Mar 2025 15:49:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuYFx-00Fjpy-02;
	Tue, 18 Mar 2025 15:49:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250318074327.37730-1-eagle.alexander923@gmail.com>
References: <20250318074327.37730-1-eagle.alexander923@gmail.com>
Message-Id: <174230936500.3750975.4594139840692961507.b4-ty@pengutronix.de>
Date: Tue, 18 Mar 2025 15:49:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_074926_536111_D7CEEF67 
X-CRM114-Status: UNSURE (   8.36  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 1/5] ARM: at91: Add PBL_BREAK support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 18 Mar 2025 10:43:23 +0300, Alexander Shiyan wrote:
> This adds PBL_BREAK support to the barebox at91 header.
> Since we're here, let's set the header parameters to the defaults
> for the barebox and do some code formatting to improve readability.
> 
> 

Applied, thanks!

[1/5] ARM: at91: Add PBL_BREAK support
      https://git.pengutronix.de/cgit/barebox/commit/?id=3644b3362686 (link may not be stable)
[2/5] ARM: at91: Merge sama5_boot_xload() asm code
      https://git.pengutronix.de/cgit/barebox/commit/?id=1d0cc726f94c (link may not be stable)
[3/5] ARM: at91: Rename xload-mmc.c
      https://git.pengutronix.de/cgit/barebox/commit/?id=5c59dd719417 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



