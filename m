Delivery-date: Mon, 10 Oct 2022 08:06:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlw4-0033Qf-MO
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:06:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohlw2-00080j-MW
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:06:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JEwxRtchU6VWI2xBLE/eEeRQVeTGq1kqN3+sIK5m/2w=; b=Z7x4REWwk5wXXsb2Af+6ejFDgU
	okybTigIhh0RlDbS67tk2rRd/3uj34d0GE1ULqtyWEPqBxd5UnhwF9L9U7MO7NJzil8/UxcrecKlO
	VequKEcCh1tt61KndjEO/YmhpmOO/6ntxkJEi/xQ6Ly4jUF36gq0dVdQ161Td32dIFYUJgeRtdBjM
	Jx1Ds8ZmU2dmPt3zh0+I+fdX9BPXysO+uuJ78dbFKX2LZbFmHYS7OYLfeNpoPkVeQYNKvFg42tgJJ
	zIwQlPZjJjoOKZKn2V0ijMEwbO53qkuS8kmIMNkpyTKCAT5zApzPkCkG9ZO4D9mnGpTsgO4gLGMIc
	CODNGdXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohluf-00H96M-O7; Mon, 10 Oct 2022 06:05:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohlub-00H95W-F1
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:05:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohlua-0007fD-7y; Mon, 10 Oct 2022 08:05:12 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohluZ-000d8j-I8; Mon, 10 Oct 2022 08:05:11 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohluY-008jkA-Tb; Mon, 10 Oct 2022 08:05:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:05:10 +0200
Message-Id: <20221010060510.2082414-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_230513_524086_4851EB8D 
X-CRM114-Status: UNSURE (   9.37  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] efi: payload: image: fix commandline-less boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

linux_bootargs_get() may return NULL, in that case we should avoid
calling strlen on it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/efi/payload/image.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/common/efi/payload/image.c b/common/efi/payload/image.c
index e63da9ddf06f..8e39098ae81b 100644
--- a/common/efi/payload/image.c
+++ b/common/efi/payload/image.c
@@ -133,9 +133,11 @@ static int efi_execute_image(const char *file)
 		pr_debug("Linux kernel detected. Adding bootargs.");
 		options = linux_bootargs_get();
 		pr_err("add linux options '%s'\n", options);
-		loaded_image->load_options = xstrdup_char_to_wchar(options);
-		loaded_image->load_options_size =
-			(strlen(options) + 1) * sizeof(wchar_t);
+		if (options) {
+			loaded_image->load_options = xstrdup_char_to_wchar(options);
+			loaded_image->load_options_size =
+				(strlen(options) + 1) * sizeof(wchar_t);
+		}
 		shutdown_barebox();
 	}
 
@@ -227,8 +229,10 @@ static int do_bootm_efi(struct image_data *data)
 	}
 
 	options = linux_bootargs_get();
-	boot_header->cmd_line_ptr = (uint64_t)options;
-	boot_header->cmdline_size = strlen(options);
+	if (options) {
+		boot_header->cmd_line_ptr = (uint64_t)options;
+		boot_header->cmdline_size = strlen(options);
+	}
 
 	boot_header->code32_start = (uint64_t)loaded_image->image_base +
 			(image_header->setup_sects+1) * 512;
-- 
2.30.2



