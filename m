Delivery-date: Fri, 25 Jun 2021 09:51:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgck-00082T-5u
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:51:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgce-00072u-JP
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:51:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cf+Gr0+1JeytfaFWxsE6/0jaJnJyXpD1sgahAtXqL4w=; b=Rg2auzafKxLWu1
	VyFwzXBhAV3vWl8CHOr9q3cErZqDLXAx/Vbh6RLJecUG58HzM4Subi5IEr5jsZx0dA6Cpib7S5h/x
	w3nVRhhQreTluIWRMNmj+A+LPds9Rf2piUbqAZX5DkC2TQJ1kSipSPSAINPfeihZTMe3o1HbdrT0G
	EwY5RQxzE6r18rPcNyUXJkfYajLFg7bG5QI4CXKtgiKom3rpbNvyiMeitWKkFVdTT/hLAGnXdrk/V
	w1eky+srtxTT/WsJSOfE2nA9xLMw1Ei5hGMmEV9XlGeO/QEaQUIDtoSACmClOvHT6gaeDs4t9sAsx
	CfF4QN/TdQ0cgoz4uyGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgay-0007xP-Eo; Fri, 25 Jun 2021 07:49:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgDw-00HZAb-35
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:26:01 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDe-0002Qd-Fh; Fri, 25 Jun 2021 09:25:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0000dH-Ct; Fri, 25 Jun 2021 09:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 09:25:29 +0200
Message-Id: <20210625072540.32717-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625072540.32717-1-s.hauer@pengutronix.de>
References: <20210625072540.32717-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_002600_289306_2FE1FC9B 
X-CRM114-Status: GOOD (  12.15  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/19] initcall: add of_populate_initcall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Add dedicated initcall for of_probe() which is required for the following
device-on-demand/deep-probe mechanism.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.pengutronix.de/20201021115813.31645-7-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/asm-generic/barebox.lds.h |  1 +
 include/init.h                    | 10 +++++++---
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 6971e2c1d2..a7d32160d1 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -33,6 +33,7 @@
 	KEEP(*(.initcall.12))			\
 	KEEP(*(.initcall.13))			\
 	KEEP(*(.initcall.14))			\
+	KEEP(*(.initcall.15))			\
 	__barebox_initcalls_end = .;
 
 #define BAREBOX_EXITCALLS			\
diff --git a/include/init.h b/include/init.h
index 2d61bc8963..c695f99867 100644
--- a/include/init.h
+++ b/include/init.h
@@ -47,6 +47,9 @@ typedef void (*exitcall_t)(void);
  * initializes variables that couldn't be statically initialized.
  *
  * This only exists for built-in code, not for modules.
+ *
+ * The only purpose for "of_populate" is to call of_probe() other functions are
+ * not allowed.
  */
 #define pure_initcall(fn)		__define_initcall("0",fn,0)
 
@@ -61,9 +64,10 @@ typedef void (*exitcall_t)(void);
 #define fs_initcall(fn)			__define_initcall("9",fn,9)
 #define device_initcall(fn)		__define_initcall("10",fn,10)
 #define crypto_initcall(fn)		__define_initcall("11",fn,11)
-#define late_initcall(fn)		__define_initcall("12",fn,12)
-#define environment_initcall(fn)	__define_initcall("13",fn,13)
-#define postenvironment_initcall(fn)	__define_initcall("14",fn,14)
+#define of_populate_initcall(fn)	__define_initcall("12",fn,12)
+#define late_initcall(fn)		__define_initcall("13",fn,13)
+#define environment_initcall(fn)	__define_initcall("14",fn,14)
+#define postenvironment_initcall(fn)	__define_initcall("15",fn,15)
 
 #define early_exitcall(fn)		__define_exitcall("0",fn,0)
 #define predevshutdown_exitcall(fn)	__define_exitcall("1",fn,1)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

