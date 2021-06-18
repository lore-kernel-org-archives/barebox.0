Delivery-date: Fri, 18 Jun 2021 14:08:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luDI1-0003Mb-M0
	for lore@lore.pengutronix.de; Fri, 18 Jun 2021 14:08:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luDI0-0005Bj-Pn
	for lore@pengutronix.de; Fri, 18 Jun 2021 14:08:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tTpz+duzAQjEldfZcwXlJ3cLV0ISV+DCQKsOXgjCh3w=; b=y4a6/iStKHnaIz
	oYI32Yo7nYZLyQShJnfcRDEDWQHySHPvRmvjICkZOZQAzl6sn7w1Vkku1iVCw8L/6EGw9XH3tjEFQ
	eUE/ijjK12J4o/ke+81PSLIGPbfY+SCymJW2vrdb6U48KmDB4j9XzghNOtQN9yTeAZoSL7efDlRs1
	aRqGWpDmoFp7Pz4BYm6g6dfCTtp/NeMqjcN4AT6BprLBqIo+LxMzCgwaIpTZi+rbNQmMQ4+jI5wt3
	CUklBLj3TF/AJglfz1AJKhS9oPz8D3kpNcGBYKn/kdfVkX9Fti1G1a7EO8qDzfsc/3D+tUipxYp6c
	9tZHvLxsJHMYS1X75fpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luDGS-00DxbQ-J9; Fri, 18 Jun 2021 12:06:24 +0000
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luDGK-00DxaY-F0
 for barebox@lists.infradead.org; Fri, 18 Jun 2021 12:06:18 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 06E9086279; Fri, 18 Jun 2021 14:06:12 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:2153:7b02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id DB36A8625C;
 Fri, 18 Jun 2021 14:06:09 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri, 18 Jun 2021 14:05:57 +0200
Message-Id: <20210618120557.2192098-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_050616_695180_2CE870A9 
X-CRM114-Status: GOOD (  12.48  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] common: bbu: only add available handlers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A board may have multiple handlers registered:

  registered update handlers:
    SD          -> /dev/mmc0.barebox
  * eMMC        -> /dev/mmc1

However when using the usbgadget with the -b command line argument,
fastboot will stat all devicefiles listed in the handlers and will fail
if i.e. the SD card is not available:

  usbgadget -A /dev/mmc1(root) -b
  udc0: registering UDC driver [g_multi]
  multi_bind: creating Fastboot function
  ERROR: g_multi udc0: failed to start g_multi: -2
  usbgadget: No such file or directory

To fix this, check the availability of handlers before adding them to
the list and skip those that are not available with an info level message.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/bbu.c | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index 1a1edda96b..a66be553e9 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -32,12 +32,31 @@ static void append_bbu_entry(struct bbu_handler *handler, struct file_list *file
 	free(name);
 }
 
+static bool bbu_handler_is_available(struct bbu_handler *handler)
+{
+	struct stat s;
+	int ret;
+
+	device_detect_by_name(devpath_to_name(handler->devicefile));
+	ret = stat(handler->devicefile, &s);
+
+	if(ret)
+		return false;
+	return true;
+}
+
 void bbu_append_handlers_to_file_list(struct file_list *files)
 {
 	struct bbu_handler *handler;
 
-	list_for_each_entry(handler, &bbu_image_handlers, list)
-		append_bbu_entry(handler, files);
+	list_for_each_entry(handler, &bbu_image_handlers, list) {
+		if(bbu_handler_is_available(handler)) {
+			append_bbu_entry(handler, files);
+		} else {
+			pr_info("Skipping unavailable handler bbu-%s\n",
+				handler->name);
+		}
+	}
 }
 
 int bbu_force(struct bbu_data *data, const char *fmt, ...)
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

