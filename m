Delivery-date: Mon, 13 Apr 2026 12:11:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGq-00BgJL-09
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:11:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGn-0001d1-Hf
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:11:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SII07ZwPhHE/pm+LEhWc7iPcH8H2d8wB9WyyJVE9cXc=; b=tifhRURxSKFHzcLr74qRryEBaW
	7r89JRNoM2tMPZDUUKi4kWsMnqGNr9oWDHv5Ei/fSla2feK2n3FHG1/ppVRTIo2pfe+fqgHp+gsup
	iBW5WFOZdgwCB7lp+V7mJL8vLxTcSO17XtRrLDT8jQ1Wi+sODm0/q0/jdCNDKiCVVysUSpHxbNRxc
	fLH9fgOGLRwk/gTlFGqsNt2gSnUFLFVQMjw4kheCrWkDoCYdOeaHjVksawvUstpP7G3w9kqvCYial
	LdfFIOOYSm9/NIU2KKOjs27l0UXSCEOtI2mlDuYDM0RhMyeP2ZH3f8EaUo40cLb5ZRGm4bMZma+Ue
	jz5QLOig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGP-0000000FSAY-3g3F;
	Mon, 13 Apr 2026 10:11:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGK-0000000FS4V-19CE
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 10:11:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SII07ZwPhHE/pm+LEhWc7iPcH8H2d8wB9WyyJVE9cXc=; b=VA4ehrFOQDYRvAlyub4t6IA7GM
	mU13nCY0VVP7Ohs5waxeWI4d+hh4EvWgxihlhiesgerEy9ARb3wM92nxqqp58ArFfwu7vUyKnk3U3
	shNuQkgdr0nZTAvwEYT2BEt3WQ+L+ODRgaqtcQ0A0FGn7oEjVDueRfvBOcdCb/Ng8LER0mPwXaql2
	KxRSIwXT0jGRAMs2aN2XOOnL+mVezmUjFfW3N+DtssCWF0Q+Woq2fuyEwRVgJUG1KkcyddPI8FWiJ
	GQTdcQYshpsNn2k0bCr9bsfI8nf3Ar9h2V2f0mVM4UVliXXZfOcgKzzrkKLdAEOzj8ORmYK2lnpR8
	w3R+8fLw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGG-0000000GZ6g-3R1u
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:11:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCEGG-0001Is-A9; Mon, 13 Apr 2026 12:11:20 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:09:38 +0200
Message-ID: <20260413101118.1462119-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413101118.1462119-1-a.fatoum@barebox.org>
References: <20260413101118.1462119-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_111121_286722_AA6250F8 
X-CRM114-Status: GOOD (  13.94  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] console: have for_each_console declare the iterator internally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Simplify users of the for_each_console macro, by declaring the iterator
variable inside.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/bfetch.c       |  1 -
 commands/edit.c         |  2 --
 common/bootm.c          |  1 -
 common/console.c        | 11 -----------
 common/console_common.c |  5 -----
 include/console.h       |  7 +++++--
 lib/term.c              |  1 -
 7 files changed, 5 insertions(+), 23 deletions(-)

diff --git a/commands/bfetch.c b/commands/bfetch.c
index d9c615f65aca..705edb08461a 100644
--- a/commands/bfetch.c
+++ b/commands/bfetch.c
@@ -290,7 +290,6 @@ static void print_shell_console(unsigned *line)
 	const char *shell;
 	struct command *cmd;
 	struct string_list sl;
-	struct console_device *console;
 
 	if (IS_ENABLED(CONFIG_SHELL_HUSH))
 		shell = "Hush";
diff --git a/commands/edit.c b/commands/edit.c
index c7262711d01f..4442543b9acb 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -464,8 +464,6 @@ static int read_modal_key(bool is_modal)
 
 static bool is_efi_console_active(void)
 {
-	struct console_device *cdev;
-
 	if (!IS_ENABLED(CONFIG_DRIVER_SERIAL_EFI_STDIO))
 		return false;
 
diff --git a/common/bootm.c b/common/bootm.c
index d4a3a232743f..d84e7647b389 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -653,7 +653,6 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 	}
 
 	if (bootm_earlycon) {
-		struct console_device *console;
 		const char *earlycon = NULL;
 
 		for_each_console(console) {
diff --git a/common/console.c b/common/console.c
index 30a72b2bb6d2..d7013e72e358 100644
--- a/common/console.c
+++ b/common/console.c
@@ -257,7 +257,6 @@ void console_set_stdoutpath(struct console_device *cdev, unsigned baudrate)
 
 struct console_device *of_console_by_stdout_path(void)
 {
-	struct console_device *console;
 	struct device_node *stdout_np;
 
 	stdout_np = of_get_stdoutpath(NULL);
@@ -459,7 +458,6 @@ EXPORT_SYMBOL(console_unregister);
 static __maybe_unused int console_activate_all_fallback(void)
 {
 	int activate = CONSOLE_STDIOE;
-	struct console_device *cdev;
 
 	for_each_console(cdev) {
 		if (cdev->f_active & (CONSOLE_STDOUT | CONSOLE_STDERR))
@@ -487,7 +485,6 @@ postenvironment_initcall(console_activate_all_fallback);
 
 static int getc_raw(void)
 {
-	struct console_device *cdev;
 	int active = 0;
 
 	while (1) {
@@ -515,8 +512,6 @@ static int getc_raw(void)
 
 static int tstc_raw(void)
 {
-	struct console_device *cdev;
-
 	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
 		return 0;
 
@@ -578,7 +573,6 @@ EXPORT_SYMBOL(tstc);
 
 int console_putc(unsigned int ch, char c)
 {
-	struct console_device *cdev;
 	int init = initialized;
 	bool crlf = c == '\n';
 
@@ -613,7 +607,6 @@ EXPORT_SYMBOL(console_putc);
 
 int console_puts(unsigned int ch, const char *str)
 {
-	struct console_device *cdev;
 	const char *s = str;
 	int n = 0;
 
@@ -636,8 +629,6 @@ EXPORT_SYMBOL(console_puts);
 
 void console_putbin(unsigned int ch, const u8 *str, size_t len)
 {
-	struct console_device *cdev;
-
 	switch (initialized) {
 	case CONSOLE_UNINITIALIZED:
 		console_init_early();
@@ -667,8 +658,6 @@ EXPORT_SYMBOL(console_putbin);
 
 void console_flush(void)
 {
-	struct console_device *cdev;
-
 	for_each_console(cdev) {
 		if (cdev->flush)
 			cdev->flush(cdev);
diff --git a/common/console_common.c b/common/console_common.c
index e3b49200c538..1d98e4ec1bcc 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -308,8 +308,6 @@ EXPORT_SYMBOL(vprintf);
 
 struct console_device *console_get_by_dev(struct device *dev)
 {
-	struct console_device *cdev;
-
 	for_each_console(cdev) {
 		if (cdev->dev == dev)
 			return cdev;
@@ -321,8 +319,6 @@ EXPORT_SYMBOL(console_get_by_dev);
 
 struct console_device *console_get_by_name(const char *name)
 {
-	struct console_device *cdev;
-
 	for_each_console(cdev) {
 		if (cdev->devname && !strcmp(cdev->devname, name))
 			return cdev;
@@ -340,7 +336,6 @@ EXPORT_SYMBOL(console_get_by_name);
  */
 struct console_device *console_get_first_interactive(void)
 {
-	struct console_device *cdev;
 	const unsigned char active = CONSOLE_STDIN | CONSOLE_STDOUT;
 
 	/* if no console input is allows, then we can't have STDIN on any. */
diff --git a/include/console.h b/include/console.h
index 353a5088a547..082d1ac8a924 100644
--- a/include/console.h
+++ b/include/console.h
@@ -198,7 +198,9 @@ bool console_allow_color(void);
 
 #ifndef CONFIG_CONSOLE_NONE
 extern struct list_head console_list;
-#define for_each_console(console) list_for_each_entry(console, &console_list, list)
+#define for_each_console(console)			\
+	scoped_var(struct console_device *console)	\
+		list_for_each_entry(console, &console_list, list)
 
 struct console_device *console_get_first_interactive(void);
 
@@ -210,7 +212,8 @@ static inline int barebox_set_loglevel(int loglevel)
 	return old_loglevel;
 }
 #else
-#define for_each_console(console) while (((void)console, 0))
+#define for_each_console(console) \
+	scoped_var(struct console_device *console) while (((void)console, 0))
 
 static inline struct console_device *console_get_first_interactive(void)
 {
diff --git a/lib/term.c b/lib/term.c
index 8b4de96c63a4..669d48fd4d8c 100644
--- a/lib/term.c
+++ b/lib/term.c
@@ -109,7 +109,6 @@ int term_getsize(int *screenwidth, int *screenheight)
 {
 	int width = INT_MAX, height = INT_MAX;
 	bool found = false;
-	struct console_device *cdev;
 
 	for_each_console(cdev) {
 		int w, h;
-- 
2.47.3



