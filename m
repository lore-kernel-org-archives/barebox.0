Delivery-date: Mon, 14 Oct 2024 15:30:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9D-004H2F-1p
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:30:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9C-0003DW-CQ
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:30:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6F7WAJ5vAisM0TFJARQHB0KxBt0uRTzyVfKfXrTN3Ng=; b=qmLyfcYhUgebEWa/S3dqTFhYDc
	G83LQgStDs4H35YQQk00Ufnn86tI3tk5YJhANRYItvPP4jOLL107/FSG422K/2Ufewf3mgJVx7iqm
	CwCj1/K/CMcDF0zKkgOEwfMO7f6if9/OnQ/lsSBqXHF2SKKI0+oTreAkKkM0BRVYa/fkT28zcSc3x
	aZRm1CVO8ZbQIOKG7Rv2ck0yJuHrvxmyFFV4lFtT/BHqsNEv6nXa0tR9IMGqiJPg2AJn1/2uzLBmi
	HqqB8VEYx4ygU7U+LHtlaBcMLjeOGWDqxtHH6eSeCKhoKKC3sEL59Qirrl2F7WOqNZcoCNNM8vI9U
	Qp9VF/kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L8f-00000005HXr-3hNA;
	Mon, 14 Oct 2024 13:29:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb5-00000004zKs-24eR
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:50:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6F7WAJ5vAisM0TFJARQHB0KxBt0uRTzyVfKfXrTN3Ng=; b=fNqGRVtELOwzMKfce9W/hdzDuk
	WCm6M1d1siiLwPrXfZ4HhN3d5xMYLK0XUtdEPvsHkvvgcEmfZEEyIubHNgqMYuo8sFejL5L4YfM6K
	Ve5foyl1SHwZMvkQHtp5UIEjyEPfpyczbrbYwLY7+TT0dDKgFr2We0XBkh7dULYlGJfZN9yjyVhYd
	gkEFqCllfxcv/GWGyA/OFeFw82Us3lgrKcieMhlvrpLLTGNnPXZNH89idb5xuCO/COGEycpxWmzQP
	Ro9vA/3nEXuMNx0orCMsLrLnwmu56uMoQj038uaGLOnVsRtedjYwESBcXlKk7eLUyYhOV+lBkZNHh
	hcgJAxGA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb1-00000006Kl7-0eDM
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:50:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-0001CH-Mg; Mon, 14 Oct 2024 13:50:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-001mUe-9R; Mon, 14 Oct 2024 13:50:42 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-00BvdQ-0f;
	Mon, 14 Oct 2024 13:50:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:50:34 +0200
Message-Id: <20241014115040.2843121-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125043_499078_7648779F 
X-CRM114-Status: GOOD (  10.27  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/12] include: common.h: move out memory option parsing prototypes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All code using these memory parsing functions already includes getopt.h,
which is the primary file for option parsing.

Therefore, let's move these two functions there as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/common.h | 5 -----
 include/getopt.h | 8 ++++++++
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/include/common.h b/include/common.h
index 9a0b4768b015..12961abbf2f5 100644
--- a/include/common.h
+++ b/include/common.h
@@ -31,11 +31,6 @@ void reginfo(void);
 /* common/memsize.c */
 long	get_ram_size  (volatile long *, long);
 
-int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
-		char **sourcefile, char **destfile, int *swab);
-int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
-			 int *destfd, loff_t *count,
-			 int rwsize, int destmode);
 #define RW_BUF_SIZE	(unsigned)4096
 
 #endif	/* __COMMON_H_ */
diff --git a/include/getopt.h b/include/getopt.h
index d4c01e793ad6..aa3b8d8ec6f9 100644
--- a/include/getopt.h
+++ b/include/getopt.h
@@ -8,6 +8,8 @@
 #ifndef __GETOPT_H
 #define __GETOPT_H
 
+#include <linux/types.h>
+
 extern int opterr;
 extern int optind;
 extern int optopt;
@@ -44,4 +46,10 @@ struct getopt_context {
 void getopt_context_store(struct getopt_context *ctx);
 void getopt_context_restore(struct getopt_context *ctx);
 
+int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
+		char **sourcefile, char **destfile, int *swab);
+int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
+			 int *destfd, loff_t *count,
+			 int rwsize, int destmode);
+
 #endif /* __GETOPT_H */
-- 
2.39.5



