Delivery-date: Wed, 14 Aug 2024 11:25:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAFj-009URp-1p
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 11:25:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAFi-00079V-Sy
	for lore@pengutronix.de; Wed, 14 Aug 2024 11:25:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=X0KJ51wqbpVtvw1cUmnwQz4qnlxiugn6G8hnOLuw+CI=; b=0mSV8QKgMLelNR6toFkLb/6aNj
	uH2F8tzluTH6aJ6fIELyanvTOBpO2hfRGA5qHan2gzN6P4LfXJ8w5JjpdBaPoODJi2FLr98ubldwm
	peXioVVBu0q5sd32avPan25pgEVVs4cW6HcDZvfE4SzuALW6v9bNbyqBLQtfOMOjVCQe3k0k4uAhE
	uTSUSgiYwW7Czmu5XX+/vt4kvjSZzp6Gxhy7SXv/Qa6FLlUECUjFmhvlI99482F5EJG4A/mqsNl9/
	Z3SPv0DvlAw3nW888wrlZcwcQm3xef3Jh1YllKkwzssagMQqtkk1V+iI9yKDtM/c6Ne0Or03TvNvf
	1Pcalw9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAFJ-00000006Mxh-3fOg;
	Wed, 14 Aug 2024 09:24:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAFI-00000006Mx1-3P2G
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 09:24:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=X0KJ51wqbpVtvw1cUmnwQz4qnlxiugn6G8hnOLuw+CI=; b=jFtv+xWjUoOo2HFnUALRjyA04U
	dEgALnklQ1nZIE0EzKq8kgt3Ow2hssFeTzCE8Rb5YCwhSP1g8zQHltoQxeq5WrMONmk2RoyZ1LlRI
	J8kYOOFHGpiF4dRq1SMzEJ0vzLAKzImrjv2r0XdJEdi5Plqtk09mGz6im6OH4vA6ijlbY0AoDc7Ln
	vhtwPdnbnwkpU3f0No8Ee8lFi6I4UhIC7OICaM/YTyGR62BswUnpvcFr6teeu5FTFD+vEM7xjUbFi
	N2veboJ1SUqqhLEUTtu4CLvajpqvRYqbOkpOVAqo3LD3ZpcS5Fv3YRedSSF8sHZqyuoYyqI9pddRU
	eFzMebvQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAFF-000000080NX-1Mrh
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 09:24:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAFE-0006uK-O3; Wed, 14 Aug 2024 11:24:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAFE-000KN8-9v; Wed, 14 Aug 2024 11:24:40 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAFE-000AXF-0g;
	Wed, 14 Aug 2024 11:24:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Aug 2024 11:24:38 +0200
Message-Id: <20240814092438.40485-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_102441_703634_7B6BCED0 
X-CRM114-Status: UNSURE (   8.70  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ci: container: make wget less verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When downloading toolchains, we already use the wget -nv (non-verbose) option
to avoid a lot of progress indication clutter in the logs:

  12300K .......... .......... .......... .......... .......... 19%  165M 0s
  12350K .......... .......... .......... .......... .......... 19%  138M 0s
  12400K .......... .......... .......... .......... .......... 19%  151M 0s
  12450K .......... .......... .......... .......... .......... 19%  155M 0s

Add the option to the two other wget invocations that lack them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/test/Containerfile b/test/Containerfile
index 23f33dc8d7ff..5c49164d33b6 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -60,14 +60,14 @@ RUN korg_crosstool_dl() { wget -nv -O - https://mirrors.edge.kernel.org/pub/tool
     korg_crosstool_dl x86_64 ${GCC_VERSION} powerpc-linux     && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} riscv64-linux
 
-RUN wget -O kvx.tgz https://github.com/kalray/build-scripts/releases/download/v5.0.0/gcc-kalray-kvx-ubuntu-22.04-v5.0.0.tar.gz
+RUN wget -nv -O kvx.tgz https://github.com/kalray/build-scripts/releases/download/v5.0.0/gcc-kalray-kvx-ubuntu-22.04-v5.0.0.tar.gz
 
 RUN echo "d27b3d6e6246f5debffee0bb01e77eb133bd32c658782a68a779cf9fb4c436bc kvx.tgz" | \
     sha256sum --check --status
 
 RUN tar -C /opt -xzf kvx.tgz && rm kvx.tgz
 
-RUN wget "https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true" -O /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin
+RUN wget -nv "https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true" -O /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin
 
 # Create our user/group
 RUN useradd -m -U barebox
-- 
2.39.2



