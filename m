Delivery-date: Sat, 10 Apr 2021 13:08:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBTA-00014J-No
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 13:08:04 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBT9-0002Cq-Rv
	for lore@pengutronix.de; Sat, 10 Apr 2021 13:08:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MupKbzm3i4scpdQIdmnKHHLSLoa+3eCgn1pK3P17Bpc=; b=C8KzHLjuNpUsTDCoJbQkFs81/
	/1Qv4XGRp4sMEyCCZAjXBgAMsk7aCYJF6pSdGPuYlr/HoFSj8q87AhZpTTxmWrHYRGffRhpMyn0Wh
	mC8AcSi1+XC1Vr+RQUrjv9qU1c8eziGSACfQXPSFpjHFru9ihqJKij1NGhgPKxKBcHEZJx+C2/0gS
	OV8US2SPf5GB+/ofZNr/TsUMHTLZAowj3qKp3Go8jDwroWE65BlVtgeFQz/VGmESuRnXg0H37vkAw
	E6/96yYDZqjHaYPiso38C4QBzQHmJvuCUjKI/5KpQ+o2LjTMsokCDsNcWjNs2wHPa/vp3bIUP403b
	cUe93Gkew==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVBS9-002iHp-7S; Sat, 10 Apr 2021 11:07:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBRx-002iHF-1L
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 11:06:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=+zGDyi0QJhC1r4zE28WQzbFNyHHU7jg1V7jauaQdY0A=; b=x2lkFCOfMWTBaErdGEy5C10POl
 oeHs6OkAcO59QVEh5NweApfPliVwICuTKyPUvAGcu8iDJG9c/llEO8CzlIt1H2wTBrm+qPOadg1w1
 I1iE+uJRbshCSMoYp/8NUi5IR7U7epsRjLjwDnl84kD/Ql6S90P1843BaP9Ja6NW79vvMIGm+xdIH
 58BUXlM+tPhRApLZ+NM9rfuJuccPRd8e7wXTIsrFGhOb5PXHkh1cWQkFo1ZEf6vbuD/H46ruZ8+kl
 5iK7A2NtIkSGz3YbIcL5M+FYRouf//+mM1LNYu3SMV+AccegobShBLbkkFFXjCiCrGYO63mftfjwO
 ulTDGP+w==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBRu-0053F1-Hv
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 11:06:47 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 821CA40009;
 Sat, 10 Apr 2021 11:06:44 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 13:06:37 +0200
Message-Id: <20210410110638.2106658-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210410110638.2106658-1-ahmad@a3f.at>
References: <20210410110638.2106658-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_040646_744898_90576344 
X-CRM114-Status: GOOD (  11.82  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] RISC-V: board-dt-2nd: add PBL console support for virt
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
v1 -> v2:
  - No change
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

