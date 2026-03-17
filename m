Delivery-date: Tue, 17 Mar 2026 16:20:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDt-001qdn-2z
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 16:20:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2WDt-0007a3-7m
	for lore@pengutronix.de; Tue, 17 Mar 2026 16:20:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XT3RJ1LwYJFUlIttFTKjcr1UQulpB1YUT/PoMMO2c70=; b=jIPGueYEDPGv/jzds43QmdM7qQ
	6rPqEqkIRlCDN4S/FqM6Y/p28atszGhd5xFeZTmiS4NpI+C+LL0YKcYbmjOnuoGnKybLJbQ51b5xH
	ccM7RmREL/jJLcPf0XK3bEZG25lKRMiXBm+cCIccjikQzneTOKdFb051/ak4qpXAwNGdYa/ChdG/z
	oEie0n+sEbCaWC5iuHcG2U1DAregK9YgFmWhaPJj8ZSmqvog1aD814/GVUvCO/N5+pObMukzx+PMM
	CFCbNitJ7P9RyrSqpUo0IHKSxgOtRZfYradJoMjyVLFpqv+o6B5hzIBbThISvlu3mBeX4dJ22+ER+
	DShmosNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDJ-00000006ihk-2ZOK;
	Tue, 17 Mar 2026 15:20:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDH-00000006igF-43z7
	for barebox@bombadil.infradead.org;
	Tue, 17 Mar 2026 15:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=XT3RJ1LwYJFUlIttFTKjcr1UQulpB1YUT/PoMMO2c70=; b=NUbitLBhKnVtARMF1UE2oEUrmH
	8TKpCnaNLl9V5TwQvlL+jnqIi0Jfyo+8Qp6E2Z8Md0S8b9TuvFfaxnHRh6hAdC4KtDyEpn6hyG4Ey
	nepCmRteKBGMCHNJ9akzkXzb4Q29iTyBJvymaJvrsEsVgZt5iQQQfK1myZue9AoeacbvPV2y7eg82
	XnSSIKuz9Yc1bsUCiYZI4MCM6Uc2jzw1zAauLO7cgKcP50PLm10lv10/vhlEZXs/ruY0PFnNi6mKD
	P6ydLxaOMtF1NHDzGcBRUdqAuYno7awKHX7irhcbhwfBGuZ+rT0z0Sf/QI2NVe6q28P5p0N+cab6C
	sNOaDVGw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2WDE-00000009MX2-1zzL
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 15:20:06 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2WDC-00076m-FT; Tue, 17 Mar 2026 16:20:02 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 17 Mar 2026 16:19:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-keytoc-multi-env-v4-6-38ab473f8034@pengutronix.de>
References: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
In-Reply-To: <20260317-keytoc-multi-env-v4-0-38ab473f8034@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1395; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=dtswALHk/2WfE/kITq1m3OXCo5AhqhDnQ24MtjTJZk4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjcWajwIlY6vIZpi7RshbLGsZf+v7e7LHjLNlF7Ldetj
 E0zEzVXdpSyMIhxMciKKbLEqskpCBn7XzertIuFmcPKBDKEgYtTACaiU8rwT0fANfuhKLv9bOdJ
 f0OY7GcudD22423WH/MQ5eJk2RXnHjAytElJ2+gLbWfZXXuiRvD2r05OntrCW5s0cm4t1vQUrY5
 iAwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_152004_761786_D9EAA7F1 
X-CRM114-Status: UNSURE (   7.47  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 6/8] Documentation: migration-guides: Document change in
 keyspec env vars
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Only users providing complete keyspecs containing backslashes or spaces
via an environment variable are affected by this change in the handling
of keytoc's command line arguments.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 Documentation/migration-guides/migration-master.rst | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index 42e370d42f..9d1756bdc4 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -1,5 +1,22 @@
 :orphan:
 
+CONFIG_CRYPTO_PUBLIC_KEYS
+-------------------------
+
+The syntax of keytoc keyspecs when fully provided via an environment variable
+was slightly changed to allow any number of keyspecs to be provided via an
+environment variable. Such environment variables are now split at spaces to be
+interpreted as multiple keyspecs. Any literal spaces and backslashes contained
+in such keyspecs need to be escaped with a backslash.
+
+This only applies to the form:
+
+  CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__A"
+
+While the interpretation of environment variables specifying hint or URI remains unchanged:
+
+  CONFIG_CRYPTO_PUBLIC_KEYS="keyring=kr:__ENV__B"
+
 ARM i.MX HAB
 ------------
 

-- 
2.53.0.308.g50d063e335



