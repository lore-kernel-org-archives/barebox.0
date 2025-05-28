Delivery-date: Wed, 28 May 2025 13:46:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFEo-001Ale-16
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 13:46:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFEn-0002pF-O3
	for lore@pengutronix.de; Wed, 28 May 2025 13:46:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qeaeto+3WKVjcPZ6IQAD5owxkdGSdW/JwbX8WMdD9UE=; b=g9Bc88TEy+ObdTO4B1boC6JLIe
	Szhrn22j7BWZsBLleDXwpdjBEwn6QoMIWBsXy8oc+8aZysQGIN6HXITl9OBShmi8D8wDMffQZxjp/
	B9GrtZ/9jl26XHj4OLBro99cCZ26x2SgmuKfHeFuTNpWjjBcoTDMs5rqOYlZ/d8d9BB84lPjfbWJg
	JGG0TX4dDUVyK8XICZJY2+qtTzZCLadmW9fi4M6Z0Y9RKi3YgRftJdhAJyWMX9k06gvdHgL2xwxHh
	t0TN7B8kZZXikdzxDlscnhZtwdP0hVJp3CY7EOFf7ajl2DGPVAdU0d/+OIOnFGVbj+R7lteCmBRW3
	eJX44GyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFE8-0000000D0An-3Xd4;
	Wed, 28 May 2025 11:45:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFE4-0000000D07f-0VIa
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:45:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE3-00021b-0Y; Wed, 28 May 2025 13:45:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-000a7K-25;
	Wed, 28 May 2025 13:45:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1a;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-9-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=1279;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jjRvxpowMLRgF/kDSwI530IvV1TJWm0aB7G3Nl2xELE=;
 b=qW58i1DoQd0AgqcQMaFdwaAo4eNYIhHQFNVOyTeAahTIo6cKsdfJZgRR3IIAjQV794x+NcwkA
 BpIgL/WTgdiD8pBiYZvAphDvNCmzMbodoiWfBKDKqIYXs16KBiFI6pU
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_044540_165905_309EC1B0 
X-CRM114-Status: GOOD (  10.40  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/31] scripts/ti-board-config.py: fix length
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



