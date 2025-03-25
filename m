Delivery-date: Tue, 25 Mar 2025 14:03:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx3wl-004182-0Y
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 14:03:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx3wj-000537-VJ
	for lore@pengutronix.de; Tue, 25 Mar 2025 14:03:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FsFElZFPNH+G1vCb3gQ11leLHmG+OYMcpGN+nJiB/jA=; b=YQpGvBVpyNfSV6otMZa/Usc5/B
	dQVuMcCP2ce61Avm9Usr5qA+CTlu036H5slW4fxyvp35r5EzqJGhY81rGYOuyQAzm2MUtmcfN70hI
	hOUGipKR7dzIb+3GQtPm38Wx2B0E4EWls4/4fnUQomhIYq4/6WVXSItGFDhUmmTKjPmVidCAUEApq
	Im4xnWJtJz3w6i+oCzx18gAAbHSosIbjwRjK/501OjWDE3j0JG9aE81ZfskUXOiimkZAQDJppdl7l
	WJYhALS6iK8BmdnsS1dAAoShlya8GBB3y19nCxGqH6mGpxqTjayfk2Mt/LGzHXqX6spM4xcg1cWYG
	AealCxnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx3wC-00000005xkc-0FzP;
	Tue, 25 Mar 2025 13:03:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx3h6-00000005vGS-3K2k
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 12:47:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tx3h3-0000tZ-7q; Tue, 25 Mar 2025 13:47:45 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tx3h2-001a8b-20;
	Tue, 25 Mar 2025 13:47:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tx3h2-00GwOu-35;
	Tue, 25 Mar 2025 13:47:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 25 Mar 2025 13:47:40 +0100
Message-Id: <20250325124740.4035964-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250325124740.4035964-1-a.fatoum@pengutronix.de>
References: <20250325124740.4035964-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_054748_872230_A3344397 
X-CRM114-Status: UNSURE (   9.72  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] sandbox: os: tap: make it compile with musl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

musl not ship a definition of IFF_TAP. As this is ABI set in stone,
let's just duplicate the constant we need and use them as fallback, when
<linux/if_tun.h> is missing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/tap.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/sandbox/os/tap.c b/arch/sandbox/os/tap.c
index 83b97ffd49c7..fbb20f2fa80f 100644
--- a/arch/sandbox/os/tap.c
+++ b/arch/sandbox/os/tap.c
@@ -21,10 +21,20 @@
 #include <fcntl.h>
 #include <sys/ioctl.h>
 #include <sys/socket.h>
-#include <linux/if.h>
-#include <linux/if_tun.h>
+#include <net/if.h>
 #include <string.h>
 
+#ifdef __has_include
+#  if !__has_include(<linux/if_tun.h>)
+#    define IFF_TAP		0x0002
+#    define IFF_NO_PI	0x1000
+#    define TUNSETIFF	_IOW('T', 202, int)
+#  endif
+#endif
+#ifndef IFF_TAP
+#  include <linux/if_tun.h>
+#endif
+
 int tap_alloc(const char *dev)
 {
 	struct ifreq ifr;
-- 
2.39.5



