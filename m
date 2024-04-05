Delivery-date: Fri, 05 Apr 2024 13:20:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rshcG-00Cmpx-2b
	for lore@lore.pengutronix.de;
	Fri, 05 Apr 2024 13:20:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rshcG-0005Rc-9C
	for lore@pengutronix.de; Fri, 05 Apr 2024 13:20:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u99t3gbqCknlmkkOwjcbYHPuGR9ZhQzF1CWmT3WNaqE=; b=XIeJcmz3VdHDWIn9v9nevEOG3d
	xNyGAyBDNFSDZgC+jW14c3ykDZbhjmaosG5pHtgJjYmtngwGvhBZdmOy/d+sSN4EznK6166x58G3M
	z2vWD+itPcIPuajbUza5tD1m+P5d3kYcXyzCCX5RjzVfPtTNI0IcPDe3ygYxoJn+achVhfnty/hFr
	F3sW1GPcBPcqJ+Nwe6Lod/EeGUSENAUDIXKhO63zNZGwBeBUZBeDwpTC7l2kOGhb+IOEGmNSUzIo/
	rbJfSJO5miAMdH5p5K2RbSHVyabIXnkXzCKF90CT4xO3ZFubk3phPBwldhQ7jGfABvyvWnTvvu/4T
	mWVjW9pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rshbv-00000006eju-3SRA;
	Fri, 05 Apr 2024 11:19:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsgcC-00000006OMt-2XCa
	for barebox@lists.infradead.org;
	Fri, 05 Apr 2024 10:16:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgcB-0001Lg-C2; Fri, 05 Apr 2024 12:16:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgcA-00AY5U-Vf; Fri, 05 Apr 2024 12:16:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgcA-00Ap53-2y;
	Fri, 05 Apr 2024 12:16:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240404111527.2083308-1-s.hauer@pengutronix.de>
References: <20240404111527.2083308-1-s.hauer@pengutronix.de>
Message-Id: <171231216691.2579419.17249278578666709366.b4-ty@pengutronix.de>
Date: Fri, 05 Apr 2024 12:16:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_031608_675129_F55AF354 
X-CRM114-Status: UNSURE (   7.48  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] aiodev: add helper for getting a value by its
 channel name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 04 Apr 2024 13:15:26 +0200, Sascha Hauer wrote:
> It's a common pattern to get an aiochannel by name and the value
> afterwards. Add a helper for this pattern.
> 
> 

Applied, thanks!

[1/2] aiodev: add helper for getting a value by its channel name
      https://git.pengutronix.de/cgit/barebox/commit/?id=e268186d8051 (link may not be stable)
[2/2] arm: boards: Add support for protonic-mecsbc board
      https://git.pengutronix.de/cgit/barebox/commit/?id=cfb1dc439d91 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



