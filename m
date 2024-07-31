Delivery-date: Wed, 31 Jul 2024 09:14:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3Xb-004izu-2S
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 09:14:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ3Xb-0006Qu-1S
	for lore@pengutronix.de; Wed, 31 Jul 2024 09:14:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C1YD1YdxEVe97XfOULn823CgWwszq+/bSRtkrIF0B5s=; b=smCMnWdkLmhljisEWcpVfwcfIS
	OF0RIdlEMEKWJ218Ioz5UMOnk9dt0ugaXrkR9NDraowwioBXdQkacFlKOV7RvMdvVw2kEBs6uvNS3
	/qs6h4mJpZRO3FDnaqW/RpPrHTFSSmc+sdzdHPmWjWO5K3X/DdCQwe8CfP1yWxvp1cH4G8ShumtZN
	rM2D4MBGEB0jwrl14cQ3wBHJej1+A/v8PA0sNXsRmWu4oMMYfrI7l8/DG3REwP+oNYBMk+gSf+FEN
	JIaaq0bZ7pynIkx4G269wl235azuY0AsBnhCpHlVtQFJ851+ZUT4le0ErZcASByos0xX1oP3xCmFr
	NyvS6s7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3XB-000000004rO-19g6;
	Wed, 31 Jul 2024 07:14:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ3X8-000000004qX-2fKR
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 07:14:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3X7-0006IM-GC
	for barebox@lists.infradead.org; Wed, 31 Jul 2024 09:14:01 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3X7-003T77-35
	for barebox@lists.infradead.org; Wed, 31 Jul 2024 09:14:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ3X6-00AjQG-3B
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 09:14:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 31 Jul 2024 09:13:38 +0200
Message-Id: <20240731071337.2557351-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_001402_871423_2AE0A9C1 
X-CRM114-Status: UNSURE (   8.26  )
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
Subject: [PATCH] debug_ll: implement putws_ll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use of low-level debugging of EFI-related functionality, let's
add a wchar_t version of puts_ll.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/debug_ll.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/debug_ll.h b/include/debug_ll.h
index 0128ab524a76..5ac8ae12ceb8 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -64,12 +64,27 @@ static inline void puts_ll(const char * str)
 	}
 }
 
+static inline void putws_ll(const wchar_t * wstr)
+{
+	while (*wstr) {
+		if (*wstr == L'\n')
+			putc_ll('\r');
+
+		putc_ll(*wstr);
+		wstr++;
+	}
+}
+
 #else
 
 static inline void putc_ll(char value)
 {
 }
 
+static inline void putws_ll(const wchar_t * wstr)
+{
+}
+
 static inline void puthexc_ll(unsigned char value)
 {
 }
-- 
2.39.2



