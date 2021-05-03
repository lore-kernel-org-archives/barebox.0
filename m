Delivery-date: Mon, 03 May 2021 14:32:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXkk-0003A0-1G
	for lore@lore.pengutronix.de; Mon, 03 May 2021 14:32:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXkj-0005qo-5r
	for lore@pengutronix.de; Mon, 03 May 2021 14:32:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jzMTVHrXzKmc9rMAR3FknFStvyfHoZqQKa7mhjUmjfk=; b=Hq2xkJPBrxTEPXdCFCHqnmSGW
	qrfrhe96iagvc5AJEhywNvHGwVjvhUjmhcTNZcvEiFmKkCAFL+Of4pOspf89RDP9HyqHJzxuEXhV4
	ohsk/b+x7UUC6d9PD50gcajnV86eXlcCUsms16l8Sr54xncm4IY3VUbjzTWFag90v7SlIhfCMCstm
	R7Mki8STACm5SoLIwZaH6MkGzyr6I/J7UeR0zMYYbaKu7S0xsSOOKooQQfMO4GLskqHfmpKdEeqBn
	qViwUxbtfnBKMBCSBoOzZnCC3sElwX50E74P97QBGDN4kBJJWPvmgFluNchiBsiQ8J0h9JA8sAj08
	+nRTUhg5A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXji-00DrZS-8F; Mon, 03 May 2021 12:31:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXiS-00DrTQ-Bo
 for barebox@desiato.infradead.org; Mon, 03 May 2021 12:30:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=zT4PLI+ohen0eVF7bmP+ChHhOGDjWddIPpaTcljd3pY=; b=PG4Sn17cLdpZyt/TStF01KNcQn
 kTFmuI/f/tMF72ENt1yoyUvhE2bIB5V11TI3UtieBIu0k3acuHh2VfX6rpKKo27fcOYI78ZCcMIBJ
 4OGV9R6yA0mk54to92udpHmsx6JW4xb2mBUl6ypNJrvFNe1NI99QD2A7DZAe9z5BLMjUg/uPSb1PF
 tJijuO31hnfeDb4eSmkk2YreC/9Q8ZQ0peb2ye+1IJcbbaQc1ZbzfWfpRc1RQT3s6bAEYD+n/wqC6
 jsu5j4GWnBi7zIgYLy6wgkkS0qDT8AmMeGjrMcl1OlLY0BPX9Dw4QtfSBagaIZwsEBFLNRjw1u53g
 VlYGgKHg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXiP-0033Vj-VO
 for barebox@lists.infradead.org; Mon, 03 May 2021 12:30:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldXiO-0005R8-Dy; Mon, 03 May 2021 14:30:20 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldXiO-0007iU-5G; Mon, 03 May 2021 14:30:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 May 2021 14:30:19 +0200
Message-Id: <20210503123019.29571-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210503114901.13095-13-a.fatoum@pengutronix.de>
References: <20210503114901.13095-13-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_053022_025405_19A5B5DE 
X-CRM114-Status: UNSURE (   9.29  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! fastboot/dfu: use system partitions as fall back
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We need to maintain the check for whether dfu/fastboot is enabled,
otherwise usbgadget_register can't differentiate between disabled
gadget and gadget with default (empty string) function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/usbgadget.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/common/usbgadget.c b/common/usbgadget.c
index b953f8bf771c..d4437b51694a 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -59,20 +59,23 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
 	opts = xzalloc(sizeof(*opts));
 	opts->release = usb_multi_opts_release;
 
-	opts->dfu_opts.files = parse(dfu_opts);
-	if (IS_ENABLED(CONFIG_USB_GADGET_DFU) && file_list_empty(opts->dfu_opts.files)) {
-		file_list_free(opts->dfu_opts.files);
-		opts->dfu_opts.files = get_dfu_function();
+	if (dfu) {
+		opts->dfu_opts.files = parse(dfu_opts);
+		if (IS_ENABLED(CONFIG_USB_GADGET_DFU) && file_list_empty(opts->dfu_opts.files)) {
+			file_list_free(opts->dfu_opts.files);
+			opts->dfu_opts.files = get_dfu_function();
+		}
 	}
 
-	opts->fastboot_opts.files = parse(fastboot_opts);
-	if (IS_ENABLED(CONFIG_FASTBOOT_BASE) && file_list_empty(opts->fastboot_opts.files)) {
-		file_list_free(opts->fastboot_opts.files);
-		opts->fastboot_opts.files = get_fastboot_partitions();
-	}
+	if (fastboot) {
+		opts->fastboot_opts.files = parse(fastboot_opts);
+		if (IS_ENABLED(CONFIG_FASTBOOT_BASE) && file_list_empty(opts->fastboot_opts.files)) {
+			file_list_free(opts->fastboot_opts.files);
+			opts->fastboot_opts.files = get_fastboot_partitions();
+		}
 
-	if (fastboot)
 		opts->fastboot_opts.export_bbu = export_bbu;
+	}
 
 	opts->create_acm = acm;
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

