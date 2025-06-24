Delivery-date: Tue, 24 Jun 2025 13:17:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1eT-00AaD6-0F
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 13:17:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1eS-0007G9-IR
	for lore@pengutronix.de; Tue, 24 Jun 2025 13:17:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KnLczj4DcJvi4TIlW1BHaj/SWFhuk4hkzH4Qq0nj59E=; b=meHotB4ToqY8SONFyKIHPXKzvP
	BcOLt08vzHxN2fA83DJQ+ZjEsbm+8ZuO2Ide0UISp7Cf8a4zTwQO1bP3m+Hbi5aLZlXfaMHye3ym3
	l3hKNiIbidEzlGky79RnWKqW1cSfipdOo5ceIjI9v8zvCtL7ouWkJoAq8DdHtAiPkpSUmAwSwCGMU
	anYJ0nsc/QrWKB9iFeS38mWzmrqXaJeZWHTIHnkEDaygwqKSk3dzDW0kyfal7g025bxN0yUzRMWdh
	xDQRl953T76zNxRJd0WCjUJvcgOFEOO5KnB+ntYTnBBYiMPFAD0jekRQwcdDEaxAOdtiYsTJ5L1NJ
	IKQqe1Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU1dz-00000005PUr-409C;
	Tue, 24 Jun 2025 11:16:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU0t1-00000005J6R-145V
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 10:28:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uU0sy-0008Ct-IT; Tue, 24 Jun 2025 12:28:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uU0sy-00562w-1E;
	Tue, 24 Jun 2025 12:28:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uU0sy-00GSYN-0v;
	Tue, 24 Jun 2025 12:28:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20250624081712.4054548-1-a.fatoum@pengutronix.de>
References: <20250624081712.4054548-1-a.fatoum@pengutronix.de>
Message-Id: <175076089628.3922796.10380165764509296441.b4-ty@pengutronix.de>
Date: Tue, 24 Jun 2025 12:28:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_032819_296873_479FA6F7 
X-CRM114-Status: UNSURE (   7.28  )
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
Subject: Re: [PATCH] fixup! test: Add pytest suite for NVMEM framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 24 Jun 2025 10:17:12 +0200, Ahmad Fatoum wrote:
> If CONFIG_DEBUG_PROBES is enabled, barebox will print an info log
> whenever a device is probed. This breaks one test case in the newly
> introduced nvmem tests, because running the nvmem command results in two
> lines instead of one:
> 
>       probe-> rmem1
>   rmem1
> 
> [...]

Applied, thanks!

[1/1] fixup! test: Add pytest suite for NVMEM framework
      https://git.pengutronix.de/cgit/barebox/commit/?id=b90dad565dbe (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



