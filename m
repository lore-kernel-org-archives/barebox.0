Delivery-date: Wed, 11 Sep 2024 13:16:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soLLF-003Sgu-35
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 13:16:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soLLE-0007Cn-Sr
	for lore@pengutronix.de; Wed, 11 Sep 2024 13:16:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n+bzGLaUcMJmwrvf/QJwQ5pkHP4ig2RX0XgixCWjVTM=; b=rZHymCD3t3+EBQ1Z7nkPIWOfNM
	9lyYEuCQNk/BxWahde5m9yb2Mdmw8To7UN+LUk5YkFPQTuFsRDR855nNPFSkvM7VTZ8s37/KjLQjI
	BnALAUd8f9DzMz08yK7VEm48//xZssNkpgxg9MnyYKKaw0ridY0koblsw9poJBPaZYnfYsX2hBYaB
	FaAz00BgI19zi3hkoNN6Di9jL1RVdVorwIqYMnbp7x3JoXgtJO+dUHg7eFV8rFUk3fl48UHt+MSgC
	PGjQU9O458cBpP+p+3sw3i7DfhJPL2LSKFjdvuwmOwzpxY7Q4CvjEFxEhXFtPaaldaUktZyxDn2er
	XvyKmKHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLKg-00000009G4z-3cIY;
	Wed, 11 Sep 2024 11:16:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLHm-00000009FVn-2hqX
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 11:13:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soLHl-0005HR-39; Wed, 11 Sep 2024 13:13:21 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soLHk-0077eI-Mh; Wed, 11 Sep 2024 13:13:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soLHk-00CR22-0T;
	Wed, 11 Sep 2024 13:13:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Sep 2024 13:13:17 +0200
Message-Id: <20240911111318.2963525-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_041322_704186_76768E12 
X-CRM114-Status: GOOD (  10.46  )
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
Subject: [PATCH master 1/2] lib: jsmn: fix compilation error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With recent restructuring of the headers, kmalloc_array was no longer
indirectly included, which broke the build.

Add the missing headers and while at it switch over to normal malloc,
because kmalloc_array() uses a bigger alignment than necessary.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/jsmn.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/lib/jsmn.c b/lib/jsmn.c
index 10a77886a8bd..10ef349fa122 100644
--- a/lib/jsmn.c
+++ b/lib/jsmn.c
@@ -7,6 +7,8 @@
 #include <string.h>
 #include <stdio.h>
 #include <jsmn.h>
+#include <linux/overflow.h>
+#include <malloc.h>
 
 /**
  * Allocates a fresh unused token from the token pool.
@@ -391,7 +393,7 @@ JSMN_API jsmntok_t *jsmn_parse_alloc(const char *js, const size_t len,
 
 	token_count = ret;
 
-	tokens = kmalloc_array(token_count, sizeof(jsmntok_t), GFP_KERNEL);
+	tokens = malloc(size_mul(token_count, sizeof(jsmntok_t)));
 	if (!tokens)
 		return NULL;
 
-- 
2.39.2



