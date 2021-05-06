Delivery-date: Thu, 06 May 2021 11:31:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLZ-0001XS-3T
	for lore@lore.pengutronix.de; Thu, 06 May 2021 11:31:05 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLX-0000Cu-6L
	for lore@pengutronix.de; Thu, 06 May 2021 11:31:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cf+Gr0+1JeytfaFWxsE6/0jaJnJyXpD1sgahAtXqL4w=; b=Da1kC9+nF4FvSy0hDpgeiGjIQ
	w1vm0VpgNfqzzS41HfH7h3Jh4XekhiP/f8T5zTjtEtIheceoNwFWRqQ+HMdCAkYZmzTs0fsddusbx
	Q4pkDYLhrJ9ijevlbQcKvxY7uYTLGh6XvxWcDuDlpyOcxhRGXPkS8XgJCIFC6nb7e/qiPV2A9PuQ4
	U9dEZdJSh4e0MhV+sQZ4sDP4LKEcjOLXIZNxwp4VAwfhAvSYavHOe3YIKSh4au8gKXf0k8Ex0+4f8
	amD180jSrh0Ajn7r1aRe6GMZde9RV7bEdBsmpCJ55HhMBmP5DAk26SEkvTHPB1eI/rTDx04LY+AJ8
	w6y0nkSIA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaKP-003o2j-Gv; Thu, 06 May 2021 09:29:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJi-003npb-E3
 for barebox@desiato.infradead.org; Thu, 06 May 2021 09:29:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=iWzaVfFxaPwrY97oR//CEGLK94FI4l0FtdU7MzqcqOo=; b=b2Uw38NFwp01z2zB190+5SAiHg
 gskhuMmn6xdkvtz/HzRrxap/bP8iILl/u4Y2dcPC3u4hud5FV6G6f367NksnEJUf/m8vuU4tOg11q
 O+tHCy4PXwuNT8rITX6Xr04J7aT8C1/MTmCnsjUCaQeZeUfXMvWq1wEFFdZUFNDoj8K4cosOLIcoO
 zaLjZ6RxVOlvH1tiXOEiHxs1ydQJ8mTpOy2cUzRnBgh89mRtrmXfPlmTevkbkeR2ieMi6wPi9okW3
 ERHRepMN4Lks8YgMWdbxAmu57njaZfpAWe5+VuR9BcXTNI0Q8kRJvtePjnD8GnYZYCddPjQ1HFkXr
 d2IQx3SA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJe-005uFc-Ll
 for barebox@lists.infradead.org; Thu, 06 May 2021 09:29:08 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJb-0007pC-F7; Thu, 06 May 2021 11:29:03 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0001lU-FK; Thu, 06 May 2021 11:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 May 2021 11:28:52 +0200
Message-Id: <20210506092901.25461-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506092901.25461-1-s.hauer@pengutronix.de>
References: <20210506092901.25461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022906_731858_7FCEF3D1 
X-CRM114-Status: GOOD (  12.12  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/17] initcall: add of_populate_initcall
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

