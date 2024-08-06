Delivery-date: Tue, 06 Aug 2024 14:57:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbJl4-006pan-0J
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 14:57:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbJl3-0006En-Fx
	for lore@pengutronix.de; Tue, 06 Aug 2024 14:57:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iR+4Q0dT6QRdDLlHLRdqjxe/l9VlPBf4Urj7NVoE/x4=; b=we9H2M2u3dAuL3KNbFXI2ZaMpU
	C+ABguZ0kXavkVT3RlcQmxnUpwPhKlNGpJpjcsUEVXFqqJjs8NK6hPkvoMwbO9gyQF6mD1uTDRHpv
	1xBz7ejCAf6x7sIBOBk1xqjTocW08G2YiWJPZROvdbsAhvlTWSWeO7bCB63cWtgIT1qfG8y+EpEQq
	QYsCi3MA6Gio5lofRsyB2ULfLe42RR8gYok6zE80bJvYY8oqYuLCNR9+XvdtdGZoax44M9rOzK0UF
	fpA9QQI7/G5t4BP33oFqYt7mKhAXC6hW9bd34P1g++oxnvXAfb/VemIfmnMV1NGwiaIKZ5kBl/PYu
	jI3n0b2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbJkS-00000001ace-1FId;
	Tue, 06 Aug 2024 12:57:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbJkP-00000001abA-2uqZ
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 12:57:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sbJkL-00067L-V0; Tue, 06 Aug 2024 14:57:01 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sbJkL-004xZC-IB; Tue, 06 Aug 2024 14:57:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sbJkL-001OVf-1W;
	Tue, 06 Aug 2024 14:57:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 Aug 2024 14:56:58 +0200
Message-Id: <20240806125658.332359-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240806105429.2278660-1-s.hauer@pengutronix.de>
References: <20240806105429.2278660-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_055705_749373_83EA24E2 
X-CRM114-Status: UNSURE (   9.38  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! malloc: implement malloc_usable_size()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

 - Prevent sandbox from using libc function inadvertently
 - Implement wrapper for libc malloc
 - Implement for dummy_malloc

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Makefile         | 1 +
 arch/sandbox/os/libc_malloc.c | 5 +++++
 common/dummy_malloc.c         | 5 +++++
 3 files changed, 11 insertions(+)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index d5327d44e097..5c51f2de38b3 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -23,6 +23,7 @@ lds-y   := $(BOARD)/barebox.lds
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dmalloc_stats=barebox_malloc_stats -Dmemalign=barebox_memalign \
+		-Dmalloc_usable_size=barebox_malloc_usable_size \
 		-Dfree=barebox_free -Drealloc=barebox_realloc \
 		-Dread=barebox_read -Dwrite=barebox_write \
 		-Dopen=barebox_open -Dclose=barebox_close \
diff --git a/arch/sandbox/os/libc_malloc.c b/arch/sandbox/os/libc_malloc.c
index 975c41b0ec49..e34156cd49e7 100644
--- a/arch/sandbox/os/libc_malloc.c
+++ b/arch/sandbox/os/libc_malloc.c
@@ -32,6 +32,11 @@ void *barebox_malloc(size_t size)
 	return mem;
 }
 
+size_t barebox_malloc_usable_size(void *mem)
+{
+	return malloc_usable_size(mem);
+}
+
 void barebox_free(void *ptr)
 {
 	free(ptr);
diff --git a/common/dummy_malloc.c b/common/dummy_malloc.c
index 7a96afec76e0..140ba314272a 100644
--- a/common/dummy_malloc.c
+++ b/common/dummy_malloc.c
@@ -30,6 +30,11 @@ void free(void *ptr)
 {
 }
 
+size_t malloc_usable_size(void *mem)
+{
+	BUG();
+}
+
 void *realloc(void *ptr, size_t size)
 {
 	BUG();
-- 
2.39.2



