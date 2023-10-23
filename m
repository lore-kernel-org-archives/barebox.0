Delivery-date: Mon, 23 Oct 2023 16:33:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quvzH-001H2h-PL
	for lore@lore.pengutronix.de; Mon, 23 Oct 2023 16:33:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quvzG-0001MC-L0
	for lore@pengutronix.de; Mon, 23 Oct 2023 16:32:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c/bRhOw9VDdkqxnbZ4aUdj1UPhsExeMM5XL++QMoPs4=; b=WXeRQf4JdszzCHrpD6CrLgNZEe
	7TMKtSWkfJii4ezecSQpEnPTE9VRNKGTS23Rr3MU1lCLKO5BvcBzY4LthktPKTqsAOtQzJ8qSiib5
	PNGaZlYfRGD2DFrhQmUX6a5pfEnKzhoOIElelmKmkJymlyrkJzN+/9AIWLfLVimNcs36WYNU9Nyuy
	Lg6UORtzS3PsleMzgtNiuEPjlSJsXDMb7Jafcbya2m6fQk9JZqxk15N1vn8uDVsvLQpEz3eyMVEzk
	xRxDukri38ryLrCsAkL3M6ezucgR49HZf76EzslODOjnKgPXiY+of4MJpGsGUpnF9rzmwWYruPdba
	UtHqOaeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quvxy-007YBl-2e;
	Mon, 23 Oct 2023 14:31:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quvxv-007YAd-1P
	for barebox@lists.infradead.org;
	Mon, 23 Oct 2023 14:31:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1quvxr-00013J-RM
	for barebox@lists.infradead.org; Mon, 23 Oct 2023 16:31:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1quvxr-003jWk-Em
	for barebox@lists.infradead.org; Mon, 23 Oct 2023 16:31:31 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1quvxr-007Pek-1L
	for barebox@lists.infradead.org;
	Mon, 23 Oct 2023 16:31:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 23 Oct 2023 16:31:20 +0200
Message-Id: <20231023143122.1760217-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_073135_477347_4A2FB0A1 
X-CRM114-Status: GOOD (  10.50  )
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
Subject: [PATCH 0/3] crypto: add JSON Web Token (JWT) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

JSON Web Token is a proposed Internet standard for creating tokens with
optional signature and/or optional encryption whose payload holds JSON that
asserts some number of claims. The tokens are signed either using a private
secret or a public/private key.

In the context of barebox, a JSON Web Token can be used as unlock token
for a system: By default, the system would be locked and only boot
signed payloads, but when a valid unlock token is provided, board code
can selectively allow access to disallowed features, such as booting
unsigned payloads or provide access to the console and shell.

This series adds first support for JSON Web Tokens on top of the already
existing JSON support. RS256 is the only currently supported format, but
more may be added in future. In lieu of upstreaming board code making
use of this, a selftest is added that decodes a JSON Web token after
verifying it and asserts that the claim contained inside are as expected.

Ahmad Fatoum (3):
  lib: base64: add support for base64url
  crypto: add JSON Web Token (JWT) support
  test: self: add JSON Web Token tests

 crypto/Kconfig                   |   6 +
 crypto/Makefile                  |   2 +
 crypto/jwt.c                     | 241 +++++++++++++++++++++++++++++++
 include/base64.h                 |   1 +
 include/crypto/jwt.h             |  55 +++++++
 lib/base64.c                     |  60 +++++++-
 test/self/Kconfig                |   7 +
 test/self/Makefile               |  11 +-
 test/self/jwt.c                  | 157 ++++++++++++++++++++
 test/self/jwt_test.pem           |  37 +++++
 test/self/jwt_test.pem.c_shipped |  49 +++++++
 11 files changed, 620 insertions(+), 6 deletions(-)
 create mode 100644 crypto/jwt.c
 create mode 100644 include/crypto/jwt.h
 create mode 100644 test/self/jwt.c
 create mode 100644 test/self/jwt_test.pem
 create mode 100644 test/self/jwt_test.pem.c_shipped

-- 
2.39.2



