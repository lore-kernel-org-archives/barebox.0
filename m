Delivery-date: Mon, 20 Oct 2025 14:58:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTR-009tk8-2K
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:58:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTJ-0000X8-Ga
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:58:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m19+B4/siUHot59UA3H0P+QQdtP8AZE8J7G78DspVmQ=; b=zzi1hBG6gYFsiqOB9mX0VYkv9P
	i6RjP5YECQ37pikqN97S5I6WeSEAX42So3wZZ/XVAILKO1ibRMBFfyZp24lWJ2Ii3X2Gx5IdEGKCU
	9KGU2ifIHSpTWdRw0ins37Cja/Ss5gMIMl3csh0Zq6UAVz9nQAhF5mBaEOcoY+gJLc7DclB2uFPzl
	LIP4ApF1Dyv+bIjo2lw4sXIUR9GSX7QQ+pQUgAt2RXqRRIEOPTc8YOGboYPh0d4Owicw5sNzvSJLV
	UcutD1dNWfWRh9cFmUnxxmLgKwX75eeTEqiW8zZN8FK26VNSKtzEOEHxb2TWMwJ/YzeTuPychRpeB
	KNOZGchA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSi-0000000DfBU-11uI;
	Mon, 20 Oct 2025 12:58:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSd-0000000Df45-20o6
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSa-0008Bp-PN
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnTO-004X3t-31;
	Mon, 20 Oct 2025 12:50:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnTO-0000000A3XJ-3fx0;
	Mon, 20 Oct 2025 12:50:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251015091012.2299395-1-a.fatoum@pengutronix.de>
References: <20251015091012.2299395-1-a.fatoum@pengutronix.de>
Message-Id: <176095744287.2396864.474297462113403788.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 12:50:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_055803_542011_DBC9219E 
X-CRM114-Status: UNSURE (   5.54  )
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
Subject: Re: [PATCH] test: py: fit: don't remove generated FIT again from
 testfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Oct 2025 11:10:11 +0200, Ahmad Fatoum wrote:
> By leaving it lingering around, it's easier to run a pytest --interactive
> session afterwards and debug what might have broken the test run
> preceding it.
> 
> 

Applied, thanks!

[1/1] test: py: fit: don't remove generated FIT again from testfs
      https://git.pengutronix.de/cgit/barebox/commit/?id=a500f98702d7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



