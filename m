Delivery-date: Fri, 07 Jan 2022 07:38:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5itP-00DX4l-8D
	for lore@lore.pengutronix.de; Fri, 07 Jan 2022 07:38:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5itN-0000pP-VU
	for lore@pengutronix.de; Fri, 07 Jan 2022 07:38:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C6v4WhSBlKejYPrKxgcTeJBGv5elqPyepVN0QbkOFaw=; b=UIPWg660qHr1mO
	6CtFWKRuHqKDh7AfCY876+eUFnjjPsUm19VvWAsDPtQcGv2YJld0OPuh45FiUhEOZ37jgOL1LllLI
	753GJK6v8JVcWqkK3d00EgPH59Gy+FMridPkoI/Y8YpBljlZ4PD1FKLmnJnmiOnCp+7YQLM/2j75b
	tI/MIU5Y30Q9LRPm/sFCT6uK0JVxAxuuTa50NXwFTDlIuFvGpyauYviIReB5fIKBNE/jFNElL2ijc
	Gvx5wtRhPiUlbexw+wU/lQvetc+D7kusjsyNC30dWU6Z7EGSJ9eSrbfKbQPudozv4ojHcPh9raxVs
	ZnYBCaZLKlQ8SyrOic/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5irv-002eAr-3H; Fri, 07 Jan 2022 06:36:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5irq-002e9t-9K
 for barebox@lists.infradead.org; Fri, 07 Jan 2022 06:36:51 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1] (helo=birne)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n5irm-0000eQ-96; Fri, 07 Jan 2022 07:36:46 +0100
Received: from afa by birne with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n5irl-0005tH-Vs; Fri, 07 Jan 2022 07:36:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  7 Jan 2022 07:36:44 +0100
Message-Id: <20220107063644.22595-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220106_223650_351459_E9D4523C 
X-CRM114-Status: GOOD (  11.10  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] x86: <asm/io.h>: fix outl/outsl access size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

outl so far behaved like outb, probably due to a copy-paste error when
it was first added. We have three users in-tree for outl:

* drivers/serial/serial_ns16550_pci.c
  only for handling a Quatech qurik, which probably no one ever needed

* drivers/serial/serial_ns16550.c
  For platform drivers with a 4 byte I/O port resource. Only possible
  user is x86 and that has a 1 byte I/O port resource. Thus no one
  used this either.

* drivers/watchdog/itco_wdt.c
  Here it indeed triggers a bug, although in my testing the WDAT
  was functional without.

Fix this up so new code doesn't have to track this down.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Steffen Trumtrar <str@pengutronix.de>
---
 arch/x86/include/asm/io.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/include/asm/io.h b/arch/x86/include/asm/io.h
index 0971727bc63d..23854128cb06 100644
--- a/arch/x86/include/asm/io.h
+++ b/arch/x86/include/asm/io.h
@@ -63,13 +63,13 @@ BUILDIO(l, , int)
 
 #define outb	outb
 #define outw	outw
-#define outl	outb
+#define outl	outl
 #define inb	inb
 #define inw	inw
 #define inl	inl
 #define outsb	outsb
 #define outsw	outsw
-#define outsl	outsb
+#define outsl	outsl
 #define insb	insb
 #define insw	insw
 #define insl	insl
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

