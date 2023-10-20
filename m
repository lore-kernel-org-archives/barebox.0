Delivery-date: Fri, 20 Oct 2023 20:10:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qttxN-00Fq0m-Cy
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 20:10:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qttxM-0001q2-1U
	for lore@pengutronix.de; Fri, 20 Oct 2023 20:10:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QWdJVT+DkvG7YNeS1Ije9hB4d76e3+Uk601OjAV7quI=; b=JDgHCHH+hAaXJ2cFPSfi4mgL+d
	RoNit2xlw8ffhj1t7kYMc0hnlSWoH6MZCCzIwmN5uS9rhmr5hy0QoP3Sd7TygTYSm+KIcrUgMPjqc
	WOWGZ90UCYED+nMI7t15XyXsvXV7P2yok4+BLQCXDaYmulTLmEHB1kM2CSuIHEX6IEDglYILWHSbX
	EKHUh8Sb3RIY62Qtr53hNimcTV28jriwepdK/x6c2wOTTYqIiW32Zac106B6wTqmFpgRm+4jz4Fma
	hrYG+R2bEQTJ5jQBoWsGFItaLxjJcAW3x+lUd6q6SXTzpvPj8ce6CcNBqfsOF0vuJOCDq9JGjsh9h
	SYOCGXkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qttw0-002ph5-1i;
	Fri, 20 Oct 2023 18:09:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qttvx-002pgb-0d
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 18:09:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qttvt-0001Zw-Ff; Fri, 20 Oct 2023 20:09:13 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qttvt-0035IY-3A; Fri, 20 Oct 2023 20:09:13 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qttvt-00CEZj-06;
	Fri, 20 Oct 2023 20:09:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 20:09:12 +0200
Message-Id: <20231020180912.2914428-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_110917_229882_6CB2A345 
X-CRM114-Status: UNSURE (   8.99  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] decompress: xz: enable armthumb BCJ filter for Thumb-2 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The XZ decompressor in barebox has BCJ filter support for THUMB, but
like Linux, it's unused and instead the ARM BCJ filter is used.

Fixing that lets us save a few kilobytes, which is especially useful for
legacy configuration that fit a whole barebox into limited on-chip SRAM
(and not only the prebootloader). For example, with this patch applied
barebox-am33xx-beaglebone-mlo.img is shrinked 3K from 109236 to 106028 bytes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/decompress_unxz.c | 2 ++
 scripts/xz_wrap.sh    | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/lib/decompress_unxz.c b/lib/decompress_unxz.c
index 132ab4a239b3..ad6a5f20ba28 100644
--- a/lib/decompress_unxz.c
+++ b/lib/decompress_unxz.c
@@ -133,6 +133,8 @@
 #ifdef CONFIG_ARM
 #	ifdef CONFIG_CPU_64
 #		define XZ_DEC_ARM64
+#	elif defined CONFIG_THUMB2_BAREBOX
+#		define XZ_DEC_ARMTHUMB
 #	else
 #		define XZ_DEC_ARM
 #	endif
diff --git a/scripts/xz_wrap.sh b/scripts/xz_wrap.sh
index 5b5f3adcff6d..a6373a748168 100755
--- a/scripts/xz_wrap.sh
+++ b/scripts/xz_wrap.sh
@@ -20,6 +20,10 @@ case $SRCARCH in
 	sparc)          BCJ=--sparc ;;
 esac
 
+if grep -q '^CONFIG_THUMB2_BAREBOX=y$' include/config/auto.conf; then
+	BCJ=--armthumb
+fi
+
 # clear BCJ filter if unsupported
 xz -H | grep -q -- $BCJ || BCJ=
 
-- 
2.39.2



