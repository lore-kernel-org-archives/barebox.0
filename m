Delivery-date: Fri, 04 Jul 2025 16:48:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXhiI-00E1Mr-2u
	for lore@lore.pengutronix.de;
	Fri, 04 Jul 2025 16:48:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXhiI-0006vJ-CP
	for lore@pengutronix.de; Fri, 04 Jul 2025 16:48:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0j/V4TT4027eXBgj5BeC+Fa5mLSoSpSq/VrRqKBHpz4=; b=GcEonuEcVNrSlK
	9f2ii6kE3cCOe3eXT77/izY+/82AOlLGr4guuHDRrIOU25s/4UvLG3d9U1REluYtBZYNB3lpHPgah
	kGIIB0AAXBhKYGu6pEd+5FKdcvKiUNjO1JZ5gDGerr9BOzVDvZXe6jNYpiUwdxlQCtXuV0N+kRTXP
	7ZU3K9BWyVRdYVzCZ8ir9UrOzA84R3mX52RQk4bzfAZIZOq44t4RjdE8VV+FqI7/KbvAybWs0h+4U
	DgwY3EGoPI/vHZ1e2DsdjLRGiUiUbS/owzUQsKm8gfjCDzWEck8o4KRaAkZBQ7FQVb6cq4C5eojWB
	Na9J17Mj5s85saEIQP6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXhhc-0000000Ei6S-0tUJ;
	Fri, 04 Jul 2025 14:47:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXhYF-0000000Egqq-1NnM
	for barebox@lists.infradead.org;
	Fri, 04 Jul 2025 14:38:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXhYE-0003GO-6g; Fri, 04 Jul 2025 16:38:06 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXhYC-006mUc-2p;
	Fri, 04 Jul 2025 16:38:04 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXhYC-00BWbQ-0r;
	Fri, 04 Jul 2025 16:38:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  4 Jul 2025 16:38:00 +0200
Message-Id: <20250704143803.2740813-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_073807_367788_23D1C344 
X-CRM114-Status: UNSURE (   7.64  )
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
Cc: David Picard <david.picard@clermont.in2p3.fr>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] Documentation: devel: add new troubleshooting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A consequence of running bare metal is that early failures are difficult
to diagnose. Let's add a troubleshooting section to help users take
the first step in diagnosing issues.

Ahmad Fatoum (3):
  Documentation: devel: porting: split out architecture intro
  Documentation: devel: architecture: detail first/second stage handling
  Documentation: devel: troubleshooting: add new chapter

 Documentation/devel/architecture.rst    | 200 +++++++++++++
 Documentation/devel/devel.rst           |   2 +
 Documentation/devel/porting.rst         |  83 +-----
 Documentation/devel/troubleshooting.rst | 377 ++++++++++++++++++++++++
 Documentation/devicetree/index.rst      |   2 +
 5 files changed, 588 insertions(+), 76 deletions(-)
 create mode 100644 Documentation/devel/architecture.rst
 create mode 100644 Documentation/devel/troubleshooting.rst

-- 
2.39.5



