Delivery-date: Mon, 13 Mar 2023 14:44:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiT4-0061Xr-7n
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:44:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiT3-0005Q6-Od
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:44:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/dy4JmbCuYSxJ9/FnsKWvKUZNWkB+RBc6HwImzboZow=; b=bYQf8xYqNuGls6buzgwpAHJnE/
	wUAsNUTtI5OgVlwyAzXj67gsJh2JQMrDF/OA+HvGAx8odesqNQePRjHnfXPeMjgfockmF0VgMQwBA
	lXQu4Ga6JR26q4vouM0jnLNGaDhqKZDP2zPd38hnBw4KfkJWVxxaF1YkSy/fSmnYStCeQEC4thjj0
	YwTU1wsGWvsOwtzafFUjUBKBqDuMvU1uQyCVwLs6OPTrNVLdvGNtTpoVnyr3aPF+ctjmUuXD4TOUV
	AaLY577bEXQH/08L2qmX7vbHC6eBVCNrHMqlKwrPkER/7g0LaP7NvU/Cwd4xXT0x7ed1ROpnqY270
	ottCOmZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiRd-005wGT-RS; Mon, 13 Mar 2023 13:42:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiQr-005vkq-LE
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 13:41:51 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQq-0004N9-Fi
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:44 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:41:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-12-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_064145_781263_0C968F8A 
X-CRM114-Status: UNSURE (   9.56  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 12/23] scripts: imx-image: convert flag variables into
 bool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use 'bool' instead of 'int' for local true/false flag variables.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/imx-image.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 439912a805..3da2b81841 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -34,7 +34,7 @@
 
 static uint32_t dcdtable[MAX_DCD];
 static int curdcd;
-static int create_usb_image;
+static bool create_usb_image;
 static char *prgname;
 
 /*
@@ -739,9 +739,9 @@ int main(int argc, char *argv[])
 	void *infile;
 	struct stat s;
 	int outfd;
-	int dcd_only = 0;
+	bool dcd_only = false;
 	int now = 0;
-	int add_barebox_header = 0;
+	bool add_barebox_header = false;
 	uint32_t barebox_image_size = 0;
 	struct config_data data = {
 		.image_ivt_offset = 0xffffffff,
@@ -771,16 +771,16 @@ int main(int argc, char *argv[])
 			data.pbl_code_size = strtoul(optarg, NULL, 0);
 			break;
 		case 'b':
-			add_barebox_header = 1;
+			add_barebox_header = true;
 			break;
 		case 'd':
-			dcd_only = 1;
+			dcd_only = true;
 			break;
 		case 's':
 			data.sign_image = 1;
 			break;
 		case 'u':
-			create_usb_image = 1;
+			create_usb_image = true;
 			break;
 		case 'e':
 			data.encrypt_image = 1;

-- 
2.30.2



