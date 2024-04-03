Delivery-date: Wed, 03 Apr 2024 09:24:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rruym-005RPD-1v
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 09:24:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rruym-0003Ky-0s
	for lore@pengutronix.de; Wed, 03 Apr 2024 09:24:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aeyr1UYc93Ew8R7iFxMgzZTEIz9E0UmJExM2wV+VLiI=; b=uGJjfWc91Ux8V9LzKbzt8S58Ni
	saRM/cs6EVOho6tXY7X2Q/BvL4kuuJWGhGabwpJww47y2Vbd4r+lFRoO8p6dem/SFiprh40bYAPiY
	7lmqoE9pVD54DWk5JLBcLlgbGqX6T8pT6w0mu1tJjmPi+SGoxt+gUzl7qNNsedqS5WTEyhFxfj5xQ
	YbkgOX0sD3wtr/1v4R3hZDRCYdSkAn3Rjs5ujjwuOmxql1g16P17GlS41zpIwIYYPASx4CggdcDV5
	wLhNPl/p3RgNWfoC33tGNMKpX7SORzHMmzyIh5ulkjbqxrKenTo6/DYtHNU1dPf+Uz2vb+PMDWdw8
	Rm1f9NMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rruyB-0000000EUKN-1M12;
	Wed, 03 Apr 2024 07:23:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rruy9-0000000EUHe-0xo0
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 07:23:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rruy6-0002tz-JR; Wed, 03 Apr 2024 09:23:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rruy6-00A8GM-77; Wed, 03 Apr 2024 09:23:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rruy6-00BIuc-0Q;
	Wed, 03 Apr 2024 09:23:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Apr 2024 09:23:32 +0200
Message-Id: <20240403072332.2694292-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240403072332.2694292-1-a.fatoum@pengutronix.de>
References: <20240403072332.2694292-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_002337_362008_113396E5 
X-CRM114-Status: UNSURE (   8.23  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] include: is_defined: implement __if_defined helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is useful when preprocessing non-C code that lacks an if statement
equivalent. For example, external device tree fragments can now specify:

  #include <linux/is_defined.h>

  __if_defined(bcm2711_rpi_4_dts, &emmc2, &sdhost) {

instead of having to use the more verbose #ifdef:

  #ifdef bcm2711_rpi_4_dts
  &emmc2 {
  #else
  &sdhost {
  #endif

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/is_defined.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/is_defined.h b/include/linux/is_defined.h
index d68f8e877f9b..bfefca033f70 100644
--- a/include/linux/is_defined.h
+++ b/include/linux/is_defined.h
@@ -34,4 +34,10 @@
 #define ___is_defined(val)		____is_defined(__ARG_PLACEHOLDER_##val)
 #define ____is_defined(arg1_or_junk)	__take_second_arg(arg1_or_junk 1, 0)
 
+#define __if_defined(x, a, b)		___if_defined(__is_defined(x), a, b)
+#define ___if_defined(val, a, b)	____if_defined(val, a, b)
+#define ____if_defined(val, a, b)	____if_defined_##val(a, b)
+#define ____if_defined_1(a, b)		a
+#define ____if_defined_0(a, b)		b
+
 #endif
-- 
2.39.2



