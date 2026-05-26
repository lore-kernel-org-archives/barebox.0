Delivery-date: Tue, 26 May 2026 09:59:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRmgx-003vse-03
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 09:59:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRmgw-0002OK-GX
	for lore@pengutronix.de; Tue, 26 May 2026 09:59:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d6XQoDXuORJYCqGWmmJDgBByilhzOmjWMEdNnNgX/+k=; b=Y3N93Eq76YKb29ZDpm2VMyvN7K
	CCItSpJHRP+/DpRqCojESJBE2zNZCVprZOVAXab/G+W8oARGVdTMVQaePfCqCjv6zbZgZoI6bGFM+
	O0Y53Lg5JtSCraTfkOROoUC3mL/jbAAtmm4lDICTj0gib+y+s/oUzObZuWa7kAplMwlQ7tKg4XCKp
	+WMqPoe8lnRO3fM0dxJT3v4UeOx8NpgualcVpQWYOx1W+C+CF3QR/30i1usek6x7aFixV+XGkZEDJ
	PwMWP/11sZhh9QIO4hTZPEarVM5HysMWoA8pNy4NOiIAy55mZbGwO6RbsAtOs7Iv0bOfx5ih4bZvE
	a3WtRcpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlWK-00000001C5g-1QT9;
	Tue, 26 May 2026 06:44:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlWI-00000001C57-1S8i
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:44:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlWG-0003dL-Vp; Tue, 26 May 2026 08:44:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlWG-001sBB-1B;
	Tue, 26 May 2026 08:44:04 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlWG-0000000GZuB-3fQw;
	Tue, 26 May 2026 08:44:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260522-input-include-bitmap-v1-1-fd23572c2d22@pengutronix.de>
References: <20260522-input-include-bitmap-v1-1-fd23572c2d22@pengutronix.de>
Message-Id: <177977784487.3951187.7751305350520190731.b4-ty@pengutronix.de>
Date: Tue, 26 May 2026 08:44:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_234406_389042_ECAF0AA8 
X-CRM114-Status: UNSURE (   5.85  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] input: Add missing include for DECLARE_BITMAP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 22 May 2026 12:34:28 +0200, Jonas Rebmann wrote:
> The DECLARE_BITMAP macro is used in input/input.h. Add the missing
> include on linux/bitmap.h where it is defined.
> 
> 

Applied, thanks!

[1/1] input: Add missing include for DECLARE_BITMAP
      https://git.pengutronix.de/cgit/barebox/commit/?id=f059d0dbca21 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



