Delivery-date: Thu, 12 Dec 2024 08:20:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLdUU-00763Q-1W
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 08:20:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLdUT-0002RA-OZ
	for lore@pengutronix.de; Thu, 12 Dec 2024 08:20:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6vNK1zA2T78s+8GORxjk535iQFDr+OJizxh79UBz7Ig=; b=XzWpUssSffqM4n2zWF7fZvQLb6
	z6r5Ra9Hp4pc94BamVwYTPiVn6yyYQbLzTPi0FLF1PqGvvYkcLVYgL1yxdzNuXE2Ry3ddwpCzkW7f
	cBfUYYKbaul4Bx4lrtkhbovMtZnbAlWxDUtksos4x+JpHvuuE7oFFfd+l8UghSJTgf+sQqlsdJrzO
	uVfLM5rXPQ0ahitGaupptWdpHTdSPX1PazkzE5XRoVRjTuHrMDCb0YboogPgpwyrz3rXqSthE5wBs
	VZbJGkYwHIXsc6wTGjnmRES1MiYr2QMu2/3+l3PNBDG+fJpZZhmPBNDBCKm5vwPwhJxEc5RfKY9g3
	lEujy5ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLdU0-0000000H8pR-0qgn;
	Thu, 12 Dec 2024 07:19:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLdTx-0000000H8nN-3lZB
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 07:19:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLdTv-0002Ib-D1; Thu, 12 Dec 2024 08:19:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLdTu-002znP-1R;
	Thu, 12 Dec 2024 08:19:31 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLdTv-00ALY0-0P;
	Thu, 12 Dec 2024 08:19:31 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Dec 2024 08:19:28 +0100
Message-Id: <20241212071928.2466094-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241212071928.2466094-1-a.fatoum@pengutronix.de>
References: <20241212071928.2466094-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_231933_931334_954E6922 
X-CRM114-Status: UNSURE (   9.76  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] bbremote: decode bytes output of getenv and md on command line
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

That way the output of

  scripts/bbremote  --port /dev/ttyUSB10  md /dev/zero 0 4

is 00000000 instead of b'00000000'.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/remote/main.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/remote/main.py b/scripts/remote/main.py
index 020a78c3fcb0..4bc855616ae3 100644
--- a/scripts/remote/main.py
+++ b/scripts/remote/main.py
@@ -71,7 +71,7 @@ def handle_getenv(args):
     if not value:
         res = 1
     else:
-        print(value)
+        print(value.decode())
         res = 0
     ctrl.close()
     return res
@@ -81,7 +81,7 @@ def handle_md(args):
     ctrl = get_controller(args)
     (res,data) = ctrl.md(args.path, args.address, args.size)
     if res == 0:
-        print(binascii.hexlify(data))
+        print(binascii.hexlify(data).decode())
     ctrl.close()
     return res
 
-- 
2.39.5



