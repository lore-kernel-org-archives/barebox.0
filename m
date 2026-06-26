Delivery-date: Fri, 26 Jun 2026 13:32:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd4nf-00A3qT-1I
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 13:32:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd4ne-0002eK-07
	for lore@pengutronix.de; Fri, 26 Jun 2026 13:32:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Lli3z60x1sEGLz+pvk8J9KjxkkjRkUOBpEnH78nLH+4=; b=AV4P2VYzUKnjzwGEcFToVi6LV+
	PatlckGA1iulmbplHw9AHCtsFI40crS3T4lKHrvQGACBxKzeGbtFMfQxgHnlT3Mho6aGdm+Y+N3hg
	3E5sl65DV/efnWdLVNsidPK/K31jLb9L2RLSaD+5P6ws/+KKBu1YBX4wJGBcUfE3oJZcXbE80n2UQ
	Iz3wrcNT5K/fMBDe135o1kOY6NttBJg0xz5cZYA4i3awyo9BeTNwFIH6TrYe33pQouPaTARsDCtjb
	qUuaqSYrxEfaV6EzPpGC8LwiZ3szVC3IphrOPutd7exSb3cDLWGTuN03VFCHt7gl+wtCLLNpLhdrh
	zcTiHMWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd4mX-0000000BDy8-40sZ;
	Fri, 26 Jun 2026 11:31:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd4mV-0000000BDxD-0jiA
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 11:31:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd4mT-00076G-8F; Fri, 26 Jun 2026 13:31:33 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 13:31:22 +0200
Message-ID: <20260626113132.1557874-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_043135_212605_5841D526 
X-CRM114-Status: UNSURE (   6.34  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ci: container: add FAT image tools to container
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To prepare testing the FAT implementation in future, make the required
host tools explicit in the test container instead of relying on
transitive dependencies.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/Containerfile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/test/Containerfile b/test/Containerfile
index 23616886d41b..89c975cfbfa0 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -14,6 +14,7 @@ RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-reco
 	bison \
 	build-essential \
 	coreutils \
+	dosfstools \
 	flex \
 	gawk \
 	git \
@@ -32,6 +33,7 @@ RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-reco
 	lzma-alone \
 	lzop \
 	mount \
+	mtools \
 	musl-tools \
 	openssl \
 	pkg-config \
-- 
2.47.3



