Delivery-date: Tue, 26 May 2026 08:27:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlGS-003uYl-2g
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 08:27:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlGS-00021v-9D
	for lore@pengutronix.de; Tue, 26 May 2026 08:27:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O1ArFHSKs+qv23SkphUvnSoPBrG+lVz/oOSu0dZ66ek=; b=celCdAO+NdJvONAmdYikGesJAn
	zJBgoubXVJjJziWAZzKm59F31ZquUut1yyEKeFHz7Y09MK8Ol7ruFR9mBOqYkx4wirCRRAdIOsl7t
	43QhEb/7cTNzHbWkuQ0RuQ0rD926v4H2AqyHiejxO/yIr90Fn0P+B3/u7Eu4oIGPbUEi6te8QeG8o
	kAAukZujDOzXrHSpkflAdcCSGzBrbioBQS3pgzODbyCA5se1Ao0HjHP45Du4omXHCBRPKr8h1tuJk
	FZPlZ8aK+MEiBo+4fd8ZpuIxi9Xyf6OKWsmRT2Kcu7rDqiw5MZkGSmsRgUd8lOxjxf7pm0nBHuU9l
	7EjApUXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlFT-00000001A5u-18Tw;
	Tue, 26 May 2026 06:26:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlFP-00000001A4L-0XLf
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:26:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlF7-0001ql-KQ; Tue, 26 May 2026 08:26:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlF6-001s4H-1a;
	Tue, 26 May 2026 08:26:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlF6-0000000GXT4-48Ne;
	Tue, 26 May 2026 08:26:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260520060906.1869692-1-a.fatoum@pengutronix.de>
References: <20260520060906.1869692-1-a.fatoum@pengutronix.de>
Message-Id: <177977678097.3941817.10146537428390812619.b4-ty@pengutronix.de>
Date: Tue, 26 May 2026 08:26:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_232639_172271_4DD6EA04 
X-CRM114-Status: UNSURE (   7.57  )
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
Subject: Re: [PATCH] serial: ns16550: fall back to using uart8250/ttyS as
 Linux console names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 20 May 2026 08:09:05 +0200, Ahmad Fatoum wrote:
> Most Linux drivers use the same names, so make them the default and only
> list differing ones in the different ns16550_drvdata.
> 
> This also ensures, we don't end up with <NULL> formatted into the kernel
> command-line by mistake.
> 
> 
> [...]

Applied, thanks!

[1/1] serial: ns16550: fall back to using uart8250/ttyS as Linux console names
      https://git.pengutronix.de/cgit/barebox/commit/?id=688df18c2723 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



