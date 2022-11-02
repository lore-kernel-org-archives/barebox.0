Delivery-date: Wed, 02 Nov 2022 13:50:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqDCl-00CMuI-5q
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 13:50:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqDCk-0007uK-5u
	for lore@pengutronix.de; Wed, 02 Nov 2022 13:50:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OtNuj9ljLlmFcasYxR4i6drnIzxAy9dm90K2iLsXQ88=; b=0CX77pgItP08EA2k+ajlWktFgK
	FaMJ39elo2QdA+7Lcly4NSvXnueCQPG/8ii9TOFcBkM0/OQ+YOOlW512NpM48zII9eiO5Q/ptWxta
	4oDNdPRn4Km5Q7SUUe3TzwUUCkyHECxOXC9xo9RHMv6ekok2PsInFyQmfUs0+d0HUgVdOodgKWOnN
	ddVUGPd3OkjeGnEePD08m7AjJA7bMXZh5vh3Bj/7IJS3i5J+HOsvRuMgnu97QSHsI+NZ0lqRdIdWl
	vQ4+mdhn6GOVnwFeTkYeNBXLLRxxcdblyoTyMpbL79VHTyDNiLKEPGi3/i17yM50MPVhGJYgCKe5K
	NnR2sfvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqDB1-00B4M5-AL; Wed, 02 Nov 2022 12:49:03 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqDAv-00B4Gy-Jm
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 12:48:59 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 6D57820010;
	Wed,  2 Nov 2022 12:48:47 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>,
	Christian Melki <christian.melki@t2data.com>
Date: Wed,  2 Nov 2022 13:48:42 +0100
Message-Id: <20221102124842.2520783-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_054857_811999_BD21C488 
X-CRM114-Status: UNSURE (   7.50  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Kbuild: link barebox with -z noexecstack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't care for permission of ELF segments, but GNU ld (BFD)
does and now with binutils 2.39+, it reports:

  ld: warning: defaultenv/defaultenv-2-menu.bbenv.o: missing
  .note.GNU-stack section implies executable stack

  ld: NOTE: This behaviour is deprecated and will be removed in a future
  version of the linker

Instead of touching all assembly objects and scripts creating them to
add the section, just set -z noexecstack at link-time. This is already
the LLVM linker (lld) default.

Reported-by: Christian Melki <christian.melki@t2data.com>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 26a0999a2e20..e57b8a4a1364 100644
--- a/Makefile
+++ b/Makefile
@@ -450,7 +450,7 @@ KBUILD_CFLAGS_KERNEL :=
 KBUILD_AFLAGS_MODULE := -DMODULE
 KBUILD_CFLAGS_MODULE := -DMODULE
 
-LDFLAGS_barebox	:= -Map barebox.map
+LDFLAGS_barebox	:= -Map barebox.map -z noexecstack
 
 # Avoid 'Not enough room for program headers' error on binutils 2.28 onwards.
 LDFLAGS_barebox += $(call ld-option, --no-dynamic-linker)
-- 
2.37.2



