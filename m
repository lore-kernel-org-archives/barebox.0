Delivery-date: Fri, 19 Dec 2025 11:38:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsq-00DAhT-0F
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsV-0006ea-8b
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=np54NRH0SdPkbrDcsPvrMHpNvSlYK0yFRo2Urd8AU9Q=; b=dQMvHiA5QzlfcbvniJMabkZCQ6
	Df8x7DWSUXk/ShM0UXfK0pg78qZogcNSuFKmDWDU/uZutxmv9+MCO9bKQAWDX78NGuGB67qcF3+HA
	5Y4FikVDUPwTR2iGw47SFvtIWrULPEfD+1ZsgJnvtMCWQzZ0AwalRtMqQad4Wjg6KGLuGE9NLJBjm
	HIwY07PPI9kz9qAWzLsKvY/AcOYdT9u50tYKA/rYTjZAB+3WBhVjYQ9NfLJYujC0eOWUo/Ua4FPc+
	QFHsmIX1Hv/2un82DsVncGRv1BbjfkLs1zYahaB81say9hJNZwnaU4vavqe+28yj/yfj2xTQgf05J
	2iwX/kXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXrP-0000000A6bw-1Jnl;
	Fri, 19 Dec 2025 10:37:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqy-0000000A63e-2Tdv
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=np54NRH0SdPkbrDcsPvrMHpNvSlYK0yFRo2Urd8AU9Q=; b=ZcBVuCMdoJgJOYJg1ywBdtgYOG
	lkF0tFjVcGtOXNtuEzmNbhjW42FTaxctGxZ4BzSz5ppzvraDFKJAioLzH2U17y5vp3LPg9BHVgeRj
	Mh1kxL7CmXsAzzow1ybncN94NJi0XTpQvVmlIOTDJyxDdGzVpklbyoxlFm/opNB2vM8BXpO6BpRht
	OtIR88fqEif0pAjjJ7f7wTarsbWgAagw+n+HFelJqB/rU4WqeDkJxUoAiDoLPEr8h2C3130AcUA1k
	qJ7LFJ+8EbVjyiRcugDucMvbQ0azjHBbYwavYgqa0naeJRXyUVPfhUQhyVmqzNswWc3cDeFX3j8rs
	Q+81fQsw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWzQ-0000000AbCM-0u5l
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:41:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-0004e9-Mr; Fri, 19 Dec 2025 11:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-006RVN-1a;
	Fri, 19 Dec 2025 11:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-28ys;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:20:58 +0100
Message-ID: <20251219101453.2806980-23-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_094136_340249_475D27C2 
X-CRM114-Status: GOOD (  11.04  )
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
Subject: [PATCH v2025.09.y 22/49] commands: truncate: fix multiple file handling with relative sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Alexander Shiyan <eagle.alexander923@gmail.com>

Fix bug where processing multiple files with -s +SIZE option
would use incorrect sizes for files after the first one, because the
size variable was being overwritten.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Link: https://lore.barebox.org/20251119185307.931800-1-eagle.alexander923@gmail.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 6981db707661f68a1aea4f0969360cb0af7fd530)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/truncate.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/commands/truncate.c b/commands/truncate.c
index 5c6d74257da1..83661fbaf63b 100644
--- a/commands/truncate.c
+++ b/commands/truncate.c
@@ -59,23 +59,26 @@ static int do_truncate(int argc, char *argv[])
 			continue;
 		}
 
+		off_t target_size = size;
+
 		if (modify) {
 			struct stat st;
 
 			if (fstat(fd, &st) == -1) {
 				perror("fstat");
 				ret = 1;
-				goto close;
+				close(fd);
+				continue;
 			}
 
-			size = st.st_size + modify * size;
+			target_size = st.st_size + size;
 		}
 
-		if (ftruncate(fd, size) == -1) {
+		if (ftruncate(fd, target_size) == -1) {
 			perror("truncate");
 			ret = 1;
 		}
-close:
+
 		close(fd);
 	}
 
-- 
2.47.3



