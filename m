Delivery-date: Mon, 24 Nov 2025 19:00:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNarb-004SvV-26
	for lore@lore.pengutronix.de;
	Mon, 24 Nov 2025 19:00:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNarb-0002Ch-3I
	for lore@pengutronix.de; Mon, 24 Nov 2025 19:00:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=v35JzKHEcFiSwYeUoRHWz+Sr+vG0EsfXgepvvl41iZQ=; b=1tSe9hK8oBYhmZ3Y6gwbBRN8WU
	SYMIS+OCNEQJ1+qIwYss4lLCg4xkckdOT2HA46nzFIRXaaifRy+82NFZcwAOGG0lfNqnjBP6DjuMn
	i92TeeLb6iJQXtXzANu1U6DEdywjLNPtBB6to5LcrM/5mbYIjMFkGJOgn49DlX0gjl+HXzmPexwJn
	nDj+ALSqTtNcQUD1uj2YMlhCCZNL+3Mc1EzYfp5ks2GkVLCIb67qQksCx1oiIv8dyVckntUMCHxEq
	3Ol8nVPzUsy/0b19RGfZnwdmVCxorW92yqtQxb3UGN8Ayc87IEsHgE5/73Wh28LQGiulBAuYnoSYk
	zuc7O60Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNaqw-0000000C8op-0t5C;
	Mon, 24 Nov 2025 17:59:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNaqs-0000000C8na-2v9O
	for barebox@lists.infradead.org;
	Mon, 24 Nov 2025 17:59:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNaqq-00020u-Ew; Mon, 24 Nov 2025 18:59:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNaqq-002Dwa-0t;
	Mon, 24 Nov 2025 18:59:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNaqq-00000007EuD-0kd5;
	Mon, 24 Nov 2025 18:59:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Jan=20L=C3=BCbbe?= <j.luebbe@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Nov 2025 18:59:40 +0100
Message-ID: <20251124175947.1725563-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_095950_736475_C29976C5 
X-CRM114-Status: GOOD (  11.36  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] defaultenv: skip non-existent dirs in defaultenv_append_runtime_directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

QEMU fw_cfg file system driver is the sole user of
defaultenv_append_runtime_directory() and it passes a path that's not
necessarily available.

When that happens, this is not noticed until the loop in defaultenv_load()
aborts early with an -ENOENT preventing load of an external environment.

Fix this as well as further issues of this sort by not adding directories
that don't exist at the time defaultenv_append_runtime_directory() is
called.

Fixes: 31dfb561d1a4 ("fs: qemu_fw_cfg: support populating environment via QEMU fw_cfg")
Reported-by: Jan Lübbe <j.luebbe@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 defaultenv/defaultenv.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index d6cca466a683..652fda05027a 100644
--- a/defaultenv/defaultenv.c
+++ b/defaultenv/defaultenv.c
@@ -20,6 +20,7 @@
 #include <init.h>
 #include <libfile.h>
 #include <asm/unaligned.h>
+#include <fs.h>
 #include "barebox_default_env.h"
 
 static LIST_HEAD(defaultenv_list);
@@ -100,6 +101,10 @@ void defaultenv_append(void *buf, unsigned int size, const char *name)
 void defaultenv_append_runtime_directory(const char *srcdir)
 {
 	struct defaultenv *df;
+	struct stat s;
+
+	if (stat(srcdir, &s) || !S_ISDIR(s.st_mode))
+		return;
 
 	defaultenv_add_base();
 
-- 
2.47.3



