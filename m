Delivery-date: Wed, 15 Oct 2025 10:27:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8wrU-00825x-1J
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 10:27:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8wrT-0007yq-Sv
	for lore@pengutronix.de; Wed, 15 Oct 2025 10:27:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yYsGv1WlK//EdgRpzzrvORzClKoYUmhx3HXli5skfPE=; b=lECR5V9I7+iZ89STQhEiYI9EQ1
	ICGHBXEmFJSugj77vljpPynH1AVPKS4PgkzaAlW1fLOFAv3IB8ejQDQBEiSaJYD+wBekJ/xmgwus/
	MGRCEOYQStXfZD8fvIYIAdSGfw4J4N5s8exwOvXA/EY5w13U65i4iocRJ4CUdEGQ7q1Ep2DQADdVU
	55BBOC0U33hJxcVXgoEor37qKGSCc0IKfiNFiHb2l5M8V4JpBGxBY4WzJ2sUMqmMihQMuEHezbBPH
	wZ9L4ufZjQlN/BRPWo6cCjTiiOaM7TQ5SCJxnIMKYIAchcn/3vcL7T8qcyJn61PU2x2K5JPqaJau8
	qcVtJLWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wr4-00000000uFM-0WNy;
	Wed, 15 Oct 2025 08:27:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wr1-00000000uEj-0t8l
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 08:27:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1v8wqz-0007tm-Kq; Wed, 15 Oct 2025 10:27:25 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 15 Oct 2025 10:27:24 +0200
Message-ID: <20251015082724.4094242-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_012727_503288_A37B2647 
X-CRM114-Status: UNSURE (   7.59  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] tlsf: use compiler's static_assert implementation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The compiler's statis_assert allows for a much better error message than
the current error message about negatively sized arrays.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/tlsf.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index e7f1b8354f02..cb380dcf87c4 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -77,10 +77,7 @@ enum tlsf_private
 ** Static assertion mechanism.
 */
 
-#define _tlsf_glue2(x, y) x ## y
-#define _tlsf_glue(x, y) _tlsf_glue2(x, y)
-#define tlsf_static_assert(exp) \
-	typedef char _tlsf_glue(static_assert, __LINE__) [(exp) ? 1 : -1]
+#define tlsf_static_assert static_assert
 
 /* This code has been tested on 32- and 64-bit (LP/LLP) architectures. */
 tlsf_static_assert(sizeof(int) * CHAR_BIT == 32);
-- 
2.47.3



