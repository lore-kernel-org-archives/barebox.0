Delivery-date: Mon, 16 Mar 2026 17:01:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2ANd-001U4D-2Z
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 17:01:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2ANd-0002fH-6j
	for lore@pengutronix.de; Mon, 16 Mar 2026 17:01:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XT3RJ1LwYJFUlIttFTKjcr1UQulpB1YUT/PoMMO2c70=; b=FLR0t4JLf0whVJAUb8tXI+15pU
	ZeCmWGzFLJb8a3M5/5wq0Ex3zEvXdBGiMICijF48eDV3+zcuxJHI08ISMQk3+tNJKRF4112vLGrYZ
	0r+OISGb/tyMl7ZauEoV9eveyjLaBF1dIZSLKupnsQAvWHw5smSG5BwiNQBW1raGpzOhILfWS0ruB
	XF3gMTnFhUL1sSqsfg+SelcqWFis0EyJMi64axOPtkyLaYuw9VGo8Q4jHQKlXS/3zm/GQz9Dwig+8
	AMaTpIDK8hiBciDRIvO75rHb6zoqvsr0/F3m87+PXsLPP5Yjk7UZSm9vGloBiEdC/RhpgYTkJips2
	504buoZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2AMz-00000004OdF-1eoC;
	Mon, 16 Mar 2026 16:00:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2AMx-00000004Ocn-31nL
	for barebox@bombadil.infradead.org;
	Mon, 16 Mar 2026 16:00:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=XT3RJ1LwYJFUlIttFTKjcr1UQulpB1YUT/PoMMO2c70=; b=XqvkzqPbCj4uskE0hiQMJUVd5H
	h4L8zTSydGsaLhZVzDkiUFCCIkKbIV6NyDCaAOPNiSNLlzdhJetvA0GB6l2uhC4zZtzJd7X+7dSfW
	TZ7w5vS08jgkpUuhmHr354GqaoBcvKI6laatHahQcumjrw2xtIJZnAHacDSkZZfgielmHpvqV+rhD
	pK6TrENo0E+0hfBIA1UpcN1dqsgAR3Ma5cH4nS2vpxTE2/Q/C6JXSXxi8YcJzRxp1q7yUyw18o81s
	MoBetFOsggO9yultJPKIB5OhYdR+5sMOxBp8I5r8jN6orp34SpugeHlL0YqC4tI0SPTs+f6DSCqpp
	46wXuMOQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2AMu-000000079AA-24Aq
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 16:00:38 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1w2AMs-0002LF-K0; Mon, 16 Mar 2026 17:00:34 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 16 Mar 2026 17:00:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-keytoc-multi-env-v3-4-433591ef3198@pengutronix.de>
References: <20260316-keytoc-multi-env-v3-0-433591ef3198@pengutronix.de>
In-Reply-To: <20260316-keytoc-multi-env-v3-0-433591ef3198@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.15-dev-18f8f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1395; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=dtswALHk/2WfE/kITq1m3OXCo5AhqhDnQ24MtjTJZk4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjcoakUtWYPt131w1nzsuZvf39qxi7TBeZPXVd0dJ5+d
 /N+f4jRzI5SFgYxLgZZMUWWWDU5BSFj/+tmlXaxMHNYmUCGMHBxCsBE7ixlZNisfJf9vIPI3Mer
 2t81/fWffVjUYL+Qie8JZ96Jas9n67Iz/A9/d1zo7c67T7808PI1H1XeucYvM/aH90Vt19plZQX
 9MxgB
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_160036_641834_D1F76F1B 
X-CRM114-Status: UNSURE (   7.72  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
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
Subject: [PATCH v3 4/4] Documentation: migration-guides: Document change in
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



