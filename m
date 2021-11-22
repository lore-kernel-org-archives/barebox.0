Delivery-date: Mon, 22 Nov 2021 09:49:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp51E-0003Os-6H
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:49:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp51C-0000A5-6X
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:49:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4O2UBJ8Kh8sAP+kyHEXHh1dN4CaUb/qx8RRLf9fMGuY=; b=apJ8FGj3ge9sQl
	/ebQEYxw1F0Qqo++EOn90YhY1ezhaRqGg27/Ynkf4IXCcLyHhJ2p1UvHVmvABCszrplMIzZA+DFjZ
	vKrppu/3dUAZM0IF1rC3wa7v2mWFkb244nrY8Fx/hVj/J/MPGJHH5rCjmxTfagbarV+/UzHjWxMfK
	c0eeVvzYxRjCRz9t3QJlN2LPRznlm7o9ues8ZBEd61tVUXT5Zb5+dPl+53ssqp/5O8fn7sRmEruJZ
	pNeGDx811nNVQdsgkiEmzLhmMPkRwpnI9Kuq009e1sLEJpHtitADHSMyvSMT8DIC50VvCLhezECWG
	twFDXIbIvvbllMmOfgag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp4zt-00FLLN-BA; Mon, 22 Nov 2021 08:48:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zE-00FKz8-BW
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wQ-32; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00AtfB-Jb; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:17 +0100
Message-Id: <20211122084732.2597109-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004740_414749_08456F45 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/30] kbuild: force 16-bit wchar_t treewide
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

-fshort-wchar ensures L"" expands to code units of 16-bit each. We
already enforce this on x86, but as a small step towards ARM and
RISC-V EFI support in barebox, enable it globally. We already treat
wchar_t as 16-bit everywhere where it's used (It's typedef'ed in
<linux/nls.h> and <linux/stddef.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile          | 2 +-
 arch/x86/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 77edecd1f72f..2e4c60d55ab2 100644
--- a/Makefile
+++ b/Makefile
@@ -440,7 +440,7 @@ LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
 KBUILD_CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
 
 KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs \
-		   -fno-strict-aliasing -fno-common \
+		   -fno-strict-aliasing -fno-common -fshort-wchar \
                    -Werror=implicit-function-declaration -Werror=implicit-int \
                    -Os -pipe -Wmissing-prototypes -std=gnu89
 KBUILD_AFLAGS          := -D__ASSEMBLY__
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 53cbd5088117..a0ce8c17f181 100644
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
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

