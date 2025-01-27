Delivery-date: Mon, 27 Jan 2025 20:52:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcV9N-005EI7-2v
	for lore@lore.pengutronix.de;
	Mon, 27 Jan 2025 20:52:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcV9N-00054e-Sn
	for lore@pengutronix.de; Mon, 27 Jan 2025 20:52:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lRC8QkjUkeYhkgzL9dz0JxSf8gaSk0azG5M2QBludIA=; b=zOlFl97Z7RcgHkAcoFvkGxI2vk
	BVhIQE+UyxoIGRfFDXq6EAkn5dv4R0TPaAI+I+dERcHZCMqUg3F7op97kC4pgZrXq9BWdImbkhjmJ
	2Dq/2aGrVN2zdThMxqmqJP6Jfe5G5gQSnNS2JLo4m3cLSUPMLweFMqV7EYxDrmBcBpdVm9vdA8poV
	6wW41XTXyfA5bE055/b3VcX8iWxk6HMMphr0qDso3XlqSE4RBrd7UqsWJFyvbsRvDmnOzTJrHveFy
	k5AyYYZjGa4mwct/U4dmcsnGHWauETRX92AtTzZ4okG6hOYrmjQDEW5aZPGNxzFZpkZuWHXgGnrGs
	FgbPns0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcV8g-000000039KM-0F4r;
	Mon, 27 Jan 2025 19:51:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcV8c-000000039Im-0zQT
	for barebox@lists.infradead.org;
	Mon, 27 Jan 2025 19:51:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tcV8a-0004vI-3K; Mon, 27 Jan 2025 20:51:12 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tcV8Z-002Azo-2T;
	Mon, 27 Jan 2025 20:51:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tcV8Z-00GTrL-2B;
	Mon, 27 Jan 2025 20:51:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Khem Raj <raj.khem@gmail.com>,
	=?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Jan 2025 20:51:09 +0100
Message-Id: <20250127195109.3928003-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_115114_274250_D85FCE20 
X-CRM114-Status: GOOD (  12.03  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH RFT v3] scripts: define _GNU_SOURCE for all source files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

musl doesn't define loff_t, unless _GNU_SOURCE is defined, which
we don't do everywhere and glibc didn't mind.

This led to build errors with musl when code makes it into
scripts/ that uses loff_t. This was already fixed once e.g. in commit
c0d065fb0aa0 ("scripts: bareboximd: remove usage of loff_t").

To fix this issue for good, let's define _GNU_SOURCE globally for all files.

Link: https://lore.kernel.org/all/CAMKF1sqX7gFCEH78fHS+jkUSieL5crAU_RwAUO-daJL0u+fj0g@mail.gmail.com/
Fixes: 5171f4d0696f ("scripts: implement read_fd and pread_full for tools")
Suggested-by: Khem Raj <raj.khem@gmail.com>
Reported-by: Enrico Jörns <ejo@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
@Enrico, please give this a test. I only tested against glibc.

v2 -> v3:
  - set _GNU_SOURCE instead of defining loff_t (Khem)
v1 -> v2:
  - include <linux/types.h> from scripts/common.h (Enrico)
v2 was here:
  https://lore.barebox.org/barebox/20250127143146.2965544-1-a.fatoum@pengutronix.de/T/#u
---
 scripts/Makefile         | 4 ++++
 scripts/imx/imx-image.c  | 1 -
 scripts/imx/imx.c        | 1 -
 scripts/imx9image.c      | 1 -
 scripts/kernel-install.c | 1 -
 scripts/keytoc.c         | 1 -
 scripts/kwbimage.c       | 1 -
 7 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/scripts/Makefile b/scripts/Makefile
index a780f05bd90f..c1a5b4b74775 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -60,6 +60,10 @@ rk-usb-loader-target-userldlibs += `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
 
 userccflags += -I $(srctree)/$(src)/include -isystem $(srctree)/scripts/include
 
+# We need to explicitly set the macro to empty, otherwise it's defined to =1
+userccflags += -D_GNU_SOURCE=""
+KBUILD_HOSTCFLAGS += -D_GNU_SOURCE=""
+
 subdir-y			+= mod
 subdir-y			+= imx
 subdir-$(CONFIG_DTC)		+= dtc
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 9ba60dbc5b4c..a8ac34091fc0 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 // SPDX-FileCopyrightText: 2013 Sascha Hauer, Pengutronix
 
-#define _GNU_SOURCE
 #include <stdio.h>
 #include <unistd.h>
 #include <getopt.h>
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 5ccc116cfe3c..26027f0f3548 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 // SPDX-FileCopyrightText: 2016 Sascha Hauer, Pengutronix
 
-#define _GNU_SOURCE
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
diff --git a/scripts/imx9image.c b/scripts/imx9image.c
index 53fb879882e8..61b7cc943f00 100644
--- a/scripts/imx9image.c
+++ b/scripts/imx9image.c
@@ -8,7 +8,6 @@
  *
  */
 
-#define _GNU_SOURCE
 #include <stdio.h>
 #include <string.h>
 #include <stdlib.h>
diff --git a/scripts/kernel-install.c b/scripts/kernel-install.c
index d943f0288f39..240122f2d224 100644
--- a/scripts/kernel-install.c
+++ b/scripts/kernel-install.c
@@ -72,7 +72,6 @@
  *
  */
 
-#define _GNU_SOURCE
 #include <stdio.h>
 #include <string.h>
 #include <stdlib.h>
diff --git a/scripts/keytoc.c b/scripts/keytoc.c
index c60df8a5f017..2a0d7c415bf0 100644
--- a/scripts/keytoc.c
+++ b/scripts/keytoc.c
@@ -9,7 +9,6 @@
  *
  */
 #pragma GCC diagnostic ignored "-Wdeprecated-declarations"
-#define _GNU_SOURCE
 #include <stdio.h>
 #include <string.h>
 #include <time.h>
diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index 370c54c983b5..c58c80e5415f 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -30,7 +30,6 @@
  * headers in v1 images
  */
 
-#define _GNU_SOURCE
 #include <stdio.h>
 #include <stdint.h>
 #include <sys/types.h>
-- 
2.39.5



