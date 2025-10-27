Delivery-date: Mon, 27 Oct 2025 08:43:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHsl-00CGW7-00
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 08:43:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHsk-0007b5-C3
	for lore@pengutronix.de; Mon, 27 Oct 2025 08:43:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a3zvhrzyfHFZ+a33T3iBeKTZf0qvVPvL6m9U2fTq4HQ=; b=RnGgtB7v2+B6RISIDQNLr6L7b3
	B5ZnV4utO6IAuxZWTSAMGd1veoSEnq37/Na4ICZ1tBwf6agsUjd6y2v4OUR796xIb486ZHLzghxyX
	HUNo2P+AosMK0mGbMOrbRhWTVbZmZ6JzFLMqLscpbfGWae3NSGYOAgoL4W77pxhmAFVlc34Uf/rUh
	5Ub+HgiQOr1A3W9NhOaijblmX4rFBXekDQoWVukauaCUEVbUQi8/AfzsT+LOLKae3vSPhf6IbicMF
	HC2bNkDbXyD/72JVFO9bMPQuKvvlvGMqxC6HObKiPo6Dpw8qkTh7I5vSbb2eCGsyuCkcnH0t9/oGx
	WXhgUChQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHsH-0000000DIE4-3sEG;
	Mon, 27 Oct 2025 07:42:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHsF-0000000DID0-0FC1
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 07:42:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDHsD-0007R6-Ej; Mon, 27 Oct 2025 08:42:37 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 08:42:31 +0100
Message-ID: <20251027074236.2473380-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027074236.2473380-1-a.fatoum@barebox.org>
References: <20251027074236.2473380-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_004239_117186_D84D1984 
X-CRM114-Status: GOOD (  13.22  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] sandbox: export list_fuzz_tests to sandbox_main
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Using call_for_each_fuzz_test in the PBL is awkward, because the struct
definition isn't visible there and so we make use of the fact that a
string pointer is the first element of the struct.

Let's avoid this, by just providing a function that lists the fuzzers.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/sandbox/Makefile    |  2 +-
 arch/sandbox/os/common.c |  9 +++------
 include/fuzz.h           |  4 +++-
 lib/fuzz.c               | 13 +++++++++++++
 4 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 0318c8dd1452..fdff09c07cb9 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -96,7 +96,7 @@ SANDBOX_PROPER2PBL_GLUE_SYMS := \
 	strsep_unescaped start_barebox linux_get_stickypage_path \
 	stickypage mem_malloc_init \
 	barebox_register_filedev barebox_register_dtb barebox_register_console \
-	barebox_errno barebox_loglevel call_for_each_fuzz_test setup_external_fuzz
+	barebox_errno barebox_loglevel list_fuzz_tests setup_external_fuzz
 
 OBJCOPYFLAGS_barebox.o := $(addprefix --keep-global-symbol=, $(SANDBOX_PROPER2PBL_GLUE_SYMS))
 
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index e872a6381988..1628e28d83fb 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -56,14 +56,11 @@ extern int barebox_loglevel;
 #endif
 
 #ifdef CONFIG_FUZZ_EXTERNAL
-int call_for_each_fuzz_test(int (*fn)(const char **test, void *), void *ctx);
+void list_fuzz_tests(int (*println)(const char *));
 int setup_external_fuzz(const char *name,
 			int *argc, char ***argv);
 #else
-static inline int call_for_each_fuzz_test(int (*fn)(const char **test, void *), void *ctx)
-{
-	return 0;
-}
+static inline void list_fuzz_tests(int (*println)(const char *)) { }
 static inline int setup_external_fuzz(const char *name,
 				      int *argc, char ***argv)
 {
@@ -668,7 +665,7 @@ static int normal_main(int argc, char *argv[])
 			sdl_yres = strtoul(optarg, NULL, 0);
 			break;
 		case OPT_LIST_FUZZERS:
-			call_for_each_fuzz_test(print_fuzz_test_name, NULL);
+			list_fuzz_tests(puts);
 			exit(0);
 			break;
 		case OPT_FUZZ:
diff --git a/include/fuzz.h b/include/fuzz.h
index f516d86ab769..11332e834753 100644
--- a/include/fuzz.h
+++ b/include/fuzz.h
@@ -20,7 +20,7 @@
  * @func: Function to call to perform fuzz test on an input
  */
 struct fuzz_test {
-	const char *name; /* must be first member */
+	const char *name;
 	int (*func)(const uint8_t * data, size_t size);
 };
 
@@ -86,6 +86,8 @@ static inline int fuzz_test_once(const struct fuzz_test *test, const u8 *data, s
 
 int call_for_each_fuzz_test(int (*fn)(const struct fuzz_test *test, void *), void *ctx);
 
+void list_fuzz_tests(int (*println)(const char *));
+
 int setup_external_fuzz(const char *fuzz_name,
 			int *argc, char ***argv);
 
diff --git a/lib/fuzz.c b/lib/fuzz.c
index 7be7ecedd922..038e176096bc 100644
--- a/lib/fuzz.c
+++ b/lib/fuzz.c
@@ -19,6 +19,19 @@ int call_for_each_fuzz_test(int (*fn)(const struct fuzz_test *test, void *ctx),
 	return 0;
 }
 
+static int list_fuzz_test_one(const struct fuzz_test *test, void *ctx)
+{
+	int (*println)(const char *) = ctx;
+
+	println(test->name);
+	return 0;
+}
+
+void list_fuzz_tests(int (*println)(const char *))
+{
+	call_for_each_fuzz_test(list_fuzz_test_one, println);
+}
+
 #ifdef CONFIG_FUZZ_EXTERNAL
 const u8 *fuzzer_get_data(size_t *len);
 #else
-- 
2.47.3



