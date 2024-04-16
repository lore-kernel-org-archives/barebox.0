Delivery-date: Tue, 16 Apr 2024 13:07:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwgeV-003GvS-2r
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 13:07:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwgeR-0000bH-BK
	for lore@pengutronix.de; Tue, 16 Apr 2024 13:07:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8+7Haqiu02cFUwVbDvRNlw7hQIJjuvtodbqQ5fYzQjE=; b=zSkJGA8bj3IZ6tcO9UjCSCdUwC
	qUZ11IwA8IbaFgeTPl4ZRDpqvKpG38KccEJoXkVYpqb9pTsYzyuYuSrsYLi1OrFs/OZALLd9XAaCq
	6lolb7RiNoxJsFpQ+2AVIDyhfikslBO7HOZXR6DEW6AAmxAiEhmQnoJDz4qwlFOnpAK+QX/Kupbla
	nCcYNx8wVUDhHRKV3Rr9dBNPWLoNrhSdc4OUIl032yP4U2/xrjCE1HaSZttzqGzOxLzWMlo1VAXJc
	oWuaruvwEulVTL/TeRrziIxEY84bGUMPmtDQZBT/8rWSPlk01deI4B/dWZiAsAtC7N5TqRgDOmnRC
	D6Hb0rgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgdS-0000000BuzB-2cMl;
	Tue, 16 Apr 2024 11:05:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgdL-0000000Bux3-2XFS
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 11:05:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwgdI-0007OT-W6; Tue, 16 Apr 2024 13:05:49 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwgdI-00Cb9N-Jy; Tue, 16 Apr 2024 13:05:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwgdI-00DgY3-1o;
	Tue, 16 Apr 2024 13:05:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240415052815.366527-1-a.fatoum@pengutronix.de>
References: <20240415052815.366527-1-a.fatoum@pengutronix.de>
Message-Id: <171326554855.3261724.16043477272920343637.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 13:05:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_040551_684315_77AB2FAB 
X-CRM114-Status: UNSURE (   7.64  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: Rockchip: bbu: rename rk3568_bbu_mmc_register
 to rockchip_*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Apr 2024 07:28:13 +0200, Ahmad Fatoum wrote:
> The update handler isn't restricted to the RK3568, but is also usable
> for other RKNS SoCs. With minor modification, it is also usable for the
> RK3399 and perhaps even older SoCs, so let's rename it to
> rockchip_bbu_mmc_handler instead. We can always do SoC-type checks
> inside to handle differences.
> 
> 
> [...]

Applied, thanks!

[1/3] ARM: Rockchip: bbu: rename rk3568_bbu_mmc_register to rockchip_*
      https://git.pengutronix.de/cgit/barebox/commit/?id=66e0e8536986 (link may not be stable)
[2/3] ARM: Rockchip: bbu: output unallocated space size on error
      https://git.pengutronix.de/cgit/barebox/commit/?id=702504f04c78 (link may not be stable)
[3/3] ARM: Rockchip: bbu: allow forcing barebox update handler despite size
      https://git.pengutronix.de/cgit/barebox/commit/?id=30558b84d1bb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



