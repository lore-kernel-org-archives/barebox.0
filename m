Delivery-date: Mon, 17 Feb 2025 10:59:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjxu6-003Qxo-1O
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 10:59:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjxu5-0006Sf-AI
	for lore@pengutronix.de; Mon, 17 Feb 2025 10:59:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E5Km1gjMpIQCGexL87J+pFXFFXJ13yH4jHwjhVU+H0s=; b=Io5L8M6HSpQXkf/XqGIHiCiFBh
	OC7D5CCCuyKdlOF0hd8kZNyHmUbjdxKQM0BpWYMH7stD0G+NsONEEQz+MkFlQB/ZKlSQAgk8AdJWo
	sZeiJHMo/1IyvL2SGvwQR2ywGZ4wuROJjCMVYOnnXxoIV1bXTwOrTrAjduDz0lYt2pLNEXG/uEoAU
	OxwW3aPfucMM709JsdzzcEiOiR/4CPK1Aaq9OIo8i9KtEKTFD89eOMh47X3+JGxf0io+sErdU5Dhi
	HW8MFMg+Kkz7MEtaI0Cvz892s1LGzQP+ShnKCk0EEQBUlsmkxIro06rRcNXH52sU4mglOATsY5I/7
	aCRQRDNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxth-000000041Ni-1owy;
	Mon, 17 Feb 2025 09:58:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxji-00000003zYr-1nLO
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 09:48:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjxjg-0004gm-Ow; Mon, 17 Feb 2025 10:48:20 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjxjg-001Ntt-1u;
	Mon, 17 Feb 2025 10:48:20 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjxjg-002JZE-1h;
	Mon, 17 Feb 2025 10:48:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250214101206.2876051-1-a.fatoum@pengutronix.de>
References: <20250214101206.2876051-1-a.fatoum@pengutronix.de>
Message-Id: <173978570052.551144.12311101416064673133.b4-ty@pengutronix.de>
Date: Mon, 17 Feb 2025 10:48:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_014822_466863_2CD51D94 
X-CRM114-Status: UNSURE (   7.01  )
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
Subject: Re: [PATCH 1/3] lib: add scatterlist abstraction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Feb 2025 11:12:04 +0100, Ahmad Fatoum wrote:
> With barebox using 1:1 memory mapping whenever possible, scatter-gather
> DMA seems not that important. Many Linux APIs use struct scatterlist
> as parameters though, so adding a basic support in barebox will make
> easier to port these drivers.
> 
> 

Applied, thanks!

[1/3] lib: add scatterlist abstraction
      https://git.pengutronix.de/cgit/barebox/commit/?id=118ef08339cc (link may not be stable)
[2/3] virtio: replace virtio_sg with common scatterlist
      https://git.pengutronix.de/cgit/barebox/commit/?id=2336406d2b91 (link may not be stable)
[3/3] virtio: add token data parameter to virtqueue_add_sgs
      https://git.pengutronix.de/cgit/barebox/commit/?id=2bafe34d2f68 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



