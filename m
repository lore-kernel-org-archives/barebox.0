Delivery-date: Fri, 19 Dec 2025 11:37:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXru-00DAYU-0o
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:37:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrj-0005fH-0I
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:37:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JVOeVi1aGBMXZJyWmc5kvtHD6QBuJkqLP/l8C7D4spg=; b=aCrCX3vjv1/PDDad2a0P8RjuRh
	ZDdzwmDlPblHA53lnGMeqdCn/3bEj9eD4pF1Jx1NeI2f6PnIEC/7WVifk/XhqAQ3xCj3/v5z7RsQA
	jgfv5YhE4aYuyjauvYq+NOLFrAad+PLPig0iodIO6UthsL//9VGjDUU4Wec3wpIUwv0yGEh8mebLK
	MOA6SKeJJOJaRxi6jK9xBS6X0V8IYC2/gYb9JiAWfOMqo92FI4NrpBHZd4bBPfz2cTK8U8kqXpKJG
	g1y5PH/uA3MHuQWkeNvrAWV/toP0OfYB1OG46C5Zqn3CKOFaS+FWLSSlRKhLK5HPTZpxmY2aHpYNM
	cKphcvFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqy-0000000A63k-06jT;
	Fri, 19 Dec 2025 10:36:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqr-0000000A5ui-37KV
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-0004a8-8G; Fri, 19 Dec 2025 11:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqp-006RUI-2v;
	Fri, 19 Dec 2025 11:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-3tO2;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Maud Spierings <maudspierings@gocontroll.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:07 +0100
Message-ID: <20251219101453.2806980-32-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_023649_794278_757575F2 
X-CRM114-Status: GOOD (  14.88  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 31/49] scripts: imx: add pread implementation for mingw target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

Add a simple pread implementation for the mingw target so imx-usb-loader
can be compiled for windows.

This function is actually only called by bareboxtlv, which I don't think
targets being compiled for windows, so it is a bit of a dead weight.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251201-imx_usb-v2-2-95ec2a0e8694@gocontroll.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 969c9b94b58de50ab0db2eeef0a4dcfad4f5da5c)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/imx/Makefile.mingw64 |  2 +-
 scripts/imx/pread.c          | 25 +++++++++++++++++++++++++
 2 files changed, 26 insertions(+), 1 deletion(-)
 create mode 100644 scripts/imx/pread.c

diff --git a/scripts/imx/Makefile.mingw64 b/scripts/imx/Makefile.mingw64
index 101b39e9178d..a7be48ae5333 100644
--- a/scripts/imx/Makefile.mingw64
+++ b/scripts/imx/Makefile.mingw64
@@ -33,7 +33,7 @@ obj := $(realpath $(obj))
 CPPFLAGS := -I $(LIBUSB_MINGW)/include/libusb-1.0 -I $(src)/../include/ -I $(src)/../../include/mach/ -include $(src)/../include/defines.h
 LDFLAGS := -L $(LIBUSB_MINGW)/lib -lusb-1.0 -static
 
-OBJECTS := $(addprefix $(obj)/, imx.o imx-usb-loader.o)
+OBJECTS := $(addprefix $(obj)/, imx.o imx-usb-loader.o pread.o)
 
 $(obj)/%.o: $(src)/%.c
 	@$(CC) -c -o $@ $< $(CPPFLAGS)
diff --git a/scripts/imx/pread.c b/scripts/imx/pread.c
new file mode 100644
index 000000000000..febb6f32432c
--- /dev/null
+++ b/scripts/imx/pread.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2025 Maud Spierings, GOcontroll B.V.
+
+#include <stdint.h>
+#include <sys/types.h>
+#include <unistd.h>
+
+ssize_t pread(int fd, void *buf, size_t count, off_t offset)
+{
+	int offset_start, now;
+
+	offset_start = lseek(fd, 0, SEEK_CUR);
+	if (offset_start < 0)
+		return offset_start;
+
+	now = lseek(fd, offset, SEEK_SET);
+	if (now < 0)
+		return now;
+
+	now = read(fd, buf, count);
+
+	lseek(fd, offset_start, SEEK_SET);
+
+	return now;
+}
-- 
2.47.3



