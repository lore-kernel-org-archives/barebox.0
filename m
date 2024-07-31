Delivery-date: Wed, 31 Jul 2024 09:14:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3Xv-004j0q-2g
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 09:14:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3Xv-0006eS-2v
	for lore@pengutronix.de; Wed, 31 Jul 2024 09:14:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C0kRFEYBSUzRmXk+DAX8weNRkcxd2fCP6i3oxuJTRGY=; b=aIgWn6F+9BFD9SGN/xdQO4L6yQ
	naW2XFB3c3GuD5ruNm2s0rN2WU6h8OIrqWkRZ0ioR3mPSsU2yPXmrqlo1nS9P+ygzW2bBxHxXip8U
	Mx/gNcSjY4PB93T3CgPxoJefthnS4s/uYJJJPXqD4X53AWF16fNGrxeqQIMENvPWsRr+IPZU7bTfs
	na39ACkNio/q8PISKgHPLer8IxuL/1xA7lOCUgCaa4W1yD3SLuVpmT9BSLM+ZP+h3Uy/XLRF+jwli
	qFbo+Ebqnz1HT1x6nQbi4soNR1z+hicKdwrq0pXZj4Hybv/sWrR3sz8L0eXqYXaFRQahSGixMESiv
	HIdbdaMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3XV-000000004xq-3FdS;
	Wed, 31 Jul 2024 07:14:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3XP-000000004uU-2rWz
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 07:14:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XO-0006Ll-8h; Wed, 31 Jul 2024 09:14:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XN-003T7I-Ql; Wed, 31 Jul 2024 09:14:17 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3XN-00AjVP-2M;
	Wed, 31 Jul 2024 09:14:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2024 09:14:15 +0200
Message-Id: <20240731071416.2558182-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731071416.2558182-1-a.fatoum@pengutronix.de>
References: <20240731071416.2558182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_001419_900288_04C9B6CE 
X-CRM114-Status: UNSURE (   9.61  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] common: print panic to stderr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Stack trace is already printed to stderr, so have the panic string end
up there too.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/misc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index 7bc92c0f9518..cf92d7a48b38 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -285,8 +285,8 @@ BAREBOX_MAGICVAR(global.of.kernel.add_machine_compatible, "Additional machine/bo
 
 static void __noreturn do_panic(bool stacktrace, const char *fmt, va_list ap)
 {
-	vprintf(fmt, ap);
-	putchar('\n');
+	veprintf(fmt, ap);
+	eputchar('\n');
 
 	if (stacktrace)
 		dump_stack();
-- 
2.39.2



