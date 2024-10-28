Delivery-date: Mon, 28 Oct 2024 13:16:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5OfA-001qod-0b
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 13:16:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5OfA-0007DX-M2
	for lore@pengutronix.de; Mon, 28 Oct 2024 13:16:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kAYQAHA717fd+9ljdBGqxvN/d6Qw/iccTuXjVLtM++8=; b=vVqMMCu47gk1vAGOiGOk13fsf+
	WffLT1zPZ30bssNKlZSazBtR4pvyAQLEFLtDQ2C/SsFiDyTowf4S3c+WzHF2XuMmWuEk/LOK7Zmz3
	++Rq1cgKe7nQ2dc67RFb32n0f7rHnjt8ecRBUgXLrE9OaAna/KKg+4oALlgq5qt4Wq2Zcl6ldvWo8
	fBVxdK5DKtSaNAkSdF1xvDZn9K29faVaNFbNE1X7pGng8gfu72WyQTY7aDUJzw3BrAlutyNguGmnK
	tg8Uhgcb+ypc2hd6U7YZy0cq0uGN9kzIUDXCHevo5KcUNLe2oPk8YK1IQue40CJ8EYIFkwlaZNPTS
	loPCykMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5OeZ-0000000Ahys-1YUv;
	Mon, 28 Oct 2024 12:15:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Ob7-0000000AhPo-1vak
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 12:11:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Ob5-0006jE-0x; Mon, 28 Oct 2024 13:11:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Ob4-000qNV-2h;
	Mon, 28 Oct 2024 13:11:46 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Ob4-001KyQ-2T;
	Mon, 28 Oct 2024 13:11:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241025-i2c-busnum-v1-0-332d9257eafe@pengutronix.de>
References: <20241025-i2c-busnum-v1-0-332d9257eafe@pengutronix.de>
Message-Id: <173011750675.318927.7359171537224061702.b4-ty@pengutronix.de>
Date: Mon, 28 Oct 2024 13:11:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_051149_528995_479D1422 
X-CRM114-Status: UNSURE (   7.50  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] I2C: assign bus numbers from device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 25 Oct 2024 09:30:23 +0200, Sascha Hauer wrote:
> Like done with SPI controllers already let's assign the I2C bus numbers
> from device tree as well. This avoids confusing bus numbers when the
> probe order doesn't match the intended bus number ordering or when
> other I2C busses with dynamically assigned numbers are probed in
> between.
> 
> 
> [...]

Applied, thanks!

[1/3] i2c: set adapter.nr explicitly to -1
      https://git.pengutronix.de/cgit/barebox/commit/?id=5b167ad520c4 (link may not be stable)
[2/3] i2c: get adapter.nr from device tree
      https://git.pengutronix.de/cgit/barebox/commit/?id=b4746725454c (link may not be stable)
[3/3] i2c: start dynamic I2C bus numbers at 32
      https://git.pengutronix.de/cgit/barebox/commit/?id=79357f8b965a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



