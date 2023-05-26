Delivery-date: Fri, 26 May 2023 19:02:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2aq4-00FKJS-06
	for lore@lore.pengutronix.de; Fri, 26 May 2023 19:02:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2aq1-0007DY-Lc
	for lore@pengutronix.de; Fri, 26 May 2023 19:02:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TuxiqjIUaeXgP9ke9vFgIPVopFt95LHHLGf2hd486yw=; b=Xm39IofxbB7ZQ1ZBhd8pKNA8ML
	9o/+mi6AoED2lVTKFwR5T4LGs64G5cGJOi/wAxUlRT1rctc4/zBUxK2/+MHamvqeO5gAXO+w5w1uJ
	cPtvaPagJhY6onwPBPy1KNPaQw+vtzCivPQaLYoePApOI1mPB9vIRd31NHpdGAiCZgIotrLtIZCaW
	FwZGpGb6Qc4tuX4ZJDRHSdPQpYNFETndpjd1NBgxal5dLqIyYJloMMhQo/ocMtXTjp17WY0kFzR0A
	RHAQ7u7a8JpMdm72Ioe19vzWdIblRvRuwUpW8CNMELl3O3H/R5RSUydP+FdFRTel3yQZ3yusHePUN
	YEiiDonA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2aon-003DC7-05;
	Fri, 26 May 2023 17:01:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2aoi-003D9h-34
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 17:01:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q2aoc-0006sh-4S; Fri, 26 May 2023 19:01:22 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q2aoa-002zr6-NW; Fri, 26 May 2023 19:01:20 +0200
Received: from localhost ([::1] helo=dude03.red.stw.pengutronix.de)
	by dude03.red.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1q2aoZ-004YJF-J8; Fri, 26 May 2023 19:01:19 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: kernel@pengutronix.de,
	ahmad@a3f.at,
	afa@pengutronix.de,
	patchwork-jzi@pengutronix.de
Date: Fri, 26 May 2023 18:59:46 +0200
Message-Id: <20230526165947.1079052-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_100128_996951_201234DC 
X-CRM114-Status: GOOD (  12.98  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] imx-usb-loader: fixes in displaying version number
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As Ahmad pointed out in [1], compilation failed if the prepare make
target was not called before compiling the imx-usb-loader, which caused
the generated file not to exist when building for the sandbox target and
broke the build.

Instead of continuing to pursue the approach discussed in [2], a rather
straight-foreward approach of adding utsrelease.h as a dependency to
scripts has been chosen, as now the already-existing infrastucture can
be used instead of duplicating code in the Makefile.

Also, the version number was only set for the Host Tool, but not in the
target tool, which the second patch of this series fixes.

As the original patch was accidentaly sent out as a fixup, and as this
series chooses a slightly different approach, I decided to open a new
series.

Best regards
Johannes

[1] https://lore.barebox.org/barebox/20230525181320.2277320-1-ahmad@a3f.at/
[2] https://lore.barebox.org/barebox/20230526070847.52738-1-j.zink@pengutronix.de/

Johannes Zink (2):
  imx-usb-loader: fix compilation if prepare make target was not called
    before
  imx-usb-loader: also add version information on target tool

 Makefile             | 2 +-
 scripts/imx/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.39.2



