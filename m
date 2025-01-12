Delivery-date: Sun, 12 Jan 2025 09:22:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtFJ-0007Tf-2C
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:22:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtFI-0006Qk-UN
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:22:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cL+gpwRWvg4UwTzurIc0WgXtaMYu2Jatqsyrn9qPpmM=; b=L4keD8mNpDNGohU4bL1pCPwRIm
	4YfoHT0w4CvyL3QS3OHJDlMTTIhq0muW+YXxjVh21klPg5zBso43kdy/z+JSnbZT5FFFFHE3RLM92
	TgZXCgIr5XVCzMVM7IPp9laz0pKckS5Wac+FKPx9a+NJJhIyV9SDsGpTmFsQQeddj2eotdK0QrX+O
	nSWw1InnzIwlecPVGDKHVIPNy2oxOAPBQbm4xyz3W5DOObuWyYBPdSMsgmS0JSMQI0owFgOFixDQX
	XIEs740iJ8WsbNMV5kpoOXdsFoFvI0HcBOwVi4WzjePLrRzMu4jDfq9YOY3W1rJYvdRP1sxFRvRvw
	gTn11bOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtEe-00000002JQi-42YC;
	Sun, 12 Jan 2025 08:22:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtDi-00000002JL4-2zdE
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:21:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtDe-0006Fn-N3; Sun, 12 Jan 2025 09:21:14 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtDe-0003I1-05;
	Sun, 12 Jan 2025 09:21:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtDf-001Jah-0Y;
	Sun, 12 Jan 2025 09:21:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:21:12 +0100
Message-Id: <20250112082113.313620-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112082113.313620-1-a.fatoum@pengutronix.de>
References: <20250112082113.313620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_002118_754941_8E1AA2E1 
X-CRM114-Status: UNSURE (   8.84  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] fixup! ARM: ep93xx: delete unused drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

The only file including this has been removed, so this can go away as
well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/serial_pl010.h | 80 -----------------------------------
 1 file changed, 80 deletions(-)
 delete mode 100644 drivers/serial/serial_pl010.h

diff --git a/drivers/serial/serial_pl010.h b/drivers/serial/serial_pl010.h
deleted file mode 100644
index ba81a66da03a..000000000000
--- a/drivers/serial/serial_pl010.h
+++ /dev/null
@@ -1,80 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/* SPDX-FileCopyrightText: 2003, 2004 ARM Ltd. */
-/* SPDX-FileCopyrightText: 2010 Matthias Kaehlcke <matthias@kaehlcke.net> */
-
-/* Contributor: Philippe Robin <philippe.robin@arm.com> */
-
-struct hldc_struct {
-	uint32_t ctrl;
-	uint32_t addmtchval;
-	uint32_t addmask;
-	uint32_t rxinfobuf;
-	uint32_t sts;
-};
-
-struct pl010_struct {
-	uint32_t data;
-	union {
-		uint32_t rxsts;
-		uint32_t errclr;
-	};
-	uint32_t linctrlhigh;
-	uint32_t linctrlmid;
-	uint32_t linctrllow;
-	uint32_t ctrl;
-	uint32_t flag;
-	union {
-		uint32_t intid;
-		uint32_t intclr;
-	};
-	uint32_t not_used0[2];
-	uint32_t dmactrl;
-	uint32_t not_used1[53];
-	uint32_t modemctrl;
-	uint32_t modemsts;
-	uint32_t not_used2[65];
-	struct hldc_struct hldc;
-};
-
-#define UART_PL010_RSR_OE	(1 << 3)
-#define UART_PL010_RSR_BE	(1 << 2)
-#define UART_PL010_RSR_PE	(1 << 1)
-#define UART_PL010_RSR_FE	(1 << 0)
-
-#define UART_PL010_FR_TXFE	(1 << 7)
-#define UART_PL010_FR_RXFF	(1 << 6)
-#define UART_PL010_FR_TXFF	(1 << 5)
-#define UART_PL010_FR_RXFE	(1 << 4)
-#define UART_PL010_FR_BUSY	(1 << 3)
-#define UART_PL010_FR_TMSK	(UART_PL010_FR_TXFF + UART_PL010_FR_BUSY)
-
-#define UART_PL010_CR_LPE	(1 << 7)
-#define UART_PL010_CR_RTIE	(1 << 6)
-#define UART_PL010_CR_TIE	(1 << 5)
-#define UART_PL010_CR_RIE	(1 << 4)
-#define UART_PL010_CR_MSIE	(1 << 3)
-#define UART_PL010_CR_IIRLP	(1 << 2)
-#define UART_PL010_CR_SIREN	(1 << 1)
-#define UART_PL010_CR_UARTEN	(1 << 0)
-
-#define UART_PL010_LCRH_WLEN_8	(3 << 5)
-#define UART_PL010_LCRH_WLEN_7	(2 << 5)
-#define UART_PL010_LCRH_WLEN_6	(1 << 5)
-#define UART_PL010_LCRH_WLEN_5	(0 << 5)
-#define UART_PL010_LCRH_FEN	(1 << 4)
-#define UART_PL010_LCRH_STP2	(1 << 3)
-#define UART_PL010_LCRH_EPS	(1 << 2)
-#define UART_PL010_LCRH_PEN	(1 << 1)
-#define UART_PL010_LCRH_BRK	(1 << 0)
-
-#define UART_PL010_BAUD_460800	1
-#define UART_PL010_BAUD_230400	3
-#define UART_PL010_BAUD_115200	7
-#define UART_PL010_BAUD_57600	15
-#define UART_PL010_BAUD_38400	23
-#define UART_PL010_BAUD_19200	47
-#define UART_PL010_BAUD_14400	63
-#define UART_PL010_BAUD_9600	95
-#define UART_PL010_BAUD_4800	191
-#define UART_PL010_BAUD_2400	383
-#define UART_PL010_BAUD_1200	767
-- 
2.39.5



