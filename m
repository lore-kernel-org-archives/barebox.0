Delivery-date: Thu, 21 Sep 2023 12:24:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGrI-005lB7-NB
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 12:24:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGrG-0002FY-PC
	for lore@pengutronix.de; Thu, 21 Sep 2023 12:24:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9t0EgoVT7Bq7gFtnefZLx5MAGTVw+wwgKxm2RNtij3A=; b=HhaioqENVDAgCgAtO8fS5AIBtM
	wqrQJ7SvG51WtlCRqLxixn5b+rnzYRVkOM3yi8+o+BTfhNZPpudTHpxdD+r0+Z5SF749ob7+PlItB
	WXozGWohY/Cqjb12rp1WpnX0WbcLA3NztXQ6H+fPhpjiQMUkrkFxd9jH7Dy5CyDg90ZoabcM8V4qW
	VWOZnYj19lvVn2rJOI8/hjLw/bCc2mEu7CQZzsYHZzY0Eh89wK1JkKUMtuOyFTmwPXkJ2lwegyqfl
	SEFLKvq72G3FL3R3oLGIpae1R9tkqHE2BBITrwv7ZG0LK+6qlpvYc1TYYnGNI4LDGfEaY5bYD/BWc
	TqVQP2xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGq7-005haq-0p;
	Thu, 21 Sep 2023 10:23:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGq4-005hZC-0R
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 10:23:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-0001l8-RY
	for barebox@lists.infradead.org; Thu, 21 Sep 2023 12:23:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-007u1i-CC
	for barebox@lists.infradead.org; Thu, 21 Sep 2023 12:23:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-004eR6-11
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 12:23:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 21 Sep 2023 12:23:05 +0200
Message-Id: <20230921102310.1108543-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032316_181858_1D535BAB 
X-CRM114-Status: UNSURE (   4.58  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] rsatoc: make useful for standalone RSA keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Standalone RSA public keys are those that aren't part of the default
keyring used for FIT verification. This can be useful if barebox is to
do board-specific RSA verification of e.g. unlock tokens.

This series lays first ground work.

Ahmad Fatoum (4):
  scripts: allow user to build rsatoc if COMPILE_HOST_TOOLS
  rsatoc: support extracting RSA public key from X.509 SPKI format
  rsa: fix typos and missing type definitions
  rsatoc: support generating standalone keys unreferenced by FIT keyring

Rouven Czerwinski (1):
  rsa: escape pkcs11 string passed to RSA command

-- 
2.39.2



