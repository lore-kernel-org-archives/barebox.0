Delivery-date: Fri, 11 Jul 2025 09:53:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ua8ZZ-00GKBg-0M
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 09:53:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ua8ZY-0002uy-Ie
	for lore@pengutronix.de; Fri, 11 Jul 2025 09:53:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fbytg9hFpmUvmP8997cRz/53+OEFwUwCeFrm5swwnmE=; b=3sfjzxTCCyi4viCqkKAziks+NE
	dg+jF8dApulpNkGDwp2vGzu/N6HhN0WFIJvvUEBTwn6LI7MEUuD1k0hnpsQ+HbnOKoyVrQ0PF1ZqH
	HuwL4+Ga10ITJLdHEENOrLaXUhr2TdxI2u4M8hY9hWA8LEgMnNJv8djzs9zO7bX3B/3DAEsYrwnoJ
	ys7KKUUjcbXYXmSa6GAmK054zn2A037+cNO0cd+9uSFVnPZGCt1OzMlP5EWQ0tQy/d3nxktSwTRLR
	9EjZGpX8F57/yqsQU5N21cdztTBHuf4Waqdt0b6wWijHSdugC1tbAjSkwcSa3rxlYM1wCQlR6KmKq
	0MF+tHEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua8Z2-0000000E2RF-1F2I;
	Fri, 11 Jul 2025 07:53:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua8Et-0000000DzDi-2aK7
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 07:32:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ua8Es-0006Ak-Bs
	for barebox@lists.infradead.org; Fri, 11 Jul 2025 09:32:10 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ua8Es-007skj-0a
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 09:32:10 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ua8Er-00GXtT-1n
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 09:32:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 11 Jul 2025 09:32:04 +0200
Message-Id: <20250711073208.3926688-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_003211_659334_02069F92 
X-CRM114-Status: UNSURE (   6.99  )
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
Subject: [PATCH v2 0/4] Documentation: devel: add new troubleshooting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A consequence of running bare metal is that early failures are difficult
to diagnose. Let's add a troubleshooting section to help users take
the first step in diagnosing issues.

Ahmad Fatoum (4):
  Documentation: devel: porting: split out architecture intro
  Documentation: devel: architecture: detail first/second stage handling
  Documentation: user: split community from feedback
  Documentation: devel: troubleshooting: add new chapter

 Documentation/devel/architecture.rst    | 200 ++++++++++
 Documentation/devel/devel.rst           |   2 +
 Documentation/devel/porting.rst         |  83 +----
 Documentation/devel/troubleshooting.rst | 465 ++++++++++++++++++++++++
 Documentation/devicetree/index.rst      |   2 +
 Documentation/user/introduction.rst     |  19 +-
 6 files changed, 688 insertions(+), 83 deletions(-)
 create mode 100644 Documentation/devel/architecture.rst
 create mode 100644 Documentation/devel/troubleshooting.rst

-- 
2.39.5



