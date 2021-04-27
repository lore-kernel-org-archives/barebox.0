Delivery-date: Tue, 27 Apr 2021 22:24:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGR-0006Xq-D3
	for lore@lore.pengutronix.de; Tue, 27 Apr 2021 22:24:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGO-00066d-Uw
	for lore@pengutronix.de; Tue, 27 Apr 2021 22:24:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iviuwPp9TY6vfwnsj0PjqGY3tiJgxGKm/CnqpFzDqR8=; b=lIDHrymdbmrZXePMJNskomsPf
	/vIVhPUnYvrjXJ70xGZvm95IFaGMa9ai/TmNgSRz7+6kIRnpqKPN+w41CbQ29J4wDHlYQYOeV/yg4
	9qWmR8YKKTXIjh1oUAfpoEOuG8yNQagWvtPkT0cHX9kdvvqxAfmX1tqajiJZyFNs2GPKKf7ihZJFb
	nBI2C4i2ncueOstp1RjN9TI4OX1EO4clmG2hCTuu+y5s2UlP51gjk/YD32075Z3nm3VtVi17KAN20
	QWm0pXaPlp50XgKcRXibrcnCFsdoi3kDVvtIrOLlBqEgVU4xw5xp2JzFSL0Jpelu1fDwXsXk9KNtE
	HyFulPzbQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbUFA-002BsE-N3; Tue, 27 Apr 2021 20:23:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUEx-002Bqf-54
 for barebox@desiato.infradead.org; Tue, 27 Apr 2021 20:23:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=B5FzBC0vqwq5DWXA+JgPI3ew/gs+XAB5NexRQirSnWo=; b=XlE21l3hDMJmN6bpw9lfcXZ78x
 ctnVCBDlqYshDgYQ7CJ7uBBb6wNMduH7PSyVkKJYkVPpbxlaK0HgDGCQ2Q50i5QotrwFM68PI3XAK
 t9wpOJuRCyMt/XtWw6qKPl9NJSdIhKNBtW4mwdtGsjfI4gvcBKFtVaup+M5o+KMnyvfKuqlVTv415
 gq4Y2LYo/Csy39cVgg6RsaGG/geV+3TuKEZh84zVq9xSyBsyuoLQI/0s5aBwCVIwHkOJc9Epsd1Mz
 7fi4KcsylTmyLqY/f+thw0wl4ygPPXXsJsvHp6tu7noVRlHxScZAP5aos3QOuCfCpvW0x3TqbVLUG
 /hYWeviA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUEu-00GyI5-Pj
 for barebox@lists.infradead.org; Tue, 27 Apr 2021 20:23:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEr-0005XV-T8; Tue, 27 Apr 2021 22:23:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEm-00016S-02; Tue, 27 Apr 2021 22:23:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Apr 2021 22:23:00 +0200
Message-Id: <20210427202309.32077-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210427202309.32077-1-a.fatoum@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_132324_855291_BBEAAE59 
X-CRM114-Status: UNSURE (   8.88  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 03/12] debug_ll: support <asm/debug_ll.h> to get rid of mach
 directories
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux support has no arch/riscv/mach-* directories. If we can get rid of
them, we could multi-image build all images at once. Only thing holding
us back is <mach/debug_ll.h>. Add <asm/debug_ll.h> as alternative.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig     | 4 ++++
 include/debug_ll.h | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index bddf802d3bb4..b10fb45b722d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1462,6 +1462,10 @@ endmenu
 config HAS_DEBUG_LL
 	bool
 
+config HAS_ASM_DEBUG_LL
+	bool
+	select HAS_DEBUG_LL
+
 config DDR_SPD
 	bool
 	select CRC_ITU_T
diff --git a/include/debug_ll.h b/include/debug_ll.h
index 5bd1afe6ac73..735033b314cc 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -12,6 +12,9 @@
 #define   __INCLUDE_DEBUG_LL_H__
 
 #ifdef CONFIG_HAS_DEBUG_LL
+#ifdef CONFIG_HAS_ASM_DEBUG_LL
+#include <asm/debug_ll.h>
+#else
 /*
  * mach/debug_ll.h should implement PUTC_LL. This can be a macro or a static
  * inline function. Note that several SoCs expect the UART to be initialized
@@ -21,6 +24,7 @@
  */
 #include <mach/debug_ll.h>
 #endif
+#endif
 
 #if defined (CONFIG_DEBUG_LL)
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

