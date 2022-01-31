Delivery-date: Mon, 31 Jan 2022 08:55:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERXI-001TE3-Kx
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 08:55:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERXG-0004zl-DC
	for lore@pengutronix.de; Mon, 31 Jan 2022 08:55:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PDe3QRQujAwDjSynxC0bHF1oD4uP7SI6Bw3oFJ192GU=; b=CErhUnCA+TugOy
	arGfiMiw8LvLbZup5GdDdRZ55tLPU213aL4Q8EQrM6HNfsr9WTC2x4o4ycnxZcg8MdTvsBYO8/lri
	YtmDshf6P/6GNTWrI/88zxyge3U8+LzyjICZYVvidHzz4ezqqeTVtwa4CeHgKG6nb8tmmTaHMd143
	B1YVOjgBJIPG913SJO2irF8+Zr/9+gkvwyFvjn/KPnyIEr4WXrmQ4mmCihxPfyn0XQ7FgrtbHxw/U
	rHcZ3U6ImjgF78/zu0rbtN4JCGYiVKD4vQE96NdR/qfzMAZ62qLhGOAjOZNLAzb0p+YTNAU1WPM07
	KYow7ALafOKmFnLFIl8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERVo-008KuO-Ij; Mon, 31 Jan 2022 07:54:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERVZ-008Ks1-Is
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 07:53:54 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nERVY-0004g7-BW; Mon, 31 Jan 2022 08:53:52 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nERVX-007qMb-TE; Mon, 31 Jan 2022 08:53:51 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 Jan 2022 08:53:50 +0100
Message-Id: <20220131075350.1869535-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_235353_663135_9983B16B 
X-CRM114-Status: UNSURE (   8.62  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] include: <asm-generic/bug.h>: implement WARN_ON_ONCE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have WARN_ON and WARN_ONCE. Add WARN_ON_ONCE as well to accommodate
Linux driver code using it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/bug.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/asm-generic/bug.h b/include/asm-generic/bug.h
index f20e1b4d65ac..5d0a458eae74 100644
--- a/include/asm-generic/bug.h
+++ b/include/asm-generic/bug.h
@@ -50,4 +50,16 @@
 	}					\
 	unlikely(__ret_warn_once);		\
 })
+
+#define WARN_ON_ONCE(condition) ({			\
+	static int __warned;				\
+	int __ret_warn_once = !!(condition);		\
+							\
+	if (unlikely(__ret_warn_once && !__warned)) {	\
+		__warned = 1;				\
+		__WARN();				\
+	}						\
+	unlikely(__ret_warn_once);			\
+})
+
 #endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

