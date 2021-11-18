Delivery-date: Thu, 18 Nov 2021 14:11:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnhCp-00054P-2n
	for lore@lore.pengutronix.de; Thu, 18 Nov 2021 14:11:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnhCn-00039P-MS
	for lore@pengutronix.de; Thu, 18 Nov 2021 14:11:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzaBxw9fZ24ktlNZp3Id8fIvY9KWaSuLbnI4lnC10HQ=; b=iWDQZap5pOpAfQ
	y/olaLt3d+NRphOQYjUmH3/9mTmuir+MGfpzcVWBljh+WWbsT7uJ7TeU0snaG32Hf/YKpzgBCvp2z
	EO9PGIvAOR50DrtDO5m7uhDTipC+8QglAtVgJt2w+IC/1cT8TS7r2jIFIK1WD+s1MMnupk+zZrhtJ
	o/y/Buf1HCHQwDkuTm0Gl7FC3A7BsNf4YDz1aVZI0rrOCACu4IhPFuHfVqMUr9IhtFue86OWnT9lZ
	qs0TdSF8QQ55J07jQX0ky38TiNL0p9pQ4mmAQmaUXqpLMxBnNpAGgoJ+hpSL5uWuh0ms2sgdKcJCf
	eECCx3JciD5/94O9mXUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnhB5-007q0O-8A; Thu, 18 Nov 2021 13:10:11 +0000
Received: from smtp95.iad3a.emailsrvr.com ([173.203.187.95])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnhAy-007pzO-W4
 for barebox@lists.infradead.org; Thu, 18 Nov 2021 13:10:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1637241001;
 bh=2rWBSFdZDQkrQsh2qYtkC/ZzWg7n9g+q8ecrO9uEHP8=;
 h=From:To:Subject:Date:From;
 b=WRtHlK0SWFFhttfJi4XXfd1OkNrneDQGOr4GmhQVfIqVLQJVdzsbpCgpHu+AaQmRS
 7xiSdZkh9W8MPRHFOc+gGJLerSST7T5XYcQJsYpGiV5V8+fg3anv7KtdTd0KBb019X
 TLG5FnOkN3SaHQeyb90eoDVv6iK2ofGRtxCX8iSE=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp28.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 5FDA84376; 
 Thu, 18 Nov 2021 08:10:00 -0500 (EST)
From: Ian Abbott <abbotti@mev.co.uk>
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 18 Nov 2021 13:09:27 +0000
Message-Id: <20211118130927.53123-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211101174053.68486-1-abbotti@mev.co.uk>
References: <20211101174053.68486-1-abbotti@mev.co.uk>
MIME-Version: 1.0
X-Classification-ID: e107a76a-c1f0-488a-88c8-765d41a98ac2-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_051005_194706_26CD540B 
X-CRM114-Status: UNSURE (   9.75  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: socfpga: Set reset-names property for &mmc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The device tree node for SoCFPGA's MMC device has the `resets =` property,
but is missing the `reset-names = "reset";` property.  This causes the
"dw_mmc" driver to output a warning:

WARNING: dw_mmc ff704000.dwmmc0@ff704000.of: error claiming reset: Invalid argument

Add the missing `reset-names` property to the `&mmc` node in
"arch/arm/dts/socfpga.dtsi".  It probably needs fixing in the upstream
Linux device tree sources too!

Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
v2: Updated commit message because it no longer fails to initialize the
MMC device since commit 724512bbac14 ("mci: dw_mmc: make reset control
optional again").

 arch/arm/dts/socfpga.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
index 7789c9d3b5..56dbf0b97d 100644
--- a/arch/arm/dts/socfpga.dtsi
+++ b/arch/arm/dts/socfpga.dtsi
@@ -4,6 +4,10 @@
 	};
 };
 
+&mmc {
+	reset-names = "reset";
+};
+
 &watchdog0 {
 	resets = <&rst L4WD0_RESET>;
 };
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

