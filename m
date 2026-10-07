Delivery-date: Wed, 07 Oct 2026 13:01:11 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEPOZ-00AuJ0-30
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 13:01:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3C9ED2018E8
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 13:01:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="u6s/UwiY";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Y3XQjKQe;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791370871; a=rsa-sha256;
	cv=pass;
	b=c4NOLl6XIo9hSxThGUwYuFzWlifvL8X8IFSsldAQ/5yK/18GTiTahBoSouwzYkweix+U2g
	CdZJjWTwyrsAe4v9QbGmtpikdmXvDOJbLPeVNcRwrDBl1wbT32LqPJ+nOfXSpADTivt1eH
	EJ5U/s51hL7U+K/5u69x7SPvHkCU9ReNHp0xXqAUnhVTGNIXsNUOLQd3mnhsGFa9jU2vlz
	yd0l5VIi8llqZNMCYhhPCbw2pTJDu6IK0lDp6v1HHiG25t4/VCdkrffeSwZxCqQjAPUJvX
	D1k2LXZqsUWq7fC2wJSwKTIGe1xoBBVPOe7+4ghAG0OeZ+s4eCSVrrLdwmZg3A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="u6s/UwiY";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Y3XQjKQe;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370871;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=2qIVYpWcZTxj6omGnDSvf15CvMa2Ri2JgvNhOjKI2s8=;
	b=Hq2w7N848PFJSTbmrKCXHRsVyeh83vGRH9oIvk0QFSp7g3s/NGvsW88jMBEJyAiWSL1/iY
	J0Kv+rFctpXGVou0oETcHD/pDrZJKpQheC00YX5CdRdCRcTlxGSPKId5H6HfZRjmPOnd+D
	rypTv8NctLeSJblrjMIrFaUc27PFPZZzepE1uP6bXIjYzINCHlT12ikmfoZPZtoZYeRhhs
	KFeXpLG3TY0JZbUhOpFeq/3auq1QaBQ834IyqmWL34ARc8U7Z8jnd+sizFyK/z49B3O5/t
	v4ewt1rFqA/1oXBdHQYWGu/Kv+CtUWMeTz5rzhEuAqjf3L9oJzLRGLPyzbaGZQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2qIVYpWcZTxj6omGnDSvf15CvMa2Ri2JgvNhOjKI2s8=; b=u6s/UwiY4Sgt7pLw2DaVZ3SNW6
	QsRQQFVMLIwtkHqfzhyx6k6GjoHItkMv0+nA5Nah2OjGSqiF+Y7oLiNtfmaeKXgqPx6KE6/BLTa+8
	6eTQLN8bfIZh4dh3/BDmRXUQvelBcFYSCsVnC2vBaBgM8+1anVyto/YkZ7HjNqqqdopTHIhPf28ij
	ulT9YxJ0Di4HJgs8vBxMRG0Qvh8aUpoSr5OuiC5LadOpvaKYOgvklyYUZgfHGl1NSosd25Q6+i+lL
	DfWXcGZkYhKMHgl+oF9PJz5GBw3zQnbuNGORG5wpiKPfuc/XRDEBagXnsHgxp0n4P0MIbmpFALie7
	aVnt0ztw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJe-00000002FCK-0Cy5;
	Wed, 07 Oct 2026 10:56:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJR-00000002F67-17mT
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 10:56:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 042B7202013;
	Wed, 07 Oct 2026 12:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2qIVYpWcZTxj6omGnDSvf15CvMa2Ri2JgvNhOjKI2s8=;
	b=Y3XQjKQe/G4EBtL+pYoAf9knHEYU8Fqj+PTtQCc13pbliCSGISwWETJ/P0s9SnoWUjFww9
	TQlVB3fzPSpK8KUI6emGd7Xyw+9Xmsj+GIdd6r40ljb4Qf5Y46e1MvVgAo5zox401J+Sd/
	nkELpvGUeteKOSGkFBoL0dQHLWSAAQ5s8hWZK0jvs6dEfjaNQLMUgEI33BtnrLO90yLDfw
	6wa+AnfHrx0y06DGOw9n8Wyaa0XbCdvTPRIrKLIy1ImAcejIR2r336jAVVa01E12kMUwfU
	UKLsyb+DE4fvFkoH0+Iy/3RgU7f5x5FKYLAvNPMU+8+7EC9B9VI532ZNVjERog==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791370548; a=rsa-sha256;
	cv=none;
	b=LqzDClxvcKtis8iitTumq/IgVPJ3U0Z+NGVQlX3bXhAP2iOwexTLHX5XD3O6s7bYrr4Lbh
	Jqojx9tyPEUh4SnESmN8Arj4+kDTWpFGNtBrnzjG/5kPB2xmF2UTSqZ9td4sC5rFYKnGl/
	qus1OJcZ1SvtgQK/BP/+VqbFWCYUvcrIRQgt1GGoXuz30MwRp2gwWvMAk6cThN7QVlCOpe
	ke0IqRCtWjRDFn6yeMgmAZlxChE2yBqApbTwZ+RXDZoP/evHQu2Uo6zo3a/C7hb3JUIaPF
	ezZMGxG9fwvQ1bYi9cSKnuDpDsZVHp5yqdtg5cj3fQijKLcIYvGmoHDPB8XINA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2qIVYpWcZTxj6omGnDSvf15CvMa2Ri2JgvNhOjKI2s8=;
	b=MIe35NKnG3LoZh6j/KmfiQbFxNBqOngSMZMzKYj2oes9annanB8Nu52ygzQEwnxgo0AdX9
	c4qzrsBU2dKGZDuJBhZ9auqnZyzfJaAdqNGG4PiCBLsdsGJvRV7Tc6khUqeh1ZkxX5fFTe
	8C4p+yrnP1FW4VzkAfRUQJRIPoBNL6+DwF5FBfkpNNF+fTuVNBPYVawiCVNmyzQzgrlYE8
	FKoL1xcjnvTSF7Fm1zDithytG1uAgE4sDNd//DWiNn8upw94FBfpu1t7UQ9in3A2S5Rl53
	azEVxf0B/ApD+86ICjkj8O923XerBvr56rtqew0eKotXZdF7dr8qSTrhyg6A9g==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xEPJL-004haR-2y;
	Wed, 07 Oct 2026 12:55:47 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 07 Oct 2026 12:55:48 +0200
Subject: [PATCH 03/11] mtd: spi-nor: cadence: extract common part for use
 in PBL
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261007-socfpga-agilex5-xload-v1-3-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_035553_922810_C4757302 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Split the driver into separate files for common functions
   and an integration into barebox. This allows to use the common part in the
    upcoming PBL driver. Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
    --- drivers/mtd/spi-nor/Makefile | 2 +- drivers/mtd/spi-nor/cadence-quadspi-common.c
    | 615 +++++++++++++++++++++ drivers/mtd/spi-nor/cadence-q [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 3C9ED2018E8
X-Stat-Signature: fc617rjd8ti7eoz98mpdorgi16fqu6ky

Split the driver into separate files for common functions and an
integration into barebox. This allows to use the common part in the
upcoming PBL driver.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mtd/spi-nor/Makefile                 |   2 +-
 drivers/mtd/spi-nor/cadence-quadspi-common.c | 615 +++++++++++++++++++++
 drivers/mtd/spi-nor/cadence-quadspi.c        | 794 +--------------------------
 drivers/mtd/spi-nor/cadence-quadspi.h        | 216 ++++++++
 4 files changed, 833 insertions(+), 794 deletions(-)

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 54d870a6f45c..ed73a95ec6b9 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-pbl-$(CONFIG_MTD_SPI_NOR)		+= spi-nor.o
-obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= cadence-quadspi.o
+obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= cadence-quadspi.o cadence-quadspi-common.o
 obj-$(CONFIG_SPI_SYNOPSYS_OCTALSPI_NOR) += dw-ospi-nor.o
diff --git a/drivers/mtd/spi-nor/cadence-quadspi-common.c b/drivers/mtd/spi-nor/cadence-quadspi-common.c
new file mode 100644
index 000000000000..401992401fa2
--- /dev/null
+++ b/drivers/mtd/spi-nor/cadence-quadspi-common.c
@@ -0,0 +1,615 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2015 Pengutronix, Steffen Trumtrar <s.trumtrar@pengutronix.de>
+ *
+ * derived from Linux kernel driver by
+ *
+ * Driver for Cadence QSPI Controller
+ *
+ * Copyright Altera Corporation (C) 2012-2014. All rights reserved.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <errno.h>
+#include <linux/time.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/spi-nor.h>
+
+#include "cadence-quadspi.h"
+
+static void cqspi_fifo_read(void *dest, const void *src_ahb_addr,
+			    unsigned int bytes)
+{
+	unsigned int temp;
+	int remaining = bytes;
+	unsigned int *dest_ptr = (unsigned int *)dest;
+	unsigned int *src_ptr = (unsigned int *)src_ahb_addr;
+
+	while (remaining > CQSPI_FIFO_WIDTH) {
+		*dest_ptr = readl(src_ptr);
+		dest_ptr++;
+		remaining -= CQSPI_FIFO_WIDTH;
+	}
+	if (remaining > 0) {
+		/* dangling bytes */
+		temp = readl(src_ptr);
+		memcpy(dest_ptr, &temp, remaining);
+	}
+}
+
+static int cqspi_find_chipselect(struct spi_nor *nor)
+{
+	int cs = -1;
+	struct cqspi_st *cqspi = nor->priv;
+
+	for (cs = 0; cs < CQSPI_MAX_CHIPSELECT; cs++)
+		if (nor == &cqspi->f_pdata[cs].nor)
+			break;
+	return cs;
+}
+
+unsigned int cqspi_calc_rdreg(struct spi_nor *nor, u8 opcode)
+{
+	unsigned int rdreg = 0;
+	struct cqspi_st *cqspi = nor->priv;
+	struct cqspi_flash_pdata *f_pdata;
+
+	f_pdata = &cqspi->f_pdata[cqspi->current_cs];
+
+	rdreg |= f_pdata->inst_width << CQSPI_REG_RD_INSTR_TYPE_INSTR_LSB;
+	rdreg |= f_pdata->addr_width << CQSPI_REG_RD_INSTR_TYPE_ADDR_LSB;
+	rdreg |= f_pdata->data_width << CQSPI_REG_RD_INSTR_TYPE_DATA_LSB;
+
+	return rdreg;
+}
+
+unsigned int cqspi_wait_idle(struct cqspi_st *cqspi)
+{
+	void __iomem *reg_base = cqspi->iobase;
+
+	if (wait_on_timeout(CQSPI_TIMEOUT_MS,
+		CQSPI_REG_IS_IDLE(reg_base))) {
+		/* Timeout, in busy mode. */
+		dev_err(cqspi->dev, "QSPI is still busy after %llums timeout.\n",
+			CQSPI_TIMEOUT_MS);
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+int cqspi_exec_flash_cmd(struct cqspi_st *cqspi, unsigned int reg)
+{
+	void __iomem *reg_base = cqspi->iobase;
+
+	/* Write the CMDCTRL without start execution. */
+	writel(reg, reg_base + CQSPI_REG_CMDCTRL);
+	/* Start execute */
+	reg |= CQSPI_REG_CMDCTRL_EXECUTE_MASK;
+	writel(reg, reg_base + CQSPI_REG_CMDCTRL);
+
+	if (wait_on_timeout(CQSPI_TIMEOUT_MS,
+		(readl(reg_base + CQSPI_REG_CMDCTRL) &
+			CQSPI_REG_CMDCTRL_INPROGRESS_MASK) == 0)) {
+		dev_err(cqspi->dev, "flash cmd execute time out (0x%08x)\n",
+			readl(reg_base + CQSPI_REG_CMDCTRL));
+		return -EIO;
+	}
+
+	/* Polling QSPI idle status. */
+	return cqspi_wait_idle(cqspi);
+}
+
+static int cqspi_command_read(struct spi_nor *nor,
+			      const u8 *txbuf, unsigned n_tx,
+			      u8 *rxbuf, unsigned n_rx)
+{
+	unsigned int reg;
+	unsigned int read_len;
+	int status;
+	struct cqspi_st *cqspi = nor->priv;
+	void __iomem *reg_base = cqspi->iobase;
+	unsigned int rdreg;
+
+	if (!n_rx || n_rx > CQSPI_STIG_DATA_LEN_MAX || rxbuf == NULL) {
+		dev_err(nor->dev,
+			"Invalid input argument, len %d rxbuf 0x%p\n", n_rx, rxbuf);
+		return -EINVAL;
+	}
+
+	reg = txbuf[0] << CQSPI_REG_CMDCTRL_OPCODE_LSB;
+
+	rdreg = cqspi_calc_rdreg(nor, txbuf[0]);
+	writel(rdreg, reg_base + CQSPI_REG_RD_INSTR);
+
+	reg |= (0x1 << CQSPI_REG_CMDCTRL_RD_EN_LSB);
+
+	/* 0 means 1 byte. */
+	reg |= (((n_rx - 1) & CQSPI_REG_CMDCTRL_RD_BYTES_MASK)
+		<< CQSPI_REG_CMDCTRL_RD_BYTES_LSB);
+	status = cqspi_exec_flash_cmd(cqspi, reg);
+	if (status != 0)
+		return status;
+
+	reg = readl(reg_base + CQSPI_REG_CMDREADDATALOWER);
+
+	/* Put the read value into rx_buf */
+	read_len = (n_rx > 4) ? 4 : n_rx;
+	memcpy(rxbuf, &reg, read_len);
+	rxbuf += read_len;
+
+	if (n_rx > 4) {
+		reg = readl(reg_base + CQSPI_REG_CMDREADDATAUPPER);
+
+		read_len = n_rx - read_len;
+		memcpy(rxbuf, &reg, read_len);
+	}
+
+	return 0;
+}
+
+static int cqspi_command_write(struct spi_nor *nor,
+			       u8 opcode, const u8 *txbuf, unsigned n_tx)
+{
+	unsigned int reg;
+	struct cqspi_st *cqspi = nor->priv;
+	unsigned int data;
+	void __iomem *reg_base = cqspi->iobase;
+
+	if (n_tx > 4 || (n_tx && txbuf == NULL)) {
+		dev_err(nor->dev,
+			"Invalid input argument, cmdlen %d txbuf 0x%p\n", n_tx, txbuf);
+		return -EINVAL;
+	}
+
+	reg = opcode << CQSPI_REG_CMDCTRL_OPCODE_LSB;
+	if (n_tx) {
+		reg |= (0x1 << CQSPI_REG_CMDCTRL_WR_EN_LSB);
+		reg |= ((n_tx - 1) & CQSPI_REG_CMDCTRL_WR_BYTES_MASK)
+		    << CQSPI_REG_CMDCTRL_WR_BYTES_LSB;
+		data = 0;
+		memcpy(&data, txbuf, n_tx);
+		writel(data, reg_base + CQSPI_REG_CMDWRITEDATALOWER);
+	}
+
+	return cqspi_exec_flash_cmd(cqspi, reg);
+}
+
+static int cqspi_indirect_read_setup(struct spi_nor *nor,
+			      unsigned int from_addr)
+{
+	struct cqspi_flash_pdata *f_pdata;
+	struct cqspi_st *cqspi = nor->priv;
+	phys_addr_t ahb_base = virt_to_phys(cqspi->ahb_base);
+	void __iomem *reg_base = cqspi->iobase;
+	unsigned int dummy_clk = 0;
+	unsigned int dummy_bytes;
+	unsigned int reg = 0;
+
+	writel(ahb_base & CQSPI_INDIRECTTRIGGER_ADDR_MASK,
+	       reg_base + CQSPI_REG_INDIRECTTRIGGER);
+	writel(from_addr, reg_base + CQSPI_REG_INDIRECTRDSTARTADDR);
+	f_pdata = &cqspi->f_pdata[cqspi->current_cs];
+
+	reg = nor->read_opcode << CQSPI_REG_RD_INSTR_OPCODE_LSB;
+	reg |= cqspi_calc_rdreg(nor, nor->read_opcode);
+
+	/* Setup dummy clock cycles */
+	dummy_bytes = nor->read_dummy / 8;
+
+	if (dummy_bytes > CQSPI_DUMMY_BYTES_MAX)
+		dummy_bytes = CQSPI_DUMMY_BYTES_MAX;
+
+	if (dummy_bytes) {
+		reg |= (1 << CQSPI_REG_RD_INSTR_MODE_EN_LSB);
+		/* Set mode bits high to ensure chip doesn't enter XIP */
+		writel(0xFF, reg_base + CQSPI_REG_MODE_BIT);
+
+		/* Convert to clock cycles. */
+		dummy_clk = dummy_bytes * CQSPI_DUMMY_CLKS_PER_BYTE;
+		/* Need to subtract the mode byte (8 clocks). */
+		if (f_pdata->inst_width != CQSPI_INST_TYPE_QUAD)
+			dummy_clk -= CQSPI_DUMMY_CLKS_PER_BYTE;
+
+		if (dummy_clk)
+			reg |= (dummy_clk & CQSPI_REG_RD_INSTR_DUMMY_MASK)
+			    << CQSPI_REG_RD_INSTR_DUMMY_LSB;
+	}
+
+	writel(reg, reg_base + CQSPI_REG_RD_INSTR);
+
+	/* Set address width */
+	reg = readl(reg_base + CQSPI_REG_SIZE);
+	reg &= ~CQSPI_REG_SIZE_ADDRESS_MASK;
+	reg |= (nor->addr_width) - 1;
+	writel(reg, reg_base + CQSPI_REG_SIZE);
+	return 0;
+}
+
+static int cqspi_indirect_read_execute(struct spi_nor *nor,
+				u8 *rxbuf, unsigned n_rx)
+{
+	int ret = 0;
+	unsigned int reg = 0;
+	unsigned int bytes_to_read = 0;
+	unsigned int watermark;
+	struct cqspi_st *cqspi = nor->priv;
+	void __iomem *reg_base = cqspi->iobase;
+	void __iomem *ahb_base = cqspi->ahb_base;
+	int remaining = (int)n_rx;
+
+	watermark = cqspi->fifo_depth * CQSPI_FIFO_WIDTH / 2;
+	writel(watermark, reg_base + CQSPI_REG_INDIRECTRDWATERMARK);
+	writel(remaining, reg_base + CQSPI_REG_INDIRECTRDBYTES);
+
+	/* Clear all interrupts. */
+	writel(CQSPI_IRQ_STATUS_MASK, reg_base + CQSPI_REG_IRQSTATUS);
+
+	cqspi->irq_mask = CQSPI_IRQ_MASK_RD;
+	writel(cqspi->irq_mask, reg_base + CQSPI_REG_IRQMASK);
+
+	writel(CQSPI_REG_INDIRECTRD_START_MASK,
+		reg_base + CQSPI_REG_INDIRECTRD);
+
+	while (remaining > 0) {
+		unsigned int irq_status;
+
+		ret = wait_on_timeout(CQSPI_READ_TIMEOUT_MS,
+			readl(reg_base + CQSPI_REG_IRQSTATUS) & cqspi->irq_mask);
+
+		irq_status = readl(reg_base + CQSPI_REG_IRQSTATUS);
+		bytes_to_read = CQSPI_GET_RD_SRAM_LEVEL(reg_base);
+
+		/* Clear all interrupts. */
+		writel(irq_status, reg_base + CQSPI_REG_IRQSTATUS);
+
+		if (!ret && bytes_to_read == 0) {
+			dev_err(nor->dev, "Indirect read timeout, no bytes\n");
+			ret = -ETIMEDOUT;
+			goto failrd;
+		}
+
+		while (bytes_to_read != 0) {
+			bytes_to_read *= CQSPI_FIFO_WIDTH;
+			bytes_to_read = bytes_to_read > remaining
+					? remaining : bytes_to_read;
+			cqspi_fifo_read(rxbuf, ahb_base, bytes_to_read);
+			rxbuf += bytes_to_read;
+			remaining -= bytes_to_read;
+			bytes_to_read = CQSPI_GET_RD_SRAM_LEVEL(reg_base);
+		}
+	}
+
+	/* Check indirect done status */
+	if (wait_on_timeout(CQSPI_TIMEOUT_MS,
+		readl(reg_base + CQSPI_REG_INDIRECTRD) &
+			CQSPI_REG_INDIRECTRD_DONE_MASK)) {
+		dev_err(nor->dev,
+			"Indirect read completion error 0x%08x\n", reg);
+		ret = -ETIMEDOUT;
+		goto failrd;
+	}
+
+	/* Disable interrupt */
+	writel(0, reg_base + CQSPI_REG_IRQMASK);
+
+	/* Clear indirect completion status */
+	writel(CQSPI_REG_INDIRECTRD_DONE_MASK, reg_base + CQSPI_REG_INDIRECTRD);
+
+	return 0;
+
+ failrd:
+	/* Disable interrupt */
+	writel(0, reg_base + CQSPI_REG_IRQMASK);
+
+	/* Cancel the indirect read */
+	writel(CQSPI_REG_INDIRECTWR_CANCEL_MASK,
+	       reg_base + CQSPI_REG_INDIRECTRD);
+	return ret;
+}
+
+static void cqspi_controller_enable(struct cqspi_st *cqspi)
+{
+	void __iomem *reg_base = cqspi->iobase;
+	unsigned int reg;
+
+	reg = readl(reg_base + CQSPI_REG_CONFIG);
+	reg |= CQSPI_REG_CONFIG_ENABLE_MASK;
+	writel(reg, reg_base + CQSPI_REG_CONFIG);
+}
+
+static void cqspi_controller_disable(struct cqspi_st *cqspi)
+{
+	void __iomem *reg_base = cqspi->iobase;
+	unsigned int reg;
+
+	reg = readl(reg_base + CQSPI_REG_CONFIG);
+	reg &= ~CQSPI_REG_CONFIG_ENABLE_MASK;
+	writel(reg, reg_base + CQSPI_REG_CONFIG);
+}
+
+static void cqspi_chipselect(struct cqspi_st *cqspi,
+			     unsigned int chip_select,
+			     unsigned int decoder_enable)
+{
+	void __iomem *reg_base = cqspi->iobase;
+	unsigned int reg;
+
+	reg = readl(reg_base + CQSPI_REG_CONFIG);
+	if (decoder_enable) {
+		reg |= CQSPI_REG_CONFIG_DECODE_MASK;
+	} else {
+		reg &= ~CQSPI_REG_CONFIG_DECODE_MASK;
+
+		/* Convert CS if without decoder.
+		 * CS0 to 4b'1110
+		 * CS1 to 4b'1101
+		 * CS2 to 4b'1011
+		 * CS3 to 4b'0111
+		 */
+		chip_select = 0xF & ~(1 << chip_select);
+	}
+
+	reg &= ~(CQSPI_REG_CONFIG_CHIPSELECT_MASK
+		 << CQSPI_REG_CONFIG_CHIPSELECT_LSB);
+	reg |= (chip_select & CQSPI_REG_CONFIG_CHIPSELECT_MASK)
+		<< CQSPI_REG_CONFIG_CHIPSELECT_LSB;
+	writel(reg, reg_base + CQSPI_REG_CONFIG);
+}
+
+static unsigned int calculate_ticks_for_ns(unsigned int ref_clk_hz,
+					   unsigned int ns_val)
+{
+	unsigned int ticks;
+
+	ticks = ref_clk_hz;
+	ticks /= 1000;
+	ticks *= ns_val;
+	ticks += 999999;
+	ticks /= 1000000;
+	return ticks;
+}
+
+static void cqspi_delay(struct cqspi_st *cqspi,
+			unsigned int ref_clk_hz, unsigned int sclk_hz)
+{
+	void __iomem *reg_base = cqspi->iobase;
+	struct cqspi_flash_pdata *f_pdata;
+	unsigned int ref_clk_ns;
+	unsigned int sclk_ns;
+	unsigned int tshsl, tchsh, tslch, tsd2d;
+	unsigned int reg;
+	unsigned int tsclk;
+
+	if (cqspi->no_reconfig)
+		return;
+
+	f_pdata = &cqspi->f_pdata[cqspi->current_cs];
+
+	/* Convert to ns. */
+	ref_clk_ns = NSEC_PER_SEC / ref_clk_hz;
+
+	/* Convert to ns. */
+	sclk_ns = NSEC_PER_SEC / sclk_hz;
+
+	/* calculate the number of ref ticks for one sclk tick */
+	tsclk = (ref_clk_hz + sclk_hz - 1) / sclk_hz;
+
+	tshsl = calculate_ticks_for_ns(ref_clk_hz, f_pdata->tshsl_ns);
+	/* this particular value must be at least one sclk */
+	if (tshsl < tsclk)
+		tshsl = tsclk;
+
+	tchsh = calculate_ticks_for_ns(ref_clk_hz, f_pdata->tchsh_ns);
+	tslch = calculate_ticks_for_ns(ref_clk_hz, f_pdata->tslch_ns);
+	tsd2d = calculate_ticks_for_ns(ref_clk_hz, f_pdata->tsd2d_ns);
+
+	reg = ((tshsl & CQSPI_REG_DELAY_TSHSL_MASK)
+	       << CQSPI_REG_DELAY_TSHSL_LSB);
+	reg |= ((tchsh & CQSPI_REG_DELAY_TCHSH_MASK)
+		<< CQSPI_REG_DELAY_TCHSH_LSB);
+	reg |= ((tslch & CQSPI_REG_DELAY_TSLCH_MASK)
+		<< CQSPI_REG_DELAY_TSLCH_LSB);
+	reg |= ((tsd2d & CQSPI_REG_DELAY_TSD2D_MASK)
+		<< CQSPI_REG_DELAY_TSD2D_LSB);
+	writel(reg, reg_base + CQSPI_REG_DELAY);
+}
+
+static void cqspi_config_baudrate_div(struct cqspi_st *cqspi,
+				      unsigned int ref_clk_hz,
+				      unsigned int sclk_hz)
+{
+	void __iomem *reg_base = cqspi->iobase;
+	unsigned int reg;
+	unsigned int div;
+
+	reg = readl(reg_base + CQSPI_REG_CONFIG);
+	reg &= ~(CQSPI_REG_CONFIG_BAUD_MASK << CQSPI_REG_CONFIG_BAUD_LSB);
+
+	div = ref_clk_hz / sclk_hz;
+
+	/* Recalculate the baudrate divisor based on QSPI specification. */
+	if (div > 32)
+		div = 32;
+
+	/* Check if even number. */
+	if (div & 1)
+		div = (div / 2);
+	else
+		div = (div / 2) - 1;
+
+	div = (div & CQSPI_REG_CONFIG_BAUD_MASK) << CQSPI_REG_CONFIG_BAUD_LSB;
+	reg |= div;
+	writel(reg, reg_base + CQSPI_REG_CONFIG);
+}
+
+static void cqspi_readdata_capture(struct cqspi_st *cqspi,
+				   unsigned int bypass, unsigned int delay)
+{
+	void __iomem *reg_base = cqspi->iobase;
+	unsigned int reg;
+
+	if (cqspi->no_reconfig)
+		return;
+
+	reg = readl(reg_base + CQSPI_REG_READCAPTURE);
+
+	if (bypass)
+		reg |= (1 << CQSPI_REG_READCAPTURE_BYPASS_LSB);
+	else
+		reg &= ~(1 << CQSPI_REG_READCAPTURE_BYPASS_LSB);
+
+	reg &= ~(CQSPI_REG_READCAPTURE_DELAY_MASK
+		 << CQSPI_REG_READCAPTURE_DELAY_LSB);
+
+	reg |= ((delay & CQSPI_REG_READCAPTURE_DELAY_MASK)
+		<< CQSPI_REG_READCAPTURE_DELAY_LSB);
+
+	writel(reg, reg_base + CQSPI_REG_READCAPTURE);
+}
+
+static void cqspi_switch_cs(struct cqspi_st *cqspi, unsigned int cs)
+{
+	unsigned int reg;
+	struct cqspi_flash_pdata *f_pdata = &cqspi->f_pdata[cs];
+	void __iomem *reg_base = cqspi->iobase;
+	struct spi_nor *nor = &f_pdata->nor;
+
+	cqspi_controller_disable(cqspi);
+
+	/* configure page size and block size. */
+	reg = readl(reg_base + CQSPI_REG_SIZE);
+	reg &= ~(CQSPI_REG_SIZE_PAGE_MASK << CQSPI_REG_SIZE_PAGE_LSB);
+	reg &= ~(CQSPI_REG_SIZE_BLOCK_MASK << CQSPI_REG_SIZE_BLOCK_LSB);
+	reg |= (nor->page_size << CQSPI_REG_SIZE_PAGE_LSB);
+	reg |= (f_pdata->block_size << CQSPI_REG_SIZE_BLOCK_LSB);
+	reg &= ~CQSPI_REG_SIZE_ADDRESS_MASK;
+	reg |= (nor->addr_width - 1);
+	writel(reg, reg_base + CQSPI_REG_SIZE);
+
+	/* configure the chip select */
+	cqspi_chipselect(cqspi, cs, cqspi->is_decoded_cs);
+
+	cqspi_controller_enable(cqspi);
+}
+
+static int cqspi_configure(struct spi_nor *nor)
+{
+	struct cqspi_st *cqspi = nor->priv;
+	int cs = cqspi_find_chipselect(nor);
+	struct cqspi_flash_pdata *f_pdata;
+	unsigned int sclk;
+
+	/* Switch chip select. */
+	if (cqspi->current_cs != cs) {
+		cqspi->current_cs = cs;
+		cqspi_switch_cs(cqspi, cs);
+	}
+
+	/* Setup baudrate divisor and delays */
+	f_pdata = &cqspi->f_pdata[cqspi->current_cs];
+	sclk = f_pdata->clk_rate;
+	if (cqspi->sclk != sclk) {
+		cqspi->sclk = sclk;
+		cqspi_controller_disable(cqspi);
+		cqspi_config_baudrate_div(cqspi,
+					  cqspi->master_ref_clk_hz, sclk);
+		cqspi_delay(cqspi, cqspi->master_ref_clk_hz, sclk);
+		cqspi_readdata_capture(cqspi, 1, f_pdata->read_delay);
+		cqspi_controller_enable(cqspi);
+	}
+	return 0;
+}
+
+int cqspi_set_protocol(struct spi_nor *nor, const int read)
+{
+	struct cqspi_st *cqspi = nor->priv;
+	struct cqspi_flash_pdata *f_pdata;
+	int cs = cqspi_find_chipselect(nor);
+
+	if (cs < 0)
+		return -EINVAL;
+
+	f_pdata = &cqspi->f_pdata[cs];
+
+	f_pdata->inst_width = CQSPI_INST_TYPE_SINGLE;
+	f_pdata->addr_width = CQSPI_INST_TYPE_SINGLE;
+	f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
+
+	if (read) {
+		switch (nor->read_proto) {
+		case SNOR_PROTO_1_1_1:
+			f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
+			break;
+		case SNOR_PROTO_1_1_2:
+			f_pdata->data_width = CQSPI_INST_TYPE_DUAL;
+			break;
+		case SNOR_PROTO_1_1_4:
+			f_pdata->data_width = CQSPI_INST_TYPE_QUAD;
+			break;
+		default:
+			return -EINVAL;
+		}
+	}
+
+	cqspi_configure(nor);
+
+	return 0;
+}
+
+int cqspi_read(struct spi_nor *nor, loff_t from,
+		      size_t len, size_t *retlen, u_char *buf)
+{
+	int ret;
+
+	ret = cqspi_set_protocol(nor, 1);
+	if (ret)
+		return ret;
+
+	ret = cqspi_indirect_read_setup(nor, from);
+	if (ret == 0) {
+		ret = cqspi_indirect_read_execute(nor, buf, len);
+		if (ret == 0)
+			*retlen += len;
+	}
+	return ret;
+}
+
+int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
+{
+	int ret;
+
+	ret = cqspi_set_protocol(nor, 0);
+	if (!ret)
+		ret = cqspi_command_read(nor, &opcode, 1, buf, len);
+
+	return ret;
+}
+
+int cqspi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
+{
+	int ret = 0;
+
+	if (!IS_ENABLED(CONFIG_MTD_WRITE))
+		return -ENOTSUPP;
+
+	ret = cqspi_set_protocol(nor, 0);
+	if (!ret)
+		ret = cqspi_command_write(nor, opcode, buf, len);
+
+	return ret;
+}
+
+void cqspi_controller_init(struct cqspi_st *cqspi)
+{
+	cqspi_controller_disable(cqspi);
+
+	/* Configure the remap address register, no remap */
+	writel(0, cqspi->iobase + CQSPI_REG_REMAP);
+
+	/* Disable all interrupts */
+	writel(0, cqspi->iobase + CQSPI_REG_IRQMASK);
+
+	cqspi_controller_enable(cqspi);
+}
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 56af62dd1733..7c160fa2e0d7 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -22,223 +22,7 @@
 #include <platform_data/cadence_qspi.h>
 #include <spi/spi.h>
 
-#define CQSPI_MAX_CHIPSELECT		16
-
-struct cqspi_flash_pdata {
-	struct mtd_info mtd;
-	struct spi_nor nor;
-	u32 clk_rate;
-	unsigned int block_size;
-	unsigned int read_delay;
-	unsigned int tshsl_ns;
-	unsigned int tsd2d_ns;
-	unsigned int tchsh_ns;
-	unsigned int tslch_ns;
-	u8	     inst_width;
-	u8	     addr_width;
-	u8	     data_width;
-};
-
-struct cqspi_st {
-	struct device	*dev;
-	struct clk	*l4_mp_clk;
-	struct clk	*qspi_clk;
-	unsigned int	sclk;
-
-	void __iomem	*iobase;
-	void __iomem	*ahb_base;
-	unsigned int	irq_mask;
-	int		current_cs;
-	unsigned int	master_ref_clk_hz;
-	unsigned int	is_decoded_cs;
-	unsigned int	fifo_depth;
-	struct cqspi_flash_pdata f_pdata[CQSPI_MAX_CHIPSELECT];
-	bool no_reconfig;
-};
-
-/* Operation timeout value */
-#define CQSPI_TIMEOUT_MS			800 * MSECOND
-#define CQSPI_READ_TIMEOUT_MS			100 * MSECOND
-#define CQSPI_POLL_IDLE_RETRY			3
-
-#define CQSPI_FIFO_WIDTH			4
-
-#define CQSPI_REG_SRAM_THRESHOLD_BYTES		50
-
-/* Instruction type */
-#define CQSPI_INST_TYPE_SINGLE			0
-#define CQSPI_INST_TYPE_DUAL			1
-#define CQSPI_INST_TYPE_QUAD			2
-
-#define CQSPI_DUMMY_CLKS_PER_BYTE		8
-#define CQSPI_DUMMY_BYTES_MAX			4
-
-#define CQSPI_STIG_DATA_LEN_MAX			8
-
-#define CQSPI_INDIRECTTRIGGER_ADDR_MASK		0xFFFFF
-
-/* Register map */
-#define CQSPI_REG_CONFIG			0x00
-#define CQSPI_REG_CONFIG_ENABLE_MASK		BIT(0)
-#define CQSPI_REG_CONFIG_DECODE_MASK		BIT(9)
-#define CQSPI_REG_CONFIG_CHIPSELECT_LSB		10
-#define CQSPI_REG_CONFIG_DMA_MASK		BIT(15)
-#define CQSPI_REG_CONFIG_BAUD_LSB		19
-#define CQSPI_REG_CONFIG_IDLE_LSB		31
-#define CQSPI_REG_CONFIG_CHIPSELECT_MASK	0xF
-#define CQSPI_REG_CONFIG_BAUD_MASK		0xF
-
-#define CQSPI_REG_RD_INSTR			0x04
-#define CQSPI_REG_RD_INSTR_OPCODE_LSB		0
-#define CQSPI_REG_RD_INSTR_TYPE_INSTR_LSB	8
-#define CQSPI_REG_RD_INSTR_TYPE_ADDR_LSB	12
-#define CQSPI_REG_RD_INSTR_TYPE_DATA_LSB	16
-#define CQSPI_REG_RD_INSTR_MODE_EN_LSB		20
-#define CQSPI_REG_RD_INSTR_DUMMY_LSB		24
-#define CQSPI_REG_RD_INSTR_TYPE_INSTR_MASK	0x3
-#define CQSPI_REG_RD_INSTR_TYPE_ADDR_MASK	0x3
-#define CQSPI_REG_RD_INSTR_TYPE_DATA_MASK	0x3
-#define CQSPI_REG_RD_INSTR_DUMMY_MASK		0x1F
-
-#define CQSPI_REG_WR_INSTR			0x08
-#define CQSPI_REG_WR_INSTR_OPCODE_LSB		0
-#define CQSPI_REG_WR_INSTR_TYPE_ADDR_LSB	12
-#define CQSPI_REG_WR_INSTR_TYPE_DATA_LSB	16
-
-#define CQSPI_REG_DELAY				0x0C
-#define CQSPI_REG_DELAY_TSLCH_LSB		0
-#define CQSPI_REG_DELAY_TCHSH_LSB		8
-#define CQSPI_REG_DELAY_TSD2D_LSB		16
-#define CQSPI_REG_DELAY_TSHSL_LSB		24
-#define CQSPI_REG_DELAY_TSLCH_MASK		0xFF
-#define CQSPI_REG_DELAY_TCHSH_MASK		0xFF
-#define CQSPI_REG_DELAY_TSD2D_MASK		0xFF
-#define CQSPI_REG_DELAY_TSHSL_MASK		0xFF
-
-#define CQSPI_REG_READCAPTURE			0x10
-#define CQSPI_REG_READCAPTURE_BYPASS_LSB	0
-#define CQSPI_REG_READCAPTURE_DELAY_LSB		1
-#define CQSPI_REG_READCAPTURE_DELAY_MASK	0xF
-
-#define CQSPI_REG_SIZE				0x14
-#define CQSPI_REG_SIZE_ADDRESS_LSB		0
-#define CQSPI_REG_SIZE_PAGE_LSB			4
-#define CQSPI_REG_SIZE_BLOCK_LSB		16
-#define CQSPI_REG_SIZE_ADDRESS_MASK		0xF
-#define CQSPI_REG_SIZE_PAGE_MASK		0xFFF
-#define CQSPI_REG_SIZE_BLOCK_MASK		0x3F
-
-#define CQSPI_REG_SRAMPARTITION			0x18
-#define CQSPI_REG_INDIRECTTRIGGER		0x1C
-
-#define CQSPI_REG_DMA				0x20
-#define CQSPI_REG_DMA_SINGLE_LSB		0
-#define CQSPI_REG_DMA_BURST_LSB			8
-#define CQSPI_REG_DMA_SINGLE_MASK		0xFF
-#define CQSPI_REG_DMA_BURST_MASK		0xFF
-
-#define CQSPI_REG_REMAP				0x24
-#define CQSPI_REG_MODE_BIT			0x28
-
-#define CQSPI_REG_SRAMLEVEL			0x2C
-#define CQSPI_REG_SRAMLEVEL_RD_LSB		0
-#define CQSPI_REG_SRAMLEVEL_WR_LSB		16
-#define CQSPI_REG_SRAMLEVEL_RD_MASK		0xFFFF
-#define CQSPI_REG_SRAMLEVEL_WR_MASK		0xFFFF
-
-#define CQSPI_REG_IRQSTATUS			0x40
-#define CQSPI_REG_IRQMASK			0x44
-
-#define CQSPI_REG_INDIRECTRD			0x60
-#define CQSPI_REG_INDIRECTRD_START_MASK		BIT(0)
-#define CQSPI_REG_INDIRECTRD_CANCEL_MASK	BIT(1)
-#define CQSPI_REG_INDIRECTRD_DONE_MASK		BIT(5)
-
-#define CQSPI_REG_INDIRECTRDWATERMARK		0x64
-#define CQSPI_REG_INDIRECTRDSTARTADDR		0x68
-#define CQSPI_REG_INDIRECTRDBYTES		0x6C
-
-#define CQSPI_REG_CMDCTRL			0x90
-#define CQSPI_REG_CMDCTRL_EXECUTE_MASK		BIT(0)
-#define CQSPI_REG_CMDCTRL_INPROGRESS_MASK	BIT(1)
-#define CQSPI_REG_CMDCTRL_WR_BYTES_LSB		12
-#define CQSPI_REG_CMDCTRL_WR_EN_LSB		15
-#define CQSPI_REG_CMDCTRL_ADD_BYTES_LSB		16
-#define CQSPI_REG_CMDCTRL_ADDR_EN_LSB		19
-#define CQSPI_REG_CMDCTRL_RD_BYTES_LSB		20
-#define CQSPI_REG_CMDCTRL_RD_EN_LSB		23
-#define CQSPI_REG_CMDCTRL_OPCODE_LSB		24
-#define CQSPI_REG_CMDCTRL_WR_BYTES_MASK		0x7
-#define CQSPI_REG_CMDCTRL_ADD_BYTES_MASK	0x3
-#define CQSPI_REG_CMDCTRL_RD_BYTES_MASK		0x7
-
-#define CQSPI_REG_INDIRECTWR			0x70
-#define CQSPI_REG_INDIRECTWR_START_MASK		BIT(0)
-#define CQSPI_REG_INDIRECTWR_CANCEL_MASK	BIT(1)
-#define CQSPI_REG_INDIRECTWR_DONE_MASK		BIT(5)
-
-#define CQSPI_REG_INDIRECTWRWATERMARK		0x74
-#define CQSPI_REG_INDIRECTWRSTARTADDR		0x78
-#define CQSPI_REG_INDIRECTWRBYTES		0x7C
-
-#define CQSPI_REG_CMDADDRESS			0x94
-#define CQSPI_REG_CMDREADDATALOWER		0xA0
-#define CQSPI_REG_CMDREADDATAUPPER		0xA4
-#define CQSPI_REG_CMDWRITEDATALOWER		0xA8
-#define CQSPI_REG_CMDWRITEDATAUPPER		0xAC
-
-/* Interrupt status bits */
-#define CQSPI_REG_IRQ_MODE_ERR			BIT(0)
-#define CQSPI_REG_IRQ_UNDERFLOW			BIT(1)
-#define CQSPI_REG_IRQ_IND_COMP			BIT(2)
-#define CQSPI_REG_IRQ_IND_RD_REJECT		BIT(3)
-#define CQSPI_REG_IRQ_WR_PROTECTED_ERR		BIT(4)
-#define CQSPI_REG_IRQ_ILLEGAL_AHB_ERR		BIT(5)
-#define CQSPI_REG_IRQ_WATERMARK			BIT(6)
-#define CQSPI_REG_IRQ_IND_RD_OVERFLOW		BIT(12)
-
-#define CQSPI_IRQ_STATUS_ERR		(CQSPI_REG_IRQ_MODE_ERR		| \
-					 CQSPI_REG_IRQ_IND_RD_REJECT	| \
-					 CQSPI_REG_IRQ_WR_PROTECTED_ERR	| \
-					 CQSPI_REG_IRQ_ILLEGAL_AHB_ERR)
-
-#define CQSPI_IRQ_MASK_RD		(CQSPI_REG_IRQ_WATERMARK	| \
-					 CQSPI_REG_IRQ_IND_RD_OVERFLOW	| \
-					 CQSPI_REG_IRQ_IND_COMP)
-
-#define CQSPI_IRQ_MASK_WR		(CQSPI_REG_IRQ_IND_COMP		| \
-					 CQSPI_REG_IRQ_WATERMARK	| \
-					 CQSPI_REG_IRQ_UNDERFLOW)
-
-#define CQSPI_IRQ_STATUS_MASK		0x1FFFE
-
-#define CQSPI_REG_IS_IDLE(base)						\
-		((readl(base + CQSPI_REG_CONFIG) >>			\
-			CQSPI_REG_CONFIG_IDLE_LSB) & 0x1)
-
-#define CQSPI_GET_RD_SRAM_LEVEL(reg_base)				\
-		(((readl(reg_base + CQSPI_REG_SRAMLEVEL)) >>		\
-		CQSPI_REG_SRAMLEVEL_RD_LSB) & CQSPI_REG_SRAMLEVEL_RD_MASK)
-
-static void cqspi_fifo_read(void *dest, const void *src_ahb_addr,
-			    unsigned int bytes)
-{
-	unsigned int temp;
-	int remaining = bytes;
-	unsigned int *dest_ptr = (unsigned int *)dest;
-	unsigned int *src_ptr = (unsigned int *)src_ahb_addr;
-
-	while (remaining > CQSPI_FIFO_WIDTH) {
-		*dest_ptr = readl(src_ptr);
-		dest_ptr++;
-		remaining -= CQSPI_FIFO_WIDTH;
-	}
-	if (remaining > 0) {
-		/* dangling bytes */
-		temp = readl(src_ptr);
-		memcpy(dest_ptr, &temp, remaining);
-	}
-}
+#include "cadence-quadspi.h"
 
 static void cqspi_fifo_write(void *dest_ahb_addr,
 			     const void *src, unsigned int bytes)
@@ -260,144 +44,6 @@ static void cqspi_fifo_write(void *dest_ahb_addr,
 	}
 }
 
-static int cqspi_find_chipselect(struct spi_nor *nor)
-{
-	int cs = -1;
-	struct cqspi_st *cqspi = nor->priv;
-
-	for (cs = 0; cs < CQSPI_MAX_CHIPSELECT; cs++)
-		if (nor == &cqspi->f_pdata[cs].nor)
-			break;
-	return cs;
-}
-
-static unsigned int cqspi_calc_rdreg(struct spi_nor *nor, u8 opcode)
-{
-	unsigned int rdreg = 0;
-	struct cqspi_st *cqspi = nor->priv;
-	struct cqspi_flash_pdata *f_pdata;
-
-	f_pdata = &cqspi->f_pdata[cqspi->current_cs];
-
-	rdreg |= f_pdata->inst_width << CQSPI_REG_RD_INSTR_TYPE_INSTR_LSB;
-	rdreg |= f_pdata->addr_width << CQSPI_REG_RD_INSTR_TYPE_ADDR_LSB;
-	rdreg |= f_pdata->data_width << CQSPI_REG_RD_INSTR_TYPE_DATA_LSB;
-
-	return rdreg;
-}
-
-static unsigned int cqspi_wait_idle(struct cqspi_st *cqspi)
-{
-	void __iomem *reg_base = cqspi->iobase;
-
-	if (wait_on_timeout(CQSPI_TIMEOUT_MS,
-		CQSPI_REG_IS_IDLE(reg_base))) {
-		/* Timeout, in busy mode. */
-		dev_err(cqspi->dev, "QSPI is still busy after %llums timeout.\n",
-			CQSPI_TIMEOUT_MS);
-		return -ETIMEDOUT;
-	}
-
-	return 0;
-}
-
-static int cqspi_exec_flash_cmd(struct cqspi_st *cqspi, unsigned int reg)
-{
-	void __iomem *reg_base = cqspi->iobase;
-
-	/* Write the CMDCTRL without start execution. */
-	writel(reg, reg_base + CQSPI_REG_CMDCTRL);
-	/* Start execute */
-	reg |= CQSPI_REG_CMDCTRL_EXECUTE_MASK;
-	writel(reg, reg_base + CQSPI_REG_CMDCTRL);
-
-	if (wait_on_timeout(CQSPI_TIMEOUT_MS,
-		(readl(reg_base + CQSPI_REG_CMDCTRL) &
-			CQSPI_REG_CMDCTRL_INPROGRESS_MASK) == 0)) {
-		dev_err(cqspi->dev, "flash cmd execute time out (0x%08x)\n",
-			readl(reg_base + CQSPI_REG_CMDCTRL));
-		return -EIO;
-	}
-
-	/* Polling QSPI idle status. */
-	return cqspi_wait_idle(cqspi);
-}
-
-static int cqspi_command_read(struct spi_nor *nor,
-			      const u8 *txbuf, unsigned n_tx,
-			      u8 *rxbuf, unsigned n_rx)
-{
-	unsigned int reg;
-	unsigned int read_len;
-	int status;
-	struct cqspi_st *cqspi = nor->priv;
-	void __iomem *reg_base = cqspi->iobase;
-	unsigned int rdreg;
-
-	if (!n_rx || n_rx > CQSPI_STIG_DATA_LEN_MAX || rxbuf == NULL) {
-		dev_err(nor->dev,
-			"Invalid input argument, len %d rxbuf 0x%p\n", n_rx, rxbuf);
-		return -EINVAL;
-	}
-
-	reg = txbuf[0] << CQSPI_REG_CMDCTRL_OPCODE_LSB;
-
-	rdreg = cqspi_calc_rdreg(nor, txbuf[0]);
-	writel(rdreg, reg_base + CQSPI_REG_RD_INSTR);
-
-	reg |= (0x1 << CQSPI_REG_CMDCTRL_RD_EN_LSB);
-
-	/* 0 means 1 byte. */
-	reg |= (((n_rx - 1) & CQSPI_REG_CMDCTRL_RD_BYTES_MASK)
-		<< CQSPI_REG_CMDCTRL_RD_BYTES_LSB);
-	status = cqspi_exec_flash_cmd(cqspi, reg);
-	if (status != 0)
-		return status;
-
-	reg = readl(reg_base + CQSPI_REG_CMDREADDATALOWER);
-
-	/* Put the read value into rx_buf */
-	read_len = (n_rx > 4) ? 4 : n_rx;
-	memcpy(rxbuf, &reg, read_len);
-	rxbuf += read_len;
-
-	if (n_rx > 4) {
-		reg = readl(reg_base + CQSPI_REG_CMDREADDATAUPPER);
-
-		read_len = n_rx - read_len;
-		memcpy(rxbuf, &reg, read_len);
-	}
-
-	return 0;
-}
-
-static __maybe_unused int cqspi_command_write(struct spi_nor *nor,
-				u8 opcode, const u8 *txbuf, unsigned n_tx)
-{
-	unsigned int reg;
-	unsigned int data;
-	struct cqspi_st *cqspi = nor->priv;
-	void __iomem *reg_base = cqspi->iobase;
-
-	if (n_tx > 4 || (n_tx && txbuf == NULL)) {
-		dev_err(nor->dev,
-			"Invalid input argument, cmdlen %d txbuf 0x%p\n", n_tx, txbuf);
-		return -EINVAL;
-	}
-
-	reg = opcode << CQSPI_REG_CMDCTRL_OPCODE_LSB;
-	if (n_tx) {
-		reg |= (0x1 << CQSPI_REG_CMDCTRL_WR_EN_LSB);
-		reg |= ((n_tx - 1) & CQSPI_REG_CMDCTRL_WR_BYTES_MASK)
-		    << CQSPI_REG_CMDCTRL_WR_BYTES_LSB;
-		data = 0;
-		memcpy(&data, txbuf, n_tx);
-		writel(data, reg_base + CQSPI_REG_CMDWRITEDATALOWER);
-	}
-
-	return cqspi_exec_flash_cmd(cqspi, reg);
-}
-
 static int cqspi_command_write_addr(struct spi_nor *nor,
 				    u8 opcode, unsigned int addr)
 {
@@ -415,139 +61,6 @@ static int cqspi_command_write_addr(struct spi_nor *nor,
 	return cqspi_exec_flash_cmd(cqspi, reg);
 }
 
-static int cqspi_indirect_read_setup(struct spi_nor *nor,
-				     unsigned int from_addr)
-{
-	struct cqspi_flash_pdata *f_pdata;
-	struct cqspi_st *cqspi = nor->priv;
-	phys_addr_t ahb_base = virt_to_phys(cqspi->ahb_base);
-	void __iomem *reg_base = cqspi->iobase;
-	unsigned int dummy_clk = 0;
-	unsigned int dummy_bytes;
-	unsigned int reg = 0;
-
-	writel(ahb_base & CQSPI_INDIRECTTRIGGER_ADDR_MASK,
-	       reg_base + CQSPI_REG_INDIRECTTRIGGER);
-	writel(from_addr, reg_base + CQSPI_REG_INDIRECTRDSTARTADDR);
-	f_pdata = &cqspi->f_pdata[cqspi->current_cs];
-
-	reg = nor->read_opcode << CQSPI_REG_RD_INSTR_OPCODE_LSB;
-	reg |= cqspi_calc_rdreg(nor, nor->read_opcode);
-
-	/* Setup dummy clock cycles */
-	dummy_bytes = nor->read_dummy / 8;
-
-	if (dummy_bytes > CQSPI_DUMMY_BYTES_MAX)
-		dummy_bytes = CQSPI_DUMMY_BYTES_MAX;
-
-	if (dummy_bytes) {
-		reg |= (1 << CQSPI_REG_RD_INSTR_MODE_EN_LSB);
-		/* Set mode bits high to ensure chip doesn't enter XIP */
-		writel(0xFF, reg_base + CQSPI_REG_MODE_BIT);
-
-		/* Convert to clock cycles. */
-		dummy_clk = dummy_bytes * CQSPI_DUMMY_CLKS_PER_BYTE;
-		/* Need to subtract the mode byte (8 clocks). */
-		if (f_pdata->inst_width != CQSPI_INST_TYPE_QUAD)
-			dummy_clk -= CQSPI_DUMMY_CLKS_PER_BYTE;
-
-		if (dummy_clk)
-			reg |= (dummy_clk & CQSPI_REG_RD_INSTR_DUMMY_MASK)
-			    << CQSPI_REG_RD_INSTR_DUMMY_LSB;
-	}
-
-	writel(reg, reg_base + CQSPI_REG_RD_INSTR);
-
-	/* Set address width */
-	reg = readl(reg_base + CQSPI_REG_SIZE);
-	reg &= ~CQSPI_REG_SIZE_ADDRESS_MASK;
-	reg |= (nor->addr_width) - 1;
-	writel(reg, reg_base + CQSPI_REG_SIZE);
-	return 0;
-}
-
-static int cqspi_indirect_read_execute(struct spi_nor *nor,
-				       u8 *rxbuf, unsigned n_rx)
-{
-	int ret = 0;
-	unsigned int reg = 0;
-	unsigned int bytes_to_read = 0;
-	unsigned int watermark;
-	struct cqspi_st *cqspi = nor->priv;
-	void __iomem *reg_base = cqspi->iobase;
-	void __iomem *ahb_base = cqspi->ahb_base;
-	int remaining = (int)n_rx;
-
-	watermark = cqspi->fifo_depth * CQSPI_FIFO_WIDTH / 2;
-	writel(watermark, reg_base + CQSPI_REG_INDIRECTRDWATERMARK);
-	writel(remaining, reg_base + CQSPI_REG_INDIRECTRDBYTES);
-
-	/* Clear all interrupts. */
-	writel(CQSPI_IRQ_STATUS_MASK, reg_base + CQSPI_REG_IRQSTATUS);
-
-	cqspi->irq_mask = CQSPI_IRQ_MASK_RD;
-	writel(cqspi->irq_mask, reg_base + CQSPI_REG_IRQMASK);
-
-	writel(CQSPI_REG_INDIRECTRD_START_MASK,
-		reg_base + CQSPI_REG_INDIRECTRD);
-
-	while (remaining > 0) {
-		unsigned int irq_status;
-
-		ret = wait_on_timeout(CQSPI_READ_TIMEOUT_MS,
-			readl(reg_base + CQSPI_REG_IRQSTATUS) & cqspi->irq_mask);
-
-		irq_status = readl(reg_base + CQSPI_REG_IRQSTATUS);
-		bytes_to_read = CQSPI_GET_RD_SRAM_LEVEL(reg_base);
-
-		/* Clear all interrupts. */
-		writel(irq_status, reg_base + CQSPI_REG_IRQSTATUS);
-
-		if (!ret && bytes_to_read == 0) {
-			dev_err(nor->dev, "Indirect read timeout, no bytes\n");
-			ret = -ETIMEDOUT;
-			goto failrd;
-		}
-
-		while (bytes_to_read != 0) {
-			bytes_to_read *= CQSPI_FIFO_WIDTH;
-			bytes_to_read = bytes_to_read > remaining
-					? remaining : bytes_to_read;
-			cqspi_fifo_read(rxbuf, ahb_base, bytes_to_read);
-			rxbuf += bytes_to_read;
-			remaining -= bytes_to_read;
-			bytes_to_read = CQSPI_GET_RD_SRAM_LEVEL(reg_base);
-		}
-	}
-
-	/* Check indirect done status */
-	if (wait_on_timeout(CQSPI_TIMEOUT_MS,
-		readl(reg_base + CQSPI_REG_INDIRECTRD) &
-			CQSPI_REG_INDIRECTRD_DONE_MASK)) {
-		dev_err(nor->dev,
-			"Indirect read completion error 0x%08x\n", reg);
-		ret = -ETIMEDOUT;
-		goto failrd;
-	}
-
-	/* Disable interrupt */
-	writel(0, reg_base + CQSPI_REG_IRQMASK);
-
-	/* Clear indirect completion status */
-	writel(CQSPI_REG_INDIRECTRD_DONE_MASK, reg_base + CQSPI_REG_INDIRECTRD);
-
-	return 0;
-
- failrd:
-	/* Disable interrupt */
-	writel(0, reg_base + CQSPI_REG_IRQMASK);
-
-	/* Cancel the indirect read */
-	writel(CQSPI_REG_INDIRECTWR_CANCEL_MASK,
-	       reg_base + CQSPI_REG_INDIRECTRD);
-	return ret;
-}
-
 static __maybe_unused int cqspi_indirect_write_setup(struct spi_nor *nor,
 						     unsigned int to_addr)
 {
@@ -666,255 +179,6 @@ static __maybe_unused int cqspi_indirect_write_execute(struct spi_nor *nor,
 	return ret;
 }
 
-static void cqspi_controller_enable(struct cqspi_st *cqspi)
-{
-	void __iomem *reg_base = cqspi->iobase;
-	unsigned int reg;
-
-	reg = readl(reg_base + CQSPI_REG_CONFIG);
-	reg |= CQSPI_REG_CONFIG_ENABLE_MASK;
-	writel(reg, reg_base + CQSPI_REG_CONFIG);
-}
-
-static void cqspi_controller_disable(struct cqspi_st *cqspi)
-{
-	void __iomem *reg_base = cqspi->iobase;
-	unsigned int reg;
-
-	reg = readl(reg_base + CQSPI_REG_CONFIG);
-	reg &= ~CQSPI_REG_CONFIG_ENABLE_MASK;
-	writel(reg, reg_base + CQSPI_REG_CONFIG);
-}
-
-static void cqspi_chipselect(struct cqspi_st *cqspi,
-			     unsigned int chip_select,
-			     unsigned int decoder_enable)
-{
-	void __iomem *reg_base = cqspi->iobase;
-	unsigned int reg;
-
-	reg = readl(reg_base + CQSPI_REG_CONFIG);
-	if (decoder_enable) {
-		reg |= CQSPI_REG_CONFIG_DECODE_MASK;
-	} else {
-		reg &= ~CQSPI_REG_CONFIG_DECODE_MASK;
-
-		/* Convert CS if without decoder.
-		 * CS0 to 4b'1110
-		 * CS1 to 4b'1101
-		 * CS2 to 4b'1011
-		 * CS3 to 4b'0111
-		 */
-		chip_select = 0xF & ~(1 << chip_select);
-	}
-
-	reg &= ~(CQSPI_REG_CONFIG_CHIPSELECT_MASK
-		 << CQSPI_REG_CONFIG_CHIPSELECT_LSB);
-	reg |= (chip_select & CQSPI_REG_CONFIG_CHIPSELECT_MASK)
-		<< CQSPI_REG_CONFIG_CHIPSELECT_LSB;
-	writel(reg, reg_base + CQSPI_REG_CONFIG);
-}
-
-static unsigned int calculate_ticks_for_ns(unsigned int ref_clk_hz,
-					   unsigned int ns_val)
-{
-	unsigned int ticks;
-
-	ticks = ref_clk_hz;
-	ticks /= 1000;
-	ticks *= ns_val;
-	ticks += 999999;
-	ticks /= 1000000;
-	return ticks;
-}
-
-static void cqspi_delay(struct cqspi_st *cqspi,
-			unsigned int ref_clk_hz, unsigned int sclk_hz)
-{
-	void __iomem *reg_base = cqspi->iobase;
-	struct cqspi_flash_pdata *f_pdata;
-	unsigned int ref_clk_ns;
-	unsigned int sclk_ns;
-	unsigned int tshsl, tchsh, tslch, tsd2d;
-	unsigned int reg;
-	unsigned int tsclk;
-
-	if (cqspi->no_reconfig)
-		return;
-
-	f_pdata = &cqspi->f_pdata[cqspi->current_cs];
-
-	/* Convert to ns. */
-	ref_clk_ns = NSEC_PER_SEC / ref_clk_hz;
-
-	/* Convert to ns. */
-	sclk_ns = NSEC_PER_SEC / sclk_hz;
-
-	/* calculate the number of ref ticks for one sclk tick */
-	tsclk = (ref_clk_hz + sclk_hz - 1) / sclk_hz;
-
-	tshsl = calculate_ticks_for_ns(ref_clk_hz, f_pdata->tshsl_ns);
-	/* this particular value must be at least one sclk */
-	if (tshsl < tsclk)
-		tshsl = tsclk;
-
-	tchsh = calculate_ticks_for_ns(ref_clk_hz, f_pdata->tchsh_ns);
-	tslch = calculate_ticks_for_ns(ref_clk_hz, f_pdata->tslch_ns);
-	tsd2d = calculate_ticks_for_ns(ref_clk_hz, f_pdata->tsd2d_ns);
-
-	reg = ((tshsl & CQSPI_REG_DELAY_TSHSL_MASK)
-	       << CQSPI_REG_DELAY_TSHSL_LSB);
-	reg |= ((tchsh & CQSPI_REG_DELAY_TCHSH_MASK)
-		<< CQSPI_REG_DELAY_TCHSH_LSB);
-	reg |= ((tslch & CQSPI_REG_DELAY_TSLCH_MASK)
-		<< CQSPI_REG_DELAY_TSLCH_LSB);
-	reg |= ((tsd2d & CQSPI_REG_DELAY_TSD2D_MASK)
-		<< CQSPI_REG_DELAY_TSD2D_LSB);
-	writel(reg, reg_base + CQSPI_REG_DELAY);
-}
-
-static void cqspi_config_baudrate_div(struct cqspi_st *cqspi,
-				      unsigned int ref_clk_hz,
-				      unsigned int sclk_hz)
-{
-	void __iomem *reg_base = cqspi->iobase;
-	unsigned int reg;
-	unsigned int div;
-
-	reg = readl(reg_base + CQSPI_REG_CONFIG);
-	reg &= ~(CQSPI_REG_CONFIG_BAUD_MASK << CQSPI_REG_CONFIG_BAUD_LSB);
-
-	div = ref_clk_hz / sclk_hz;
-
-	/* Recalculate the baudrate divisor based on QSPI specification. */
-	if (div > 32)
-		div = 32;
-
-	/* Check if even number. */
-	if (div & 1)
-		div = (div / 2);
-	else
-		div = (div / 2) - 1;
-
-	div = (div & CQSPI_REG_CONFIG_BAUD_MASK) << CQSPI_REG_CONFIG_BAUD_LSB;
-	reg |= div;
-	writel(reg, reg_base + CQSPI_REG_CONFIG);
-}
-
-static void cqspi_readdata_capture(struct cqspi_st *cqspi,
-				   unsigned int bypass, unsigned int delay)
-{
-	void __iomem *reg_base = cqspi->iobase;
-	unsigned int reg;
-
-	if (cqspi->no_reconfig)
-		return;
-
-	reg = readl(reg_base + CQSPI_REG_READCAPTURE);
-
-	if (bypass)
-		reg |= (1 << CQSPI_REG_READCAPTURE_BYPASS_LSB);
-	else
-		reg &= ~(1 << CQSPI_REG_READCAPTURE_BYPASS_LSB);
-
-	reg &= ~(CQSPI_REG_READCAPTURE_DELAY_MASK
-		 << CQSPI_REG_READCAPTURE_DELAY_LSB);
-
-	reg |= ((delay & CQSPI_REG_READCAPTURE_DELAY_MASK)
-		<< CQSPI_REG_READCAPTURE_DELAY_LSB);
-
-	writel(reg, reg_base + CQSPI_REG_READCAPTURE);
-}
-
-static void cqspi_switch_cs(struct cqspi_st *cqspi, unsigned int cs)
-{
-	unsigned int reg;
-	struct cqspi_flash_pdata *f_pdata = &cqspi->f_pdata[cs];
-	void __iomem *reg_base = cqspi->iobase;
-	struct spi_nor *nor = &f_pdata->nor;
-
-	cqspi_controller_disable(cqspi);
-
-	/* configure page size and block size. */
-	reg = readl(reg_base + CQSPI_REG_SIZE);
-	reg &= ~(CQSPI_REG_SIZE_PAGE_MASK << CQSPI_REG_SIZE_PAGE_LSB);
-	reg &= ~(CQSPI_REG_SIZE_BLOCK_MASK << CQSPI_REG_SIZE_BLOCK_LSB);
-	reg |= (nor->page_size << CQSPI_REG_SIZE_PAGE_LSB);
-	reg |= (f_pdata->block_size << CQSPI_REG_SIZE_BLOCK_LSB);
-	reg &= ~CQSPI_REG_SIZE_ADDRESS_MASK;
-	reg |= (nor->addr_width - 1);
-	writel(reg, reg_base + CQSPI_REG_SIZE);
-
-	/* configure the chip select */
-	cqspi_chipselect(cqspi, cs, cqspi->is_decoded_cs);
-
-	cqspi_controller_enable(cqspi);
-}
-
-static int cqspi_configure(struct spi_nor *nor)
-{
-	struct cqspi_st *cqspi = nor->priv;
-	int cs = cqspi_find_chipselect(nor);
-	struct cqspi_flash_pdata *f_pdata;
-	unsigned int sclk;
-
-	/* Switch chip select. */
-	if (cqspi->current_cs != cs) {
-		cqspi->current_cs = cs;
-		cqspi_switch_cs(cqspi, cs);
-	}
-
-	/* Setup baudrate divisor and delays */
-	f_pdata = &cqspi->f_pdata[cqspi->current_cs];
-	sclk = f_pdata->clk_rate;
-	if (cqspi->sclk != sclk) {
-		cqspi->sclk = sclk;
-		cqspi_controller_disable(cqspi);
-		cqspi_config_baudrate_div(cqspi,
-					  cqspi->master_ref_clk_hz, sclk);
-		cqspi_delay(cqspi, cqspi->master_ref_clk_hz, sclk);
-		cqspi_readdata_capture(cqspi, 1, f_pdata->read_delay);
-		cqspi_controller_enable(cqspi);
-	}
-	return 0;
-}
-
-static int cqspi_set_protocol(struct spi_nor *nor, const int read)
-{
-	struct cqspi_st *cqspi = nor->priv;
-	struct cqspi_flash_pdata *f_pdata;
-	int cs = cqspi_find_chipselect(nor);
-
-	if (cs < 0)
-		return -EINVAL;
-
-	f_pdata = &cqspi->f_pdata[cs];
-
-	f_pdata->inst_width = CQSPI_INST_TYPE_SINGLE;
-	f_pdata->addr_width = CQSPI_INST_TYPE_SINGLE;
-	f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
-
-	if (read) {
-		switch (nor->read_proto) {
-		case SNOR_PROTO_1_1_1:
-			f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
-			break;
-		case SNOR_PROTO_1_1_2:
-			f_pdata->data_width = CQSPI_INST_TYPE_DUAL;
-			break;
-		case SNOR_PROTO_1_1_4:
-			f_pdata->data_width = CQSPI_INST_TYPE_QUAD;
-			break;
-		default:
-			return -EINVAL;
-		}
-	}
-
-	cqspi_configure(nor);
-
-	return 0;
-}
-
 static void cqspi_write(struct spi_nor *nor, loff_t to,
 			size_t len, size_t *retlen, const u_char *buf)
 {
@@ -935,24 +199,6 @@ static void cqspi_write(struct spi_nor *nor, loff_t to,
 	}
 }
 
-static int cqspi_read(struct spi_nor *nor, loff_t from,
-		      size_t len, size_t *retlen, u_char *buf)
-{
-	int ret;
-
-	ret = cqspi_set_protocol(nor, 1);
-	if (ret)
-		return ret;
-
-	ret = cqspi_indirect_read_setup(nor, from);
-	if (ret == 0) {
-		ret = cqspi_indirect_read_execute(nor, buf, len);
-		if (ret == 0)
-			*retlen += len;
-	}
-	return ret;
-}
-
 static int cqspi_erase(struct spi_nor *nor, loff_t offs)
 {
 	int ret;
@@ -974,31 +220,6 @@ static int cqspi_erase(struct spi_nor *nor, loff_t offs)
 	return 0;
 }
 
-static int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
-{
-	int ret;
-
-	ret = cqspi_set_protocol(nor, 0);
-	if (!ret)
-		ret = cqspi_command_read(nor, &opcode, 1, buf, len);
-
-	return ret;
-}
-
-static int cqspi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
-{
-	int ret = 0;
-
-	if (!IS_ENABLED(CONFIG_MTD_WRITE))
-		return -ENOTSUPP;
-
-	ret = cqspi_set_protocol(nor, 0);
-	if (!ret)
-		ret = cqspi_command_write(nor, opcode, buf, len);
-
-	return ret;
-}
-
 static int cqspi_of_get_flash_pdata(struct device *dev,
 				    struct cqspi_flash_pdata *f_pdata,
 				    struct device_node *np)
@@ -1137,19 +358,6 @@ static int cqspi_setup_flash(struct device *dev,
 
 }
 
-static void cqspi_controller_init(struct cqspi_st *cqspi)
-{
-	cqspi_controller_disable(cqspi);
-
-	/* Configure the remap address register, no remap */
-	writel(0, cqspi->iobase + CQSPI_REG_REMAP);
-
-	/* Disable all interrupts */
-	writel(0, cqspi->iobase + CQSPI_REG_IRQMASK);
-
-	cqspi_controller_enable(cqspi);
-}
-
 static int cqspi_probe(struct device *dev)
 {
 	struct resource *iores;
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.h b/drivers/mtd/spi-nor/cadence-quadspi.h
new file mode 100644
index 000000000000..82e2a45efdef
--- /dev/null
+++ b/drivers/mtd/spi-nor/cadence-quadspi.h
@@ -0,0 +1,216 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/spi-nor.h>
+#include <clock.h>
+
+#define CQSPI_FIFO_WIDTH			4
+
+#define CQSPI_REG_SRAM_THRESHOLD_BYTES		50
+
+/* Instruction type */
+#define CQSPI_INST_TYPE_SINGLE			0
+#define CQSPI_INST_TYPE_DUAL			1
+#define CQSPI_INST_TYPE_QUAD			2
+
+#define CQSPI_DUMMY_CLKS_PER_BYTE		8
+#define CQSPI_DUMMY_BYTES_MAX			4
+
+#define CQSPI_STIG_DATA_LEN_MAX			8
+
+#define CQSPI_INDIRECTTRIGGER_ADDR_MASK		0xFFFFF
+
+/* Register map */
+#define CQSPI_REG_CONFIG			0x00
+#define CQSPI_REG_CONFIG_ENABLE_MASK		BIT(0)
+#define CQSPI_REG_CONFIG_DECODE_MASK		BIT(9)
+#define CQSPI_REG_CONFIG_CHIPSELECT_LSB		10
+#define CQSPI_REG_CONFIG_DMA_MASK		BIT(15)
+#define CQSPI_REG_CONFIG_BAUD_LSB		19
+#define CQSPI_REG_CONFIG_IDLE_LSB		31
+#define CQSPI_REG_CONFIG_CHIPSELECT_MASK	0xF
+#define CQSPI_REG_CONFIG_BAUD_MASK		0xF
+
+#define CQSPI_REG_RD_INSTR			0x04
+#define CQSPI_REG_RD_INSTR_OPCODE_LSB		0
+#define CQSPI_REG_RD_INSTR_TYPE_INSTR_LSB	8
+#define CQSPI_REG_RD_INSTR_TYPE_ADDR_LSB	12
+#define CQSPI_REG_RD_INSTR_TYPE_DATA_LSB	16
+#define CQSPI_REG_RD_INSTR_MODE_EN_LSB		20
+#define CQSPI_REG_RD_INSTR_DUMMY_LSB		24
+#define CQSPI_REG_RD_INSTR_TYPE_INSTR_MASK	0x3
+#define CQSPI_REG_RD_INSTR_TYPE_ADDR_MASK	0x3
+#define CQSPI_REG_RD_INSTR_TYPE_DATA_MASK	0x3
+#define CQSPI_REG_RD_INSTR_DUMMY_MASK		0x1F
+
+#define CQSPI_REG_WR_INSTR			0x08
+#define CQSPI_REG_WR_INSTR_OPCODE_LSB		0
+#define CQSPI_REG_WR_INSTR_TYPE_ADDR_LSB	12
+#define CQSPI_REG_WR_INSTR_TYPE_DATA_LSB	16
+
+#define CQSPI_REG_DELAY				0x0C
+#define CQSPI_REG_DELAY_TSLCH_LSB		0
+#define CQSPI_REG_DELAY_TCHSH_LSB		8
+#define CQSPI_REG_DELAY_TSD2D_LSB		16
+#define CQSPI_REG_DELAY_TSHSL_LSB		24
+#define CQSPI_REG_DELAY_TSLCH_MASK		0xFF
+#define CQSPI_REG_DELAY_TCHSH_MASK		0xFF
+#define CQSPI_REG_DELAY_TSD2D_MASK		0xFF
+#define CQSPI_REG_DELAY_TSHSL_MASK		0xFF
+
+#define CQSPI_REG_READCAPTURE			0x10
+#define CQSPI_REG_READCAPTURE_BYPASS_LSB	0
+#define CQSPI_REG_READCAPTURE_DELAY_LSB		1
+#define CQSPI_REG_READCAPTURE_DELAY_MASK	0xF
+
+#define CQSPI_REG_SIZE				0x14
+#define CQSPI_REG_SIZE_ADDRESS_LSB		0
+#define CQSPI_REG_SIZE_PAGE_LSB			4
+#define CQSPI_REG_SIZE_BLOCK_LSB		16
+#define CQSPI_REG_SIZE_ADDRESS_MASK		0xF
+#define CQSPI_REG_SIZE_PAGE_MASK		0xFFF
+#define CQSPI_REG_SIZE_BLOCK_MASK		0x3F
+
+#define CQSPI_REG_SRAMPARTITION			0x18
+#define CQSPI_REG_INDIRECTTRIGGER		0x1C
+
+#define CQSPI_REG_DMA				0x20
+#define CQSPI_REG_DMA_SINGLE_LSB		0
+#define CQSPI_REG_DMA_BURST_LSB			8
+#define CQSPI_REG_DMA_SINGLE_MASK		0xFF
+#define CQSPI_REG_DMA_BURST_MASK		0xFF
+
+#define CQSPI_REG_REMAP				0x24
+#define CQSPI_REG_MODE_BIT			0x28
+
+#define CQSPI_REG_SRAMLEVEL			0x2C
+#define CQSPI_REG_SRAMLEVEL_RD_LSB		0
+#define CQSPI_REG_SRAMLEVEL_WR_LSB		16
+#define CQSPI_REG_SRAMLEVEL_RD_MASK		0xFFFF
+#define CQSPI_REG_SRAMLEVEL_WR_MASK		0xFFFF
+
+#define CQSPI_REG_IRQSTATUS			0x40
+#define CQSPI_REG_IRQMASK			0x44
+
+#define CQSPI_REG_INDIRECTRD			0x60
+#define CQSPI_REG_INDIRECTRD_START_MASK		BIT(0)
+#define CQSPI_REG_INDIRECTRD_CANCEL_MASK	BIT(1)
+#define CQSPI_REG_INDIRECTRD_DONE_MASK		BIT(5)
+
+#define CQSPI_REG_INDIRECTRDWATERMARK		0x64
+#define CQSPI_REG_INDIRECTRDSTARTADDR		0x68
+#define CQSPI_REG_INDIRECTRDBYTES		0x6C
+
+#define CQSPI_REG_CMDCTRL			0x90
+#define CQSPI_REG_CMDCTRL_EXECUTE_MASK		BIT(0)
+#define CQSPI_REG_CMDCTRL_INPROGRESS_MASK	BIT(1)
+#define CQSPI_REG_CMDCTRL_WR_BYTES_LSB		12
+#define CQSPI_REG_CMDCTRL_WR_EN_LSB		15
+#define CQSPI_REG_CMDCTRL_ADD_BYTES_LSB		16
+#define CQSPI_REG_CMDCTRL_ADDR_EN_LSB		19
+#define CQSPI_REG_CMDCTRL_RD_BYTES_LSB		20
+#define CQSPI_REG_CMDCTRL_RD_EN_LSB		23
+#define CQSPI_REG_CMDCTRL_OPCODE_LSB		24
+#define CQSPI_REG_CMDCTRL_WR_BYTES_MASK		0x7
+#define CQSPI_REG_CMDCTRL_ADD_BYTES_MASK	0x3
+#define CQSPI_REG_CMDCTRL_RD_BYTES_MASK		0x7
+
+#define CQSPI_REG_INDIRECTWR			0x70
+#define CQSPI_REG_INDIRECTWR_START_MASK		BIT(0)
+#define CQSPI_REG_INDIRECTWR_CANCEL_MASK	BIT(1)
+#define CQSPI_REG_INDIRECTWR_DONE_MASK		BIT(5)
+
+#define CQSPI_REG_INDIRECTWRWATERMARK		0x74
+#define CQSPI_REG_INDIRECTWRSTARTADDR		0x78
+#define CQSPI_REG_INDIRECTWRBYTES		0x7C
+
+#define CQSPI_REG_CMDADDRESS			0x94
+#define CQSPI_REG_CMDREADDATALOWER		0xA0
+#define CQSPI_REG_CMDREADDATAUPPER		0xA4
+#define CQSPI_REG_CMDWRITEDATALOWER		0xA8
+#define CQSPI_REG_CMDWRITEDATAUPPER		0xAC
+
+/* Interrupt status bits */
+#define CQSPI_REG_IRQ_MODE_ERR			BIT(0)
+#define CQSPI_REG_IRQ_UNDERFLOW			BIT(1)
+#define CQSPI_REG_IRQ_IND_COMP			BIT(2)
+#define CQSPI_REG_IRQ_IND_RD_REJECT		BIT(3)
+#define CQSPI_REG_IRQ_WR_PROTECTED_ERR		BIT(4)
+#define CQSPI_REG_IRQ_ILLEGAL_AHB_ERR		BIT(5)
+#define CQSPI_REG_IRQ_WATERMARK			BIT(6)
+#define CQSPI_REG_IRQ_IND_RD_OVERFLOW		BIT(12)
+
+#define CQSPI_IRQ_STATUS_ERR		(CQSPI_REG_IRQ_MODE_ERR		| \
+					 CQSPI_REG_IRQ_IND_RD_REJECT	| \
+					 CQSPI_REG_IRQ_WR_PROTECTED_ERR	| \
+					 CQSPI_REG_IRQ_ILLEGAL_AHB_ERR)
+
+#define CQSPI_IRQ_MASK_RD		(CQSPI_REG_IRQ_WATERMARK	| \
+					 CQSPI_REG_IRQ_IND_RD_OVERFLOW	| \
+					 CQSPI_REG_IRQ_IND_COMP)
+
+#define CQSPI_IRQ_MASK_WR		(CQSPI_REG_IRQ_IND_COMP		| \
+					 CQSPI_REG_IRQ_WATERMARK	| \
+					 CQSPI_REG_IRQ_UNDERFLOW)
+
+#define CQSPI_IRQ_STATUS_MASK		0x1FFFE
+
+#define CQSPI_MAX_CHIPSELECT		16
+
+struct cqspi_flash_pdata {
+	struct mtd_info mtd;
+	struct spi_nor nor;
+	u32 clk_rate;
+	unsigned int block_size;
+	unsigned int read_delay;
+	unsigned int tshsl_ns;
+	unsigned int tsd2d_ns;
+	unsigned int tchsh_ns;
+	unsigned int tslch_ns;
+	u8	     inst_width;
+	u8	     addr_width;
+	u8	     data_width;
+};
+
+struct cqspi_st {
+	struct device	*dev;
+	struct clk	*l4_mp_clk;
+	struct clk	*qspi_clk;
+	unsigned int	sclk;
+
+	void __iomem	*iobase;
+	void __iomem	*ahb_base;
+	unsigned int	irq_mask;
+	int		current_cs;
+	unsigned int	master_ref_clk_hz;
+	unsigned int	is_decoded_cs;
+	unsigned int	fifo_depth;
+	struct cqspi_flash_pdata f_pdata[CQSPI_MAX_CHIPSELECT];
+	bool no_reconfig;
+};
+
+#define CQSPI_REG_IS_IDLE(base)						\
+		((readl(base + CQSPI_REG_CONFIG) >>			\
+			CQSPI_REG_CONFIG_IDLE_LSB) & 0x1)
+
+#define CQSPI_GET_RD_SRAM_LEVEL(reg_base)				\
+		(((readl(reg_base + CQSPI_REG_SRAMLEVEL)) >>		\
+		CQSPI_REG_SRAMLEVEL_RD_LSB) & CQSPI_REG_SRAMLEVEL_RD_MASK)
+
+#define CQSPI_TIMEOUT_MS			(800 * MSECOND)
+#define CQSPI_READ_TIMEOUT_MS			(100 * MSECOND)
+
+void cqspi_controller_init(struct cqspi_st *cqspi);
+
+int cqspi_exec_flash_cmd(struct cqspi_st *cqspi, unsigned int reg);
+
+unsigned int cqspi_calc_rdreg(struct spi_nor *nor, u8 opcode);
+
+unsigned int cqspi_wait_idle(struct cqspi_st *cqspi);
+
+int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len);
+int cqspi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len);
+int cqspi_read(struct spi_nor *nor, loff_t from, size_t len,
+	       size_t *retlen, u_char *buf);
+
+int cqspi_set_protocol(struct spi_nor *nor, const int read);

-- 
2.47.3



