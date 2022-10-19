Delivery-date: Wed, 19 Oct 2022 14:45:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol8RU-000gu9-7R
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 14:45:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol8RR-00017l-8j
	for lore@pengutronix.de; Wed, 19 Oct 2022 14:45:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=q09IZMslUiEwllCJpI7JpA5EPzqUiW0tVWhNHRMZxeI=; b=JpgWIO4eEK2m+HyeRXGHEXr3If
	4+6LqWY+qW2+wFF12KydElGQe+Uwwn/Z098XLhqZjdbrb4y51NU9O5zWdbWVggLr/nswjAdcJIaCl
	+4W7wY4wiSmr+zPszeSKE2T37WZsY1ZxTRhUN6Vdo3wqmqUEE5L+7ojhRLbsh1o4ru8hXabldm976
	gYjxiguP2k+PswrwucQreh0cz52BITUmx00Sv7ncDJcTr/jkrBE8MZSznSD/D6mzuWx533ZZ85xF9
	NH4a1c0/9iMGoM7fu2iVukHns/VSHt5R/QuUb1SqeNG39sMu40w5q3yYnb4kKjBeDQpgfma/uLEjO
	LDbywddQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8QA-001cL3-71; Wed, 19 Oct 2022 12:43:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8Q4-001c4s-Uo
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 12:43:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8Q3-0000u7-FY; Wed, 19 Oct 2022 14:43:35 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8Q2-0007jQ-P3; Wed, 19 Oct 2022 14:43:34 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8Q2-007MEI-6U; Wed, 19 Oct 2022 14:43:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 19 Oct 2022 14:43:33 +0200
Message-Id: <20221019124333.1753693-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_054337_013690_A291004B 
X-CRM114-Status: GOOD (  10.50  )
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
Subject: [PATCH master] Kbuild: disable ARM64 pointer authentication
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The aarch64 cross-compiler built with Yocto's kirkstone release
configures -mbranch-protection=standard as default.

The resulting PACIASP/AUTIASP instructions are interpreted as NOPs by
existing CPUs, but they increase image size and misalign the barebox
header in ENTRY_FUNCTION(). Also on ARMv8.3+, where they serve a
purpose, we wouldn't benefit from them as we don't setup any pointer
authentication keys. Thus disable it.

This fixes a breakage to the extended firmware mechanism when
building my i.MX8M barebox with the Kirkstone toolchain.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
This is a workaround. ENTRY_FUNCTION() should be rewritten for ARM64,
so we don't expect function prologue to be exactly two bytes long.
---
 Makefile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Makefile b/Makefile
index 98da09f18523..3737265316e9 100644
--- a/Makefile
+++ b/Makefile
@@ -659,6 +659,11 @@ KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check)
 # Platforms that have their setjmp appropriately implemented may override this
 KBUILD_CFLAGS += $(call cc-option,-fcf-protection=none)
 
+# We don't have the necessary infrastructure to benefit from ARMv8.3+ pointer
+# authentication. On older CPUs, they are interpreted as NOPs and blot the
+# code and break less portable code that expects a very specific code layout
+KBUILD_CFLAGS += $(call cc-option,-mbranch-protection=none)
+
 KBUILD_CFLAGS   += $(call cc-disable-warning, address-of-packed-member)
 
 # Align the bit size of userspace programs with the kernel
-- 
2.30.2



