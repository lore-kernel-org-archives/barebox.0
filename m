Delivery-date: Tue, 05 Aug 2025 11:34:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE47-007FWQ-1S
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:34:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE46-0003VE-B0
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:34:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rs/7FJbONeAR2uG/aozS7tGj7eKBBnE0o6oky5mgYJs=; b=T9/N1APrFC1mf0M8h1Lv1i7uOD
	1Ivt7B5mzxtgWBFeWUVEHHotYCFhAO/xPYY/b1WOStdYU+RxuSn1SVkwDKJaIV2W1zgxFlMIkITVA
	qbgb15AA3/xZ/T/PN5DTtplTwhdHiDU75Ahkf09cmdJcKizlnyuh1NvPiEhLfCSdhG880a/DWfwjw
	xGlxl8e4gFLsiLgsy38Y8t83R8FlDOVwf/Ft3DwF6l4fmqSBcW9YrB1qc2lD1d2Zff7WibUue4P80
	N1QR7DqLwYSwiSqhhJFpezSj7LE7B1t6l+v+4cTBbndto18pAHXAVZRh0PbETiPAfSbs730mN603b
	BbzchL6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE3C-0000000CMej-0DyJ;
	Tue, 05 Aug 2025 09:33:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDiA-0000000CJpz-1n9D
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:11:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDi9-0000Ll-2j; Tue, 05 Aug 2025 11:11:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDi8-00C17S-2u;
	Tue, 05 Aug 2025 11:11:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDi8-00EiEA-2j;
	Tue, 05 Aug 2025 11:11:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250711073208.3926688-1-a.fatoum@pengutronix.de>
References: <20250711073208.3926688-1-a.fatoum@pengutronix.de>
Message-Id: <175438511683.3506561.7534636766886734008.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:11:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_021158_472674_0D0759B3 
X-CRM114-Status: UNSURE (   6.91  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/4] Documentation: devel: add new troubleshooting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 11 Jul 2025 09:32:04 +0200, Ahmad Fatoum wrote:
> A consequence of running bare metal is that early failures are difficult
> to diagnose. Let's add a troubleshooting section to help users take
> the first step in diagnosing issues.
> 
> Ahmad Fatoum (4):
>   Documentation: devel: porting: split out architecture intro
>   Documentation: devel: architecture: detail first/second stage handling
>   Documentation: user: split community from feedback
>   Documentation: devel: troubleshooting: add new chapter
> 
> [...]

Applied, thanks!

[1/4] Documentation: devel: porting: split out architecture intro
      https://git.pengutronix.de/cgit/barebox/commit/?id=7a831888bd37 (link may not be stable)
[2/4] Documentation: devel: architecture: detail first/second stage handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=c8fb6f84fdd9 (link may not be stable)
[3/4] Documentation: user: split community from feedback
      https://git.pengutronix.de/cgit/barebox/commit/?id=42d5fefff6bb (link may not be stable)
[4/4] Documentation: devel: troubleshooting: add new chapter
      https://git.pengutronix.de/cgit/barebox/commit/?id=3f42a7931c7a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



