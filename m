Delivery-date: Thu, 08 Sep 2022 11:31:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWDsz-00AX62-9S
	for lore@lore.pengutronix.de; Thu, 08 Sep 2022 11:31:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWDsz-0001mF-K6
	for lore@pengutronix.de; Thu, 08 Sep 2022 11:31:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9HM9Wt2c4IV7qdw71nKz9ehaB1EztPTaFIEBtqmXkAo=; b=tKBDUXlRJnM71Qhh5skrG5noj+
	GTO/qVECFh2E/n/mVsjByb2z7vqXu5wRocgPLFwfwwjUuRsnosigjhmbbROvC38AwmRpdjPymFE8P
	tsdnnxnAJ5mwRBjENsIHFxPZjNDWQlAK5ZSIlrArBcJKU6RhCTdOFsr1/pd+K2NHsTFCuUPp/b8Z1
	VYldJNO7ZZ/U5rdJCl6RmzAADLVNsbKG+G10HFKlEdfShqfbeVQv/WsDVvTLeQdjZiwZks8drOOvt
	BsbUc+nYQWell4bnGKEI0hyhqZ2jmBtoRHzPIknGUAhXuS4ipuvmAfLng4Ihb1MvIKqxqkSvUnAnr
	/4+Oc6Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWDrb-001gUu-G2; Thu, 08 Sep 2022 09:30:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWDrQ-001gPW-7p
	for barebox@lists.infradead.org; Thu, 08 Sep 2022 09:30:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oWDrM-0001IP-O6; Thu, 08 Sep 2022 11:30:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oWDrJ-004bOV-Gt; Thu, 08 Sep 2022 11:30:07 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oWDrK-00CjeL-7s; Thu, 08 Sep 2022 11:30:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  8 Sep 2022 11:30:00 +0200
Message-Id: <20220908093005.3035259-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_023012_314758_3B185808 
X-CRM114-Status: GOOD (  10.65  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/5] bbremote: Convert to python3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix some things forgotten in v1;
- Update documentation
- Also convert ratpfs

Sascha Hauer (5):
  remove local pyserial
  bbremote: Convert to python3
  ratp: getenv: Do not crash on non-existing variables
  ratp: i2c: Do not return error
  bbremote: Print usage when no command is given

 Documentation/user/remote-control.rst         |   10 +-
 common/ratp/getenv.c                          |    3 +
 common/ratp/i2c.c                             |    4 +-
 scripts/bbremote                              |    2 +-
 scripts/remote/controller.py                  |   21 +-
 scripts/remote/main.py                        |   18 +-
 scripts/remote/messages.py                    |   13 +-
 scripts/remote/missing.py                     |    2 +-
 scripts/remote/ratp.py                        |    4 +-
 scripts/remote/ratpfs.py                      |   27 +-
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
 24 files changed, 67 insertions(+), 3916 deletions(-)
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



