Delivery-date: Fri, 04 Aug 2023 15:40:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRv2R-007Jz8-KX
	for lore@lore.pengutronix.de; Fri, 04 Aug 2023 15:40:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRv2P-0006FP-Tk
	for lore@pengutronix.de; Fri, 04 Aug 2023 15:40:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WRx+pj2RJdZtmsSolEvpEsSDsb568ey07+ECS7ywqRk=; b=wleghQiEiQ8w8jKbwNq/q9gP8h
	niTRAOOKPXvm8YBGVTSzpdjumuZulxJ7+x5dAzOeSC3OdMusY9msdPTZDc/VnRt+M1dwRfK4NpHbp
	nbJa1Ak5BFNL7ZvMEr/qWGitZKNfd7mH7mmNx27zwatHUmApy/qiJ1iP6m8d6cOzxtBnzm5OX0Tie
	RL/O6cg/J2RVXWcJIr7kkpmQpni+fSIUy3qwGoOUjyVFeYW6kqB6ftM42HODSxqBXVZQKlhel0gVF
	suLDAybVdRFPslMhdYCR1+al+WWtvSFIK6Y2plBh8AKqzzYq4OoVCGEenG4Uxw2aIAqm45dNI6Yk1
	pVcpkiwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRv10-00CWO8-3C;
	Fri, 04 Aug 2023 13:38:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRv0x-00CWMD-0k
	for barebox@lists.infradead.org;
	Fri, 04 Aug 2023 13:38:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qRv0t-0005tM-0H; Fri, 04 Aug 2023 15:38:43 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qRv0s-0015JZ-CC; Fri, 04 Aug 2023 15:38:42 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qRv0r-005mK1-2y;
	Fri, 04 Aug 2023 15:38:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Aug 2023 15:38:40 +0200
Message-Id: <20230804133840.1377376-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230804_063847_271516_46098FDA 
X-CRM114-Status: GOOD (  11.34  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: socfpga: fix include after upstream DT reorganization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Upstream arm32 device trees are now organized by vendor and optionally SoC
family. Running:

  $ rg '[<"]arm/' arch/arm/dts/ | rg '[^:]+:[^/]+/[^/]+[">]'

shows that there is at least one device tree in the barebox tree, which was
not fixed up to use the new paths, so fix that one.

Fixes: 1f2570eb41c8 ("dts: update to v6.5-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/socfpga_cyclone5_socdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/socfpga_cyclone5_socdk.dts b/arch/arm/dts/socfpga_cyclone5_socdk.dts
index 0dfd5ebaed6e..ef1f9af9cf14 100644
--- a/arch/arm/dts/socfpga_cyclone5_socdk.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socdk.dts
@@ -15,7 +15,7 @@
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
-#include <arm/socfpga_cyclone5_socdk.dts>
+#include <arm/intel/socfpga/socfpga_cyclone5_socdk.dts>
 #include "socfpga.dtsi"
 
 / {
-- 
2.39.2



