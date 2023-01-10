Delivery-date: Tue, 10 Jan 2023 09:51:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFALz-007Zyk-M5
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 09:51:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFALx-0008Fm-DI
	for lore@pengutronix.de; Tue, 10 Jan 2023 09:51:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7HkY/gnuaZsZ15Zj33n0e80VFZBYc8cE5WPWohf4AHw=; b=BL+p9pQRFqZuPt1CjBccqnIxPs
	I1RHUO/z8y/TWKR95qwtGazqEDenBGHdfDMIHzTaApaoa9jzPS4ZAue2hUPwz6W5bpiv49m2aP+EU
	zq3gYIBQsdV9TdRLGLndGzFQwsMn0sTIS87AiH5lHGTsNV1t31OhHaj13fKd+jnizV1inMF20mVfm
	d9mIe/8u987DyaW7UnlBt+0DbAwv2SJAeI/J3UwrHCkVmo+G/Css6eKdSTVMiT7PyYMb4NQEGX4oK
	Tn20q9KwDnCtYBDSGkroPPa6Qt51tOr/Zl1XYe9bPfeeaabcQjpoqYW1XPnyjyzAbseLfUELFEoig
	5sqNHnAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFAKL-005uN0-Hq; Tue, 10 Jan 2023 08:49:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFAKF-005uIj-8x
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 08:49:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK9-0007Ys-3S
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 09:49:37 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK8-0052Aq-Gl
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 09:49:36 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFAK7-00EQem-1e
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 09:49:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Jan 2023 09:49:26 +0100
Message-Id: <20230110084930.3439001-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_004943_336749_34B9268E 
X-CRM114-Status: GOOD (  11.21  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] lib: add jsmn JSON parser
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Board code I have needs to read out factory data encoded into JSON blob
on EEPROM. Import JSMN, a minimal JSON parser written in C.

I don't know if the board code will be upstreamed in future, but for
now, add a selftest that exercises the API. As JSON could be useful
elsewhere as well, I think it's good to have it in-tree.

Ahmad Fatoum (4):
  lib: add jsmn JSON parser support
  lib: extend jsmn with simple JSONPath lookup helpers
  vsprintf: implement %pJP for printing JSONPaths
  test: self: add json parser test

 include/bselftest.h |   3 +-
 include/jsmn.h      | 148 ++++++++++++++
 lib/Kconfig         |   5 +
 lib/Makefile        |   1 +
 lib/jsmn.c          | 457 ++++++++++++++++++++++++++++++++++++++++++++
 lib/vsprintf.c      |  44 +++++
 test/self/Kconfig   |   5 +
 test/self/Makefile  |   1 +
 test/self/json.c    | 146 ++++++++++++++
 test/self/printf.c  |  17 ++
 10 files changed, 826 insertions(+), 1 deletion(-)
 create mode 100644 include/jsmn.h
 create mode 100644 lib/jsmn.c
 create mode 100644 test/self/json.c

-- 
2.30.2



