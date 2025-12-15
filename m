Delivery-date: Mon, 15 Dec 2025 10:31:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4vL-00Bh9o-0e
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 10:31:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4vK-0000ZE-Kt
	for lore@pengutronix.de; Mon, 15 Dec 2025 10:31:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vQXTpfcjS7Jn3ckkSDXQ0ypZbVsohs7Ay8XvK/y7s4c=; b=l2DjE8peenWog0PSU+y3rlQuHa
	qUaOK05X9m1904KZDe40iKAII8Joj/gbcZS/YSAip0aDJSbSoR/J70QQ73wYr7zxoK+eJFHwhCbBz
	s7jCpD41jCe4zQYKLAvurJ8HNHI0wlqE+ZtS1/V1naZoA8g7qO/+lsC76gcHpFzd9/cp8x44MT2Mf
	xf81EWX3AO8UcopakitK41RF3QUuk/0NesUITyr9SQ1QIx2xKQOU/v9CR3Mj2S3DMBagtm2qTvWPT
	ALED4XgKn0BF4IwDR7B/vYc6FshIjmrzByGPN5ex7p/dop1fRI7v7l6YbCDui3JN7g/d2v27LVQM+
	/I41jqjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4us-00000003MjH-0hNB;
	Mon, 15 Dec 2025 09:30:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4up-00000003Miw-3QYW
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 09:30:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4uo-0000TS-D6; Mon, 15 Dec 2025 10:30:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4uo-005kyV-0i;
	Mon, 15 Dec 2025 10:30:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4uo-00000001Bpt-0fdk;
	Mon, 15 Dec 2025 10:30:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251210-devfs-prep-v1-0-3a2a3aa27eab@pengutronix.de>
References: <20251210-devfs-prep-v1-0-3a2a3aa27eab@pengutronix.de>
Message-Id: <176579105015.283807.4917452732259942845.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 10:30:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_013051_880129_86A9E675 
X-CRM114-Status: UNSURE (   7.73  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] selftest: preparations for devfs changes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 10 Dec 2025 11:15:58 +0100, Sascha Hauer wrote:
> With the devfs series devfs as a filesystem will go away. The dirfd
> selftest uses it though, so switch this test to use ramfs instead. This
> revealed a bug in the fs layer which is fixed in this series.
> 
> 

Applied, thanks!

[1/3] fs: get path in path_init()
      https://git.pengutronix.de/cgit/barebox/commit/?id=dd496c007f8d (link may not be stable)
[2/3] fs: warn when mount reference count becomes negative
      https://git.pengutronix.de/cgit/barebox/commit/?id=aa4835448c79 (link may not be stable)
[3/3] test: dirfs: use ramfs rather than devfs
      https://git.pengutronix.de/cgit/barebox/commit/?id=a8ae0a3a6c3b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



