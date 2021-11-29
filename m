Delivery-date: Mon, 29 Nov 2021 07:43:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mraNw-000079-Gl
	for lore@lore.pengutronix.de; Mon, 29 Nov 2021 07:43:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mraNv-0003z5-Nr
	for lore@pengutronix.de; Mon, 29 Nov 2021 07:43:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sUx0gqGKmUw+i11SDdapcdDfH7zbGgL8Z4Dx2cdcTUI=; b=yDvrY7n01LWOar
	4EyNH3xkXqQxZjvtH6mv6fmIeJUD1kqM6QjFJoKdU7BsbUDcjzKVX9vFQvwA2vaVCVm6bZvcTqSk4
	Py0wJRy7fmVW94xEb8Hzun+wsn+bCHHXooAC3ZCNIPKe6+8LTS9YJbux5nghtc1OC+zv2I3HBELDL
	K3esBhmLyHWRwuyYfO3GzZH73MlXT80GmDnrAGAdlBw3X9FQMEM9zc950k4huCNaK/FGuffm1X/bE
	t8y6TbjoMVzmqkNQGC2G7i0Ql0V//pVv37EsCOfgrHH9XaNyz2u50QuLldo4jthTSwzg+m0JGau2d
	ZBE6yyRSzT48VanOdsrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mraM4-00HTkv-6E; Mon, 29 Nov 2021 06:41:36 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mraLw-00HTf7-SN
 for barebox@lists.infradead.org; Mon, 29 Nov 2021 06:41:30 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id BE3A7C0007;
 Mon, 29 Nov 2021 06:41:21 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 29 Nov 2021 07:41:17 +0100
Message-Id: <20211129064117.2007757-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211128_224129_082839_161ACE3B 
X-CRM114-Status: UNSURE (   8.00  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] RISC-V: nmon: fix SiFive DEBUG_LL build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

nmon includes <debug_ll.h> in assembly source, so add __ASSEMBLY__
guards, so the build doesn't fail.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/include/asm/debug_ll.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/debug_ll.h b/arch/riscv/include/asm/debug_ll.h
index d01b4f09b8e1..867c96d79724 100644
--- a/arch/riscv/include/asm/debug_ll.h
+++ b/arch/riscv/include/asm/debug_ll.h
@@ -36,7 +36,7 @@
 
 #include <asm/debug_ll_ns16550.h>
 
-#elif defined CONFIG_DEBUG_SIFIVE
+#elif defined CONFIG_DEBUG_SIFIVE && !defined __ASSEMBLY__
 
 #include <io.h>
 
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

