Delivery-date: Sun, 06 Feb 2022 00:21:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGUMx-006qTW-Uu
	for lore@lore.pengutronix.de; Sun, 06 Feb 2022 00:21:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGUMw-0001ss-97
	for lore@pengutronix.de; Sun, 06 Feb 2022 00:21:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KnTd1xeB4w/EhUKrkx4J8K7HXmea2JXFXIcltOf/p04=; b=fHKhwTCTIFOz/l
	QCLE6LSgQF5xZOCLNBaK61JjQNWBc1Jg30EF0yNNQOl3uhUAfHK9Oi7Nsr+WArMgFI+Dy/ft1TKhe
	ewjXXXkMgWDJsL9jel4bDBn7yyUSdXlxteswFerxXCGWfDER1NXpG/ZvwNRLSuD6rCq26Mk5O73mB
	DOIS+dkHFJ0ZobsdKloPT8sosWwdhGCKVyYq4j18yTEobhvZxik3odoJgfM9Dx07U6IFbZnrHBZUF
	3JZ6xCere8hVCPwDuoS24wl1iPH277IJaE9QlVbaqvU7KZKFPDAiegVwkOpvEZ8mW5CxAIwiwAw6C
	v53Jlfsmg0qjGeYwK2pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGULP-007djI-5h; Sat, 05 Feb 2022 23:19:51 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGULJ-007dhm-2F
 for barebox@lists.infradead.org; Sat, 05 Feb 2022 23:19:46 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id 61B61C0004;
 Sat,  5 Feb 2022 23:19:39 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Sun,  6 Feb 2022 00:19:30 +0100
Message-Id: <20220205231930.2948516-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220205231930.2948516-1-ahmad@a3f.at>
References: <20220205231930.2948516-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_151945_281479_92B9ADA9 
X-CRM114-Status: GOOD (  10.61  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] Documentation: user: barebox: mention generic dt 2nd
 stage support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Most users interested in chainloading barebox will probably want to use
the generic DT format for that: It will pass the checks the boot command
may have and it will ensure the system is in the correct state, e.g.
that caches are disabled.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/user/barebox.rst | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 8634d8e48eef..4abcf79c6d2a 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -203,9 +203,21 @@ Starting barebox
 Bringing barebox to a board for the first time is highly board specific, see your
 board documentation for initial bringup.
 
-barebox binaries are, where possible, designed to be startable second stage from another
-bootloader. For example, if you have U-Boot running on your board, you can start barebox
-with U-Boot's ``bootm`` command:
+For ARM and RISC-V, the barebox build can additionally generate a generic DT image
+(enable ``CONFIG_BOARD_ARM_GENERIC_DT`` or ``CONFIG_BOARD_RISCV_GENERIC_DT``,
+respectively). The resulting ``images/barebox-dt-2nd.img`` can be booted just
+like a Linux kernel that is passed an external device tree. For example:
+
+.. code-block:: console
+
+  U-Boot: tftp $kernel_addr barebox-dt-2nd.img
+  U-Boot: tftp $fdt_addr my-board.dtb
+  U-Boot: booti $kernel_addr - $fdt_addr
+
+For non-DT enabled-bootloaders or other architectures, often the normal barebox
+binaries can also be used as they are designed to be startable second stage
+from another bootloader, where possible. For example, if you have U-Boot running
+on your board, you can start barebox with U-Boot's ``bootm`` command:
 
 .. code-block:: console
 
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

