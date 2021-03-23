Delivery-date: Tue, 23 Mar 2021 08:52:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lObq1-0004s8-Ls
	for lore@lore.pengutronix.de; Tue, 23 Mar 2021 08:52:29 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lObq0-00005z-S7
	for lore@pengutronix.de; Tue, 23 Mar 2021 08:52:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zHvWT4a/T8ahrJIdAGUOeZrQ9P3QOsIQtJZ/KrvOV0o=; b=Ed/7Vh+0QSH1OCmZFy9o0wYCT
	jIrfcKLev9+OcLZCtXURMXHvCg0af3dK69idAQdpMz7ZlFNNFR/3svn52iBu69578Um9BMgUREU7r
	5hvKM4ln1whPznLJ+6Hm9TfPcirhctQzOWJvPWDzC/cnj85gY4o9yBmsbJyPSKy4GciomJMR3QtLc
	W5mZYJ0ZTMf4QHmYsRxSgwCd/vtbbe4OQT5YSdP8inQ31TdgZ7yfpSy+06ko9a9Z2XT8DHwWL8LLU
	ZZJrqUyWJ9OnBsqMAJh0AJvPVQrYkkEi5n6rAj4D8AWh8NDer7xnOOny5dE7a7n4BQxx8hQhondro
	0ljot6csg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lObp0-00EDyV-F0; Tue, 23 Mar 2021 07:51:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lObod-00EDsz-P7
 for barebox@lists.infradead.org; Tue, 23 Mar 2021 07:51:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOboN-0008Fz-AY; Tue, 23 Mar 2021 08:50:47 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOboN-0007Ad-2i; Tue, 23 Mar 2021 08:50:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Mar 2021 08:50:35 +0100
Message-Id: <20210323075035.26816-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210323075035.26816-1-a.fatoum@pengutronix.de>
References: <20210323075035.26816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210323_075104_305736_4B1FC8B3 
X-CRM114-Status: GOOD (  10.39  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] doc: fix note about disassembling PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The described ``make`` incantations no longer work. Refer to the current
names of the files instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/pbl.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/pbl.rst b/Documentation/user/pbl.rst
index 6757768e4213..f9b2d2030559 100644
--- a/Documentation/user/pbl.rst
+++ b/Documentation/user/pbl.rst
@@ -26,6 +26,6 @@ This way source code can be shared between regular barebox and PBL. A special
 case is ``lwl-y += file.o`` which expands to ``obj-y`` when PBL is disabled
 and to ``pbl-y`` when PBL is enabled.
 
-**HINT:** for getting an overview over the binaries, disassemble barebox.bin
-(``make barebox.S``) with or without PBL support and also disassemble the
-PBL (``make arch/$ARCH/pbl/zbarebox.S``)
+**HINT:** for getting an overview over the binaries, disassemble
+``barebox.bin`` with or without PBL support and also disassemble the PBL
+(``./images/*.pblb``).
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

