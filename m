Delivery-date: Mon, 22 Nov 2021 09:55:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp56w-0003k8-9h
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:55:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp56v-0002V0-3P
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:55:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzF24SwgOhPvbXGB9bAyhMnJ+SMW7HBIhxrn0d9JqPM=; b=fffZns1AzO2Ha8
	6ULTwRqtmVmL3vblguDcHK/C6SM8OVtsP95k2JC+Kkz46njnXTt4JQW5RcMoq2k0ofFTApEpDOnxw
	79Zxt1uPJY5qSy+VVu0E276kt2Vzz2vlJW3C+EANxb3+sfaPVy5p3VBTUpZL/EDWJnRnHsO0JHv5X
	ectp+lHQ3favecg24FVQzjwJnihIwpjvosIehkn0lf2I2gISC3cEcqZ3mq95YAsaXtGcAjsBfbEq3
	6AVuaKo1f/SxIv9bSPMep6qauymLIczHyCWQy0cvEk1K9ZyzYLre2By31PHqpVwvC3Mc7FZuOTDZA
	OT90+70FCSUUdw9VFkOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp54q-00FOeM-5n; Mon, 22 Nov 2021 08:53:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zK-00FL5U-Vr
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007we-HF; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00AtfZ-Qv; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:25 +0100
Message-Id: <20211122084732.2597109-24-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004747_161095_BC37823E 
X-CRM114-Status: UNSURE (   7.67  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 23/30] efi: define and use new EFI_ERROR_MASK macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Future code may want to differentiate between warnings and errors, so
add a new macro for the error mask and use it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi.h | 67 +++++++++++++++++++++++++++------------------------
 1 file changed, 35 insertions(+), 32 deletions(-)

diff --git a/include/efi.h b/include/efi.h
index 51382f5bfea0..c20e7ad2b53a 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -23,38 +23,41 @@
 
 struct efi_device_path;
 
-#define EFI_SUCCESS                             0
-#define EFI_LOAD_ERROR                  ( 1 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_INVALID_PARAMETER           ( 2 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_UNSUPPORTED                 ( 3 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_BAD_BUFFER_SIZE             ( 4 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_BUFFER_TOO_SMALL            ( 5 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_NOT_READY                   ( 6 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_DEVICE_ERROR                ( 7 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_WRITE_PROTECTED             ( 8 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_OUT_OF_RESOURCES            ( 9 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_VOLUME_CORRUPTED            ( 10 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_VOLUME_FULL                 ( 11 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_NO_MEDIA                    ( 12 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_MEDIA_CHANGED               ( 13 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_NOT_FOUND                   ( 14 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_ACCESS_DENIED               ( 15 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_NO_RESPONSE                 ( 16 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_NO_MAPPING                  ( 17 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_TIMEOUT                     ( 18 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_NOT_STARTED                 ( 19 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_ALREADY_STARTED             ( 20 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_ABORTED                     ( 21 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_ICMP_ERROR                  ( 22 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_TFTP_ERROR                  ( 23 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_PROTOCOL_ERROR              ( 24 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_INCOMPATIBLE_VERSION        ( 25 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_SECURITY_VIOLATION          ( 26 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_CRC_ERROR                   ( 27 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_END_OF_MEDIA                ( 28 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_END_OF_FILE                 ( 31 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_INVALID_LANGUAGE            ( 32 | (1UL << (BITS_PER_LONG-1)))
-#define EFI_COMPROMISED_DATA            ( 33 | (1UL << (BITS_PER_LONG-1)))
+/* Bit mask for EFI status code with error */
+#define EFI_ERROR_MASK (1UL << (BITS_PER_LONG-1))
+
+#define EFI_SUCCESS                       0
+#define EFI_LOAD_ERROR                  ( 1 | EFI_ERROR_MASK)
+#define EFI_INVALID_PARAMETER           ( 2 | EFI_ERROR_MASK)
+#define EFI_UNSUPPORTED                 ( 3 | EFI_ERROR_MASK)
+#define EFI_BAD_BUFFER_SIZE             ( 4 | EFI_ERROR_MASK)
+#define EFI_BUFFER_TOO_SMALL            ( 5 | EFI_ERROR_MASK)
+#define EFI_NOT_READY                   ( 6 | EFI_ERROR_MASK)
+#define EFI_DEVICE_ERROR                ( 7 | EFI_ERROR_MASK)
+#define EFI_WRITE_PROTECTED             ( 8 | EFI_ERROR_MASK)
+#define EFI_OUT_OF_RESOURCES            ( 9 | EFI_ERROR_MASK)
+#define EFI_VOLUME_CORRUPTED            (10 | EFI_ERROR_MASK)
+#define EFI_VOLUME_FULL                 (11 | EFI_ERROR_MASK)
+#define EFI_NO_MEDIA                    (12 | EFI_ERROR_MASK)
+#define EFI_MEDIA_CHANGED               (13 | EFI_ERROR_MASK)
+#define EFI_NOT_FOUND                   (14 | EFI_ERROR_MASK)
+#define EFI_ACCESS_DENIED               (15 | EFI_ERROR_MASK)
+#define EFI_NO_RESPONSE                 (16 | EFI_ERROR_MASK)
+#define EFI_NO_MAPPING                  (17 | EFI_ERROR_MASK)
+#define EFI_TIMEOUT                     (18 | EFI_ERROR_MASK)
+#define EFI_NOT_STARTED                 (19 | EFI_ERROR_MASK)
+#define EFI_ALREADY_STARTED             (20 | EFI_ERROR_MASK)
+#define EFI_ABORTED                     (21 | EFI_ERROR_MASK)
+#define EFI_ICMP_ERROR                  (22 | EFI_ERROR_MASK)
+#define EFI_TFTP_ERROR                  (23 | EFI_ERROR_MASK)
+#define EFI_PROTOCOL_ERROR              (24 | EFI_ERROR_MASK)
+#define EFI_INCOMPATIBLE_VERSION        (25 | EFI_ERROR_MASK)
+#define EFI_SECURITY_VIOLATION          (26 | EFI_ERROR_MASK)
+#define EFI_CRC_ERROR                   (27 | EFI_ERROR_MASK)
+#define EFI_END_OF_MEDIA                (28 | EFI_ERROR_MASK)
+#define EFI_END_OF_FILE                 (31 | EFI_ERROR_MASK)
+#define EFI_INVALID_LANGUAGE            (32 | EFI_ERROR_MASK)
+#define EFI_COMPROMISED_DATA            (33 | EFI_ERROR_MASK)
 
 #define EFI_ERROR(a)	(((signed long) a) < 0)
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

