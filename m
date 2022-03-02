Delivery-date: Wed, 02 Mar 2022 21:13:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPVM1-00Fnzz-Fy
	for lore@lore.pengutronix.de; Wed, 02 Mar 2022 21:13:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPVM0-0003m3-2C
	for lore@pengutronix.de; Wed, 02 Mar 2022 21:13:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ugUVJmWlgwr5rop81DdlxZu3Phi3s7Pfq0Bn9Pgj1t4=; b=uh9YBAoNOGL5Ol
	cGcFKjqlmhMr5JZyC5dHkQihwI2g7WmTfNzer2pDA1YgN2ye69UATZN+HKnjsmKvHw0E+rO12rCCM
	9UTnWSJAmm34jRuJtn+dbwk70PDszxoLu7C8102Ckh/qC7mZ6KL+9JwOlSljfU+CVjkQMXts+a9nL
	w7UvIv/pBEL5XW43AD5xbkyauuneE0KRj4skcRNWNWF+W0YxMowSIRefqBSlK+kWfQ1UXpVEmZnoL
	6Ke7wcJ6kv1SC6Yg2XOAvcrVckE9GhgsBLtMHk1b2T07U4TJ9WIpbuo7BlW4m6rG7b8bcWrq2gx34
	+DK9XcvDeX6Y3c2Dxu8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPVKm-0044Xm-MR; Wed, 02 Mar 2022 20:12:28 +0000
Received: from relay4-d.mail.gandi.net ([2001:4b98:dc4:8::224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPVKi-0044X9-F8
 for barebox@lists.infradead.org; Wed, 02 Mar 2022 20:12:26 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id 5B352E0004;
 Wed,  2 Mar 2022 20:12:20 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed,  2 Mar 2022 21:12:15 +0100
Message-Id: <20220302201215.658986-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_121224_687633_EDCAA26A 
X-CRM114-Status: UNSURE (   8.60  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] compiler: add support for fallthrough attribute
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use of it is enforced in Linux now, so code we'll port may contain it.
Import the definition.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/linux/compiler_types.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index aa9cbcac7740..bc1b43aab0dc 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -112,6 +112,27 @@ struct ftrace_likely_data {
 #define __deprecated
 #define __deprecated_for_modules
 
+#ifndef __has_attribute
+#define __has_attribute(...)		0
+#endif
+
+/*
+ * Add the pseudo keyword 'fallthrough' so case statement blocks
+ * must end with any of these keywords:
+ *   break;
+ *   fallthrough;
+ *   continue;
+ *   goto <label>;
+ *   return [expression];
+ *
+ *  gcc: https://gcc.gnu.org/onlinedocs/gcc/Statement-Attributes.html#Statement-Attributes
+ */
+#if __has_attribute(__fallthrough__)
+# define fallthrough                    __attribute__((__fallthrough__))
+#else
+# define fallthrough                    do {} while (0)  /* fallthrough */
+#endif
+
 #endif /* __KERNEL__ */
 
 #endif /* __ASSEMBLY__ */
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

