Delivery-date: Thu, 07 Sep 2023 17:22:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeGq2-007DyN-7b
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 17:22:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeGq0-0000t3-5y
	for lore@pengutronix.de; Thu, 07 Sep 2023 17:22:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8N6AzSBNwAbKCI6gBDNtPS17xVxZHWlSTugbXPS92ak=; b=xzGgKRsCWcTRvLzb6uZCVz+m0K
	pKGC1CRYVMk/w2W1oLtY/4gB92SVWk0VPE98d0qdy5U/lbQKn8xvOU9F/OtWlGM2zCFirZBFv+54Z
	dyRvxrL/9RJEhE9QAWowADz/IxKqVIwKoD+ZsUyqWo8zklTtLazbuV9ep26MfVnNgRbqZOy+MDV2y
	l6BOFMiQvN6OsfLe+nA9m6eRuxv9jZy+PWePewRGjwP1G1P8uJVztZEB7FGvUOBlsJPlddUaGZoa7
	UG96KGdQdXufkMzVrSHpOi+sDXQlm+CJnubU87VQ7mgxrwjgaqxI5L4ph/y+mnIuItEXFSrVsIMLd
	jDaPJJ+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeGok-00CGIE-1n;
	Thu, 07 Sep 2023 15:21:14 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeGoh-00CGFQ-06
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 15:21:12 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2CE3DC000A;
	Thu,  7 Sep 2023 15:21:09 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  7 Sep 2023 17:20:46 +0200
Message-ID: <20230907152047.102747-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230907152047.102747-1-jmaselbas@zdiv.net>
References: <20230907152047.102747-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_082111_207668_5BC27C4B 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] scripts: Select XZ --arm64 BCJ filter for 64-bit arm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This change will select the arm64 BCJ filter for aarch64 instead of
the arm filter which was always selected for arm based architectures.

The selected filter is also tested, by looking if it is present in
the long help message of xz, this is because the arm64 BCJ filter is
a recent addition to xz.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2: no changes
---
 scripts/xz_wrap.sh | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/xz_wrap.sh b/scripts/xz_wrap.sh
index 7a2d372f48..5b5f3adcff 100755
--- a/scripts/xz_wrap.sh
+++ b/scripts/xz_wrap.sh
@@ -16,8 +16,11 @@ case $SRCARCH in
 	x86)            BCJ=--x86 ;;
 	powerpc)        BCJ=--powerpc ;;
 	ia64)           BCJ=--ia64; LZMA2OPTS=pb=4 ;;
-	arm)            BCJ=--arm ;;
+	arm)            BCJ=--arm$S64 ;;
 	sparc)          BCJ=--sparc ;;
 esac
 
+# clear BCJ filter if unsupported
+xz -H | grep -q -- $BCJ || BCJ=
+
 exec xz --check=crc32 $BCJ --lzma2=$LZMA2OPTS,dict=32MiB
-- 
2.42.0



