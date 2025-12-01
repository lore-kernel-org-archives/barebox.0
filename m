Delivery-date: Mon, 01 Dec 2025 11:26:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ17G-006moC-01
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:26:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ17F-0006oJ-Di
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:26:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wlfh88sN8JiBTeKHkt+Wc5whMYrUdh3fQYG7IUQLIv8=; b=OtTTOMYFJ4zRSaIJFlccNYm+S1
	lXPud4jK3WJpzVpB8i2fNGzlCuBueYH4ZWEaA9papr41t+f6FVWOVF5ogKX2A1XpRqKAvLwuP5+WA
	Aa9chK7ok44nq6BUbA+evY1m9ZK7mV4v4yp0u5as5mWqgWeYtQQ3DgyJihV9wvhicudAbUfqiu6mJ
	9Ghmkf+rjq82VHnRUjbhtmZAR7khByaR8traTbUKSeebiamYdZcodGNPInmflAniffFUEAjO4Iq8g
	grnRtNkplO08kTQ3INZl9p5xkU9CDTnATiqJcaVmVLwfvmcQNgWUUjrPEHJzILsMe98jXggGc82TD
	CmYkr2UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ16r-00000003KIk-3GbF;
	Mon, 01 Dec 2025 10:26:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ16p-00000003KGp-2s3a
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:26:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C5D1143629;
	Mon,  1 Dec 2025 10:26:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59DEC19421;
	Mon,  1 Dec 2025 10:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764584778;
	bh=8o1NRGjyDg+8QZllxJtLnVH/VZ8ht9FsG2UVcKPxcBY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=eXCYnAkuCk43KvB9WH9dKU38qs8FYRBj5xrnK115/0Pc0NVjx8oujyQA4G7vxi+wU
	 YKv3ymFaRL9smUICJQvHN3OimGRW0FDvRaaVSTqel1HCiwOH7B4N3eb+5WmTnoYw1M
	 Ub49njtqveYVKaCqKzCrtJcCb5Uum6xPra5Lfo7vc0uL/hhhVWWClzTb8guziTnZoS
	 DHoZIAq9oXO+c6wUXaFRlO1BI+Zm5gdgj1xbpRTQWsd9SImwa/1YNaMU6G2te39iPL
	 jSZyWzLYK8DubpuzLIQEbaMteRjyNLmAqrOMBEYR6ncIZ+iZYHxyxSqJk+oUW/mghR
	 znZQ+uvKjT/7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FADAD116F1;
	Mon,  1 Dec 2025 10:26:18 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Date: Mon, 01 Dec 2025 11:26:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-imx_usb-v2-2-95ec2a0e8694@gocontroll.com>
References: <20251201-imx_usb-v2-0-95ec2a0e8694@gocontroll.com>
In-Reply-To: <20251201-imx_usb-v2-0-95ec2a0e8694@gocontroll.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764584777; l=1814;
 i=maudspierings@gocontroll.com; s=20250214; h=from:subject:message-id;
 bh=OwKMuhXH5vvFbq1Z8XaoBUlAP4WA1sPVmfjqijDeoZM=;
 b=woLXBIN/jjS5yzBGoI2TR3E36NcLpcYAUxQ/WM0liQbyymFNqKXtF1O4nceN8OLT01/9FgeOn
 W1aRLl1ovSmBNYFYph5KKj44qXRLw6uisubNuXsKOgKYjWiboSDxtQl
X-Developer-Key: i=maudspierings@gocontroll.com; a=ed25519;
 pk=7chUb8XpaTQDvWhzTdHC0YPMkTDloELEC7q94tOUyPg=
X-Endpoint-Received: by B4 Relay for maudspierings@gocontroll.com/20250214
 with auth_id=341
X-Original-From: Maud Spierings <maudspierings@gocontroll.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_022619_772096_0902D022 
X-CRM114-Status: GOOD (  13.52  )
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
Reply-To: maudspierings@gocontroll.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/3] scripts: imx: add pread implementation for mingw
 target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

Add a simple pread implementation for the mingw target so imx-usb-loader
can be compiled for windows.

This function is actually only called by bareboxtlv, which I don't think
targets being compiled for windows, so it is a bit of a dead weight.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
---
 scripts/imx/Makefile.mingw64 |  2 +-
 scripts/imx/pread.c          | 25 +++++++++++++++++++++++++
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/Makefile.mingw64 b/scripts/imx/Makefile.mingw64
index 101b39e917..a7be48ae53 100644
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
index 0000000000..febb6f3243
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
2.52.0




