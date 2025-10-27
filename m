Delivery-date: Mon, 27 Oct 2025 08:43:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHsi-00CGVh-0j
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 08:43:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHsh-0007Zq-KN
	for lore@pengutronix.de; Mon, 27 Oct 2025 08:43:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VWjwiNWxGgf3BiRM/ngNun9yAIYEs5yBEEf1yHxxGNA=; b=vC/4HPmO5tHi+MoJ31PYfRaLY7
	mTpfSJU+PBn/nTmhiuRdZW1sfsWP+aDk25X/q6I+qCIZiuOG/h/Pb+fxPLvDO/Gchvr+xBY4xx5FF
	n9KjzbyechFNtScv44dOE7+JyxwLuC/BwsPUu04DXc/G2ArktMmpMFFtNlhplejF06n4rI28occqp
	k6MarAUO29I3Nj1H9o/nELuLLilzU52oaV5hicdFZCXW8hA47kcA3bI+OeAg1YZFxpfJwSOiYc6KQ
	Im8xniMnYbVS+QiJ5vH5DJBXI6MfbGXVA3nrsv49Qv808U0BAtGFkYHwWVNXGa4Kc/I0ev2FlBS6Z
	Y3edO29g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHsI-0000000DIEM-1xwV;
	Mon, 27 Oct 2025 07:42:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHsF-0000000DID1-0dM0
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 07:42:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDHsD-0007R6-Ki; Mon, 27 Oct 2025 08:42:37 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 08:42:32 +0100
Message-ID: <20251027074236.2473380-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027074236.2473380-1-a.fatoum@barebox.org>
References: <20251027074236.2473380-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_004239_190170_FC85856C 
X-CRM114-Status: GOOD (  13.80  )
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
Subject: [PATCH 3/3] fuzz: do not export for_each_fuzz_test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For issues not further understood, GCC 14, but not clang 19,
UndefinedBehaviorSanitizer doesn't like the way we iterate over the
linker list that holds the fuzzers:

  barebox@Sandbox:/ fuzz -l
  dtb
  commands/fuzz.c:19:23: runtime error: load of address 0x560e1830a050 with
  insufficient space for an object of type 'const struct fuzz_test'
  0x560e1830a050: note: pointer points here
   0e 56 00 00  e0 77 26 18 0e 56 00 00  ef e2 0f 18 0e 56 00 00
                ^
   20 44 25 18 0e 56 00 00  1f be 09 18
  fdt-compatible
  filetype
  fit
  partitions

For some reason, switching to call_for_each_fuzz_test, avoids this
issue, so let's do that.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/fuzz.c | 42 ++++++++++++++++++++++++++++++------------
 include/fuzz.h  |  4 ----
 lib/fuzz.c      |  4 ++++
 3 files changed, 34 insertions(+), 16 deletions(-)

diff --git a/commands/fuzz.c b/commands/fuzz.c
index f48032e7e1d9..3ade5bf69a28 100644
--- a/commands/fuzz.c
+++ b/commands/fuzz.c
@@ -9,23 +9,41 @@
 #include <libfile.h>
 #include <fs.h>
 
-static const struct fuzz_test *get_fuzz_test(const char *match, bool print)
-{
+struct fuzz_process {
+	bool print;
+	const char *match;
+	unsigned nmatches;
 	const struct fuzz_test *test;
-	unsigned matches = 0;
+};
 
-	for_each_fuzz_test(test) {
-		if (print) {
-			printf("%s\n", test->name);
-			matches++;
-		}
-
-		if (match && !strcmp(test->name, match))
-			return test;
+static int process_fuzz_test(const struct fuzz_test *test,
+			     void *_ctx)
+{
+	struct fuzz_process *ctx = _ctx;
 
+	if (ctx->print) {
+		printf("%s\n", test->name);
+		ctx->nmatches++;
 	}
 
-	if (!matches) {
+	if (ctx->match && !strcmp(test->name, ctx->match)) {
+		ctx->test = test;
+		return true;
+	}
+
+	return false;
+}
+
+static const struct fuzz_test *get_fuzz_test(const char *match, bool print)
+{
+	struct fuzz_process ctx = {
+		.match = match, .print = print
+	};
+
+	if (call_for_each_fuzz_test(process_fuzz_test, &ctx))
+		return ctx.test;
+
+	if (!ctx.nmatches) {
 		if (match)
 			printf("No fuzz tests matching '%s' found.\n", match);
 		else
diff --git a/include/fuzz.h b/include/fuzz.h
index 11332e834753..4d637f72b176 100644
--- a/include/fuzz.h
+++ b/include/fuzz.h
@@ -27,10 +27,6 @@ struct fuzz_test {
 extern const struct fuzz_test __barebox_fuzz_tests_start;
 extern const struct fuzz_test __barebox_fuzz_tests_end;
 
-#define for_each_fuzz_test(test) \
-	for (test = &__barebox_fuzz_tests_start; \
-	     test != &__barebox_fuzz_tests_end; test++)
-
 #if IS_ENABLED(CONFIG_FUZZ) && IN_PROPER
 /**
  * fuzz_test() - register a fuzz test
diff --git a/lib/fuzz.c b/lib/fuzz.c
index 038e176096bc..708cffbc2cc5 100644
--- a/lib/fuzz.c
+++ b/lib/fuzz.c
@@ -4,6 +4,10 @@
 #include <string.h>
 #include <common.h>
 
+#define for_each_fuzz_test(test) \
+	for (test = &__barebox_fuzz_tests_start; \
+	     test != &__barebox_fuzz_tests_end; test++)
+
 int call_for_each_fuzz_test(int (*fn)(const struct fuzz_test *test, void *ctx),
 			    void *ctx)
 {
-- 
2.47.3



