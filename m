Delivery-date: Mon, 12 Dec 2022 17:43:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p4lu2-001ppJ-TZ
	for lore@lore.pengutronix.de; Mon, 12 Dec 2022 17:43:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p4lu2-0006qi-Gr
	for lore@pengutronix.de; Mon, 12 Dec 2022 17:43:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VEPxmbtxr1buF5UUeux5DhfIQ2yReFaNbZeW/3tU3OY=; b=z7OKFg8OU6lsIn3qXJR+til/Ev
	CP8IixoTjbYY35gMdY2tgx7JRCLhRciOcQQy54mPnUnLfD7pmiob4NrmKUKPi2hTxmWGKzOKRWvPN
	ziqD/0N3I0fUhZKyO5yoBuFCYOFP7NbqwlvIR0MMbOEh4tcMpw6gOEEgQuy6+ebdBRowie3Otmgit
	KoVCRjhPLB9h34Ae2zIRlkZcp8gvyYca/RuDTvI4fTcZxZ4ZA7+o4tSg5KcoBEHKGtYOz3GLa91v+
	Iw5uPnyro1JAhKNyANooC978vm/SZRuIs7d32HjOFQ1UlreP2P+8Ch/qWtT8VhEqKzL/65bplhce9
	R12sJvhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4lsl-002FAS-Al; Mon, 12 Dec 2022 16:42:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4lse-002F8J-84
	for barebox@lists.infradead.org; Mon, 12 Dec 2022 16:42:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p4lsc-0006eM-Oz; Mon, 12 Dec 2022 17:42:14 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p4lsb-0043ox-B6; Mon, 12 Dec 2022 17:42:14 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p4lsb-009v8x-Fz; Mon, 12 Dec 2022 17:42:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Dec 2022 17:42:10 +0100
Message-Id: <20221212164212.2358450-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221212_084216_317228_71A9C245 
X-CRM114-Status: UNSURE (   8.70  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] ARM: start: print debugging info when CONFIG_DEBUG_INITCALLS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CONFIG_INITCALL_DEBUG can be very useful to debug early barebox hangs,
but it doesn't help when the hang happens just before. In this case,
enable the early barebox proper debug messages.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - reworded commit message after changes to now 3rd commit
---
 arch/arm/cpu/start.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f9b617aa855a..be303514c23d 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -3,6 +3,10 @@
 
 #define pr_fmt(fmt) "start.c: " fmt
 
+#ifdef CONFIG_DEBUG_INITCALLS
+#define DEBUG
+#endif
+
 #include <common.h>
 #include <init.h>
 #include <linux/sizes.h>
-- 
2.30.2



