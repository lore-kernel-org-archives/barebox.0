Delivery-date: Fri, 28 Feb 2025 08:18:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnudr-007xp7-0B
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 08:18:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnudo-0004DX-KC
	for lore@pengutronix.de; Fri, 28 Feb 2025 08:18:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=epbI/l9TFqASAxthhPdWwKW2nqH3wKfp7qP2Z9hhjhE=; b=hbOPCLpnzOiecbethO6sF/FboT
	Otn+wIW4JuwCwfnpGzGHz4kQgWjXTEH5lkq897mjdxbXWlXCTcxXKmcZGYETtZ97wrPscYv54a0mB
	UjSYXJKPTVldOLfvso/9XxX/sbT0FHQ6rubDjBAqaiaqqY/ainVHtgci3jgfby6C7c9270e6Oaiwb
	4ExT2UtwvO2x/+nNKWQYcKYIQF96YcpJvz9dg3j7aScnhX/FDkyemSmIWEHD1x3FvX8Qa9tprlB7k
	+Che15P9SApg93rs1rSoeiZ9pz1InWCWSODd1+urRcO7iJM82AnPz2Id8CFf6B9eRMsPAvCSnYmSu
	QyO8J2jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnudH-00000009xka-1Edp;
	Fri, 28 Feb 2025 07:18:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnucF-00000009xcW-2yeb
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 07:17:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-0003kD-FP; Fri, 28 Feb 2025 08:16:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-003FtO-0d;
	Fri, 28 Feb 2025 08:16:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-005CL4-0M;
	Fri, 28 Feb 2025 08:16:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2025 08:16:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250228-am625-secure-v1-6-4002488ff5ed@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
In-Reply-To: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740727010; l=802;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=TqvGU2NPyZX/DRABNFvoqHTIXkPUSnNZahSu2FlHuuA=;
 b=dY1QNaPDt1tcwG2vOXM6ZLbogkaILALa7Nzyqx4kqpA2SmVekIdPq0f7ubICqqNiQqKL/uO7X
 O3Yy3oV7J/2BgdtQnuoYeM1WaELUzbvCwveve/TWu10PxqFoR7uqK9Y
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_231659_758113_82DED202 
X-CRM114-Status: GOOD (  10.44  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/13] fip: fix wrong function call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fip_parse_buf() is to be called when a buffer shall be parsed that is
allocated externally and thus shall not be freed in fip_free(). This
is not what we want in fip_parse(), we want exactly the buffer to be
freed, so call fip_do_parse_buf() instead.

Fixes: 748ba06276 ("fip: add function to parse FIP from a buffer")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/fip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/fip.c b/lib/fip.c
index aab2795476..8086b43412 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -274,7 +274,7 @@ int fip_parse(struct fip_state *fip,
 		return ret;
 	}
 
-	ret = fip_parse_buf(fip, buf, size, toc_header_out);
+	ret = fip_do_parse_buf(fip, buf, size, toc_header_out);
 
 	if (ret)
 		free(buf);

-- 
2.39.5



