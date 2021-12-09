Delivery-date: Thu, 09 Dec 2021 11:58:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvH8c-0010hb-Qr
	for lore@lore.pengutronix.de; Thu, 09 Dec 2021 11:58:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mvH8a-0000sO-NB
	for lore@pengutronix.de; Thu, 09 Dec 2021 11:58:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DnhvATfN1OteAkTY1hy/8awpELyf5b6BJvVeAiwRBak=; b=tX4QX0ZzxiVEqP
	KDoSVYrI6F0cSzc0thAL74LZ1hOz9Ke/iXouaQ/QIx75n3EJzDDfGYLLsTN2UUJUCk3aXC36TAaNl
	+R15vIaXK2l0fwVAXqFZMOSYstA7secusYN4TjAG6jClsoSxOA4ph2H+u5884VYMQCo1ItBeIzkX4
	nb9a2PtuE7kB1fbGlhLli5GNmIZiqB0W/STD3RNmRbxykDCT9yQPaLCSRbTps22vnr0DJWk2s3001
	QTDDpOIftLgSNuTOQhNOqK6cqiYWwdltpml6k8V5EXtjMrTWFT/jiYqtdFyJCiRzeERoCou+gaDPK
	ot3rWseNPbYgCMDPXU/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvH74-00Fgtn-QU; Thu, 09 Dec 2021 10:57:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvH70-00FgtA-G8
 for barebox@lists.infradead.org; Thu, 09 Dec 2021 10:57:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mvH6r-0000Xb-Aa; Thu, 09 Dec 2021 11:57:09 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mvH6q-00El7i-RD; Thu, 09 Dec 2021 11:57:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Dec 2021 11:57:07 +0100
Message-Id: <20211209105708.3517684-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211209105708.3517684-1-a.fatoum@pengutronix.de>
References: <20211209105708.3517684-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211209_025718_559167_184C4005 
X-CRM114-Status: UNSURE (   9.68  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] common: add new PRINTF_FULL option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We now got three compile-time selectable printf format specifiers. For
debugging, it can be useful to enable all of them, thus add a new
PRINTF_FULL option.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 7 +++++++
 lib/Kconfig    | 3 +++
 2 files changed, 10 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index e540cba7ebaa..814b820e2a54 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1512,6 +1512,13 @@ config PBL_BREAK
 	  If enabled, barebox will be compiled with BKPT instruction
 	  on early pbl init. This option should be used only with JTAG debugger!
 
+config PRINTF_FULL
+	bool "Support all extended printf format specifiers"
+	help
+	  Adds support for lesser used format specifiers like UUIDs and
+	  hex strings. Code requiring them should select it directly,
+	  so this is mainly for debugging. If unsure, say no.
+
 source "lib/Kconfig.ubsan"
 source "lib/kasan/Kconfig"
 
diff --git a/lib/Kconfig b/lib/Kconfig
index 27e7bea6852f..915ae7a28755 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -162,12 +162,15 @@ config PROGRESS_NOTIFIER
 
 config PRINTF_UUID
 	bool
+	default y if PRINTF_FULL
 
 config PRINTF_WCHAR
 	bool
+	default y if PRINTF_FULL
 
 config PRINTF_HEXSTR
 	bool
+	default y if PRINTF_FULL
 
 config GENERIC_LIB_ASHLDI3
 	bool
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

