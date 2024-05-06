Delivery-date: Mon, 06 May 2024 16:48:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3zdY-0069HQ-2X
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 16:48:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3zdY-0003BU-4B
	for lore@pengutronix.de; Mon, 06 May 2024 16:48:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nlNoVnLP4yo+231hFRlgbojw6mqq98GjpB1cfj71DdU=; b=KG5IXVmeSGxyyw/7jENP4+1IU9
	BkHA3BPpKezzZo6j2mqZZgkSrIJhgDH2pxAlHg3RsszMvSSdHn8kSf5LlD9abJMdHga06pw7ZF5Qj
	wtJvynjV76WSGb5yva3Soly5MVop5vE+gxk4HWCRXtCaz0z1/P0/xn8FqTrdAszY6TMwQJFd5FXiV
	SqxyrfvNAuGK2uMByJshbnaI1BeE6P3lZUv1hr8QbQfgjOR7kNENf3hsHzFYhHfugDN7Ay1mMnTA2
	BOfTWFaPNeExbKjW5IWJI+Wr5wlCeCYV5zDvQ850GbmMtDkrUod84w9yzr3b7wwFEvSez5pfZrJcs
	G7OfUgyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zcz-00000007jkg-2YUf;
	Mon, 06 May 2024 14:47:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zct-00000007jfz-2HIF
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 14:47:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcq-0002rj-CS; Mon, 06 May 2024 16:47:32 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcp-00GHbS-W7; Mon, 06 May 2024 16:47:32 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcp-00GqIH-2v;
	Mon, 06 May 2024 16:47:31 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  6 May 2024 16:46:07 +0200
Message-ID: <20240506144606.1562643-6-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=865; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=r7RI+jV7Ohxb+/asQORksv66sKMKmyv+n0NsJHsLAs4=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmOO0v118AH5yGvsrrbGLLuEtWFZWHfpbeAsIBq EGHxilpSfaJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZjjtLwAKCRCPgPtYfRL+ TsPBB/9pQww3amfVuldNvF3Pri6FSzALajQTACiCRH3zC1Xs3uUAlnEooV1O4jE72x9MHwWSGMr hziuy3fw0oI5nStjDX4Ao7Jie59wBPd/vke2aMoTkTXiQShkgNLFUZjd+7B9LeKTOVsw+Yrkzls t4hDSfjFTSWoR6duJBbMnCOAqFloOSmHbxK2rMCyUEsK1HRSqmj03aheR9xaj672BsSSTKFS673 HDnYGNToNCNYqItzN5HwkGIz4CvIV8S2gpmxVuH6nRRrfNUyU0LEhslSMDqnk7MBXn1+YU6owo9 Y00QZT6tcdbsW4v7tJmj4UjSpL4bwMsBWUvtBaRGj9P9YvR3
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_074735_652460_414D7BDE 
X-CRM114-Status: UNSURE (   7.25  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/4] mtd: nand: mxc_nand: Only automatically create BBT if NAND seems to be pristine
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

this is v2 of this series. The changes are:

 - More cleanups
 - Keep checkbad() function (Sascha)
 - Check each block if it contains a barebox image or a UBI

(implicit) v1 available at
https://lore.barebox.org/barebox/20240430094451.1038256-4-u.kleine-koenig@pengutronix.de/T/#t

This is based on master.

Best regards
Uwe

Uwe Kleine-König (4):
  mtd: nand: mxc_nand: Improve comment about vendor BBM and address verschwurbelung
  mtd: nand: mxc_nand: Cleanup code creating bad block table
  mtd: nand: mxc_nand: Add error message if BBT creation fails
  mtd: nand: mxc_nand: Only automatically create BBT if NAND seems to be pristine

 drivers/mtd/nand/raw/mxc_nand.c | 95 ++++++++++++++++++++++-----------
 1 file changed, 64 insertions(+), 31 deletions(-)

base-commit: 302db826b67c44a925a25a7b7508bc82a0fcd6a8
-- 
2.43.0



