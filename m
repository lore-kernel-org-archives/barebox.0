Delivery-date: Tue, 28 Oct 2025 19:04:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3c-00Clkf-1F
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 19:04:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3Y-0001Cz-ME
	for lore@pengutronix.de; Tue, 28 Oct 2025 19:04:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VeaxpgN/IJFo55xET3g220JjipdNgGTSlcSIXI3LiV8=; b=BgsqbCCzRAGtlSZsCjmh6OHnwa
	bKbpTlzl4RVt/NO3gG/lf/bRnzHABK7atvbqvnAYCR4w7y1spoj1S34roYikQSjXTK1J8LcfGfeQp
	AHAwqxO7LemF6tughtlCX7goabDW6/JB6mr05SUKSrQpaqX/NuP+X36ZMeVVISR/b0FGkXQkFhxco
	Azv5kq1MIo+J7jD+gWjos4UqE+MYw7yGXs1Do7mf2JxAeRnlHOcNdjlexyf0R01vZ7j8A23ZcnKCH
	6J1QgeJl19whsEa+VZmB/t96d+Jlri3OIbwVBvg6B/m6Ex6uAsilKKl3WP9A5BO/WJorUYpzcJZIo
	lbYd0ZUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2m-0000000GS9y-2UA4;
	Tue, 28 Oct 2025 18:03:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2j-0000000GS7g-0Tyf
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 18:03:39 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDo2g-0000PX-Ui; Tue, 28 Oct 2025 19:03:34 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 19:03:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-tlv-signature-v2-1-3bafce636ad7@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
In-Reply-To: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1058; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=YMi0qr2gx/t0UaVfUSY1g7uWdQmC+FmKNYc+FqYDHC4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkZM2fo5K0Q8eQfSmvyPpttvxH5Zd5lp8vltG8HH88L
 2Vpt0BsRykLgxgXg6yYIkusmpyCkLH/dbNKu1iYOaxMIEMYuDgFYCK3uhkZbuyemfJ98/bonAV7
 X0e9yJ3/oqPjYae4+v/YquWC2ZYnIhgZ/kodXHCH89cOCYs1D/69D09o6/p45Hr/K/HlAaetjVi
 WMwIA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_110337_157048_175D8D56 
X-CRM114-Status: UNSURE (   9.94  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/17] lib: idr: avoid dangling else in
 idr_for_each_entry()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The idr_for_each_entry() macro uses an if statement to update _entry and
_in in the loop body. This can lead to dangling else issues, or at least
a compiler warning of the potential thereof.

We build with -Werror=dangling-else in CI and that is triggered very
easily by this construct.

Move the loop body into an else to avoid this issue.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 include/linux/idr.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/idr.h b/include/linux/idr.h
index e726d17b59..206c006c62 100644
--- a/include/linux/idr.h
+++ b/include/linux/idr.h
@@ -41,7 +41,7 @@ struct idr {
 	     *tmp = iter ? list_next_entry(iter, list) : NULL;		\
 	     (iter && iter != (_idr)) || (_entry = NULL);		\
 	     iter = tmp, tmp = tmp ?  list_next_entry(tmp, list) : NULL)\
-	if ((_entry = iter->ptr, _id = iter->id, true))
+	if ((_entry = iter->ptr, _id = iter->id, false)) {} else
 
 struct idr *__idr_find(struct idr *head, int lookup_id);
 

-- 
2.51.2.535.g419c72cb8a



