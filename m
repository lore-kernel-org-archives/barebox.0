Delivery-date: Tue, 01 Apr 2025 13:08:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZUI-006xzx-1s
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:08:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZUI-0004Q5-1y
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:08:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uxi/VXuY1cpMXU7WTuWf2PdXQS+PT2oGr28z6BDh+EQ=; b=O6sg4E4L49LWaS28jStTVwdmAR
	i94Rq+Rv3qm8vEWgdjIQ5IK1GwIcN4asZx29pA7A2UFmTIAW9YgtVoZwAWtngVPwVmY6H50RsoTGv
	RwcbyP3TEPOemhOIgtLwzNOiNaMlg6FVngiuB4dx9DzqRDObvSiDeonlcvuDS1Cok4oycCQgNu8n+
	JZTMRJ1mf/Eb6y+4l0Cv0X/55X9ELImZswV+LKYopdt6kFkbc11LEreR5tEhq6eHduhSBBUWihICh
	C3FoKdv81Lbu/Ksp5WzL589br80lUVlhgh+QuSa4ZZrJvUm6ZfB8Tg0vAsSwc1rYaU3NqimO8gN/f
	pMVywG+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZTs-00000002juH-2kz0;
	Tue, 01 Apr 2025 11:08:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQ9-00000002ig1-3pLT
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 11:04:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZQ8-0002Wn-Ju; Tue, 01 Apr 2025 13:04:40 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZQ8-002kdB-1L;
	Tue, 01 Apr 2025 13:04:40 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-2i;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:48:05 +0200
Message-Id: <20250401104806.3959859-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_040442_119009_DBBDEAD7 
X-CRM114-Status: UNSURE (   8.10  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/16] kconfig: implement IF_ENABLED helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For situations where ternary operations are not allowed like
compile-time string concatenation, introduce a helper that checks if the
first argument is enabled and expands to the rest of the arguments only
if it is.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/kconfig.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/kconfig.h b/include/linux/kconfig.h
index 4e9c77b964a7..971f4260725c 100644
--- a/include/linux/kconfig.h
+++ b/include/linux/kconfig.h
@@ -33,6 +33,12 @@
  */
 #define IS_ENABLED(option) __or(IS_BUILTIN(option), IS_MODULE(option))
 
+#define IF_ENABLED__0(args...)
+#define IF_ENABLED__1(args...)		args
+#define IF_ENABLED__(optval, args...)	IF_ENABLED__##optval(args)
+#define IF_ENABLED_(optval, args...)	IF_ENABLED__(optval, args)
+#define IF_ENABLED(option, args...)	IF_ENABLED_(IS_ENABLED(option), args)
+
 #ifdef __PBL__
 #define IN_PBL		1
 #define IN_PROPER	0
-- 
2.39.5



