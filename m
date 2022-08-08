Delivery-date: Mon, 08 Aug 2022 08:22:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKw9H-00Fpzk-6D
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 08:22:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oKw9H-0004xH-OJ
	for lore@pengutronix.de; Mon, 08 Aug 2022 08:22:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BQDYAwgZB4XEZShgDiJjnmTMluRvRBOLlt9+xaYHfMU=; b=h94KEmCei0hi9YYYkA8OSI5CSY
	ziicYN97ajV8F8M0xQ4Qe32uJlI4+B1c7ubKx5Pa4ygMD/AcIEy8zTCoWlGFL1NsOAE3RR1aUi5cm
	vEiiDKIrRO/YeyPkugFBM+T4+zEj3xqZg2rfNzKsyPt7I8R1PEnYXSAoAaIvlPRgMv39bdLn4wk8x
	dUpQfBlbmKpKXuZ35TjeX/IteoS0JULE+X3Iv14eLN3+bW1pT2e25HWkpavoeiVE2af6JkQEfWPas
	B+xFzV9pEww3zHyN5+H60vy7wdcHP7X9gtZsxwDQgCabwqRa6h9VOWBuRV8gLLU4bgC1JCYYxHKfR
	UUXBZo1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKw7w-00Bgcy-Ud; Mon, 08 Aug 2022 06:20:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oKw7s-00BgZW-0C
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 06:20:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oKw7q-0004ar-Ot; Mon, 08 Aug 2022 08:20:30 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKw7n-002Rhc-Ps; Mon, 08 Aug 2022 08:20:30 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oKw7p-001dlI-BT; Mon, 08 Aug 2022 08:20:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Aug 2022 08:20:28 +0200
Message-Id: <20220808062028.391120-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220807_232032_057551_5B38418F 
X-CRM114-Status: GOOD (  11.38  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] string: implement str_has_prefix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In addition to strstarts which we already have, Linux also defines
str_has_prefix(), which returns the length of the prefix on success and
zero otherwise. This allows writing straight-forward code to skip over
a prefix in case it exists. Port it over.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/string.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index ae5e5bca8d24..0c79d3e5cf3e 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -155,4 +155,25 @@ static inline bool strstarts(const char *str, const char *prefix)
 	return strncmp(str, prefix, strlen(prefix)) == 0;
 }
 
+/**
+ * str_has_prefix - Test if a string has a given prefix
+ * @str: The string to test
+ * @prefix: The string to see if @str starts with
+ *
+ * A common way to test a prefix of a string is to do:
+ *  strncmp(str, prefix, sizeof(prefix) - 1)
+ *
+ * But this can lead to bugs due to typos, or if prefix is a pointer
+ * and not a constant. Instead use str_has_prefix().
+ *
+ * Returns:
+ * * strlen(@prefix) if @str starts with @prefix
+ * * 0 if @str does not start with @prefix
+ */
+static __always_inline size_t str_has_prefix(const char *str, const char *prefix)
+{
+	size_t len = strlen(prefix);
+	return strncmp(str, prefix, len) == 0 ? len : 0;
+}
+
 #endif /* _LINUX_STRING_H_ */
-- 
2.30.2



