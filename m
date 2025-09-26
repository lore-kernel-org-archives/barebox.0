Delivery-date: Fri, 26 Sep 2025 13:33:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v26i0-001JUX-0W
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 13:33:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v26hz-0008HB-Lm
	for lore@pengutronix.de; Fri, 26 Sep 2025 13:33:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y3Wwk7CdgyXfPJ8qCOGxm88NIIERoq721P2MjHiryGo=; b=VjfFITCbgm0vSEqchUEjzW4yr5
	lv8smOhmehiVgDIP49R7CClj3SCEAo47LvL9NjXBVQPqXJoh+3A4F7MgD6Mil2uiOT5vJsKiKSP9O
	jQEzYJtnWUMZlpR+wbNSd4MqAbcmgkvPzvCaKti0yorOVuaT0l4+6ZHw06vsn3UcFBjXCQpLCG6wP
	XD0kiZSP26JtK3rURL9u0vYA0QXmVdXn/KMcMFQ9R4QZ85rtV/lAOw4HWyXAseXqxtm5+BOlFxm3G
	Kxp8/5ApcQSJOUTgjd+Wp+ir4EVzFcsmq7qbVoCMdHhTt1dEeTCTw/Pu94tv8bEqkOvZIv4hc8gAU
	k4jcP9+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v26hY-00000000oxn-0D04;
	Fri, 26 Sep 2025 11:33:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v26hV-00000000ow9-26va
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 11:33:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v26hT-00089D-Oa; Fri, 26 Sep 2025 13:33:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v26hT-000a9R-1r;
	Fri, 26 Sep 2025 13:33:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v26hT-0000000D0LJ-2AIE;
	Fri, 26 Sep 2025 13:33:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250926081405.603700-1-a.fatoum@pengutronix.de>
References: <20250926081405.603700-1-a.fatoum@pengutronix.de>
Message-Id: <175888639951.3099566.4909896478319753950.b4-ty@pengutronix.de>
Date: Fri, 26 Sep 2025 13:33:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_043321_555071_D3617FDC 
X-CRM114-Status: UNSURE (   6.24  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] test: emulate.pl: remove in favor of pytest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 26 Sep 2025 10:13:43 +0200, Ahmad Fatoum wrote:
> emulate.pl is no longer documented and all its functionality has been
> replaced by either pytest conftest.py, changes in Labgrid itself or
> MAKEALL. It's thus time to remove it.
> 
> 

Applied, thanks!

[1/1] test: emulate.pl: remove in favor of pytest
      https://git.pengutronix.de/cgit/barebox/commit/?id=4c274ead7878 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



