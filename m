Delivery-date: Mon, 10 Nov 2025 21:35:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc9-00HVPD-2N
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc5-0002Js-QB
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=80AaIZlIcZ07A51k9mekdYv3hENG69W9NedM7DfAvsw=; b=zbdNaJqM4+VZPyWrI8LPbwkRLm
	UmNjEbUBdo4JffwaDYuTe0uPLvGW8p6R/XzEZ5WBqMArzgj572tF/i4NSqO2AUD18xtvOqbbz35ms
	r5pFr/ori9aT1ak5etnWi3gAbKu4I7jo2tj2KC9z3W7kIwqgzlT+0T32zVrFdAgdfzgNbH2KBkTXR
	QUcZemb8ZJJAglB/WuhmipGIYO0/lvpVh18xTOsEjAxuUUR+J+aKD+O68I7ssx+LeAVqRmziXyYGE
	sLcYLFeUzemxOogzuPsQhBY+GMhf4nYCF15TYnuALUJlVPvw8HwQVlZHzvi3gY64SzQxtdc1ri0ch
	Dl0LzQig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbL-000000065dV-0nd3;
	Mon, 10 Nov 2025 20:34:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbG-000000065Xo-2TUo
	for barebox@bombadil.infradead.org;
	Mon, 10 Nov 2025 20:34:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=80AaIZlIcZ07A51k9mekdYv3hENG69W9NedM7DfAvsw=; b=KTiZFDounmve3zxPOesJhIs1Xk
	fnWfss9rTqh3O9t+LD+uIygqzPf7sy5AKTL2X0Vz8bDfwVpWOIn+Eulsr9PE9U+X5164YSGUwvOrI
	K7i1IHLUm1Kw3wT5WrDLK1Uv4MPrrEp3L3O+dbk/HqXk9qDd4876mkg4fF386JyOWpty1m2MBM28E
	81clG4JoisnStViEghjdBpexwcTN089NnG+54kkbPTgrcE8R9dwgagTXzRknlw1G+FMsDPhpr09dX
	3ldkB/5LQIrgKRj9XgEa5QM6VnH6L32U9zaKxw7tVK9TOSXbITekT+lHO0hNtHmwKYQEcQrFGauqD
	8aAbZ2Aw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIXjW-0000000BgCv-1VKo
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 19:39:25 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb9-0001MT-0C; Mon, 10 Nov 2025 21:34:47 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:35:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-20-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_193922_532677_7121CB94 
X-CRM114-Status: GOOD (  13.84  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 20/23] ARM: i.MX8M: Add support to extract OP-TEE provided
 informations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extract the OP-TEE overlay fragements information into a dedicated
overlay buffer and add the handoff data on success. The handoff data is
used by next commit.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 964d438e3f3433332e351d9a70f91857ee33e0b4..b9393fba4ab0f14992d2fec32b0e1b7f1d4bbdfd 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -1015,10 +1015,50 @@ resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth)
 	return min_t(resource_size_t, SZ_4G - MX8M_DDR_CSD1_BASE_ADDR, size);
 }
 
+static void imx8m_extract_optee_fdto(void)
+{
+	unsigned int early_fdt_sz, fdto_size;
+	void *early_fdt, *fdto_dst;
+
+	imx_scratch_get_fdt(&early_fdt, &early_fdt_sz);
+	/* SCRATCH_FDT_SIZE == 0, e.g. if OP-TEE w/o CFG_DT support is used */
+	if (early_fdt_sz == 0)
+		return;
+
+	imx_scratch_get_optee_fdto(&fdto_dst, &fdto_size);
+	/* SCRATCH_FDTO_SIZE == 0 if feature (back-channel) is not required */
+	if (fdto_size == 0) {
+		pr_debug("OP-TEE dest DTBO size == 0, skip extracting\n");
+		return;
+	}
+
+	/*
+	 * OP-TEE DT handling is really cumbersome. In case an external DT was
+	 * supplied, OP-TEE re-use this DT and appends overlays.
+	 *
+	 * Extract the overlays into a single overlay file to make it easier
+	 * to apply these onto the barebox and kernel DT.
+	 *
+	 * It will become easier once barebox supports the transfer-list
+	 * protocol and the protocol itself has overlay-entry support.
+	 */
+	if (optee_extract_fdto(early_fdt, fdto_dst, fdto_size)) {
+		pr_warn("Failed to extract OP-TEE FDTO, continue without FDTO\n");
+		/*
+		 * Don't BUG() because the system may have compile-time config
+		 * support
+		 */
+		return;
+	}
+
+	handoff_data_add(HANDOFF_DATA_BL32_DT_OVL, fdto_dst, fdto_size);
+}
+
 static void __noreturn imx8m_barebox_entry(void *boarddata, unsigned buswidth)
 {
 	imx8m_init_scratch_space(buswidth, false);
 	optee_set_membase(imx_scratch_get_optee_hdr());
+	imx8m_extract_optee_fdto();
 	barebox_arm_entry(MX8M_DDR_CSD1_BASE_ADDR,
 			  imx8m_barebox_earlymem_size(buswidth), boarddata);
 }

-- 
2.47.3



