Delivery-date: Wed, 07 Oct 2026 13:01:14 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEPOc-00AuJd-0t
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 13:01:14 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BB04B201E69
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 13:01:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YIiAOS6x;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=Xwp69tWP;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PEbUXkwb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791370874; a=rsa-sha256;
	cv=pass;
	b=P1HPOmSSTrxgQQ3jc2IqwO+HNyUgBKMCQ1K5zMjGprZpRFffDtnIbGQVCQfwex1mscKx9g
	KBPIaSn5fsTHI6ej9BfTwA4qIGzKXT27sUPsm629m+6n674b0YFj83+D5FtpQI6OcdVwFM
	PJxOgLPtpR2mSfZFsU5AreXuHZdJOTItadFLGhPozvYAkXb/SgZPROVHaKQBAMEOU6NYzp
	z1iA2xoysIvbJYtO2LzAlq21aLX+hz2OqQu/5viW7NgDWUNmwp+E7SCLJ6O+ygZr+mJ8fp
	9Ca7+LxueTP6p+srN5s4ugC45SmOhP+wTG6/Pzzz551JKTM+xvKeHXgIsTgSwQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YIiAOS6x;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=Xwp69tWP;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PEbUXkwb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370874;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=5U1o/hXOCwQunKT9BSsZlKJhoAD4OscI1UQw2DCnWYI=;
	b=ePH+rWQL8azDtVNSroO/zrukJ1vUwzezyNAr2u5WtRK3ctfZQeGU8MSkWJU0G+BVQS0Xp5
	fuKws5FUIDE8NBkOihI6PjDqd7j7jrsKIEXt9jfzvosd47KUcUucrD23jBq/BVEe+kB6d8
	iPfD1SJPanQAFzjCtTa2eJk6VyBx66Nhy/G9E9gQKZP3RjmXJDmMfYo4IbgKmt93CafnNQ
	a4YvxuQklD2wQnF8uMfgIPaYrGEg8GSPElUFgVOFNG1ro6ORIKxqcxydJD0eq+BTdf5Wl8
	iZIW/BMuhdHYoYXu7xDNvpFNwI8U4KfJVWFVW/ld3wxLrANUhcjqJbMF8pNcKA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5U1o/hXOCwQunKT9BSsZlKJhoAD4OscI1UQw2DCnWYI=; b=YIiAOS6xNtlta2x1K48UAmDqgW
	tEs1O4kNV42E9VPTCGE3160JlqirUUc3v9acOTbossZu14TpsVMk5el3zssdz7EGnowuwuSJXFkLJ
	eAeq2Aj+VmKb7smIlV2nBO0ep9kxYfKFhB4YpStWZ1ZSXSrrGwsqs+vnOJlyLws1yWPjRwuOqcHt+
	FZm5Vb1qL3abcQl6fzqjpYhHTnPXR1XZ8yPZ3YRXO1GStlyXkWIgkz70WvTZ/ZCDmcgLYwtCJnph3
	OhbLiHJaXCjjEUiF1Ulpo0pT9l/5GCr/rAAZYe9bmTkIm0MCiVwDpDgtZwVCHtO2/1s7D2zQKb4mX
	DVCsq1pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJX-00000002F8o-21Ve;
	Wed, 07 Oct 2026 10:55:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPJT-00000002F7o-1chb
	for barebox@bombadil.infradead.org;
	Wed, 07 Oct 2026 10:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=5U1o/hXOCwQunKT9BSsZlKJhoAD4OscI1UQw2DCnWYI=; b=Xwp69tWPuM/sIGJFPYf44MkOy7
	BBDET6AlnbRUhnxw1LZMs5i/xzfcMpt1SekgkVDF0xQEl8ymJ2vESy5NvteIQq1CTYoDMlAADGgoQ
	+WJ932j4KYKUX+OoEGcbQwWvEVaMiZW7LWyHlN8fqAbajOtzwRRUCJdvvDHIIY22KkpRsyTnNqQYX
	Gp79k9R6pfiCpj8SNB0dRT7Xe+XmhFuJt0y3Xsz4AJkMekt7+XBYxxrNPzPlW8108d3NzJRE+6eEJ
	wD7QE6dF3yLXbRbN+I42awseS7ggH1dWyMIwble2QxD0jpaix3rcOx2hznzM5kH14BXpa1MmeKhvI
	7y2hjI3w==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xEPJP-00000009SbL-44HW
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 10:55:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0ECC22022EA;
	Wed, 07 Oct 2026 12:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5U1o/hXOCwQunKT9BSsZlKJhoAD4OscI1UQw2DCnWYI=;
	b=PEbUXkwbTFlhClBr1kQpSmqPudYsRewk7vDKvmVfzNSevNq6erMRqdE2qP+soPfErs1WUn
	KXOlAspTsp1CUlBeWQQruuiA/rvOMI9ysrU7/B98icLiI7NrMTMoJLLiblZ8Z7woBvlkgW
	+WxsAdHJmLKWqb2tdeHt/6vgBzJ1Zo7cDggqFj460T8/mua7BTy+xoKUvER+pv03LTajSV
	Q4KetAFU0ioAKDyb3HQp/eFmphn+Mz5Pwt0fqsAGzWKJIzi9rt8T01U+jfD0974C1KbSs5
	RvQyBeLyIZgnOZaZlGt0bx+nV1nYWSWxet+tZBiWwP3/IF84kZDXYc2hfrJ5aA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791370548; a=rsa-sha256;
	cv=none;
	b=chmfrAgmRRu3rbropdjl0EToGBVW2vncmYoV/SM4qwyPZxnpbIvv5q9BeX6a6ZQKuuR/f0
	X60h6pViyF3OShurHlQ3kxRD52OZPFZAjBCKYIdSvrlOg8VD55M8O9aI7LtSzw5o6baEt1
	m49bA5ElO4Dzt2mPiBFrPRnefLx6qKWSfMWIOaOik/+cJ8HiiKDGbBC9FP1tpQTooVDCUt
	Js6DtvIE2mMOpU2x851ezgpau+vDFWYXUjLEFBVqjU7UOIUohnkhBLxpCFCTWw9BeVjv3j
	K4zyAofKT8qaWzWkOzRSF49SeBZDZPPl3mIx/pPynKzJmKwciCnSM1U98PRjlw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791370548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5U1o/hXOCwQunKT9BSsZlKJhoAD4OscI1UQw2DCnWYI=;
	b=KmgdmWUs4B0iXg49SvPRySEjMdtpD8zz/QYKGbpYc2xpMANB7QbxCw0/jrVrm67s0UhKt6
	4kDEezI9wF8TEAdoCFCTZA63v0UbzD8PlgF6ljXQkAruqsS8iuu+EqCtyU54sZybTN8FLf
	ldH4RI3xvjcSnA/NIypunCu8SGrPqpPVr6sUSFrpC9zUZizr+DFMjktWrEhj+6dpgMavog
	XCUrrApIZ96IBDn51r4Yy/c0XYKDnHDazwWIcD0RVheSq+oyvV5csIX0t6HMsE8oRkElpN
	Z4IW9V0f/W0R4AbbNpfJSO2kNKDHPtzFdXx54Z0uxF4t+QaBVwL/ra61y6eRaw==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xEPJL-004haR-36;
	Wed, 07 Oct 2026 12:55:47 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 07 Oct 2026 12:55:49 +0200
Subject: [PATCH 04/11] mtd: spi-nor: cadence: add a PBL driver
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261007-socfpga-agilex5-xload-v1-4-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_115552_360357_51AC6EBB 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Integrate the Cadence QSPI driver with read-only support into
    the PBL with a pbl_bio abstraction. This allows to load additional binaries
    and firmware from the flash while still in the PBL without req [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-61.01 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.80)[2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: BB04B201E69
X-Stat-Signature: ty79mt7qjoup9gggsy64yka7fa6cornn

Integrate the Cadence QSPI driver with read-only support into the PBL
with a pbl_bio abstraction. This allows to load additional binaries and
firmware from the flash while still in the PBL without requiring a full
barebox proper.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mtd/spi-nor/Kconfig               |   3 +
 drivers/mtd/spi-nor/Makefile              |   1 +
 drivers/mtd/spi-nor/cadence-quadspi-pbl.c | 104 ++++++++++++++++++++++++++++++
 include/pbl/mtd.h                         |  26 ++++++++
 4 files changed, 134 insertions(+)

diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
index b34c69203ec2..e703ce707c5b 100644
--- a/drivers/mtd/spi-nor/Kconfig
+++ b/drivers/mtd/spi-nor/Kconfig
@@ -26,6 +26,9 @@ config SPI_CADENCE_QUADSPI
 	help
 	  This enables support for the Cadence Quad SPI controller and NOR flash.
 
+config SPI_CADENCE_QUADSPI_PBL
+	bool
+
 config SPI_SYNOPSYS_OCTALSPI_NOR
 	tristate "Synopsys DesignWare Octal SPI controller"
 	help
diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index ed73a95ec6b9..9e229a37ddfb 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-pbl-$(CONFIG_MTD_SPI_NOR)		+= spi-nor.o
 obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= cadence-quadspi.o cadence-quadspi-common.o
+pbl-$(CONFIG_SPI_CADENCE_QUADSPI_PBL)	+= cadence-quadspi-pbl.o cadence-quadspi-common.o
 obj-$(CONFIG_SPI_SYNOPSYS_OCTALSPI_NOR) += dw-ospi-nor.o
diff --git a/drivers/mtd/spi-nor/cadence-quadspi-pbl.c b/drivers/mtd/spi-nor/cadence-quadspi-pbl.c
new file mode 100644
index 000000000000..b2bb00d15dc7
--- /dev/null
+++ b/drivers/mtd/spi-nor/cadence-quadspi-pbl.c
@@ -0,0 +1,104 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <io.h>
+#include <linux/array_size.h>
+#include <linux/mtd/spi-nor.h>
+#include <linux/printk.h>
+#include <linux/time.h>
+#include <pbl/bio.h>
+#include <pbl/mtd.h>
+
+#include "cadence-quadspi.h"
+
+static void cqspi_write(struct spi_nor *nor, loff_t to,
+			size_t len, size_t *retlen, const u_char *buf)
+{
+}
+
+static int cqspi_get_flash_pdata(struct cqspi_st *cqspi,
+				 struct cqspi_flash_pdata *f_pdata)
+{
+	void __iomem *reg_base = cqspi->iobase;
+
+	f_pdata->block_size = (readl(reg_base + CQSPI_REG_SIZE) >>
+		CQSPI_REG_SIZE_BLOCK_LSB) &
+		CQSPI_REG_SIZE_BLOCK_MASK;
+	cqspi->no_reconfig = true;
+
+	return 0;
+}
+
+static int cqspi_setup_flash(struct cqspi_st *cqspi,
+			     struct cqspi_flash_pdata *f_pdata)
+{
+	const struct spi_nor_hwcaps hwcaps = {
+		.mask = SNOR_HWCAPS_READ |
+			SNOR_HWCAPS_READ_FAST |
+			SNOR_HWCAPS_READ_1_1_2 |
+			SNOR_HWCAPS_READ_1_1_4 |
+			SNOR_HWCAPS_PP,
+	};
+	struct spi_nor *nor;
+	struct mtd_info *mtd;
+	int ret;
+
+	ret = cqspi_get_flash_pdata(cqspi, f_pdata);
+	if (ret)
+		return ret;
+
+	nor = &f_pdata->nor;
+	mtd = &f_pdata->mtd;
+
+	nor->mtd = mtd;
+
+	nor->priv = cqspi;
+	nor->read_reg = cqspi_read_reg;
+	nor->write_reg = cqspi_write_reg;
+	nor->read = cqspi_read;
+	nor->write = cqspi_write;
+
+	return spi_nor_scan(nor, NULL, &hwcaps, false);
+}
+
+static int cqspi_bio_read(struct pbl_bio *bio, off_t start,
+			  void *buf, unsigned int nblocks)
+{
+	struct cqspi_st *cqspi = bio->priv;
+	struct spi_nor *nor = &cqspi->f_pdata[0].nor;
+	int ret;
+	size_t count = 0;
+
+	ret = nor->read(nor, start, nblocks, &count, buf);
+	if (ret)
+		return ret;
+
+	return count;
+}
+
+static struct cqspi_st cqspi;
+
+int cqspi_bio_init(struct pbl_bio *bio,
+		   void __iomem *iobase, void __iomem *ahb_base,
+		   unsigned int master_ref_clk,
+		   struct cadence_qspi_platform_data *qspi_pdata)
+{
+	cqspi.master_ref_clk_hz = master_ref_clk;
+	cqspi.iobase = iobase;
+	cqspi.ahb_base = ahb_base;
+
+	cqspi_wait_idle(&cqspi);
+	cqspi_controller_init(&cqspi);
+
+	cqspi.current_cs = -1;
+	cqspi.sclk = 0;
+
+	cqspi.is_decoded_cs = qspi_pdata->is_decoded_cs;
+	cqspi.fifo_depth = qspi_pdata->fifo_depth;
+
+	cqspi_setup_flash(&cqspi, &cqspi.f_pdata[0]);
+
+	bio->priv = &cqspi;
+	bio->read = cqspi_bio_read;
+
+	return 0;
+}
diff --git a/include/pbl/mtd.h b/include/pbl/mtd.h
new file mode 100644
index 000000000000..f58b61d29997
--- /dev/null
+++ b/include/pbl/mtd.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __PBL_MTD_H__
+#define __PBL_MTD_H__
+
+#include <linux/types.h>
+
+struct pbl_bio;
+
+#include <platform_data/cadence_qspi.h>
+
+#ifdef CONFIG_SPI_CADENCE_QUADSPI_PBL
+int cqspi_bio_init(struct pbl_bio *bio,
+		   void __iomem *iobase, void __iomem *ahb_base,
+		   unsigned int master_ref_clk,
+		   struct cadence_qspi_platform_data *qspi_pdata);
+#else
+static inline int cqspi_bio_init(struct pbl_bio *bio,
+				 void __iomem *iobase, void __iomem *ahb_base,
+				 unsigned int master_ref_clk,
+				 struct cadence_qspi_platform_data *qspi_pdata)
+{
+	return -ENOSYS;
+}
+#endif
+
+#endif /* __PBL_MTD_H__ */

-- 
2.47.3



