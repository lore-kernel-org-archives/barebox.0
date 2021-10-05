Delivery-date: Tue, 05 Oct 2021 09:02:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXeSv-00082g-Nz
	for lore@lore.pengutronix.de; Tue, 05 Oct 2021 09:02:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXeSu-0002Ku-QY
	for lore@pengutronix.de; Tue, 05 Oct 2021 09:02:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=neOtga2G0U3c2ckjr9XvKF29ywmKc1A90uVbfz+pXhc=; b=hkMLLNpIPIoDUh
	31l94zq/XruVvZQHHTGqtNlkSCd27cdBhG8UvMuM3aCZ3QmXioXk6Q+a5iGOE3fryEJqEJBaG9bzl
	IUhgNK9FihnTZ/fNjo954LTLMS+tX9A5bFIhPwAK/93BbuPPkyCdZMeDlMszI8yhZ+z3UZTc8OI5r
	jc2o+JSkPOUYz57Z6ONAqKHCvtLOKL8uxatuTnUCz5pU4vTki9Oo8b+AQdNxJ7J4/A53JVxsQPwUZ
	/IVhRXVNVB3/0vO57xyD3o9umQ+wATCM+S6UbNHg1FuYCHWWCenGigrJJo9HdowSdn7eFMYnd6RX8
	5DTzrvmDTq3YkOkULgrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXeR8-009EaQ-Az; Tue, 05 Oct 2021 07:00:26 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXeR2-009EYj-1m
 for barebox@lists.infradead.org; Tue, 05 Oct 2021 07:00:23 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 44C75FF810;
 Tue,  5 Oct 2021 07:00:13 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue,  5 Oct 2021 09:00:07 +0200
Message-Id: <20211005070007.1675059-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_000022_019720_08BF0C7C 
X-CRM114-Status: UNSURE (   8.34  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] kbuild: force 16-bit wchar_t treewide
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All current uses of wchar_t assume 16 bit code units. We enforce this
via -fshort-wchar on x86 and by typedefing in <linux/nls.h>.

Make wchar_t universally 16-bit to acknowledge this, a small step
towards ARM and RISC-V EFI support in barebox.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Makefile          | 2 +-
 arch/x86/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 74e4893f02c8..cc01e5656d7c 100644
--- a/Makefile
+++ b/Makefile
@@ -438,7 +438,7 @@ LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
 KBUILD_CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
 
 KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs \
-		   -fno-strict-aliasing -fno-common \
+		   -fno-strict-aliasing -fno-common -fshort-wchar \
                    -Werror=implicit-function-declaration -Werror=implicit-int \
                    -Os -pipe -Wmissing-prototypes -std=gnu89
 KBUILD_AFLAGS          := -D__ASSEMBLY__
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index fd871ca21419..532246647b63 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -5,7 +5,7 @@ KBUILD_CPPFLAGS += -D__X86__
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
 machine-y := efi
-KBUILD_CFLAGS += -fpic -fshort-wchar -mno-sse -mno-mmx
+KBUILD_CFLAGS += -fpic -mno-sse -mno-mmx
 ifeq ($(CONFIG_X86_32),y)
 	TARGET = efi-app-ia32
 else
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

