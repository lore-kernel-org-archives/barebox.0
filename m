Delivery-date: Thu, 07 Sep 2023 17:22:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeGq0-007Dxx-UQ
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 17:22:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeGpy-0000sk-Pt
	for lore@pengutronix.de; Thu, 07 Sep 2023 17:22:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6+MU/lvl7qPz6mbz9t0MfXYqAbY98cedu8WKV6RtfnY=; b=B8atkaXc6eZT3mjC+aYlM/Dpzm
	YoMvg4eeUmn3VPGswbHZIBOy57gdFR5a4fnh6Q58qIR96NwoEW6x0Nj+KOS9eAgQT/1t2FNJ+MQmN
	AmopbrRh7kHkqIfz2yTHdMx5qkV53H17phSzMSsI5QnrRl7QIepKL2HBDNAxCSXVABG3UNGpOTrzQ
	o3OxjZM7O85yHY60fKOoAC8mL3AMxjW+eOrzMf/T2usVD+reYYRRTs7fPbr09ny1mVrb3sBFd/muc
	ShEqW6XQzIsNtaTg6yPljdo5loatotmsmOs3+lazadphGhOhngZr54YfMX61sI4XbpzUdLSdsy+V0
	ftdxs0nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeGoj-00CGHg-2n;
	Thu, 07 Sep 2023 15:21:13 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeGoe-00CGCC-1I
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 15:21:11 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 02ECEC0009;
	Thu,  7 Sep 2023 15:21:02 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu,  7 Sep 2023 17:20:45 +0200
Message-ID: <20230907152047.102747-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_082108_717396_FD77BCF2 
X-CRM114-Status: GOOD (  17.25  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] decompressors: Update xz to include ARM64 BCJ decoder
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Update lib/xz/xz_dec_bcj.c and lib/xz/xz_private.h files from xz-embedded [1],
which include spelling fixes and the new ARM64 BCJ decoder which was recently
introduced into .xz file format version 1.1.0 (2022-12-11) [2].

[1] https://git.tukaani.org/?p=xz-embedded.git
[2] https://tukaani.org/xz/xz-file-format-1.1.0.txt

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
v2:
 - only select ARM64 BCJ on aarch64 (previously was ARM and ARM64)
 - fix condition in xz_private.h to enable BCJ decoders when only ARM64 BCJ
   decoder is selected (https://www.mail-archive.com/xz-devel@tukaani.org/msg00638.html)
---
 lib/Kconfig           |  4 ++++
 lib/decompress_unxz.c |  6 ++++-
 lib/xz/xz_dec_bcj.c   | 54 ++++++++++++++++++++++++++++++++++++++++---
 lib/xz/xz_private.h   |  5 +++-
 4 files changed, 64 insertions(+), 5 deletions(-)

diff --git a/lib/Kconfig b/lib/Kconfig
index 758197b608..9291e5a8ff 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -42,6 +42,7 @@ config XZ_DECOMPRESS
 	select XZ_DEC_ARM
 	select XZ_DEC_ARMTHUMB
 	select XZ_DEC_SPARC
+	select XZ_DEC_ARM64
 
 config XZ_DEC_X86
         bool
@@ -61,6 +62,9 @@ config XZ_DEC_ARMTHUMB
 config XZ_DEC_SPARC
         bool
 
+config XZ_DEC_ARM64
+	bool "ARM64 BCJ filter decoder"
+
 config REED_SOLOMON
 	bool
 
diff --git a/lib/decompress_unxz.c b/lib/decompress_unxz.c
index a7e2d331ab..132ab4a239 100644
--- a/lib/decompress_unxz.c
+++ b/lib/decompress_unxz.c
@@ -131,7 +131,11 @@
 #	define XZ_DEC_POWERPC
 #endif
 #ifdef CONFIG_ARM
-#	define XZ_DEC_ARM
+#	ifdef CONFIG_CPU_64
+#		define XZ_DEC_ARM64
+#	else
+#		define XZ_DEC_ARM
+#	endif
 #endif
 #ifdef CONFIG_IA64
 #	define XZ_DEC_IA64
diff --git a/lib/xz/xz_dec_bcj.c b/lib/xz/xz_dec_bcj.c
index d268adbc65..d40fae3416 100644
--- a/lib/xz/xz_dec_bcj.c
+++ b/lib/xz/xz_dec_bcj.c
@@ -2,7 +2,7 @@
  * Branch/Call/Jump (BCJ) filter decoders
  *
  * Authors: Lasse Collin <lasse.collin@tukaani.org>
- *          Igor Pavlov <http://7-zip.org/>
+ *          Igor Pavlov <https://7-zip.org/>
  *
  * This file has been put into the public domain.
  * You can do whatever you want with this file.
@@ -24,7 +24,8 @@ struct xz_dec_bcj {
 		BCJ_IA64 = 6,       /* Big or little endian */
 		BCJ_ARM = 7,        /* Little endian only */
 		BCJ_ARMTHUMB = 8,   /* Little endian only */
-		BCJ_SPARC = 9       /* Big or little endian */
+		BCJ_SPARC = 9,      /* Big or little endian */
+		BCJ_ARM64 = 10      /* AArch64 */
 	} type;
 
 	/*
@@ -334,6 +335,45 @@ static size_t bcj_sparc(struct xz_dec_bcj *s, uint8_t *buf, size_t size)
 }
 #endif
 
+#ifdef XZ_DEC_ARM64
+static size_t bcj_arm64(struct xz_dec_bcj *s, uint8_t *buf, size_t size)
+{
+	size_t i;
+	uint32_t instr;
+	uint32_t addr;
+
+	for (i = 0; i + 4 <= size; i += 4) {
+		instr = get_unaligned_le32(buf + i);
+
+		if ((instr >> 26) == 0x25) {
+			/* BL instruction */
+			addr = instr - ((s->pos + (uint32_t)i) >> 2);
+			instr = 0x94000000 | (addr & 0x03FFFFFF);
+			put_unaligned_le32(instr, buf + i);
+
+		} else if ((instr & 0x9F000000) == 0x90000000) {
+			/* ADRP instruction */
+			addr = ((instr >> 29) & 3) | ((instr >> 3) & 0x1FFFFC);
+
+			/* Only convert values in the range +/-512 MiB. */
+			if ((addr + 0x020000) & 0x1C0000)
+				continue;
+
+			addr -= (s->pos + (uint32_t)i) >> 12;
+
+			instr &= 0x9000001F;
+			instr |= (addr & 3) << 29;
+			instr |= (addr & 0x03FFFC) << 3;
+			instr |= (0U - (addr & 0x020000)) & 0xE00000;
+
+			put_unaligned_le32(instr, buf + i);
+		}
+	}
+
+	return i;
+}
+#endif
+
 /*
  * Apply the selected BCJ filter. Update *pos and s->pos to match the amount
  * of data that got filtered.
@@ -380,6 +420,11 @@ static void bcj_apply(struct xz_dec_bcj *s,
 	case BCJ_SPARC:
 		filtered = bcj_sparc(s, buf, size);
 		break;
+#endif
+#ifdef XZ_DEC_ARM64
+	case BCJ_ARM64:
+		filtered = bcj_arm64(s, buf, size);
+		break;
 #endif
 	default:
 		/* Never reached but silence compiler warnings. */
@@ -422,7 +467,7 @@ XZ_EXTERN enum xz_ret xz_dec_bcj_run(struct xz_dec_bcj *s,
 
 	/*
 	 * Flush pending already filtered data to the output buffer. Return
-	 * immediatelly if we couldn't flush everything, or if the next
+	 * immediately if we couldn't flush everything, or if the next
 	 * filter in the chain had already returned XZ_STREAM_END.
 	 */
 	if (s->temp.filtered > 0) {
@@ -553,6 +598,9 @@ XZ_EXTERN enum xz_ret xz_dec_bcj_reset(struct xz_dec_bcj *s, uint8_t id)
 #endif
 #ifdef XZ_DEC_SPARC
 	case BCJ_SPARC:
+#endif
+#ifdef XZ_DEC_ARM64
+	case BCJ_ARM64:
 #endif
 		break;
 
diff --git a/lib/xz/xz_private.h b/lib/xz/xz_private.h
index 85f79635f0..b14a262c92 100644
--- a/lib/xz/xz_private.h
+++ b/lib/xz/xz_private.h
@@ -37,6 +37,9 @@
 #		ifdef CONFIG_XZ_DEC_SPARC
 #			define XZ_DEC_SPARC
 #		endif
+#		ifdef CONFIG_XZ_DEC_ARM64
+#			define XZ_DEC_ARM64
+#		endif
 #		define memeq(a, b, size) (memcmp(a, b, size) == 0)
 #		define memzero(buf, size) memset(buf, 0, size)
 #		define FREE free
@@ -98,7 +101,7 @@
 #ifndef XZ_DEC_BCJ
 #	if defined(XZ_DEC_X86) || defined(XZ_DEC_POWERPC) \
 			|| defined(XZ_DEC_IA64) || defined(XZ_DEC_ARM) \
-			|| defined(XZ_DEC_ARM) || defined(XZ_DEC_ARMTHUMB) \
+			|| defined(XZ_DEC_ARM64) || defined(XZ_DEC_ARMTHUMB) \
 			|| defined(XZ_DEC_SPARC)
 #		define XZ_DEC_BCJ
 #	endif
-- 
2.42.0



