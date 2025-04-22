Delivery-date: Tue, 22 Apr 2025 11:02:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79Vz-003z0p-1E
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 11:02:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79Vy-0000Yb-RI
	for lore@pengutronix.de; Tue, 22 Apr 2025 11:02:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qGS2avofuMBtfXjFfxgFMYdO77x86pb2CuoZFITxvwI=; b=yZbFFWxw9cp+XlKKYNYmLLX8k3
	9e4+F5ro0to2GKZltQv3KH+dxJUGYvK/UF++5gxdw2WxyfIoPnGwem41NudVFgc6XL2ZyNDJIAYS6
	NZ72XdY3gS7KaRtggoOMbC/hKqM+ql2gOjPSYGbraAL8B4tVPE5jvbHBkZN1LfMl8rbMtYVak7AEZ
	ffzNu47ZA42oQw2FAxQX4qfHUvqSAOjPDHNUW/XCM55vM/4Xl/ePmx5zTcf0Earp+iDf95db0lshm
	er38PiQk8AKd6tQa5DjEj5NQsN9qlWS8HcQ66caLCRTyLbk69MgfTqvh0PfT5ctvz03TgqIeXv0FL
	kaLzJQsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u79VQ-00000006TAt-0FUg;
	Tue, 22 Apr 2025 09:01:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78vC-00000006I5s-1DHO
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 08:24:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78vA-00068a-VF; Tue, 22 Apr 2025 10:24:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78vA-001WH6-2V;
	Tue, 22 Apr 2025 10:24:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78vA-00CbBO-2I;
	Tue, 22 Apr 2025 10:24:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250417062349.3430967-1-a.fatoum@pengutronix.de>
References: <20250417062349.3430967-1-a.fatoum@pengutronix.de>
Message-Id: <174531024070.3002851.15004565738033325511.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 10:24:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_012402_329067_2CBD0281 
X-CRM114-Status: UNSURE (   6.55  )
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
Subject: Re: [PATCH master] lib: select HAS_INSECURE_DEFAULTS from
 ALLOW_PRNG_FALLBACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 17 Apr 2025 08:23:49 +0200, Ahmad Fatoum wrote:
> PRNG fallback inside get_crypto_bytes is only useful for debugging
> and a really bad idea in production. We already warn about this at
> runtime, but let's make sure it's directly evident in the config as
> well.
> 
> 

Applied, thanks!

[1/1] lib: select HAS_INSECURE_DEFAULTS from ALLOW_PRNG_FALLBACK
      https://git.pengutronix.de/cgit/barebox/commit/?id=5d82702f48ec (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



