Delivery-date: Mon, 27 Oct 2025 08:43:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHsh-00CGVL-0x
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 08:43:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHsg-0007ZY-NY
	for lore@pengutronix.de; Mon, 27 Oct 2025 08:43:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Uddw73C8S7AnhTcsq1zrPR+gG9yyJtUhI60vReaMe1g=; b=NOKXZ4V9rdfrzkut6gVTeZ9EL+
	S00PfHmI5aSG5VH7iJKn/hinduqECJ5bu3CF+B/543pHuxG6l/fvp/gcITjkF/H3g9RzeLg0yR4Ir
	FCjjhO2IQXki4D7SmDUqp2KKhILXpBYR8Xrz9NiSmkoaNAKdF+pOOPjUxkcAeBhwTp5BuznvjnViV
	fbhS+rim5guiWHTxmz9L2fwqCO41AVipGNaluscjnwn3Sle/6yHTro0jbl5XnHGpH9UcC3GTWUqQg
	FmPdenGq5d/Rj+mJGmcIL6M45P6UzbsR+nseGgJAmCPgyXLmMjr95kcqDyiOiseI4nmynmwA0Qc3c
	MjF62ukQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHsI-0000000DIED-0p74;
	Mon, 27 Oct 2025 07:42:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHsF-0000000DICz-0E2x
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 07:42:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDHsD-0007R6-8e; Mon, 27 Oct 2025 08:42:37 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 08:42:30 +0100
Message-ID: <20251027074236.2473380-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_004239_116984_AC0F0697 
X-CRM114-Status: GOOD (  10.77  )
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
Subject: [PATCH 1/3] fuzz: add context pointer to call_for_each_fuzz_test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for removing call_for_each_fuzz_test from the sandbox
PBL, give it a context pointer to simplify its use.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/sandbox/os/common.c | 9 +++++----
 include/fuzz.h           | 2 +-
 lib/fuzz.c               | 5 +++--
 3 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 86aaeb24ee3d..e872a6381988 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -56,11 +56,11 @@ extern int barebox_loglevel;
 #endif
 
 #ifdef CONFIG_FUZZ_EXTERNAL
-int call_for_each_fuzz_test(int (*fn)(const char **test));
+int call_for_each_fuzz_test(int (*fn)(const char **test, void *), void *ctx);
 int setup_external_fuzz(const char *name,
 			int *argc, char ***argv);
 #else
-static inline int call_for_each_fuzz_test(int (*fn)(const char **test))
+static inline int call_for_each_fuzz_test(int (*fn)(const char **test, void *), void *ctx)
 {
 	return 0;
 }
@@ -558,7 +558,8 @@ static struct option long_options[] = {
 
 static const char optstring[] = "hm:i:c:e:d:O:I:B:x:y:";
 
-static __attribute__((unused)) int print_fuzz_test_name(const char **test_name)
+static __attribute__((unused)) int print_fuzz_test_name(const char **test_name,
+							void *ctx)
 {
 	printf("%s\n", *test_name);
 	return 0;
@@ -667,7 +668,7 @@ static int normal_main(int argc, char *argv[])
 			sdl_yres = strtoul(optarg, NULL, 0);
 			break;
 		case OPT_LIST_FUZZERS:
-			call_for_each_fuzz_test(print_fuzz_test_name);
+			call_for_each_fuzz_test(print_fuzz_test_name, NULL);
 			exit(0);
 			break;
 		case OPT_FUZZ:
diff --git a/include/fuzz.h b/include/fuzz.h
index caebc284d5db..f516d86ab769 100644
--- a/include/fuzz.h
+++ b/include/fuzz.h
@@ -84,7 +84,7 @@ static inline int fuzz_test_once(const struct fuzz_test *test, const u8 *data, s
 	return test->func(data, len);
 }
 
-int call_for_each_fuzz_test(int (*fn)(const struct fuzz_test *test));
+int call_for_each_fuzz_test(int (*fn)(const struct fuzz_test *test, void *), void *ctx);
 
 int setup_external_fuzz(const char *fuzz_name,
 			int *argc, char ***argv);
diff --git a/lib/fuzz.c b/lib/fuzz.c
index 084455e365cd..7be7ecedd922 100644
--- a/lib/fuzz.c
+++ b/lib/fuzz.c
@@ -4,13 +4,14 @@
 #include <string.h>
 #include <common.h>
 
-int call_for_each_fuzz_test(int (*fn)(const struct fuzz_test *test))
+int call_for_each_fuzz_test(int (*fn)(const struct fuzz_test *test, void *ctx),
+			    void *ctx)
 {
 	const struct fuzz_test *test;
 	int ret;
 
 	for_each_fuzz_test(test) {
-		ret = fn(test);
+		ret = fn(test, ctx);
 		if (ret)
 			return ret;
 	}
-- 
2.47.3



