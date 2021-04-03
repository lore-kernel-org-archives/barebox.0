Delivery-date: Sat, 03 Apr 2021 09:04:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaK9-00016s-Uv
	for lore@lore.pengutronix.de; Sat, 03 Apr 2021 09:04:01 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaK9-0001ou-5V
	for lore@pengutronix.de; Sat, 03 Apr 2021 09:04:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xrarGoijhRQO9ehw6OhAoOy1pRV7povyxEwmttUVIck=; b=qgDKyDwf33Ka9Nqw41FgMyMrz
	gwQnF/bH6eNFLXSIEOSRP69/INWioRm6YZCCJ8SxmnG2hV1GeXdfZTxfOrdDOECryJKjR1/xCWTzT
	+ZMp8mcLCO9l52ZI/tZ26OOFQUb8ch8l4aL22bnlogxuqg5FtF08xUZr0yRZyhYUyDv7qzB+pAH0t
	CH00bWHMQ4qgPlS6jq0BmfLcYYL14iA2qj31cvuBQefe7TSk92jPCsLebqEpxiJhkn5QaZ3YXK1o3
	TyTbXC5tmWzeXEqW20DVIA5ClJ64FDfO8Zf5ypZ7U56bhqHgLp2nhpEzId5ZZ5YuIw74F6IBXtbut
	cgSlXcrAA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSaJ3-00ENgn-Bk; Sat, 03 Apr 2021 07:02:53 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSaIu-00ENfV-SY
 for barebox@lists.infradead.org; Sat, 03 Apr 2021 07:02:46 +0000
Received: from geraet.fritz.box (muedsl-82-207-194-145.citykom.de
 [82.207.194.145]) (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id AB1D6100005;
 Sat,  3 Apr 2021 07:02:43 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat,  3 Apr 2021 09:02:36 +0200
Message-Id: <20210403070237.3642189-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210403070237.3642189-1-ahmad@a3f.at>
References: <20210403070237.3642189-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210403_080245_048731_26CC6FEB 
X-CRM114-Status: GOOD (  11.68  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] RISC-V: board-dt-2nd: add PBL console support for virt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Virt machine has a ns16550a UART at address 0x10000000. As we reuse
the generic DT image for this platform, we can't use either DEBUG_LL or
pbl_console as we would need to hardcode information on what UART is
available where, which wouldn't be correct for other boards.

However, if we parse the board compatible, we could match it with the
appropriate PBL console implementation without sacrificing portability.
Do so.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/boot/board-dt-2nd.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/boot/board-dt-2nd.c b/arch/riscv/boot/board-dt-2nd.c
index be28ea23cd6d..e9810f8add97 100644
--- a/arch/riscv/boot/board-dt-2nd.c
+++ b/arch/riscv/boot/board-dt-2nd.c
@@ -3,7 +3,7 @@
 #include <common.h>
 #include <asm/sections.h>
 #include <linux/sizes.h>
-#include <debug_ll.h>
+#include <asm/ns16550.h>
 #include <pbl.h>
 #include <fdt.h>
 
@@ -22,10 +22,29 @@
 
 #include <asm/barebox-riscv.h>
 
+static void virt_ns16550_putc(void *base, int ch)
+{
+	early_ns16550_putc(ch, base, 0, readb, writeb);
+}
+
+static void virt_ns16550_init(void)
+{
+	void __iomem *base = IOMEM(0x10000000);
+
+	early_ns16550_init(base, 3686400 / CONFIG_BAUDRATE, 0, writeb);
+	pbl_set_putc(virt_ns16550_putc, base);
+}
+
+static const struct fdt_device_id console_ids[] = {
+	{ .compatible = "riscv-virtio", .data = virt_ns16550_init },
+	{ /* sentinel */ }
+};
+
 ENTRY_FUNCTION(start_dt_2nd, a0, _fdt, a2)
 {
 	unsigned long membase, memsize, endmem, endfdt, uncompressed_len;
 	struct fdt_header *fdt = (void *)_fdt;
+	void (*pbl_uart_init)(void);
 
 	if (!fdt)
 		hang();
@@ -33,6 +52,12 @@ ENTRY_FUNCTION(start_dt_2nd, a0, _fdt, a2)
 	relocate_to_current_adr();
 	setup_c();
 
+	pbl_uart_init = fdt_device_get_match_data(fdt, "/", console_ids);
+	if (pbl_uart_init) {
+		pbl_uart_init();
+		putchar('>');
+	}
+
 	fdt_find_mem(fdt, &membase, &memsize);
 	endmem = membase + memsize;
 	endfdt = _fdt + be32_to_cpu(fdt->totalsize);
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

