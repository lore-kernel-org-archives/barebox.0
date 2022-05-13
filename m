Delivery-date: Fri, 13 May 2022 16:18:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npW7n-00C17S-2L
	for lore@lore.pengutronix.de; Fri, 13 May 2022 16:18:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npW7l-0004wh-Ni
	for lore@pengutronix.de; Fri, 13 May 2022 16:18:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ouy4PdvLAmfHyX0sQigPbpuaFDci3Vz7ooNZ6ZOOu9Y=; b=hskIOqPRkm9g2U
	E4PD5EG8pSAmfD/Ek1ulU2Olv2iB1x/osuJgLbYRvswdJD0JgizuK0AIF4pN5viJ4fGkispZfEEFe
	rC03uCi4u7USj4oKfppqXVIwRw9LZ2cRFWbeOVd4nPyQT5yLsHqHekjR25RDG2xPzWUpSDrOqJ+Te
	hunezMA4/TqR1dfmEDZiII/jiFFgtpOsAuKIiTMW+yXachTfgEvpdscOR+LuiRX5j/vwgfzmpD4AL
	Y2WSkNyEkSylYcP727NzehiMUsc+kXq6Uy2w9JQ+tmLmq10u0LmoBmzGo6MJGQnAKkoo4nXYHD8I8
	A4Nbq25IOB7+tV6UVKwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npW6T-00GOcA-IZ; Fri, 13 May 2022 14:17:13 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npW6N-00GOZL-DK
 for barebox@lists.infradead.org; Fri, 13 May 2022 14:17:09 +0000
Received: by lynxeye.de (Postfix, from userid 501)
 id A0599E74217; Fri, 13 May 2022 16:16:29 +0200 (CEST)
Received: from astat.fritz.box (a89-183-86-236.net-htp.de [89.183.86.236])
 by lynxeye.de (Postfix) with ESMTPA id C2149E7420D
 for <barebox@lists.infradead.org>; Fri, 13 May 2022 16:16:28 +0200 (CEST)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 May 2022 16:16:25 +0200
Message-Id: <20220513141625.1411217-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_071707_646277_A5226FBF 
X-CRM114-Status: GOOD (  11.14  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: imx: esdctl: fix LPDDR4 size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The DDRC only uses the DEVICE_CONFIG field for memory types other than
LPDDR4. While LPDDR4 always has a bus width of x32, the script aid
generates the value for a x16 bus, as this was apparently used for the
controller validation. This resulted in the calculated DRAM size to be
halved on boards with LPDDR4 memory.

Fixes: d8d5778ee8c2 ("ARM: imx: Correct mem size calculation for 4/8/16/32 bit bus width")
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index d3dbfff423da..4c8765c193d0 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -392,7 +392,7 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 	}
 
 	/* Bus width in bytes, 0 means half byte or 4-bit mode */
-	if (is_imx8)
+	if (is_imx8 && !(mstr & DDRC_MSTR_LPDDR4))
 		width = (1 << FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr)) >> 1;
 	else
 		width = 4;
-- 
2.35.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

