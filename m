Delivery-date: Fri, 13 Mar 2026 11:30:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0zmi-0009lk-0G
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 11:30:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0zmh-0004cx-Gj
	for lore@pengutronix.de; Fri, 13 Mar 2026 11:30:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x9+sBh+tT9ehQJ4fdg1rG3wCzz37kdgXz4uuLkM8S0w=; b=cwIPp9WzcUGTvdQoWOpK5+uow1
	9FVo9ng/ocjtvp/xSVUKaGIWbVY7h4GPQ1IKqhEhzWKJKWih6wSWDJFFn+bkLZqCy/Uo7cNqSEa8w
	svFhYg1rMi2PbZDduWqcFRdqKNLZgunjq4ytQsfJ6oX2KRvDREeEOXENUVRNZXKDz+SwU8B5qnEpd
	S5HFM3b95wooFJSc0KOohnb164O4iVp0v/A76i1MwBfSZTyxRi841a2Pl1Z9nvqox+PV8qSNTQL5X
	9PiIYO5B3EU+SQ2mc84aJUWgZdLRkcBAd7ktbB6H0ZrHKxJXbqq2saYVIeEXN0cGSlfskAHflSzrX
	GbTJ9AKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0zm1-0000000HW93-0kEM;
	Fri, 13 Mar 2026 10:29:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0zlx-0000000HW8g-1W4B
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 10:29:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0zlu-0004Pe-V7; Fri, 13 Mar 2026 11:29:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0zlu-00041s-0D;
	Fri, 13 Mar 2026 11:29:34 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0zlt-00000007dms-438M;
	Fri, 13 Mar 2026 11:29:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Hemanth Kumar M D <Hemanth.KumarMD@windriver.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Mar 2026 11:29:00 +0100
Message-ID: <20260313102922.1820245-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_032937_422777_EF3A9F92 
X-CRM114-Status: UNSURE (   9.25  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] scripts: fix build failure with glibc 2.43
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Hemanth Kumar M D <Hemanth.KumarMD@windriver.com>

glibc 2.43 introduces linux/openat2.h through the fcntl include chain
(bits/fcntl-linux.h -> linux/openat2.h). This header expects the
__u64 type to be defined before inclusion.

In barebox scripts/include/linux/types.h the header <fcntl.h> was
included before the __u64 typedef, causing build failures such as:

  linux/openat2.h:20:9: error: unknown type name '__u64'

Move the inclusion of <fcntl.h> after the typedef definitions so that
__u64 and related types are defined before linux/openat2.h is parsed.

Signed-off-by: Hemanth Kumar M D <Hemanth.KumarMD@windriver.com>
Link: https://git.openembedded.org/openembedded-core/commit/meta/recipes-bsp/barebox?id=a217683514e051f996fe5675cf9accd44692f6ab
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Patch from OE-core. If it goes into the next release, it can be dropped
there on update.
--- 
 scripts/include/linux/types.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/include/linux/types.h b/scripts/include/linux/types.h
index 5b0133345bb9..33cea1986df5 100644
--- a/scripts/include/linux/types.h
+++ b/scripts/include/linux/types.h
@@ -4,7 +4,6 @@
 #include <stdbool.h>
 #include <stddef.h>
 #include <stdint.h>
-#include <fcntl.h>
 
 typedef uint64_t __u64;
 typedef int64_t __s64;
@@ -15,6 +14,8 @@ typedef int16_t __s16;
 typedef uint8_t __u8;
 typedef int8_t __s8;
 
+#include <fcntl.h>
+
 #ifndef __linux__
 typedef long long loff_t;
 #endif
-- 
2.47.3



