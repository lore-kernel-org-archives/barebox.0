Delivery-date: Wed, 19 Jul 2023 20:13:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qMBgR-003NcS-D3
	for lore@lore.pengutronix.de; Wed, 19 Jul 2023 20:13:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qMBgP-0000Qj-3o
	for lore@pengutronix.de; Wed, 19 Jul 2023 20:13:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QL2lxoBky6d27nb131VyuZo5S+qdBzdfu3eDXNHfxAY=; b=uVIiVzdBNzO2sPgBanUwNptLVL
	RVO4JbZdTjVD8z9DgdIOlK9+4Li//raUMZgvv4q0cSm2OKk9zq27+xznPEefVutBskq/NLXBaovCi
	zh3sfH8nk5InyZ25jKzDokptoCt5mc4y7LyVfkfPli+VgJCoz1N/iprsaLMgh29CreDQQR8KyC3s4
	894dNaVaU+ota0p9bTUpkZGbR0z0b8Tw9dkFyqLO3NCsDDQmooJyLyf/q5AprI3bO4XRbXJ4PdhOU
	WHIdS4O6TSIuIVL9RgNPtOmEAWF0b8b2Dyj+WUb3SfTGVrW9BxsviQwjoL/bbOkZmOuwqE93VGRzj
	Z0VCGy9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMBeq-008T4J-1K;
	Wed, 19 Jul 2023 18:12:16 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMBel-008T1D-0g
	for barebox@lists.infradead.org;
	Wed, 19 Jul 2023 18:12:13 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 36JIBhE7420359
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Wed, 19 Jul 2023 20:11:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1689790303;
	bh=QL2lxoBky6d27nb131VyuZo5S+qdBzdfu3eDXNHfxAY=; l=1039;
	h=From:To:Cc:Subject:Date;
	b=1rOCqhfXSeu9tUmBTwTH+iVCNXHttVfjMnTPoaS4yf7DHPpHN6UCYeOBcOdAt+OER
	 H1FYFwV8hvFBr01hPzD+2uHhb++vzXL/Na7DaECGHxsCO5P467a94Ge2fTZPPvn0Lu
	 PJi9CkPtexfED/tol28nA1iKf9hRYIvhNX1gHuNvwtYJzobFPmwf/8cI6BkkYPYCmV
	 BKrrpeNNInkwdbweE5oq4Ofxggey+tPZKPiCh9qB3q+cGm7PM+bF3Z9YjHXQlmBuAu
	 F0jsFpMrs0dEJGA+yu+Y7MY0lYCNRmerbnLhg5RFIia9+MC9OprujMg412VXPP547e
	 4hCSFXaIt+VTA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTP id 36JIBbBB536811
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Wed, 19 Jul 2023 20:11:37 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ([192.168.12.72])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id AT38VPFSSR; Wed, 19 Jul 2023 20:11:36 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de ([192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 36JIBYDw422029
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Wed, 19 Jul 2023 20:11:36 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.96)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1qMBeA-001XaR-0T;
	Wed, 19 Jul 2023 20:11:34 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Wed, 19 Jul 2023 20:11:29 +0200
Message-ID: <20230719181129.367413-1-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-REDDOXX-Id: 64b82758301ed1a43108a5d1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_111212_005237_ED774CC9 
X-CRM114-Status: GOOD (  10.60  )
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
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fdt: copy terminating '\0' in lstrcpy()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

On large string tables (>64K), a

|		fdt->strings = realloc(fdt->strings, fdt->str_size * 2);

operation is executed.  This 'realloc()' does not zero the memory so
there is no guarantee that the strings will be terminated properly.

Modify 'lstrcpy()' so that it also copies the terminating '\0'.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 drivers/of/fdt.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 01d7dc37439f..9d72fafd3669 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -302,15 +302,15 @@ static int lstrcpy(char *dest, const char *src)
 	int len = 0;
 	int maxlen = 1023;
 
-	while (*src) {
-		*dest++ = *src++;
+	do {
+		*dest++ = *src;
 		len++;
 		if (!maxlen)
 			return -ENOSPC;
 		maxlen--;
-	}
+	} while (*src++);
 
-	return len;
+	return len - 1;
 }
 
 static void *memalign_realloc(void *orig, size_t oldsize, size_t newsize)
-- 
2.41.0



