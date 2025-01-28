Delivery-date: Tue, 28 Jan 2025 11:03:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tciR4-005TYu-10
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 11:03:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tciR4-0000dK-Ew
	for lore@pengutronix.de; Tue, 28 Jan 2025 11:03:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lj32zyKoFujCreg9fTcvWgc2J9T5qu4tB1LqQ4ZEPwk=; b=EUYLXhGguhKdMpQSfHR6cDbW1e
	0kWlmTFh+915J1ThJ5Fy5U0dy3cq3F2l9q4HAhFxSjz3j2ddtUBPp8NcSW7I2bkgjbguHWkcmVxz/
	4NexZaHbMstexLFhvEY253D398Cdl7V+19BUiD3TQR2jbL1YpqtU6zGcg7A5QVD9pXMGM1jMgbfxa
	aCGU6OBqO4eXfhjfuw1G0FoYnu/4Tcmknv/nzaEzp3/CJoHMTr4LNiPlTR5Il1KpblXRu4kOP7T5M
	zs4YJa5aDpaGAbsBGvXHZgCdp6QirvxG+3JJ6Lsjn/LW2Q3ymMkMq4gnbarbJtkaboV43UgTq15nv
	VSOcrZSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tciQe-00000004bWq-383s;
	Tue, 28 Jan 2025 10:02:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tciQb-00000004bUx-3Uk4
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 10:02:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciQa-0000VG-Ny; Tue, 28 Jan 2025 11:02:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciQa-002HC2-1k;
	Tue, 28 Jan 2025 11:02:40 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciQa-0027zR-1X;
	Tue, 28 Jan 2025 11:02:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 David Dgien <dgienda125@gmail.com>
Cc: Billy Gomez <william.james.gomez@gmail.com>
In-Reply-To: <20250127-fix-macb-send-v1-1-d9b6067dda86@gmail.com>
References: <20250127-fix-macb-send-v1-1-d9b6067dda86@gmail.com>
Message-Id: <173805856047.507362.14627411854653229671.b4-ty@pengutronix.de>
Date: Tue, 28 Jan 2025 11:02:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_020241_874048_CABC6896 
X-CRM114-Status: UNSURE (   8.64  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] macb: Fix tx completion check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Jan 2025 23:16:18 -0500, David Dgien wrote:
> Check the send completion bit for the current packet in the descriptor
> ring, instead of just the first entry in the ring.
> 
> This fixes issues when sending multiple small packets in quick
> succession, such as with netconsole.
> 
> 
> [...]

Applied, thanks!

[1/1] macb: Fix tx completion check
      https://git.pengutronix.de/cgit/barebox/commit/?id=b661aa5ba735 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



