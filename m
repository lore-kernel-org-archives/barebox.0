Delivery-date: Mon, 07 Apr 2025 15:15:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mJr-009Z2J-2k
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 15:15:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mJr-0003Hc-AU
	for lore@pengutronix.de; Mon, 07 Apr 2025 15:15:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L6lD1yYyxvmQ1Xy6ReuLTBulY9FifKw7vhgk2RXJen0=; b=IJffNBkfEaNpP/GjyMpTCVD7Wd
	hWpmn9pdz2zcsxfYXL1ZR/7D+MnEpnd27vDaQfAQ/g/UwCUztwt9fZ5YX9Z6cIawln08KofmyulqJ
	Zr4Kq+KI4P/mQq6qEPbEbGOjnBpXqfBrHFMXymHvDDhAfuxtRFNqeOJC4pHGNS9pPMJ5I49ivy6yp
	fYNHEUDIUa4dbHDOeV7HKjzOJImIQV8bKfmamTXRoydE2N/zGN0TG17XXFaMof86OX67tlZ9k/Vwo
	YUFSrJeWhWzjJINxbgav0c1llHN+HMsZgG7fr+5qVrTrzwnRAZQffGdYzqQDPTFJmHHBhrFbOUr51
	c6R34n5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mJQ-00000000Rvw-3hhe;
	Mon, 07 Apr 2025 13:14:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mJO-00000000RuS-0VNa
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 13:14:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mJM-00039s-PI; Mon, 07 Apr 2025 15:14:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mJM-003ljc-1q;
	Mon, 07 Apr 2025 15:14:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mJM-00D2eC-1Z;
	Mon, 07 Apr 2025 15:14:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250403083516.1838668-1-a.fatoum@pengutronix.de>
References: <20250403083516.1838668-1-a.fatoum@pengutronix.de>
Message-Id: <174403168847.3105739.6289069272377089697.b4-ty@pengutronix.de>
Date: Mon, 07 Apr 2025 15:14:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_061450_162978_F8585F0E 
X-CRM114-Status: UNSURE (   6.83  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] tee: optee: of_fixup: allow static shared memory size
 of 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 03 Apr 2025 10:35:16 +0200, Ahmad Fatoum wrote:
> We don't necessarily need a static shared memory region for
> communication with OP-TEE. Both Linux and barebox support
> dynamic shared memory communication and barebox doesn't even
> support static shared memory.
> 
> Make this clearer in the documentation and adapt the fixup code,
> so a shared memory size of zero is handled as one would expect.
> 
> [...]

Applied, thanks!

[1/1] tee: optee: of_fixup: allow static shared memory size of 0
      https://git.pengutronix.de/cgit/barebox/commit/?id=7188f5156dbd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



