Delivery-date: Wed, 22 Oct 2025 15:59:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBZNN-00Acv2-2y
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 15:59:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBZNN-0007Xc-DO
	for lore@pengutronix.de; Wed, 22 Oct 2025 15:59:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e9ERvvUyl4eh0wu/qNkyaTW1iyUmZFtEJwPcCDs8KyA=; b=FBzhXWFg7mpeZaBl1jV1baV5QU
	rcJej/tXW0RB9MPcKczJXpC8nv4Q/kjdCVH5kKSwhNJ5yWDSYSwXvrIS5RqhTYzENebR9sg/DgB9i
	i5xL2vQXmWavNyCEKNB4Ol3hmO41tKwFjmjll+NAALylHZEfgFZ/ra+7n25cosgm7Hbft+E2WS2ee
	fCOHG0ZUwPQn9DdukjifzpiEbjUJH/em9BfoYRHHKSZxwCcIqeHpOKmgAYOWfnwZHm8umLcKmPCVC
	7PzJyS2RL75AMGngt02vNDrgq/8Z6mn3rYGX7qqfe4guQkIxZaydCUumtFNpgjWkA93sGe/CMWVgr
	rR0LQdgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBZMn-000000037fW-3RSf;
	Wed, 22 Oct 2025 13:59:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBZMm-000000037f3-1Ea0
	for barebox@bombadil.infradead.org;
	Wed, 22 Oct 2025 13:59:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=e9ERvvUyl4eh0wu/qNkyaTW1iyUmZFtEJwPcCDs8KyA=; b=pXEgdgmPzM554A2Yltdcd7KPBw
	xkD5E5sXytcSkmTb9QqbeFqXAoHA7PQUuROCzKh26RfX5I2k2mwaVQ4/OHqFtqhSu6oSm6omJlJfd
	1sIKJ0Q7fpsr31sehxO0uHef3z8bc3OcOqfXCnNi9tmLBHmCLl4fjc9Gg1Xl02H7LshK+0XXoKNB0
	vKHktaoYpmeniaao8bUPIg/sWg8vlLVlRSPM1CQyGM0h9eYpRb3R+UhgJHecbVbbTyQMzA37j7ibX
	ODOLjuYS4GyC/wF0M1Kan+wBFgGtlRqPVA2KSXVklqiv/1XjJU8Bx4E8Zk2SPyKx/sy0AvrSwNOI6
	RgeAr12w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBYV2-00000000bg0-2Wti
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 13:03:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBZMf-0007PX-Fe; Wed, 22 Oct 2025 15:58:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBZMf-004tvq-0v;
	Wed, 22 Oct 2025 15:58:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBZMf-000000081aD-0uIz;
	Wed, 22 Oct 2025 15:58:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251022113946.1118299-1-a.fatoum@pengutronix.de>
References: <20251022113946.1118299-1-a.fatoum@pengutronix.de>
Message-Id: <176114153721.1912554.1884100118204000417.b4-ty@pengutronix.de>
Date: Wed, 22 Oct 2025 15:58:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_140332_783393_B9B371B7 
X-CRM114-Status: UNSURE (   5.57  )
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
Subject: Re: [PATCH] fixup! Documentation: add contributing section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 22 Oct 2025 13:39:45 +0200, Ahmad Fatoum wrote:
> Documentation: contributing: fix command to reproduce shuffle failure
> 
> The -l and -v options are arguments to MAKEALL, not container.sh.
> 
> 

Applied, thanks!

[1/1] fixup! Documentation: add contributing section
      https://git.pengutronix.de/cgit/barebox/commit/?id=8b4ca6a36104 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



