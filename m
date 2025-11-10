Delivery-date: Mon, 10 Nov 2025 21:35:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc8-00HVNz-13
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc4-0002IM-MG
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XtzzCg4tH0stVkJcUpnhHk3RW7QxbwXnOXB7t8QH+mo=; b=IQDNMLN/GZzWVmtM7UoT6wof3t
	0/ctwlIo6PWZHvxqCaWGyG2avdAMDxxoKWfwfX5XDQyYWpfmntwNS0pwVbRCj6zkuWGi3aXezx3Jw
	5sYJioURx3t3hIsNvQJ0blFdbz212dYBy2Bq0xg5mbZ7gkJrK5qkf1Tfd0lVFCFO9y4c88kdZA1y/
	EPbV9/vf2993Gi0htgcMEuYynC5pZJtcazPm6b/opWOKsvJzjiEWAWM2sCMVfmt2aWOkrojQHkrrt
	uXM1BkKDVI7dYJPb+woIjKYeGClemNKZnvEHflTmftfJh931yE8MkkZnep1o9VqBAnsB8GmI42NPy
	nKcF4Dqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbI-000000065Zt-07K6;
	Mon, 10 Nov 2025 20:34:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbB-000000065SG-24wr
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 20:34:52 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-LR; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-8-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_123449_537616_B45E1B2C 
X-CRM114-Status: UNSURE (   7.97  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/23] pbl: decomp: add pbl_dtbz_uncompress helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a pbl uncompress helper since uncompress() can't be used directly
within pbl.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/pbl.h |  1 +
 pbl/decomp.c  | 12 ++++++++++++
 2 files changed, 13 insertions(+)

diff --git a/include/pbl.h b/include/pbl.h
index b330010562c4aba5fccbb4c421bb95291fa0bea1..9db4652e833bf5e82fd42a1cae19e94c4f2f868f 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -15,6 +15,7 @@ extern unsigned long free_mem_ptr;
 extern unsigned long free_mem_end_ptr;
 
 void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len);
+int pbl_dtbz_uncompress(void *dest, void *compressed_start, unsigned long len);
 
 void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
 int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[], size_t num);
diff --git a/pbl/decomp.c b/pbl/decomp.c
index ebdf81ddfbe5af65a382b7221c7102dcc791e5b9..4d50ea15555ba96bdc2fcac4c48708c6e1261d4d 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -51,6 +51,12 @@ static void noinline errorfn(char *error)
 	while (1);
 }
 
+static noinline void errorfn_nohang(char *error)
+{
+	puts_ll("ERROR: ");
+	puts_ll(error);
+}
+
 extern unsigned char sha_sum[];
 extern unsigned char sha_sum_end[];
 
@@ -110,3 +116,9 @@ void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len
 			NULL, NULL,
 			dest, NULL, errorfn);
 }
+
+int pbl_dtbz_uncompress(void *dest, void *compressed_start, unsigned long len)
+{
+	return decompress(compressed_start, len, NULL, NULL, dest, NULL,
+			  errorfn_nohang);
+}

-- 
2.47.3



