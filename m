Delivery-date: Wed, 14 Dec 2022 11:59:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PUS-003YJI-HM
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 11:59:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PUR-0005mA-3X
	for lore@pengutronix.de; Wed, 14 Dec 2022 11:59:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zzvpx91KNVFQIHbU4+IoEDhflKS8EKPqzAjkhyZx5pc=; b=TxRx9/4NWZPy4bi6WwjN7HiPFm
	N0xLgugzdiyG/lr35PDhV4dnESHR+vfXceYfpRFc/6sYslTcN5en6EOfCQJqjHjiHrMXeE9udaA/b
	VJr6r/jYoLHkhM595hE9c//r8nCmzJJ5B7CdPC94QtVmAQMi756Wyeb02aeNzYs92rAKNW1YNS7W9
	sM1eHJXdsh8m/t3ddgPYTUCKxsA+LQOy2yzIWtsng2/36CNCY5GYYjroiTsmjHXlyqsIf2LnjGLRG
	zpqqPqLHsOgmpVGECSYhIj9eUTjId3Qx6HEhGXF/fbrga8s2MvnphYPLoIsPq0goURoxlIWhfASU+
	eoWVn1pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTF-00FlTV-Mt; Wed, 14 Dec 2022 10:58:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTA-00FlPp-6M
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 10:58:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT8-0005DH-VM; Wed, 14 Dec 2022 11:58:35 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT7-004Rv6-J5; Wed, 14 Dec 2022 11:58:34 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT6-003XhN-Fo; Wed, 14 Dec 2022 11:58:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Dec 2022 11:58:28 +0100
Message-Id: <20221214105831.844421-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221214105831.844421-1-a.fatoum@pengutronix.de>
References: <20221214105831.844421-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_025836_264627_496A47F1 
X-CRM114-Status: GOOD (  10.73  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/11] common: deep-probe: don't build without CONFIG_OFDEVICE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a number of drivers that can be used with and without device
trees. On AT91, some non-OF enabled configurations run from on-chip
SRAM, which is limited to few tens of kilobytes in size. We need to
be very size-concious there and having deep_probe_is_supported() as
static inline helper evaluating to false when unused makes it easy to
discard code that is not needed for the non-OF case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Makefile      | 2 +-
 include/deep-probe.h | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/common/Makefile b/common/Makefile
index 25f5653f906a..bd5b50bc3be2 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -6,7 +6,7 @@ obj-y				+= memory_display.o
 pbl-$(CONFIG_PBL_CONSOLE)	+= memory_display.o
 obj-y				+= clock.o
 obj-y				+= console_common.o
-obj-y				+= deep-probe.o
+obj-$(CONFIG_OFDEVICE)		+= deep-probe.o
 obj-y				+= startup.o
 obj-y				+= misc.o
 obj-pbl-y			+= memsize.o
diff --git a/include/deep-probe.h b/include/deep-probe.h
index f75ad1065c86..927dd8d6cf50 100644
--- a/include/deep-probe.h
+++ b/include/deep-probe.h
@@ -9,7 +9,14 @@ struct deep_probe_entry {
 	const struct of_device_id *device_id;
 };
 
+#ifdef CONFIG_OFDEVICE
 bool deep_probe_is_supported(void);
+#else
+static inline bool deep_probe_is_supported(void)
+{
+	return false;
+}
+#endif
 
 extern struct deep_probe_entry __barebox_deep_probe_start;
 extern struct deep_probe_entry __barebox_deep_probe_end;
-- 
2.30.2



