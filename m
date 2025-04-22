Delivery-date: Tue, 22 Apr 2025 08:38:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u77Gw-003wCe-0Z
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 08:38:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u77Gv-0005WB-Kt
	for lore@pengutronix.de; Tue, 22 Apr 2025 08:38:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=R7IK5XYymFGq1H08mK1pOx/SN9ofHs6v0YR8jD3u8VU=; b=omfyukTtAk7dnlRy6eH9gLnSip
	9cSK9bgcD85jGACClWhzKWouKfCDPEdjHFc6RYpzrw2BiROUpVoIz0Pw/KoDqGv/aUeVJY6hH8FNL
	lwFA0oHdmIE6S1l+ZoJaiH8ii0e9PZvPY63umroWNVzkPFUibWxT3aCxiGH7oPfPByoZdAdRaHROh
	CrWMhYs8nGMGQLWg8CGUVW/OagxYcj7+Io55IqzYCrr378Vy7uMQ0zAA6XWNAX4BphOeVji/MHwbQ
	sZgSS829GD05vQS+GA6/u+fuMELLvItiDKm4EmpnrlAQJxNDt5YR+yhG3XYXbKlJTTbb102Uuu3+f
	NIJkckig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u77GH-00000005zfK-0WGA;
	Tue, 22 Apr 2025 06:37:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u77GD-00000005zcG-3V4s
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 06:37:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u77GC-0005N0-9u; Tue, 22 Apr 2025 08:37:36 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u77GC-001VSC-0K;
	Tue, 22 Apr 2025 08:37:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u77GC-000Wqy-01;
	Tue, 22 Apr 2025 08:37:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 08:37:33 +0200
Message-Id: <20250422063733.126107-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_233737_868692_CB4C00B2 
X-CRM114-Status: UNSURE (   9.09  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! defaultenv: boot/bnet: fallback to booting generic 2nd stage FIT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

defaultenv: boot/bnet: mention fallback to FIT image

When neither the normal barebox image or the FIT image exists, the error
message will only list the FIT image, which can confuse users.

Therefore print out a message when the fallback happens.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 defaultenv/defaultenv-2-base/boot/bnet | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/defaultenv/defaultenv-2-base/boot/bnet b/defaultenv/defaultenv-2-base/boot/bnet
index b2eeab93d9b8..877616758dc9 100644
--- a/defaultenv/defaultenv-2-base/boot/bnet
+++ b/defaultenv/defaultenv-2-base/boot/bnet
@@ -6,5 +6,8 @@ path="/mnt/tftp"
 
 global.bootm.image="${path}/${global.user}-barebox-${global.hostname}"
 if [ ! -f "${global.bootm.image}" ]; then
-      global.bootm.image="${path}/${global.user}-barebox-${global.arch}"
+      fitimage="${path}/${global.user}-barebox-${global.arch}"
+      echo "Image  ${global.bootm.image} not found"
+      echo "Trying ${fitimage} as fallback"
+      global.bootm.image="${fitimage}"
 fi
-- 
2.39.5



