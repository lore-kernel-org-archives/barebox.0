Delivery-date: Tue, 17 Oct 2023 16:55:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslUF-00Bsn8-NK
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslUD-0004cU-MS
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TZmEDtZMfO7BIr8CWiCQhrIRRfg4BKtPFaf0x7VTihI=; b=zJktMulXRluCvqVklWrPAQuxKr
	4a1UA6v4gWX4CDipTEWGkk/sfJ+w8ltg+CkmabW+2RVoq2DoE7tdZl3M2ZbBctjT16jPR/E2H1Amp
	mWvFX81T34g0kHlciV9UMZVlI/G3J1P7ChPDhjCPVmujSoi/CHwDWrci+B4iVaBOPjXCfIH3jLKir
	D7cPdq3m8qHJUqFCMvy2GsqaB4lqw7rPxODJSjd9V511R72TjhZf4UxhBX5PfsFXKseBFePLmRrBf
	/7bFv6nwQQoNHYHVHIKYzqp2NWlhVaH/5JWtw1XbbbsZn9I+ZLJjP3Lx8E6QdrZeZwSZC9qhqOaGC
	MTkAM+ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslSx-00CfN5-37;
	Tue, 17 Oct 2023 14:54:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQF-00CchP-1u
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:51:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=TZmEDtZMfO7BIr8CWiCQhrIRRfg4BKtPFaf0x7VTihI=; b=hulK2Jd5GkTxEDz9cvlbh+nioK
	UMjU8DEfcvyMDGZPObJkG8PupNZDqLTtlh1SshhWZ9lszyGsYvE7DIDfYTWT2GKvm8CxCAjfvtS+Z
	eBHMXBDBp2P0JefNkxkDs7UySa1/J46bGxkqNOnh1/JDGkRIUtn/fRK4laAqoyoENQ8zZfhchR9OY
	+p8CqyQXb6QpENaU0rrvnezI3LtJ2YuXdjIrJd3/eCJJN2ZN4G1zTGQAgPMUbs5gy4fSzzPCywkwg
	E1dSgLCdt9JWteeIh7L0p8/rdrg7NfO1RlGQOSZ1iIt1Hs0XscglicrGwsOyBfuTK1bQO0l/gF48N
	hV+wo3pQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ6-007AEo-0o
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPz-0001wJ-2y
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:23 +0200
Message-Id: <20231017145131.3069283-22-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155142_503243_6877CD77 
X-CRM114-Status: GOOD (  12.94  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 21/29] scripts: imx: replace static string allocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make the CSF command string allocation more dynamic by introducing
strcata(lloc)(). To make it more straight forward.

Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- new patch suggested by Sascha
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 include/mach/imx/imx-header.h |  1 -
 scripts/imx/imx.c             | 34 +++++++++++++++++++---------------
 2 files changed, 19 insertions(+), 16 deletions(-)

diff --git a/include/mach/imx/imx-header.h b/include/mach/imx/imx-header.h
index 0ad3485eb261..372dee6cb8e9 100644
--- a/include/mach/imx/imx-header.h
+++ b/include/mach/imx/imx-header.h
@@ -115,7 +115,6 @@ struct config_data {
 	int (*write_mem)(const struct config_data *data, uint32_t addr,
 			 uint32_t val, int width, int set_bits, int clear_bits);
 	int (*nop)(const struct config_data *data);
-	int csf_space;
 	char *csf;
 	int sign_image;
 	char *signed_hdmi_firmware_file;
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 933019eba449..50f44d5cb896 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -20,6 +20,23 @@
  */
 #define ENCRYPT_OFFSET	(HEADER_LEN + 0x10)
 
+static char *strcata(char *str, const char *add)
+{
+	size_t size = (str ? strlen(str) : 0) + strlen(add) + 1;
+	bool need_init = str ? false : true;
+
+	str = realloc(str, size);
+	if (!str)
+		return NULL;
+
+	if (need_init)
+		memset(str, 0, size);
+
+	strcat(str, add);
+
+	return str;
+}
+
 static int parse_line(char *line, char *argv[])
 {
 	int nargs = 0;
@@ -284,15 +301,10 @@ static int do_max_load_size(struct config_data *data, int argc, char *argv[])
 
 static int hab_add_str(struct config_data *data, const char *str)
 {
-	int len = strlen(str);
-
-	if (data->csf_space < len)
+	data->csf = strcata(data->csf, str);
+	if (!data->csf)
 		return -ENOMEM;
 
-	strcat(data->csf, str);
-
-	data->csf_space -= len;
-
 	return 0;
 }
 
@@ -300,14 +312,6 @@ static int do_hab(struct config_data *data, int argc, char *argv[])
 {
 	int i, ret;
 
-	if (!data->csf) {
-		data->csf_space = 0x10000;
-
-		data->csf = calloc(data->csf_space + 1, 1);
-		if (!data->csf)
-			return -ENOMEM;
-	}
-
 	for (i = 1; i < argc; i++) {
 		ret = hab_add_str(data, argv[i]);
 		if (ret)
-- 
2.39.2



