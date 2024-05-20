Delivery-date: Mon, 20 May 2024 12:24:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s90Ba-00ALvv-2w
	for lore@lore.pengutronix.de;
	Mon, 20 May 2024 12:24:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s90Ba-0000YD-Cd
	for lore@pengutronix.de; Mon, 20 May 2024 12:24:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J4i8BbWKQALwDL+n1sAANH05Y7+oaB4MkFtv+Cx3EJA=; b=gJ8v/3ZdNVr83lEIyThiuDLkv3
	6o3P850an85oEJv5dMk2v6dA2rf6ZrOsn43A63rvNzJbINMIdGfNt51fYhjSapg28hnI4ns5YbSWJ
	SBDq3HQvfWPeStzdGNj2l5UMZnxj+ZGtASYVgK7ykKDkQbrhG3ESTI9Y9FZtTwpOY/FeDj+OXxLma
	k5IM7whBwBJhPCT40W61+K3U3NvPBNzYQbUoR3mApGoI7ZYnrETAeRRbMXQPPf0hfKXW0jrL56DlT
	CDjDQaYoh7hJ8Sk55XdMukGr6bYptZVZK06azbJwRkBCuczAWX6coxQTx8t6lL1doTolJmHN4A2kU
	sXzHd48A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s90Aw-0000000E7wG-0aOa;
	Mon, 20 May 2024 10:23:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s90As-0000000E7ui-3dD1
	for barebox@lists.infradead.org;
	Mon, 20 May 2024 10:23:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s90Al-0000NL-Ju; Mon, 20 May 2024 12:23:15 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s90Al-002F7W-7N; Mon, 20 May 2024 12:23:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s90Al-0040K9-0R;
	Mon, 20 May 2024 12:23:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 20 May 2024 12:23:14 +0200
Message-Id: <20240520102314.954544-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517132656.3151273-5-a.fatoum@pengutronix.de>
References: <20240517132656.3151273-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_032323_000422_79FF1028 
X-CRM114-Status: UNSURE (   9.60  )
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
Subject: [PATCH] fixup! MIPS: make use of merged defconfigs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix a typo in the target name.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index be360c48a359..67d355e0ad81 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -3,7 +3,7 @@
 KBUILD_DEFCONFIG := qemu-malta_defconfig
 
 generated_configs += $(patsubst %, qemu-malta%_defconfig, el 64 64el)
-qemu-maltael_defconfigs:
+qemu-maltael_defconfig:
 	$(call merge_into_defconfig,qemu-malta_defconfig,le)
 qemu-malta64_defconfig:
 	$(call merge_into_defconfig,qemu-malta_defconfig,mips64)
-- 
2.39.2



