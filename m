Delivery-date: Mon, 25 Nov 2024 09:37:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUat-00084E-0l
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 09:37:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUat-0002LN-84
	for lore@pengutronix.de; Mon, 25 Nov 2024 09:37:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=posOEF4LIH0gkVNH+ats0zHfXVwrE+hvsLLY/P5DxL8=; b=0nuDBh8j79Zc0hXazVLsqEon6L
	jhQzYiA76Igr+OiBQkVUGrIqV4ph1ogrDUUTH40EN1YXPBGQyWngYD/ckYxjDOT+14jofEwZBBZFX
	lPiKVMxRZCjQcFqLMa8g7fZbBcaiIzEDegcIQFph3sQXcZNm7fkN+oNfFKOFA5AqgGU/9z4YEfKZs
	Uh9j5NC8dfGQp/uPI/DDK6QaNE44+y/ILrRwBH9x+UVYuquDbc9jlkGRTsaGTIfgXoZNLzfEn/pq/
	xIItqftE4iNRaCIuGXI2zVaNBqQENCgSCEyWO/LgWMxeX34lwjqgI/+lwGJ0v20PKCAumDFXO1XGR
	N3jMwY/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUaP-00000007P8i-3FpR;
	Mon, 25 Nov 2024 08:36:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUPd-00000007NHZ-0luZ
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 08:25:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUPb-0000xg-PW; Mon, 25 Nov 2024 09:25:39 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUPa-000324-2b;
	Mon, 25 Nov 2024 09:25:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUPb-000hYY-1f;
	Mon, 25 Nov 2024 09:25:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241120130719.3867040-1-a.fatoum@pengutronix.de>
References: <20241120130719.3867040-1-a.fatoum@pengutronix.de>
Message-Id: <173252313951.167421.18090877543215788170.b4-ty@pengutronix.de>
Date: Mon, 25 Nov 2024 09:25:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_002541_226777_4FEE2DB4 
X-CRM114-Status: UNSURE (   9.02  )
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
Subject: Re: [PATCH] mfd: pca9450: add support for PCA9450B variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 20 Nov 2024 14:07:19 +0100, Ahmad Fatoum wrote:
> The PCA9450B is the PMIC used on the i.MX8M Nano EVKs and as far as the
> Linux driver is concerned is handled identically to the PCA9450C that we
> already support. Match the B-compatible as well, so we can read the
> reset source off that PMIC.
> 
> 

Applied, thanks!

[1/1] mfd: pca9450: add support for PCA9450B variant
      https://git.pengutronix.de/cgit/barebox/commit/?id=01915f5ee2e7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



