Delivery-date: Tue, 04 Mar 2025 10:29:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpOb5-009ifS-2e
	for lore@lore.pengutronix.de;
	Tue, 04 Mar 2025 10:29:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpOb4-0006n5-K6
	for lore@pengutronix.de; Tue, 04 Mar 2025 10:29:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=53EidmGRpBcFOanZpMmyHhx2AR3jrGLEHZfllTrZuEM=; b=y1yroqHuL1fIVr1Sn6CyWLOEs4
	8qWykTZWjZXjR03MEo79QhccN3jR06R65hJ+0j9mxVIKWTZa+32/EaLWuP/t0/ph9BoiDA2PvqjG+
	61QXzRnGMIKDLYBdnB2G3XUtT+eg6ArM8+8ecjx1SpzGTxEWB3L0GyJZPGZz6zGiI6bmKT/4wiJsh
	i/HG9b4CyO5rhwfHQqcWyOLIZ7QQgl5UQyHyJTZ5OHPpb+v9FhXlKxC2tjD/Ri2PSSTw23kdRWYcz
	a5EwLlZfHFCLbQG3vW6oJ98QieLvlR1m1EWoVYX8NM6YZX2/DdRRRxHaEEeFFUJIU1WWqYUZVaCBU
	86Ruisag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpOar-00000003tHH-2HcM;
	Tue, 04 Mar 2025 09:29:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpNR4-00000003aTE-0Tqu
	for barebox@lists.infradead.org;
	Tue, 04 Mar 2025 08:15:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpNQz-0005oH-S2; Tue, 04 Mar 2025 09:15:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpNQz-003wLW-2B;
	Tue, 04 Mar 2025 09:15:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tpNQz-0039xU-1u;
	Tue, 04 Mar 2025 09:15:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250303143144.2953662-1-bst@pengutronix.de>
References: <20250303143144.2953662-1-bst@pengutronix.de>
Message-Id: <174107612558.753249.11909429512529384121.b4-ty@pengutronix.de>
Date: Tue, 04 Mar 2025 09:15:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_001530_154589_A88F75B3 
X-CRM114-Status: UNSURE (   6.51  )
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
Subject: Re: [PATCH] mfd: rn5t568: add priority to
 reset_source_set_device()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 03 Mar 2025 15:31:44 +0100, Bastian Krause wrote:
> 30322f4b565 ("reset_source: give reset_source_set_device a priority
> parameter") introduced a reset source priority parameter, but forgot
> applying a priority the Ricoh RN5T568 PMIC driver's
> reset_source_set_device() call.
> 
> So apply the default priority 200 here, too.
> 
> [...]

Applied, thanks!

[1/1] mfd: rn5t568: add priority to reset_source_set_device()
      https://git.pengutronix.de/cgit/barebox/commit/?id=af8e7ff8a5c5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



