Delivery-date: Mon, 26 Apr 2021 13:35:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lazWi-00038T-VK
	for lore@lore.pengutronix.de; Mon, 26 Apr 2021 13:35:44 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lazWh-0001YY-Nl
	for lore@pengutronix.de; Mon, 26 Apr 2021 13:35:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xaGR1ly8Jho6KnaSjoDqp0JYNbJEfRmRa8BzajIchIM=; b=ASfkRvPdEhveHDk33pIMIWr/xO
	LgjdTjEw22Am57tNwXQuZ8esm3S+SCJzIO2xu2Nkpu5MPkP9rk1+Z5Z/1y82AxDovMPS+z7OTSvtm
	qaq8YeFLpAHY3jcTcn4MQzwAjfaN7Goi789EFO8HrD8jAtDafHsq6LWIu/PJvCzTwmwTu4T4Ldury
	rTctkVQn7ih0WBdmEBW94psE8IIDrlZC7bEQ59famr3OXoelee6DL5XXqza6wUezoJDt8RMkR5S3S
	qS+bj5Izk3FVLcEZ2m1LyIrD2shTSoG/hXahaG4U155TWRs0V/AfkQo7NstNgoOKtZs+l3r/avBoZ
	YcB6f68A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lazVU-007VXh-BZ; Mon, 26 Apr 2021 11:34:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lazVQ-007VXM-GK
 for barebox@desiato.infradead.org; Mon, 26 Apr 2021 11:34:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=qSb+kGlWWQ9ynr0/MT8RMWBHrD80Hkw253GEtZ2Xe84=; b=1f99KlmBifzk4SPFUGWnUzV3yn
 2qzHtv+lnIvAfKllcYxYLXn74z2ME4VeMUUt3AnPOBQ7tvx20+xnuTy9uLQPkocFDt2MaMUWucnZm
 eKPjpQH4cPZuIdXH31NYZJfGBwPN3xhYazB5lf66ki7/J1+uIWq6ddkUmPVZChfVqant3SSofehj0
 kKcRaQ2yk8zjbwrgz4DiNnWZ1EAZuSZxAgCncCH3YWQ8jAaOY9gPE6Dn8Jub4TR2pvOGk7C/Ni/T5
 j3TIFEKmGO3M9uGSrwYYPsGx6CO2E8DjYTY8SF31H+ZHyF2BJVRNiAno42RXVt7AcsI4Oogd6DWKP
 +kNsNJpA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lazVO-00Fvbd-2G
 for barebox@lists.infradead.org; Mon, 26 Apr 2021 11:34:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lazVI-0001Ha-2D; Mon, 26 Apr 2021 13:34:16 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lazVH-0006Wq-P1; Mon, 26 Apr 2021 13:34:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 26 Apr 2021 13:34:07 +0200
Message-Id: <20210426113408.24903-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_043422_121930_250F29E7 
X-CRM114-Status: GOOD (  11.00  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] sandbox: watchdog: don't return positive values
 from set_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

linux_watchdog_set_timeout() does return alarm(), which can never fail
and returns either zero or a positive value.

watchdog::set_timeout on the other hand should return either 0 or
a negative number on error.

Ignore linux_watchdog_set_timeout()'s return value, so
watchdog_set_timeout propagates the correct value.

This fixes an issue where seconds_to_expire wasn't updated on
subsequent pings of this watchdog.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/watchdog.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/board/watchdog.c b/arch/sandbox/board/watchdog.c
index 336451282fd3..e1cff7a0bf0b 100644
--- a/arch/sandbox/board/watchdog.c
+++ b/arch/sandbox/board/watchdog.c
@@ -29,7 +29,8 @@ static int sandbox_watchdog_set_timeout(struct watchdog *wdd, unsigned int timeo
 	if (timeout > wdd->timeout_max)
 		return -EINVAL;
 
-	return linux_watchdog_set_timeout(timeout);
+	linux_watchdog_set_timeout(timeout);
+	return 0;
 }
 
 static int sandbox_watchdog_probe(struct device_d *dev)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

