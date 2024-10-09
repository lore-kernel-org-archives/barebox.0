Delivery-date: Wed, 09 Oct 2024 16:11:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPo-002FsA-1x
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 16:11:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPo-0004Bh-0S
	for lore@pengutronix.de; Wed, 09 Oct 2024 16:11:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tJ04f8CLhVPDUOpMjKQoIflDCtpoA9RHTyVYvPwpmdw=; b=n1IVx3rZZDM9qdtIBNeyHGvIVN
	iJPHYzGjP/JEP3AsgGVU66i1xSSzf1G7xrG4Ip78VwU8ndCkvjXEiwCiB3Vsmf/5DAfSRl2Uo1O3k
	W2Eb8hF+krcncHBwfZStiy272qKTZXHD948HUedChsphXQv+6YyLR/PSuIuIX8fnz6fxiX3s9zdM5
	jM9Qvi2BWXnuuBywI+jxayAMZMrYwc1b9VJnm9Abw9JbB/uele98mieuQ1PheW1j+e7jOzMmQ3rjJ
	SyxOXpcAB+BbK26rLlogjd92s/b78JXLiZmLgQ66qN31Ts7BvpW2dlqZl3ykd79LCHpbY/V0YpgaA
	/eNfoR6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syXPB-00000009XMN-0JkS;
	Wed, 09 Oct 2024 14:11:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syXGI-00000009VfV-3Jnr
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 14:02:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGH-0002ql-87; Wed, 09 Oct 2024 16:01:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-000cNb-QF; Wed, 09 Oct 2024 16:01:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-008Mdc-2M;
	Wed, 09 Oct 2024 16:01:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2024 16:01:53 +0200
Message-Id: <20241009140155.1990882-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
References: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_070158_946123_6E872CC3 
X-CRM114-Status: UNSURE (   8.26  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] crypto: ecdsa: make crypto/ecdsa.h header self-containing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently, generating standalone keys fails, because the header
references symbols that aren't defined within.

Fixes: c949c6ab360c ("crypto: add ECDSA support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/crypto/ecdsa.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/crypto/ecdsa.h b/include/crypto/ecdsa.h
index 1d6340c64513..2e2b359d96cf 100644
--- a/include/crypto/ecdsa.h
+++ b/include/crypto/ecdsa.h
@@ -2,6 +2,10 @@
 #ifndef _ECDSA_H
 #define _ECDSA_H
 
+#include <linux/types.h>
+#include <linux/list.h>
+#include <errno.h>
+
 struct ecdsa_public_key {
 	const char *curve_name;	/* Name of curve, e.g. "prime256v1" */
 	const uint64_t *x;	/* x coordinate of public key */
-- 
2.39.5



