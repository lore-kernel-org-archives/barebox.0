Delivery-date: Fri, 26 Jun 2026 13:37:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd4s8-00A3tk-0k
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 13:37:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd4s7-0000RK-Ld
	for lore@pengutronix.de; Fri, 26 Jun 2026 13:37:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6BAQtVExXkezW7NUKvsUeT4Bet5M9I2xoAIUFtQrbhA=; b=gm9cUF5fgTswPZRZNeqDxtysaa
	nw2Jn7SMUxuyckyqVba03PqR7RmvcphqT2z9xXQlT+ZRbn7MOFuzHoBBgO/E9JtlVkM/sNA9kHSrQ
	z7l9jmrS/u2zHZ60004a0ybxcgzeYuG2GGIj+mo3ExDlsKiEHGjUf+CqhT0NLEf9EVUbrvHbhJCHq
	yuJ3SRFiZ0gjJ+6F7WTFRHbtiQmw1fEYjv2PkeS2pTh2wqL99F+9aY30KqKk16cxMBUr9J1JbK+EK
	L3NkDmQ0gqHchfvB/nLYVMFMLqacRoDoUo27gPsQ+PJ++xWVCXqGiTkCfSVhEIBuePw/rb8J2Z2wr
	qrmVfH1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd4mY-0000000BDyG-0BcH;
	Fri, 26 Jun 2026 11:31:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd4mV-0000000BDxG-0kbe
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 11:31:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd4mT-00076G-Ii; Fri, 26 Jun 2026 13:31:33 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 13:31:23 +0200
Message-ID: <20260626113132.1557874-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626113132.1557874-1-a.fatoum@barebox.org>
References: <20260626113132.1557874-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_043135_213193_E7790AAB 
X-CRM114-Status: UNSURE (   7.43  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ci: container: enable rustc and bindgen in container
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make it possible to compile incoming rust code in CI, add the
necessary crates into the container.

Also define LIBCLANG_PATH as otherwise bindgen will fail to run.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/Containerfile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/test/Containerfile b/test/Containerfile
index 89c975cfbfa0..296835d080f4 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -56,6 +56,7 @@ RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-reco
 	python3-setuptools \
 	python3-virtualenv \
 	python3-yaml \
+	rustc rust-src bindgen rustfmt rust-clippy \
 	virtualenv \
 	sudo \
 	device-tree-compiler \
@@ -67,6 +68,7 @@ RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-reco
 
 ENV GCC_VERSION=15.2.0
 ENV LLVM_VERSION=20
+ENV LIBCLANG_PATH=/usr/lib/llvm-19/lib
 
 RUN apt-get update && apt-get install -y --no-install-recommends lsb-release gnupg \
 	&& wget https://apt.llvm.org/llvm.sh \
-- 
2.47.3



