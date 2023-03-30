Delivery-date: Thu, 30 Mar 2023 13:40:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phqdN-002hJL-Nc
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 13:40:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phqdN-00010q-BC
	for lore@pengutronix.de; Thu, 30 Mar 2023 13:40:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WCqNkEGEFAyjdlRknOj+0HsYQ1U1x1gKzTyPKVmvo0g=; b=oRmyRIepV10A/pyn9jwPmINan8
	2ssLrF1M1c/SPriQZMjHhSZl9Ns/qSjHWTxTEr33dVCAQGxLeCriMAy2mU5HkBNv5u2vE93+K0VQs
	mCaSMeTV0DkZyWWbh73el02UGQkp/4I6xTHOv35pfVns0bEfu7JMtDftxfEXJC3gOaAzQuOYsCJbz
	NuQxdGITAhLML+LGW1FCkhWPSSAY0hIL9QkNlEYKG4CPDK5lifCc6cD1iK0JtBIvpOx6AAccdzna+
	1HaapSsXOka9cQ2HxXXx9aJ06yVLiuCBxebpZzFprGh5fLZjGLSF45CnI6UROl/AeCTIQbDsxNEsv
	u/Jeoxaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phqcP-003d7a-1Z;
	Thu, 30 Mar 2023 11:39:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phqcL-003d5W-0P
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 11:38:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1phqcF-0000t0-9R; Thu, 30 Mar 2023 13:38:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1phqcE-007ks6-6c; Thu, 30 Mar 2023 13:38:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1phqcD-00E1tb-Jj; Thu, 30 Mar 2023 13:38:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Hans Christian Lonstad <hcl@datarespons.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 30 Mar 2023 13:38:44 +0200
Message-Id: <20230330113844.3343865-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_043857_165183_3AF918BC 
X-CRM114-Status: GOOD (  11.35  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: dts: i.MX8MP: snps,dis-u2-freeclk-exists-quirk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux v6.1 adds a snps,gfladj-refclk-lpm-sel-quirk property to the
i.MX8MP DWC3 device tree nodes, which is a superset of the existing
snps,dis-u2-freeclk-exists-quirk property. For this reason, the old
property was dropped breaking some usages of barebox i.MX8MP DWC3.

The proper fix would be supporting this new property, which is already
in next as part of the DWC3 driver sync with the kernel.

Until that lands in master though, let's add back the removed property
to fix the regression. Expectation is that we can revert this commit
as part of v2023.05.0.

Link: https://github.com/saschahauer/barebox/issues/19
Reported-by: Hans Christian Lonstad <hcl@datarespons.com>
Fixes: 32e2176ba050 ("dts: update to v6.1-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mp.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index 6962d11e853a..3bec8432627f 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -10,6 +10,15 @@
 	};
 };
 
+/* Temporary workaround until snps,gfladj-refclk-lpm-sel-quirk is supported */
+&usb_dwc3_0 {
+	snps,dis-u2-freeclk-exists-quirk;
+};
+
+&usb_dwc3_1 {
+	snps,dis-u2-freeclk-exists-quirk;
+};
+
 /*
  * The DSP reserved memory will collide with the Barebox malloc area for some
  * DRAM sizes, even though the DSP itself is disabled in most configurations.
-- 
2.39.2



