Delivery-date: Thu, 27 Mar 2025 11:34:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txkZB-004q1f-2h
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 11:34:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txkZB-0002U4-8k
	for lore@pengutronix.de; Thu, 27 Mar 2025 11:34:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XV+ao8vu7gvTXqK5CRg5eCu4C/3ynAv+4yPn0NENhcA=; b=JMKhJc/SbrU7CxNM5HWin0/aIX
	4gg/fJagCgQrBmjkFz/lO+iQ6J2gWIgYrzFaT7RTXxTTFg4HFgbI4H0CsH2yXPccU99qZsbMfNizM
	T+ndackm/VPN/jZdAH1tK/4PX7uAyFjqNo2r4eZvYbs86zG022LujdIoOjkBOnCl9VUaY5eYjbGb5
	JWohLnegJwJP2nsXyITA9Dk0JbBd9WCJKcWyU9vgiqh65eSssR9v8+Ah/fLgOos8IoRYP9AFpvYvT
	eZqCKseWRy13ax5K6SyYTbIdOV12gkdwXL+R1YjZNFdw+yjRZYpzXbUfyB2mizzgzxdGtrnmK4zNe
	BkmUnloQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txkYi-0000000AiT2-39KN;
	Thu, 27 Mar 2025 10:34:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txkYf-0000000AiS8-3uFC
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 10:33:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txkYe-0002HD-76; Thu, 27 Mar 2025 11:33:56 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txkYe-001ugU-07;
	Thu, 27 Mar 2025 11:33:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txkYd-000LLW-31;
	Thu, 27 Mar 2025 11:33:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 Mar 2025 11:33:53 +0100
Message-Id: <20250327103353.81841-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_033357_964211_A8244774 
X-CRM114-Status: UNSURE (   9.17  )
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
Subject: [PATCH] fixup! Revert "ci: container: downgrade OpenRISC toolchain from 14.2.0 to 13.1.0"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Effectively revert 18a154ce19 ("ci: container: fix CROSS_COMPILE_openrisc
to point at correct version"), because the correct version is no longer
13.1.0..

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/Containerfile b/test/Containerfile
index 20402c384b6f..2da786c69925 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -97,7 +97,7 @@ RUN pip3 install -q --no-cache-dir --break-system-packages \
 ENV CROSS_COMPILE_arm=/opt/gcc-${GCC_VERSION}-nolibc/arm-linux-gnueabi/bin/arm-linux-gnueabi-
 ENV CROSS_COMPILE_arm64=/opt/gcc-${GCC_VERSION}-nolibc/aarch64-linux/bin/aarch64-linux-
 ENV CROSS_COMPILE_mips=/opt/gcc-${GCC_VERSION}-nolibc/mips-linux/bin/mips-linux-
-ENV CROSS_COMPILE_openrisc=/opt/gcc-13.1.0-nolibc/or1k-linux/bin/or1k-linux-
+ENV CROSS_COMPILE_openrisc=/opt/gcc-${GCC_VERSION}-nolibc/or1k-linux/bin/or1k-linux-
 ENV CROSS_COMPILE_powerpc=/opt/gcc-${GCC_VERSION}-nolibc/powerpc-linux/bin/powerpc-linux-
 ENV CROSS_COMPILE_riscv=/opt/gcc-${GCC_VERSION}-nolibc/riscv64-linux/bin/riscv64-linux-
 ENV CROSS_COMPILE_kvx=/opt/gcc-kalray-kvx-v5.0.0/bin/kvx-elf-
-- 
2.39.5



