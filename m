Delivery-date: Mon, 20 Oct 2025 14:59:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTv-009tsR-2r
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTo-00019W-Cc
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gWIl7IABvQonpEeQB34EiM3VM4FhzSSXjYJmuSNVsNs=; b=Ez3NRaPdcL20TV3W8lJkZeQ74f
	XCR6HPFkKq0d5lMG632MycThng+gVakilZTflzeBMQJc/FU9AEq8yPBJSfGMsZrkCPHTx8UDHhMaQ
	O+AedysU2Bu98geYWwPtxIyF+Iu7nCu4TfwMEnDnMMG+pcuHUAMFvJu+cYgyN5f1lvzRnsKrIlVj1
	LwDCQliKInXmifmkCqVhR7zUcd6bbkDlvjYxGig2bhlAUg27CjBUgpfMxKeV73/pBLx+5Eyu+3TV9
	JQWrH+QaCW94+p8J0qat8KpbIzAhjLFxQaz6Yp6FCD9Q3oExWpvNXuTco+OT7JWqcvwjv9nDwXH01
	/C7Bn/eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSx-0000000DfdH-0jEk;
	Mon, 20 Oct 2025 12:58:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSn-0000000DfL5-3nme
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=gWIl7IABvQonpEeQB34EiM3VM4FhzSSXjYJmuSNVsNs=; b=un25X3zNmhLUucQp/VSi7713wJ
	8qOem6Tcfhl23pRaasPNeHZ7YfbQTBoHf67gKZ24MQBrl1J6GLMC/zhVM7LpgrHTZCGxtrJh+YQbq
	u/XhVCXn6SMLgaJHeNJ1hQ4fZV7i7rr5re7VuSdRHlZcqhC3bQ+POj4xTndrAhKPirg6WC4LzAlxe
	JwkCCaXpz8BOAV3IBSgTn5iIfTjq7xIx7BNKA0sTPHAOcpFJLTKw8YD/qZ+/G2VARahGsD3lzTqNZ
	y4jZJV7OhvYa5SEDF7iCnenyUlXbg3mPGy/UQKbpIfUI/uScQ/7iTh/1kIvc7SCn04mqq9IvgVjaQ
	Xps3Z0MQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSi-00000007hdO-2CyW
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSd-0008Dj-Ok
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAl6L-004VwR-0U;
	Mon, 20 Oct 2025 10:18:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAl6L-00000009w7l-0Inn;
	Mon, 20 Oct 2025 10:18:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>
In-Reply-To: <20251019-iomux-v1-1-e049726947ce@hotmail.com>
References: <20251019-iomux-v1-1-e049726947ce@hotmail.com>
Message-Id: <176094832506.2368374.2334825970888297201.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 10:18:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135809_853158_4173E984 
X-CRM114-Status: UNSURE (   5.47  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Fix the iomux DSE defines for imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 19 Oct 2025 06:43:51 +0200, Maud Spierings via B4 Relay wrote:
> The DSE field has a deceptive layout, DSE 2 is a higher value than DSE 4
> 
> See reference manual 8.2.2.1.3 or the description of any IOMUXC_SW_PAD_X
> register in 8.2.4.144+
> 
> 

Applied, thanks!

[1/1] ARM: i.MX: Fix the iomux DSE defines for imx8mp
      https://git.pengutronix.de/cgit/barebox/commit/?id=7f0f37f7bc77 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



