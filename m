Delivery-date: Fri, 28 Mar 2025 09:36:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty5Cj-005DXN-2U
	for lore@lore.pengutronix.de;
	Fri, 28 Mar 2025 09:36:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty5Cj-0000ka-1N
	for lore@pengutronix.de; Fri, 28 Mar 2025 09:36:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=en9kwMv3iAWjcGZWORDeKaAFilJIPOIb2nEkdBgGE7Y=; b=tmraCdEFqs4vLiSakXZSlvBbqa
	Xxl5RysNjITXRv8zXZQXJ4P9X/9QHQ6mgRH3M14UZdhYX5RYv5QLRaKsLIBeDQ5yYr9Et3k6yR8D0
	u+o2Sf1NcpQjj43BqTttpnXdYwACfiG+Ak0+4dfH3xQOvw/PQWxoFETisXdA6Ll5d2+qKrhN6dR7t
	JLG/VEy1IzHj512C3pry3DjBMjwXTE38DL5EWaS+euD2NK6KJqpo+BfxBWB1XymxNCFxAERlYAEx6
	9h1cuUbwxxI+kijY4+COgconEtw32XZ97h/Ki0GOP7dCzbIPV+OGO7sAmieAbzxjO1HPOT28Zln5V
	krl2NUcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5CD-0000000CwAK-3GZ0;
	Fri, 28 Mar 2025 08:36:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5Bv-0000000Cw7p-3Fvj
	for barebox@lists.infradead.org;
	Fri, 28 Mar 2025 08:35:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5Bu-0000SK-JF; Fri, 28 Mar 2025 09:35:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5Bu-0024MU-1H;
	Fri, 28 Mar 2025 09:35:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ty5Bu-0029u6-0z;
	Fri, 28 Mar 2025 09:35:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Mar 2025 09:35:49 +0100
Message-Id: <20250328083549.514506-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250328083549.514506-1-a.fatoum@pengutronix.de>
References: <20250328083549.514506-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_013551_819317_C3C60970 
X-CRM114-Status: GOOD (  10.63  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] kbuild: compile *.mod.c files with -fshort-wchar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We use wchar_t in USB and EFI code, both of which expect 2-byte wide
strings. Thus, like Linux, we set -fshort-wchar in KBUILD_CFLAGS.

This flag is not passed through to the build of *.mod.c files that are
generated in a module build, leading to a linker warning.

Add it to fix this.

Cc: David Dgien <dgienda125@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 5c9fce83123c..4ee9780abeac 100644
--- a/Makefile
+++ b/Makefile
@@ -459,7 +459,7 @@ XZ		= xz
 CHECKFLAGS     := -D__linux__ -Dlinux -D__STDC__ -Dunix -D__unix__ -Wbitwise $(CF)
 CFLAGS_KERNEL	=
 AFLAGS_KERNEL	=
-CFLAGS_MODULE	=
+CFLAGS_MODULE	= -fshort-wchar
 AFLAGS_MODULE	=
 
 LDFLAGS_MODULE  = -T common/module.lds
-- 
2.39.5



