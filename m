Delivery-date: Thu, 20 Feb 2025 07:46:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl0Ke-004cDh-2Z
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 07:46:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl0Kd-0004HF-K6
	for lore@pengutronix.de; Thu, 20 Feb 2025 07:46:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2j/KJzlFGmo+imbbxtbEb7wZzb4kb2/+UBDR7C4cdoA=; b=HbtW6R0Y3FF3jwwvBA+/Q5glAP
	muH8QxkYFgkRSeo5vYR6HV8/w+Tcp3jWv8AxCaLxDYogYp3nR2HD17e7dpfEZ/gZ8lDo5KcUtQbJG
	yMQkLDRbhTUzu/ywS8Rp4lO+fXs5l+jbkuXIZTL6jvJ6axWb/VGgg/CG5fP0Zzi3GhwPhNT4FToAr
	2Ir/IRPujxpAZgS3SWEAMQpL56Fk9rrorcmaBR1suYEUJq3HyNPug4RwRDooug51XryNcpMi2bWkB
	a4vIqYEUVlHRmCH+/l8NzPcBX2YfQXIEJF5lgujmcMm8eiOhOPPnQ11lvYv0faf+XBjCceg7zjEnf
	0xDp1uVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl0KC-0000000H05o-0uaB;
	Thu, 20 Feb 2025 06:46:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl0K6-0000000H04I-27re
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 06:46:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tl0K5-00048g-1V; Thu, 20 Feb 2025 07:46:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tl0K4-001tQc-2m;
	Thu, 20 Feb 2025 07:46:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tl0K4-003dET-2T;
	Thu, 20 Feb 2025 07:46:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2025 07:46:12 +0100
Message-Id: <20250220064612.865757-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250220064612.865757-1-a.fatoum@pengutronix.de>
References: <20250220064612.865757-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_224614_557391_F3C6F281 
X-CRM114-Status: GOOD (  10.18  )
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
Subject: [PATCH master 2/2] scripts: common.h: define loff_t on musl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Target tool build against musl fails, because loff_t is undefined,
despite _GNU_SOURCE being defined.

This is because glibc defines loff_t via <sys/types.h>, but musl defines
loff_t only in fcntl.h and the latter file isn't included beforehand in
imx-usb-loader-target.c.

Add the missing include to <linux/types.h> and include that header in
scripts/common.h to resolve the musl breakage.

This issue was noticedd during a Yocto build against musl, but can be
easily reproduced in Debian as well using the musl-tools package:

  export ARCH=sandbox
  make HOSTCC=musl-gcc CC=musl-gcc targettools_defconfig
  make HOSTCC=musl-gcc CC=musl-gcc

Changes to CI to build sandbox against musl will follow later.

Fixes: 5171f4d0696f ("scripts: implement read_fd and pread_full for tools")
Reported-by: Enrico Jörns <ejo@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/common.h              | 2 ++
 scripts/include/linux/types.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/scripts/common.h b/scripts/common.h
index a0d16606b5d9..21ec576a5be9 100644
--- a/scripts/common.h
+++ b/scripts/common.h
@@ -1,6 +1,8 @@
 #ifndef __COMMON_H
 #define __COMMON_H
 
+#include <linux/types.h>
+
 int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_size);
 void *read_file(const char *filename, size_t *size);
 void *read_fd(int fd, size_t *out_size);
diff --git a/scripts/include/linux/types.h b/scripts/include/linux/types.h
index e81d7e810126..5b0133345bb9 100644
--- a/scripts/include/linux/types.h
+++ b/scripts/include/linux/types.h
@@ -4,6 +4,7 @@
 #include <stdbool.h>
 #include <stddef.h>
 #include <stdint.h>
+#include <fcntl.h>
 
 typedef uint64_t __u64;
 typedef int64_t __s64;
-- 
2.39.5



