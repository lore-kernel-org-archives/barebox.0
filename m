Delivery-date: Fri, 13 Mar 2026 14:35:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fQ-000DWA-0e
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:04 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12f3-0000y8-G7
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sRZd/7G/nl4eKOIpWVpfUp6uXt1cFo+2H1GyXrIjuv4=; b=zwA5BDcS/yOS46YifMBbmMGhsm
	mWr7sxGFxAaPnR0hyYShINIz66tP/g65AR/MIswOKLrMutDyHPE79ISYbCTeciH0qVqXDftQLPfrZ
	7iQtXhHB39p2bIyM1mMoCzvUR76PK1r9sUis5IwBeL2xTClgG1Xq4o8NpaO0UOxikuE4olOUkxc61
	9/mlB1NAv9R0sRASZziSqgeqHpJGRhXX2PLr3DtlHl5jmr3V3kQ3kNoEmIUsASO40VVS4n3Y/+yCa
	zr7fvSPcOkyuA/1cy11F33bnpIOYiEd3kqgN/llEJlwQ2fqMrZtc2Gn4TwXzmfL7vR8gQUY+OpWm+
	Y3SFzHAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dc-00000000GNv-4804;
	Fri, 13 Mar 2026 13:33:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dF-00000000FjY-3ruG
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=sRZd/7G/nl4eKOIpWVpfUp6uXt1cFo+2H1GyXrIjuv4=; b=A59mro5Liv2ZXkbb5pQ5k7ArRN
	Yp4VpJ9aXSdHYUF8Rp3lVSxpHZWNrr9umd/PrC41MBCspJlr+6WHm7w2Z2dFkD2K4gs/QZpIbUlIK
	O8kdTSbqqIybmqr4hh1dhYkaHn6R5JIXjHtqYmCNM0DniINw2bo7arvtwQDiexFj4RnQUVdfCD/Q3
	OnI0zH8cim+1blXn1AJpCwlx+Iev/Y7LWgg48a4/66W3uw8FHSPeCJWiQk4ZhC1RDYq5BJW6iP3UU
	GXNK/DLoi/jzKx/vtydEaF4j9V74Y3ddagyBkUJUrN8YPCMnstNsr5XGC9pWntdS26CP7hO8vWNIm
	zEFVa2qA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cy-00000003OSb-3BJV
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0006nS-TV; Fri, 13 Mar 2026 14:32:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0005Sf-2C;
	Fri, 13 Mar 2026 14:32:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-3IQf;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 13 Mar 2026 14:24:56 +0100
Message-ID: <20260313132631.2257573-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_264567_1035DAD7 
X-CRM114-Status: UNSURE (   9.05  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 12/58] sandbox: fix make dependency for sandbox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The final barebox ELF didn't have a dependency on barebox.o, which means
that the final executable wasn't always updated.

Fix this by adding barebox.o into BAREBOX_PIGGY_OBJS, as the .elf
rule already has $(BAREBOX_PIGGY_OBJS) as dependency.

(cherry picked from commit 82854ee1ff6d63469cf3bd4a714371afc9508eec)

Fixes: 2aba0017c95a ("sandbox: switch to using PBL")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20260105081251.3244288-2-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile         | 2 ++
 images/Makefile.sandbox | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/images/Makefile b/images/Makefile
index 7406aee817a3..beb262acc144 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -58,6 +58,8 @@ $(pbl-lds): $(obj)/../arch/$(SRCARCH)/lib/pbl.lds.S FORCE
 
 ifeq ($(CONFIG_PBL_IMAGE_NO_PIGGY),)
 BAREBOX_PIGGY_OBJS = $(obj)/piggy.o $(obj)/sha_sum.o
+else
+BAREBOX_PIGGY_OBJS = $(obj)/../$(BAREBOX_PROPER)
 endif
 
 quiet_cmd_elf__ ?= LD      $@
diff --git a/images/Makefile.sandbox b/images/Makefile.sandbox
index 5f94b6e589e8..210a7bf48ac8 100644
--- a/images/Makefile.sandbox
+++ b/images/Makefile.sandbox
@@ -21,7 +21,7 @@ endif
 quiet_cmd_elf__ = LD      $@
       cmd_elf__ = $(linker) -o $@ $(BAREBOX_LDFLAGS) \
 	-Wl,-T,$(pbl-lds) -Wl,--defsym=main=$(2) -Wl,--whole-archive \
-	$(obj)/../$(BAREBOX_PROPER) $(BAREBOX_PBL_OBJS) -Wl,--no-whole-archive \
+	$(BAREBOX_PIGGY_OBJS) $(BAREBOX_PBL_OBJS) -Wl,--no-whole-archive \
 	-lrt -pthread $(SANDBOX_LIBS) $(LDFLAGS_$(@F))
 
 ifeq ($(CONFIG_FUZZ_EXTERNAL),y)
-- 
2.47.3



