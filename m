Delivery-date: Tue, 09 Sep 2025 18:42:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw1Qc-0018cT-2b
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 18:42:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw1Qc-0007eQ-6v
	for lore@pengutronix.de; Tue, 09 Sep 2025 18:42:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t41zBZCnbvPLh4fQaR6664i5lXxZtSfPaO5VM19mMqw=; b=HiM9b6AO+Do9LhikDCuuH13O4W
	zC6j3YKa8gbT+ytRCKtPhipYUz+FfKMsRjjOc9+l0UL7JiI7envuXzJA5kio9JnlTiq08QAU+J8Ks
	39XnL3wISfK4BuxaDdy6xxLNeUDDMalkdYpUvVYco6eXByV+HPEEue8XSrntoxpH8iKTlKMzG/VC6
	cdIViJQCoqZ94SAboWIJxOJGppodIEOOdbMS9I9IACTiNA5wq6OlZhdE3KUjrheWzldo4gROAevWy
	osdnOHA+s3v5UtHY6BH/1gSJ91aYTnBdRXiXmKNyg8HtigIUYI55Z9TD2QvXSssFxhAl+sCNwfu8+
	hFTb5Tlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw1Q7-00000008aeU-3JUH;
	Tue, 09 Sep 2025 16:42:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvusL-000000064kD-1l7O
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 09:42:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvusK-0004w5-5s; Tue, 09 Sep 2025 11:42:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvusJ-000OkS-3C;
	Tue, 09 Sep 2025 11:42:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvusJ-00000004138-3uZk;
	Tue, 09 Sep 2025 11:42:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: barebox@lists.infradead.org
In-Reply-To: <20250902140006.1410408-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250902140006.1410408-1-ivo.ivanov.ivanov1@gmail.com>
Message-Id: <175741097592.957082.7216128013557525967.b4-ty@pengutronix.de>
Date: Tue, 09 Sep 2025 11:42:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_024257_464525_A1CA2C1D 
X-CRM114-Status: GOOD (  11.52  )
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
Subject: Re: [PATCH v2 0/3] ARM: boards: add support for Samsung Galaxy S8
 and S20 5G
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Sep 2025 17:00:03 +0300, Ivaylo Ivanov wrote:
> Hey folks,
> 
> This patchset focuses on adding support for S8 and S20. It's designed to
> allow adding support for new exynos devices easy, with the primary
> differentiating factor being the device tree. Currently, the same built
> barebox-exynos.img can be booted on both S20 and S8 without any changes
> in the code, as it can dynamically recognize what device it's booting on
> based on the tree provided at x0 from the previous bootloader (s-boot).
> 
> [...]

Applied, thanks!

[1/3] video: simplefb-client: switch to dev_get_resource
      https://git.pengutronix.de/cgit/barebox/commit/?id=c31d855177ff (link may not be stable)
[2/3] ARM: boards: add support for Samsung Galaxy S8 (dreamlte)
      https://git.pengutronix.de/cgit/barebox/commit/?id=b88ced1955e6 (link may not be stable)
[3/3] ARM: boards: add support for Samsung Galaxy S20 5G (x1s)
      https://git.pengutronix.de/cgit/barebox/commit/?id=4d8a5d41cbed (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



