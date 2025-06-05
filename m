Delivery-date: Thu, 05 Jun 2025 15:13:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPj-0041Rl-1k
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:13:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPg-00018y-CF
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:13:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qeaeto+3WKVjcPZ6IQAD5owxkdGSdW/JwbX8WMdD9UE=; b=FABfBD1yYYJ5biuk7mPVuJuESQ
	b/CkTBN11SDg/B031VTQH5EDYihVaapAy/nL85KzJUaO9qDUjRac3uh+aRye+LEuvsQzP/FZ+KLQd
	d8IfYopyX1ynjU3mR4vHqJvmaTZHm6EbmmoTMN3mOBhA1fBylZzuAjqNQnfy7nTCZsfx6/PwxA5SI
	AJfX8IDduKIirBJxVtDa2X4FwDR01G87k2OlsgC4vZom3eJ6Jr16OiyOTAYXBqo9IMVw3TDMwASHf
	FaX4g+FXIfwoupBTjIdE8PnExdtkitHnP9GRumV5GEdJ6zEMbuyrba479zHl6DhVvyGHkrxx2omUK
	nctk8Mag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAP1-0000000FZNR-3JTi;
	Thu, 05 Jun 2025 13:13:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFF-0000000FXrD-0wKZ
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:03:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-000136-3M; Thu, 05 Jun 2025 15:02:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFD-001xjo-2v;
	Thu, 05 Jun 2025 15:02:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1Z;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-10-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=1279;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jjRvxpowMLRgF/kDSwI530IvV1TJWm0aB7G3Nl2xELE=;
 b=ohS+n1xOnWnnNK5sVsTmhjtqbG8U9/PWTYwv3rKONsEu5K7joG2GLRhzm3EjW2EMnB1BbRkn1
 B3/6Zjoi0D8CNcRzNPrtXbGRraDbTIemOliZwlgkHP4aLWZ7XcCfnXz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_060257_290724_2B7D423E 
X-CRM114-Status: GOOD (  10.51  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/33] scripts/ti-board-config.py: fix length
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The number of config files is encoded in the header. So far this was
hardcoded to 4. Fix this to include the actual number of config files
instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/ti-board-config.py | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/scripts/ti-board-config.py b/scripts/ti-board-config.py
index 4b6214c299d7bf000a56d90dcdf9120d438f58ff..24731c66d017837ab66a78faa41f7c310644e79d 100755
--- a/scripts/ti-board-config.py
+++ b/scripts/ti-board-config.py
@@ -36,8 +36,6 @@ class Entry_ti_board_config:
         self._sw_rev = 1
         self._devgrp = 0
         self.cfgentries = []
-        self.header = struct.pack('<BB', 4, 1)
-        self._binary_offset = len(self.header)
         self._schema_file = schema
 
     def _convert_to_byte_chunk(self, val, data_type):
@@ -149,6 +147,9 @@ class Entry_ti_board_config:
         return data
 
     def save(self, filename):
+        print(len(self.cfgentries))
+        self.header = struct.pack('<BB', len(self.cfgentries), 1)
+        self._binary_offset = len(self.header)
         with open(filename, "wb") as binary_file:
             binary_file.write(self.header)
             for i in self.cfgentries:

-- 
2.39.5



