Delivery-date: Tue, 06 Sep 2022 12:22:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVVjK-008VOF-BS
	for lore@lore.pengutronix.de; Tue, 06 Sep 2022 12:22:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVVjK-0004Ew-8F
	for lore@pengutronix.de; Tue, 06 Sep 2022 12:22:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=L1EINhjtBNPYkRIA28dcT0eEK1tzM7tG3Zkin7V34vc=; b=YmItdyK96aii8vmhPdnZtEzGxN
	fHb6f8cyiD/NPfKhG8dVLNxljhco7bmIHS6cdisvg8yUWE906udBk0ze1CNMhEaOk1wFRAlagdXJY
	JmudLDkCGRaFh3VuXxx7bq3uGyOfvGv7ZsZ83sMNmahYcPM1hff5/gOH0+4HT5/Fr4WA5T+kJ9m9U
	qLNIe0gpO6mBkAkWMDp11DQ39gZ6CPJHXOhFUzz2iUGjMrwUPMsRxZC7Y6n+4Sinh/BG4yxrKDmk6
	bWxRNuawZ/rCQv01q+Vg2ti2zcuVslafEWoWF8RgkJIC+qE9YJ7POftfhWQOQpDngOzj77nG5aZCp
	pKk1rksg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVVhd-00CMoZ-FF; Tue, 06 Sep 2022 10:21:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVVhR-00CMgp-Nd
	for barebox@lists.infradead.org; Tue, 06 Sep 2022 10:21:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oVVhM-0003gD-N2; Tue, 06 Sep 2022 12:20:52 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oVVhK-004ESa-3P; Tue, 06 Sep 2022 12:20:51 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oVVhL-005j0A-9b; Tue, 06 Sep 2022 12:20:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  6 Sep 2022 12:20:45 +0200
Message-Id: <20220906102049.1364561-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_032057_795385_1B80C460 
X-CRM114-Status: GOOD (  11.20  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] RATP updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series has some updates for the barebox RATP support, most
importantly the python3 conversion of the host side python scripts.

Sascha Hauer (4):
  remove local pyserial
  bbremote: Convert to python3
  ratp: getenv: Do not crash on non-existing variables
  ratp: i2c: Do not return error

 common/ratp/getenv.c                          |    3 +
 common/ratp/i2c.c                             |    4 +-
 scripts/bbremote                              |    2 +-
 scripts/remote/controller.py                  |   21 +-
 scripts/remote/main.py                        |    8 +-
 scripts/remote/messages.py                    |   15 +-
 scripts/remote/ratp.py                        |    4 +-
 scripts/remote/ratpfs.py                      |    4 +-
 scripts/remote/threadstdio.py                 |    4 +-
 scripts/serial/__init__.py                    |   79 -
 scripts/serial/rfc2217.py                     | 1327 -----------------
 scripts/serial/serialcli.py                   |  284 ----
 scripts/serial/serialposix.py                 |  730 ---------
 scripts/serial/serialutil.py                  |  572 -------
 scripts/serial/tools/__init__.py              |    1 -
 scripts/serial/tools/list_ports.py            |  103 --
 scripts/serial/tools/list_ports_linux.py      |  152 --
 scripts/serial/urlhandler/__init__.py         |    1 -
 scripts/serial/urlhandler/protocol_hwgrep.py  |   45 -
 scripts/serial/urlhandler/protocol_loop.py    |  279 ----
 scripts/serial/urlhandler/protocol_rfc2217.py |   11 -
 scripts/serial/urlhandler/protocol_socket.py  |  291 ----
 22 files changed, 40 insertions(+), 3900 deletions(-)
 delete mode 100644 scripts/serial/__init__.py
 delete mode 100644 scripts/serial/rfc2217.py
 delete mode 100644 scripts/serial/serialcli.py
 delete mode 100644 scripts/serial/serialposix.py
 delete mode 100644 scripts/serial/serialutil.py
 delete mode 100644 scripts/serial/tools/__init__.py
 delete mode 100644 scripts/serial/tools/list_ports.py
 delete mode 100644 scripts/serial/tools/list_ports_linux.py
 delete mode 100644 scripts/serial/urlhandler/__init__.py
 delete mode 100644 scripts/serial/urlhandler/protocol_hwgrep.py
 delete mode 100644 scripts/serial/urlhandler/protocol_loop.py
 delete mode 100644 scripts/serial/urlhandler/protocol_rfc2217.py
 delete mode 100644 scripts/serial/urlhandler/protocol_socket.py

-- 
2.30.2



