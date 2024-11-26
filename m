Delivery-date: Tue, 26 Nov 2024 16:14:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxGg-000fHB-0f
	for lore@lore.pengutronix.de;
	Tue, 26 Nov 2024 16:14:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxGg-0002ab-6K
	for lore@pengutronix.de; Tue, 26 Nov 2024 16:14:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JxSp2w8CzAOpj7hhN2/UBfvxSphCvJo1Bh0omNrNnIE=; b=lg1oQc1MBvF3K8hGG5wCg5wqT+
	M6VwbKk6dvzCuft11jkF5RSGsRYoKuoxo35MYIK1LMVPDi9xES5QwxmrtT1tqZmW+nsuregylELOn
	ZpZptLv8KnUGUtzvi+Nu5fN03v6Gey8QoiMdQP4o+ZvZKoire2I8bsJ+3gQ+megl9ZQvW5r7EF4sw
	TQGvv/M8HtDAuuTZ3t73mnFa2M75eI4UnVSIFZk92kFRxVatUQd6uuXhsiQlOZitADGLmkb8Tx5dn
	CZKadjBX3W6IIJVGZDZ5HEFjkpmQoVDYAcKhGDKq9wZPjm/R+bKHfN31cFpxAxGsr/n0Tl9XGnlyv
	OQidgQXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxG5-0000000Axzc-37uL;
	Tue, 26 Nov 2024 15:13:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxG3-0000000Axyt-164A
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 15:13:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxG1-0002Kz-Oh; Tue, 26 Nov 2024 16:13:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxG0-000Gr1-2c;
	Tue, 26 Nov 2024 16:13:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxG0-00FBpS-2p;
	Tue, 26 Nov 2024 16:13:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Nov 2024 16:13:40 +0100
Message-Id: <20241126151340.3620283-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_071343_303277_58BBC2F2 
X-CRM114-Status: GOOD (  10.60  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: misc: use isalnum macro instead of open-coding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We sacrifice 256 bytes in barebox proper for a lookup table that is used
to optimize isalpha, isalnum and friends.

Let's make use of it by using isalnum instead of open-coding.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/misc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index 7e19797c2f99..0c883b76c1c2 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -11,6 +11,7 @@
 #include <globalvar.h>
 #include <environment.h>
 #include <led.h>
+#include <linux/ctype.h>
 #include <of.h>
 #include <restart.h>
 #include <poweroff.h>
@@ -155,8 +156,7 @@ static char *of_machine_compatible;
 static bool barebox_valid_ldh_char(char c)
 {
 	/* "LDH" -> "Letters, digits, hyphens", as per RFC 5890, Section 2.3.1 */
-	return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') ||
-	       (c >= '0' && c <= '9') || c == '-';
+	return isalnum(c) || c == '-';
 }
 
 bool barebox_hostname_is_valid(const char *s)
-- 
2.39.5



