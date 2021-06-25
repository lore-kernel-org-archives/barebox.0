Delivery-date: Fri, 25 Jun 2021 09:49:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgaY-0007xm-T3
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:49:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgaT-0006HK-NT
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:49:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjbFEW6xBBkWciICBCxw6QtGYmX/DDwZybFGsCrJoQs=; b=wAsPxdOzn37pBt
	DQ3sofDDYXBfTXp5NI57ifObSOZ2LT6hYtXYIUPIEk3Jjm4qaaGzzo3wO/VYpMQIxq8CBGP4POg28
	Om7R4/P6CTJghCVHyDFOQ77D4dqKEGly4FSjBVEEKp971F7PftX7s0ZzYR5qIgINpVAlb4MpAchFv
	W6F8GbNtYipPjiDRTIb1QgMOB7uOVeswsLz5hU4FlHf1tbtjfrc7tO/MYeXTO5BQKwD/LN95gOD6d
	XL4NRvrGh+Ddm4zJuNa0ISw8yKLM54a/U/2Nbt+KpRk7OvDDd5qrGWvNXB7sM2sX24JgII8zY4TDW
	l53s/hCztVauyCgSvv/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgZ2-0007EY-Mr; Fri, 25 Jun 2021 07:47:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgDo-00HZ70-3f
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:25:54 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDe-0002Qg-If; Fri, 25 Jun 2021 09:25:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0000dQ-EH; Fri, 25 Jun 2021 09:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 09:25:32 +0200
Message-Id: <20210625072540.32717-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625072540.32717-1-s.hauer@pengutronix.de>
References: <20210625072540.32717-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_002552_336217_47FE6A4C 
X-CRM114-Status: GOOD (  11.40  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/19] common: Explicitly probe consoles earlier with deep
 probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With deep probe support the device providing the console can come quite
late in the probe order. Make sure it's probed at postconsole_initcall
time as it used to be without deep probe support so that we get output
earlier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 178251846e..bc0477be1d 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -518,3 +518,20 @@ int of_devices_ensure_probed_by_property(const char *property_name)
 	return 0;
 }
 EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_property);
+
+static int of_stdoutpath_init(void)
+{
+	struct device_node *np;
+
+	np = of_get_stdoutpath();
+	if (!np)
+		return 0;
+
+	/*
+	 * With deep probe support the device providing the console
+	 * can come quite late in the probe order. Make sure it's
+	 * probed now so that we get output earlier.
+	 */
+	return of_device_ensure_probed(np);
+}
+postconsole_initcall(of_stdoutpath_init);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

