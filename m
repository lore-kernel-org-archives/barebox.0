Delivery-date: Fri, 23 Jan 2026 09:06:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjCBo-004Pc6-0q
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 09:06:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjCBn-0000pD-9t
	for lore@pengutronix.de; Fri, 23 Jan 2026 09:06:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KxsiJjUynCrTUQnMvTlqJAODSPgtRq+JldArEU6+61k=; b=nA1gdJn9NIkLItFI4y8s4FbpfU
	3pF1BOaN6WIAR7qI2g8M5akkjbifJX1nWRAcG7/A+gllR66JnHSGxs9RM3W7mdi8+GqfMQ0OQYI5P
	n4yJyxVlg7WNIPCZBIqjJKtwyFH92zc1wh/9uJWsCe+09GBUgo2ebaWYUuRyCQFvejc7wU7Kqbe9c
	8D5BM8O7pPWWTCWShW/5UpFwfjGB/1xIWqgvS/VgRs9u+aURCLDlDHoZ0hQn/Pawmr8Zj8G2zkEPo
	n4ueEiNkDi95w3Zx7Y17EjAQ/K/IAix8Acvl8vlrKF7wSapf2yf9KyQJAgdaKiC7K+ZrqLZ+EQ/kU
	EKWLTEkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCBN-00000008Q6j-0CAX;
	Fri, 23 Jan 2026 08:06:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCBL-00000008Q61-0b4c
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 08:06:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCBJ-0000G2-K0; Fri, 23 Jan 2026 09:06:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCBK-0023ei-0G;
	Fri, 23 Jan 2026 09:06:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCBJ-0000000GEzT-1TAY;
	Fri, 23 Jan 2026 09:06:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260120-android-image-v1-0-820595a1b8a4@pengutronix.de>
References: <20260120-android-image-v1-0-820595a1b8a4@pengutronix.de>
Message-Id: <176915557334.3870691.11213079135615370655.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 09:06:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_000615_184448_0261E358 
X-CRM114-Status: UNSURE (   7.51  )
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
Subject: Re: [PATCH 0/2] Android image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Jan 2026 15:55:30 +0100, Sascha Hauer wrote:
> Android images are particularly useful with fastboot. The fastboot host
> tool encapsulates boot images in its own rudimentary image format which
> we can't boot directly. This series replaces the existing ARM32/zImage
> only Android image handler with a generic handler which only passes the
> extracted Kernel/initrd image on to bootm.
> 
> Sascha
> 
> [...]

Applied, thanks!

[1/2] libfile: copy_fd: add size argument
      https://git.pengutronix.de/cgit/barebox/commit/?id=ecf516d2de4c (link may not be stable)
[2/2] bootm: add generic android image handler
      https://git.pengutronix.de/cgit/barebox/commit/?id=5747df949877 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



