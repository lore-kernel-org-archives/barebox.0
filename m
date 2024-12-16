Delivery-date: Mon, 16 Dec 2024 09:21:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6Lu-008kVV-2g
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 09:21:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6Lu-00080a-Pp
	for lore@pengutronix.de; Mon, 16 Dec 2024 09:21:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U+0/rgYT8fL4ItV/yeHqLZV7sm7jxz68OaeU74i5++c=; b=ggZ0dliSGURR1YUMpel+KGMr+l
	QoXHDSdcT+bdPw8v4M36ayea1UQxJhC6BKy+nD/1ryKDvl2DFSSAocBqmb+eB1CRsGxs9ILJeI4bR
	PJIgzSlic15KY/JtkQvTWlDzFkI5owEnXZPKVKueSpe5HCWpQQstCV4Uv2PIL145gf8rcaVe4MYll
	R4+wkSz8vrahPgl9NG/QTcTYxJjomzBelwqTlO1HghE84p4DyikJED+MPa3Q692f23ZNTsSKsNJqM
	+6rAkq2+rvu5W2wgmx99oFH0GgR9IozOiKISchcpRPtkUx+b/qqE8T7fcLSsnGljuGGuEZ3RK33PN
	v8ymWe9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6LT-00000009NHF-0Fv6;
	Mon, 16 Dec 2024 08:20:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6LQ-00000009NFo-3vTz
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 08:20:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6LP-0007r0-MW; Mon, 16 Dec 2024 09:20:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6LO-003f5k-2N;
	Mon, 16 Dec 2024 09:20:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6LP-006AAX-1Q;
	Mon, 16 Dec 2024 09:20:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241212083033.2560690-1-a.fatoum@pengutronix.de>
References: <20241212083033.2560690-1-a.fatoum@pengutronix.de>
Message-Id: <173433724744.1468950.15831302388435851092.b4-ty@pengutronix.de>
Date: Mon, 16 Dec 2024 09:20:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_002048_980457_045D8BDC 
X-CRM114-Status: UNSURE (   8.22  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/5] images: fix issues around misuse of FORCE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Dec 2024 09:30:28 +0100, Ahmad Fatoum wrote:
> v1 was here: https://lore.barebox.org/barebox/20241202124404.1814203-1-a.fatoum@pengutronix.de/
> 
> This series only adapts the commit message titles compared to v1.
> Since v1 however, changes to scripts/Kbuild.include have been merged,
> which are required to avoid a build error when no BAREBOX_MAX_IMAGE_SIZE
> is specified.
> 
> [...]

Applied, thanks!

[1/5] images: don't compare filesizes if file didn't change
      https://git.pengutronix.de/cgit/barebox/commit/?id=8ddc2d799b4a (link may not be stable)
[2/5] images: don't check for missing FW if file didn't change
      https://git.pengutronix.de/cgit/barebox/commit/?id=c2e320f6b243 (link may not be stable)
[3/5] images: fix missing FORCE prerequisite
      https://git.pengutronix.de/cgit/barebox/commit/?id=c718cfb50ca2 (link may not be stable)
[4/5] images: don't prelink if input file didn't change
      https://git.pengutronix.de/cgit/barebox/commit/?id=4c31478919f5 (link may not be stable)
[5/5] images: don't compute size if input file didn't change
      https://git.pengutronix.de/cgit/barebox/commit/?id=912696b571bb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



