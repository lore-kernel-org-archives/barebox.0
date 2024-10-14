Delivery-date: Mon, 14 Oct 2024 15:30:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9D-004H2G-1z
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:30:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9B-0003Cv-Pr
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:30:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1MjlVtD8ktKaFO5bf3mwbEtAwIlKxkiAJSu/Ovsh8pI=; b=3BYY7p7TfmJaIMMQUTnO8o8kXo
	sgDRDOe+RX3wbqne/5qiMq4/gaMM7/jmvYrI1H5TISEyXX05IhhpV524NzMjT4ngwZ7fKxuqN561G
	ge66CY3x5rQPUMaYeXgdaxgNRK5MiXFnzJ2d97Cm1/sHfmtgd0uEmIYRAiEkXsCCsRjn8dIpESdJ4
	/OmFIH9+wazyDPPfiGA9IO916TaAN5eswNj9N21FCrSZldOJSe4pD/wsUQyzX4Kcab2HjqFM/JpR2
	WOckjdhPuBDsMxZEwRuy9M74oDNwW5TC4QQW+obCZIJosog0eL3up7C/Jqk4Qg8BH0zpY9cX0P9bc
	yFa3ICBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L8d-00000005HWR-1TSN;
	Mon, 14 Oct 2024 13:29:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb5-00000004zKt-25lI
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:50:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1MjlVtD8ktKaFO5bf3mwbEtAwIlKxkiAJSu/Ovsh8pI=; b=O5Mh1R4Fkp+CNluf9vZwV2VQFl
	f31YPF3gAl/m0druC/ZJ30s2k8vLFb9jZHHIYWmj1/jXQ0TFs7wZvY3hs+zNbfremxYzNXzvvL6PP
	0ZM330dXKFqPGcXNsARxiaxlYvqlEXaOTDjIl9BhewKimlcCFOSA1XSgJcui+lBLaLeF5rFCujFN3
	fBktsLoyJseYuPuXjYji7Wt9FY8pCJ3Ter+1MwUgT6dFnBEaxHiXHoGHx6GgznqZAAcYHe47HScwB
	cB0BpeerfdyAddLS10ULmZzXH2MyW7w2uzI3vxtFOeC3lEKuNEFPkPcua8utfXNoli6uwoB4xQigE
	/oxyy6rg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb1-00000006Kl8-0eri
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:50:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-0001CO-Og; Mon, 14 Oct 2024 13:50:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-001mUh-B6; Mon, 14 Oct 2024 13:50:42 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-00BvdQ-0o;
	Mon, 14 Oct 2024 13:50:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:50:35 +0200
Message-Id: <20241014115040.2843121-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125043_586653_A4CD08F2 
X-CRM114-Status: UNSURE (   9.55  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/12] include: common.h: move out RW_BUF_SIZE definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/common.h | 2 --
 include/unistd.h | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/common.h b/include/common.h
index 12961abbf2f5..dd0d6548e5db 100644
--- a/include/common.h
+++ b/include/common.h
@@ -31,6 +31,4 @@ void reginfo(void);
 /* common/memsize.c */
 long	get_ram_size  (volatile long *, long);
 
-#define RW_BUF_SIZE	(unsigned)4096
-
 #endif	/* __COMMON_H_ */
diff --git a/include/unistd.h b/include/unistd.h
index b78acbfd737a..f3d2378687e4 100644
--- a/include/unistd.h
+++ b/include/unistd.h
@@ -5,6 +5,8 @@
 #include <linux/types.h>
 #include <fcntl.h>
 
+#define RW_BUF_SIZE	(unsigned)4096
+
 struct stat;
 
 int unlinkat(int dirfd, const char *pathname, int flags);
-- 
2.39.5



