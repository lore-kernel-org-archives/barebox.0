Delivery-date: Mon, 07 Jul 2025 07:56:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYepg-00Evdy-1H
	for lore@lore.pengutronix.de;
	Mon, 07 Jul 2025 07:56:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYepf-00070N-S9
	for lore@pengutronix.de; Mon, 07 Jul 2025 07:56:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iBU9Zx6UfDu/CexYoJGQIqvSM78vdaiWHMleZkNjwLA=; b=rdkdNCpsWzEhuH
	fTIhOzvN+nbBX88WrR6wEt+h8FJ59JqL/kVs4pDCnS9AGYZXER1eUVTFXXgZNPNkzEU34D7xHqrf/
	OUOECWI1P5ry2z+6cUVOruzoiUeS+JjL6MXbtsuBGrmNSveF0xZ30JrSXgK89kJFvfq9+/uts4P4x
	YVqFZxJw+QZxkbi4s7r1y9g2MIL01hi3jtTzCqr+7ayjwDWMhjRpv8NwLjU3EIabDqAiDhnD+kv/q
	seo2NFhvj876+3RYuBMCPBeWuGzmvkBkULY/0an2VENXKPlhHdnx+OHKe2UURuJGRV2OubF1JyB5u
	FW6pAnf73w2Zy38KLPTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYeox-00000001UDW-1akC;
	Mon, 07 Jul 2025 05:55:19 +0000
Received: from ns3108948.ip-54-37-254.eu ([54.37.254.54] helo=kmf2.trabucayre.com)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYenK-00000001U7R-3j4N
	for barebox@lists.infradead.org;
	Mon, 07 Jul 2025 05:53:40 +0000
Received: from kmf3.. (localhost [IPv6:::1])
	by kmf2.trabucayre.com (Postfix) with ESMTP id 8BA1D160538;
	Mon,  7 Jul 2025 05:53:33 +0000 (UTC)
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
To: barebox@lists.infradead.org
Date: Mon,  7 Jul 2025 05:53:31 +0000
Message-Id: <20250707055331.2355809-3-gwenj@trabucayre.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250707055331.2355809-1-gwenj@trabucayre.com>
References: <20250707055331.2355809-1-gwenj@trabucayre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_225339_061955_70A75648 
X-CRM114-Status: UNSURE (   9.64  )
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
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>, Johannes Roith <johannes@gnu-linux.rocks>, Sascha Hauer <sha@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3]  arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console: fixed console name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

When trying to boot Linux no output from Linux is printed in the
console. Linux devicetree only enables one UART (connected to USB<->UART
interface) and has specified in Linux devicetree this one is called
ttyPS0 instead of ttyPS1.
This patch changes console name.

Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
---
 arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console b/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console
index 6c9f9dabcf..ebb44efc48 100644
--- a/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console
+++ b/arch/arm/boards/avnet-zedboard/env/nv/linux.bootargs.console
@@ -1 +1 @@
-console=ttyPS1,115200
+console=ttyPS0,115200
-- 
2.47.2



