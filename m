Delivery-date: Sat, 10 Jun 2023 12:33:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7vub-000xwz-Ey
	for lore@lore.pengutronix.de; Sat, 10 Jun 2023 12:33:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7vuY-0006w4-Ca
	for lore@pengutronix.de; Sat, 10 Jun 2023 12:33:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDGueQg7ZEL9zBAozhgDz38tRBhqd7TVF9ksjRaXrYY=; b=vLWj55+RWJGmjb
	pTAqauevZFpy4T6kpcB6shDBYE3Gg4LYsqrdK0ClPJCnVqyGY7R4fBWei9kAzayaRVk47s8V8Krnv
	xXmUjyjAB4bodfDo14so372ifW8JDKBApibzAnqAyefICGG3M8mS/7/YbR0yqZ0R/s1+8tNmP/sfx
	xhZZTcaMirPoxl7De/zEuOzxMo9nEvQoE1b0hm/Wi8McGc7jCR3PJJ8rRRfy/5yt8+L3Cv5oNyk6R
	oqCEdjcQN5ULXPjfL+Dh0FkAqgjwhZObQ/RQipaaRoSFbKxGVZUFUt815dtsnhw56LOQU1kwvLgXH
	8JeU0AZFh2hf9rVe+n1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7vtE-00FqVN-08;
	Sat, 10 Jun 2023 10:32:12 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7vt7-00FqOV-15
	for barebox@lists.infradead.org;
	Sat, 10 Jun 2023 10:32:08 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b2f9f47256so3192981fa.1
        for <barebox@lists.infradead.org>; Sat, 10 Jun 2023 03:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686393122; x=1688985122;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jDGueQg7ZEL9zBAozhgDz38tRBhqd7TVF9ksjRaXrYY=;
        b=gibNfdvz6mmbpD3iU172sohW/DXkFO+iaXp6oxkziNaTqJObO1OHDo4nvys66MRVOf
         mb8GLn9gbsq8r4/wU0dkGBhjP73UVHYXKoNu8Ktg4H0kHvcTe49LWvndtvpBdBUSP4S8
         zR+CPrhY7HMOzRnePb6Y2PvIOpKV0xQYJmzv52fS6aTF7ITubsl7gXQAxgkqYdh51Grp
         oQrkSNC1nNFPj0hcpz8hJuaOMGYw5tpkiCIa8Y60tOHuiyWqd3FHxgV8pWDbfUFI4Vdk
         fjE1pRlF18WFzTEfESWZsKnQBKs8OmHYQeRJlJ98az8bbJEo25zPAWmNx17ksulrNPac
         HP1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686393122; x=1688985122;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jDGueQg7ZEL9zBAozhgDz38tRBhqd7TVF9ksjRaXrYY=;
        b=YUPiDFFw77SokLsrtV1x/I3dAzjeTZ9Oa6xKss4+7X0E+OOgZb+H8MMO/7lwceVvuo
         KODvR95teQfeFtC91tylGjZtOV4fY/3peRMMb9ENL5f7pjfA+rrFfIaO+5JLeAqccsaO
         GtJk7wK1QJgkOky65KjRtWqNfnHs8h8RVjEyee4t9zlJMxzXA91TV4jqyPii/owS/NnH
         eueSp9+Ka1CD0e1Gu3wgLlz53dApBnv9ikZtjLTagqb4yb/HxLNtHGQHSc3noIHzjvRb
         kCW4xtpmA3A5AO/xbtJf9XSCBbKyCtUeyXynXq2fscEn2J10tR1ViLxxnun8vVY5VLP8
         mRxg==
X-Gm-Message-State: AC+VfDxmPtCThkMJrU+84hHHOba0nEZDT88rgujxch1/quXTd4c+ugJS
	U1L8AaCMBw2sRsYcxS5EejQuOFE9h0c=
X-Google-Smtp-Source: ACHHUZ4uaE1mI6T5Wgc0CHJljV5zVMYJYcGOt1MOaBeJ56r80kHQ2y/FvaypFNbjsmeopHP2ngawzg==
X-Received: by 2002:a2e:95d5:0:b0:2b1:bf5d:4115 with SMTP id y21-20020a2e95d5000000b002b1bf5d4115mr453509ljh.13.1686393121807;
        Sat, 10 Jun 2023 03:32:01 -0700 (PDT)
Received: from cinco.. ([109.252.8.26])
        by smtp.gmail.com with ESMTPSA id s16-20020a2e81d0000000b002adf8d948dasm792727ljg.35.2023.06.10.03.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jun 2023 03:32:01 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Sat, 10 Jun 2023 13:32:19 +0300
Message-Id: <20230610103220.566369-4-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230610103220.566369-1-antonynpavlov@gmail.com>
References: <20230610103220.566369-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_033205_376967_9F5CC3B4 
X-CRM114-Status: GOOD (  23.48  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC 3/4] sc6531e: add debug_ll support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig                |   1 +
 arch/arm/boards/ezzy-4/Makefile |   3 +
 arch/arm/boards/ezzy-4/usbio.c  | 449 ++++++++++++++++++++++++++++++++
 arch/arm/cpu/uncompress.c       |   7 +
 arch/arm/include/asm/debug_ll.h |   2 +
 include/mach/sc6531e/debug_ll.h |  17 ++
 6 files changed, 479 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b46d73f5084..ffd2ff8b531 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -88,6 +88,7 @@ config ARCH_SC6531E
 	bool "SC6531E-based devices"
 	depends on 32BIT
 	select CPU_ARM926T
+	select HAS_DEBUG_LL
 	select GPIOLIB
 	help
 	  Support for feature phones based on the SC6531E chipset.
diff --git a/arch/arm/boards/ezzy-4/Makefile b/arch/arm/boards/ezzy-4/Makefile
index 458f5209008..c1253f3f64f 100644
--- a/arch/arm/boards/ezzy-4/Makefile
+++ b/arch/arm/boards/ezzy-4/Makefile
@@ -1,3 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 lwl-y += lowlevel.o
+
+lwl-y += usbio.o
+obj-y += usbio.o
diff --git a/arch/arm/boards/ezzy-4/usbio.c b/arch/arm/boards/ezzy-4/usbio.c
new file mode 100644
index 00000000000..954765d70fd
--- /dev/null
+++ b/arch/arm/boards/ezzy-4/usbio.c
@@ -0,0 +1,449 @@
+/*
+ * This file is part of fpdoom
+ * https://github.com/ilyakurdyukov/fpdoom/blob/main/fpdoom/usbio.c
+ */
+
+#include <stdint.h>
+#include <stddef.h>
+
+void *memcpy(void *dst, const void *src, size_t count);
+size_t strlen(const char *src);
+
+void usb_debug_ll_init(void);
+int usb_PUTC_LL(char ch);
+
+#define ALIGN(n) __attribute__((aligned(n)))
+
+#define readl(a) (*(volatile uint32_t *)(a))
+#define writel(v,a)	(*(volatile uint32_t *)(a) = (v))
+
+#define MEM4(addr) *(volatile uint32_t*)(addr)
+
+#define READ32_BE(p) (uint32_t)( \
+	((uint8_t*)(p))[0] << 24 | \
+	((uint8_t*)(p))[1] << 16 | \
+	((uint8_t*)(p))[2] << 8 | \
+	((uint8_t*)(p))[3])
+
+#if __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
+
+static inline uint32_t swap_be32(uint32_t v) {
+	uint32_t t = v >> 24 | v << 24, m = 0xff00;
+	return t | (v >> 8 & m) | (v & m) << 8;
+}
+#endif
+
+static unsigned fastchk16(unsigned crc, const void *src, int len)
+{
+	uint8_t *s = (uint8_t*)src;
+
+	while (len > 1) {
+		crc += s[1] << 8 | s[0]; s += 2;
+		len -= 2;
+	}
+
+	if (len)
+		crc += *s;
+
+	crc = (crc >> 16) + (crc & 0xffff);
+	crc += crc >> 16;
+
+	return crc & 0xffff;
+}
+
+enum {
+	HOST_CONNECT = 0x00,
+
+	CMD_MESSAGE = 0x80,
+	CMD_FOPEN = 0x81,
+	CMD_FREAD = 0x82,
+	CMD_FWRITE = 0x83,
+	CMD_FCLOSE = 0x84,
+	CMD_FSEEK = 0x85,
+	CMD_FTELL = 0x86,
+	CMD_GETARGS = 0x87,
+};
+
+#define CHECKSUM_INIT 0x5a5a
+#define USB_WAIT 1
+#define USB_NOWAIT 0
+
+#define USB_BASE_INIT
+#define USB_BASE 0x90000000
+
+#define USB_CR(o) MEM4(USB_BASE + o)
+
+#define USB_MAXREAD 64
+
+// not necessary, because USB is already
+// initialized by the bootloader
+#define INIT_USB 1
+
+#define USB_BUFSIZE 0x800
+
+#if (USB_BUFSIZE) & (USB_BUFSIZE - 1)
+#error
+#endif
+
+typedef struct {
+	uint32_t rpos, wpos;
+	uint8_t buf[USB_BUFSIZE];
+} usb_buf_t;
+
+usb_buf_t usb_buf;
+
+static const uint8_t dev_desc[] ALIGN(4) = {
+	0x12, 0x01, 0x10, 0x01, 0x00, 0x00, 0x00, 0x40,
+	0x82, 0x17, 0x00, 0x4d, 0x02, 0x02, 0x00, 0x00,
+	0x00, 0x01
+};
+
+static const uint8_t config_desc[] ALIGN(4) = {
+	0x09, 0x02, 0x20, 0x00, 0x01, 0x01, 0x00, 0xc0, 0x32,
+	0x09, 0x04, 0x00, 0x00, 0x02, 0xff, 0x00, 0x00, 0x00,
+	0x07, 0x05, 0x83, 0x02, 0x40, 0x00, 0x00,
+	0x07, 0x05, 0x02, 0x02, 0x40, 0x00, 0x00
+};
+
+enum {
+	USB_CTRL = 0,
+	INT_STS = 0x18,
+	INT_CLR = 0x1c,
+	TIMEOUT_LMT = 0x28,
+
+	TR_SIZE_IN_ENDP0 = 0x40,
+	REQ_SETUP_LOW = 0x5c,
+	REQ_SETUP_HIGH = 0x60,
+	ENDP0_CTRL = 0x64,
+	INT_CTRL_ENDP0 = 0x68,
+	INT_STS_ENDP0 = 0x6c,
+	INT_CLR_ENDP0 = 0x70,
+
+	ENDP1_CTRL = 0xc0,
+	TRANS_SIZE_ENDP1 = 0xc8,
+	INT_CTRL_ENDP1 = 0xcc,
+	INT_STS_ENDP1 = 0xd0,
+	INT_CLR_ENDP1 = 0xd4,
+
+	ENDP2_CTRL = 0x100,
+	RCV_DATA_ENDP2 = 0x104,
+	INT_CTRL_ENDP2 = 0x10c,
+	INT_STS_ENDP2 = 0x110,
+	INT_CLR_ENDP2 = 0x114,
+
+	ENDP3_CTRL = 0x140,
+	TRANS_SIZE_ENDP3 = 0x148,
+	INT_CTRL_ENDP3 = 0x14c,
+	INT_STS_ENDP3 = 0x150,
+	INT_CLR_ENDP3 = 0x154,
+};
+
+#define FIFO_entry_endp0_in (uint32_t*)(USB_BASE + 0x80000)
+#define FIFO_entry_endp1 (FIFO_entry_endp0_in + 1)
+#define FIFO_entry_endp3 (FIFO_entry_endp0_in + 2)
+
+#define FIFO_entry_endp_out (uint32_t*)(USB_BASE + 0x8000c)
+#define FIFO_entry_endp2 (FIFO_entry_endp_out + 1)
+
+/* max packet size */
+#define USB_MAXPSIZE(o, n) \
+	(USB_CR(o) = (USB_CR(o) & ~0x7ff000) | (n) << 12)
+/* transfer size */
+#define USB_TRSIZE(o, n) \
+	(USB_CR(o) = (USB_CR(o) & ~0x1ffff) | (n))
+
+#if INIT_USB
+static void usb_init_endp0(void) {
+	USB_BASE_INIT
+	USB_MAXPSIZE(ENDP0_CTRL, 8);
+	USB_CR(INT_CLR_ENDP0) |= 1 << 8;
+	USB_CR(INT_CTRL_ENDP0) |= 1 << 8;
+	USB_CR(ENDP0_CTRL) |= 1 << 28; // buffer ready
+}
+
+static void usb_init_endp2(void) {
+	USB_BASE_INIT
+	USB_MAXPSIZE(ENDP2_CTRL, 0x40);
+	USB_TRSIZE(RCV_DATA_ENDP2, 0x2000);
+	USB_CR(INT_CLR_ENDP2) = 0x3fff;
+	USB_CR(INT_CTRL_ENDP2) = 0;
+	USB_CR(INT_CLR_ENDP2) |= 1;
+	USB_CR(INT_CTRL_ENDP2) |= 1;
+	USB_CR(ENDP2_CTRL) |= 1 << 25; // endpoint enable
+	USB_CR(ENDP2_CTRL) |= 1 << 28; // buffer ready
+}
+
+static void usb_init_endp3(void) {
+	USB_BASE_INIT
+	USB_MAXPSIZE(ENDP3_CTRL, 0x40);
+	USB_TRSIZE(TRANS_SIZE_ENDP3, 0x40);
+	USB_CR(INT_CLR_ENDP3) = 0x3fff;
+	USB_CR(INT_CTRL_ENDP3) = 0;
+	USB_CR(INT_CLR_ENDP3) |= 1 << 9;
+	USB_CR(INT_CTRL_ENDP3) |= 1 << 9;
+	USB_CR(ENDP3_CTRL) |= 1 << 25; // endpoint enable
+}
+#endif
+
+// len = 0..0x7ff
+static void usb_send(uint32_t ep, const void *src, uint32_t len) {
+	uint32_t i, ctrl, tr_size; uint32_t *fifo;
+	const uint32_t *s = (const uint32_t*)src;
+	USB_BASE_INIT
+	do {
+		if (ep == 0) {
+			ctrl = ENDP0_CTRL;
+			tr_size = TR_SIZE_IN_ENDP0;
+			fifo = FIFO_entry_endp0_in;
+		} else if (ep == 4) {
+			ctrl = ENDP3_CTRL;
+			tr_size = TRANS_SIZE_ENDP3;
+			fifo = FIFO_entry_endp3;
+		} else break;
+
+		USB_MAXPSIZE(ctrl, len);
+		USB_TRSIZE(tr_size, len);
+
+		for (i = 0; i < len; i += 4, s++)
+			*(volatile uint32_t*)fifo = READ32_BE(s);
+
+		USB_CR(ctrl) |= 1 << 27;
+
+		if (ep == 4) {
+			// TRANSFER_END
+			while ((USB_CR(INT_STS_ENDP3) & 1 << 9) == 0);
+			USB_CR(INT_CLR_ENDP3) |= 1 << 9;
+		}
+	} while (0);
+}
+
+static void usb_recv(uint32_t ep, uint32_t *dst, uint32_t len) {
+	uint32_t i, ctrl; uint32_t *fifo;
+	USB_BASE_INIT
+	do {
+		fifo = FIFO_entry_endp_out;
+		if (ep == 1) {
+			ctrl = ENDP0_CTRL;
+		} else if (ep == 3) {
+			ctrl = ENDP2_CTRL;
+			fifo += 1;	// FIFO_entry_endp2
+		} else break;
+
+		for (i = 0; i < len; i += 8) {
+			*dst++ = swap_be32(*(volatile uint32_t*)fifo);
+			*dst++ = swap_be32(*(volatile uint32_t*)fifo);
+		}
+
+		USB_CR(ctrl) |= 1 << 28;
+	} while (0);
+}
+
+#define USB_REC_DEVICE     0
+#define USB_REC_INTERFACE  1
+#define USB_REC_MASK       0x1f
+
+#define USB_REQ_STANDARD   (0 << 5)
+#define USB_REQ_CLASS      (1 << 5)
+#define USB_REQ_VENDOR     (2 << 5)
+#define USB_REQ_MASK       (3 << 5)
+
+#define USB_REQUEST_GET_DESCRIPTOR  6
+
+#define USB_DEVICE_DESCRIPTOR_TYPE  1
+#define USB_CONFIGURATION_DESCRIPTOR_TYPE  2
+
+static void usb_send_desc(int type, int len) {
+	const void *p; int n;
+	if (type == USB_DEVICE_DESCRIPTOR_TYPE) {
+		p = dev_desc; n = sizeof(dev_desc);
+	} else if (type == USB_CONFIGURATION_DESCRIPTOR_TYPE) {
+		p = config_desc; n = sizeof(config_desc);
+	} else return;
+
+	if (len > n) len = n;
+	usb_send(0, p, len);
+}
+
+static void usb_int_endp0(void) {
+	uint32_t a, b, len, req;
+	USB_BASE_INIT
+	if (USB_CR(INT_STS_ENDP0) & 1 << 8) { // SETUP_TRANS_END
+		a = USB_CR(REQ_SETUP_LOW);
+		len = USB_CR(REQ_SETUP_HIGH) >> 16; // wLength
+		req = (a >> 8) & 0xff;
+
+		b = a & (USB_REC_MASK | USB_REQ_MASK);
+		if (b == (USB_REC_DEVICE | USB_REQ_STANDARD)) {
+			if (req == USB_REQUEST_GET_DESCRIPTOR)
+				usb_send_desc(a >> 24, len);
+		}
+	}
+	USB_CR(INT_CLR_ENDP0) = 0x3fff;
+}
+
+static void usb_int_endp2(void) {
+	usb_buf_t *p; int i, len, wpos;
+	USB_BASE_INIT
+	if (USB_CR(INT_STS_ENDP2) & 1) { // TRANSACTION_END
+		uint8_t buf[USB_MAXREAD];
+		len = USB_CR(ENDP2_CTRL) & (USB_BUFSIZE - 1);
+		if (len > USB_MAXREAD) len = USB_MAXREAD;
+		usb_recv(3, (uint32_t*)buf, len);
+		p = &usb_buf;
+		wpos = p->wpos;
+		for (i = 0; i < len; i++) {
+			p->buf[wpos++] = buf[i];
+			wpos &= (USB_BUFSIZE - 1);
+		}
+		p->wpos = wpos;
+		USB_CR(ENDP2_CTRL) |= 1 << 28;
+	}
+	USB_CR(INT_CLR_ENDP2) = 0x3fff;
+}
+
+static void usb_int_endp3(void) {
+	USB_BASE_INIT
+	USB_CR(INT_CLR_ENDP3) = 0x3fff;
+}
+
+static void usb_check_int(void) {
+	USB_BASE_INIT
+	if ( readl(0x80001004) & (1 << 5) /* SC6531(DA/E) */ ) {
+		int mask = USB_CR(INT_STS);
+		if (mask & 0x3fff) {
+			if (mask & 1 << 10) usb_int_endp2();
+			if (mask & 1 << 11) usb_int_endp3();
+			if (mask & 1 << 8) usb_int_endp0();
+		}
+		USB_CR(INT_CLR) = 0x7f;
+	}
+}
+
+static void usb_init(void) {
+	usb_buf_t *p = &usb_buf;
+	p->rpos = 0;
+	p->wpos = 0;
+
+#if INIT_USB
+	USB_CR(USB_CTRL) |= 1; // USB_ENABLE
+	usb_init_endp0();
+	usb_init_endp2();
+	usb_init_endp3();
+	// 12MHz / 15 = 800kHz
+	USB_CR(TIMEOUT_LMT) = 15;
+#endif
+}
+
+static int usb_read(void *dst, unsigned len, int wait) {
+	usb_buf_t *p = &usb_buf;
+	uint8_t *d = (uint8_t*)dst;
+	unsigned rpos, n, n2;
+
+	while (len) {
+		// usb_buf_free - 1 >= USB_MAXREAD
+		if (((p->rpos - p->wpos - 1) & (USB_BUFSIZE - 1)) >= USB_MAXREAD)
+			usb_check_int();
+
+		rpos = p->rpos;
+		n = (p->wpos - rpos) & (USB_BUFSIZE - 1);
+		if (n) {
+			if (n > len) n = len;
+			len -= n;
+			n2 = USB_BUFSIZE - rpos;
+			if (n <= n2) {
+				memcpy(d, p->buf + rpos, n);
+			} else {
+				memcpy(d, p->buf + rpos, n2);
+				memcpy(d + n2, p->buf, n - n2);
+			}
+			d += n;
+			p->rpos = (rpos + n) & (USB_BUFSIZE - 1);
+		} else if (!wait) break;
+	}
+	return d - (uint8_t*)dst;
+}
+
+static int usb_write(const void *src, unsigned len) {
+	const uint8_t *s = (const uint8_t*)src;
+	for (; len > USB_MAXREAD; len -= USB_MAXREAD) {
+		usb_send(4, s, USB_MAXREAD);
+		s += USB_MAXREAD;
+	}
+	if (len) {
+		if (len == USB_MAXREAD) {
+			len >>= 1;
+			usb_send(4, s, len);
+			s += len;
+		}
+		usb_send(4, s, len);
+	}
+	return s - (uint8_t*)src;
+}
+
+static void _debug_msg(const char *msg)
+{
+	union { uint8_t u8[4]; uint16_t u16[2]; } buf;
+	int len;
+	unsigned tmp;
+
+	len = strlen(msg);
+	if (len > 255)
+		len = 255;
+
+	tmp = CMD_MESSAGE | len << 8;
+	buf.u16[0] = tmp;
+
+	tmp += CHECKSUM_INIT;
+	tmp = fastchk16(tmp, msg, len);
+	buf.u16[1] = tmp;
+
+	usb_write(buf.u16, 4);
+	usb_write(msg, len);
+}
+
+int usb_PUTC_LL(char ch)
+{
+	union { uint8_t u8[6]; uint16_t u16[3]; } buf;
+	unsigned tmp;
+
+	size_t size = 1;
+	void *src;
+
+	// stdout: handle = 1
+	int handle = 1;
+
+	src = &ch;
+
+	tmp = CMD_FWRITE | handle << 8;
+	buf.u16[0] = tmp;
+	buf.u16[1] = size;
+	tmp += CHECKSUM_INIT + size;
+	tmp = fastchk16(tmp, src, size);
+	buf.u16[2] = tmp;
+	usb_write(buf.u16, 6);
+	usb_write(src, size);
+	usb_read(buf.u16, 2, USB_WAIT);
+
+	return buf.u16[0];
+}
+
+void usb_debug_ll_init(void)
+{
+	static const uint8_t fdl_ack[8] = {
+		0x7e, 0, 0x80, 0, 0, 0xff, 0x7f, 0x7e };
+
+	usb_init();
+
+	usb_write(fdl_ack, sizeof(fdl_ack));
+
+	for (;;) {
+		char buf[4];
+
+		usb_read(buf, 1, USB_WAIT);
+
+		if (buf[0] == HOST_CONNECT)
+			break;
+	}
+
+	_debug_msg("debug_ll\n");
+}
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index a481c4634d7..a92115eddd1 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -79,6 +79,13 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	setup_c();
 
+	if (IS_ENABLED(CONFIG_ARCH_SC6531E) && IS_ENABLED(CONFIG_DEBUG_LL)) {
+		usb_debug_ll_init();
+
+		puts_ll("Hello world\n");
+		puts_ll("\n");
+	}
+
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
 	if (IS_ENABLED(CONFIG_MMU))
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index a1d5161ccf2..22628c5b4da 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -64,6 +64,8 @@
 #include <mach/clps711x/debug_ll.h>
 #elif defined CONFIG_ARCH_AT91
 #include <mach/at91/debug_ll.h>
+#elif defined CONFIG_ARCH_SC6531E
+#include <mach/sc6531e/debug_ll.h>
 #endif
 
 #endif
diff --git a/include/mach/sc6531e/debug_ll.h b/include/mach/sc6531e/debug_ll.h
new file mode 100644
index 00000000000..82c22fba647
--- /dev/null
+++ b/include/mach/sc6531e/debug_ll.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: 2023 Antony Pavlov <antonynpavlov@gmail.com> */
+
+#ifndef __MACH_SC6531E_DEBUG_LL_H__
+#define __MACH_SC6531E_DEBUG_LL_H__
+
+#include <io.h>
+
+void usb_debug_ll_init(void);
+int usb_PUTC_LL(char ch);
+
+static inline void PUTC_LL(char ch)
+{
+	usb_PUTC_LL(ch);
+}
+
+#endif /* __MACH_SC6531E_DEBUG_LL_H__ */
-- 
2.39.0



