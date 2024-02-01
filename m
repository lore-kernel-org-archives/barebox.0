Delivery-date: Thu, 01 Feb 2024 12:29:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVVGM-00FYFw-2K
	for lore@lore.pengutronix.de;
	Thu, 01 Feb 2024 12:29:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVVGN-0005eY-DH
	for lore@pengutronix.de; Thu, 01 Feb 2024 12:29:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lnkqDUQ0lxO7PiFpHaQFFRiY6A6pmP+Gi5SP4/kYBRI=; b=eTaSdF0whOug5mdCWTL/5XPQjB
	M/0rrvnvwtSE823p34X442pIlJ9Jn4HQufIEy76SU8RydsjnVlVO37R69g++hzBMpW/6/S1YkRxa6
	Zifhw3WjxQF/ViK1LGzvDYOb+NZO0ipOLHrQc/RSQdrsn7NahF5CXsdV4ACCx/EfDf4/YBhT4CuLG
	KlwYmqnvxEHocqlXcqlLjUGPU+VpYxY+wxWtm8WAmh+TETMxGFjR1lSMno4XQK3rCfCrrzrQPlUPf
	i+/xtRys5HwbuwVhroeEE8lQcP+0FiV1Urh7w+z7zdSCKaSi0UufU7BJbNBuze5ROi2X3uFrHNwyw
	ZS22eyFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVVFx-00000007aPM-3FxA;
	Thu, 01 Feb 2024 11:29:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVVFu-00000007aOW-33aw
	for barebox@lists.infradead.org;
	Thu, 01 Feb 2024 11:29:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rVVFd-0005WZ-G2; Thu, 01 Feb 2024 12:29:01 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rVVFd-003qKs-2c; Thu, 01 Feb 2024 12:29:01 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rVVFc-000aHm-3D;
	Thu, 01 Feb 2024 12:29:00 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 01 Feb 2024 12:28:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240201-fix-fdt-memory-safety-v2-2-267b7b8813fd@pengutronix.de>
References: <20240201-fix-fdt-memory-safety-v2-0-267b7b8813fd@pengutronix.de>
In-Reply-To: <20240201-fix-fdt-memory-safety-v2-0-267b7b8813fd@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_032918_806109_C3FC72CF 
X-CRM114-Status: GOOD (  13.35  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] of: fdt: fix oob writes with large fdt properties
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

OOB writes can be triggered when fdt->dt_size * 2 is still smaller than
the property for which memory should be allocated. This can happen under
rare circumstances when editing a fdt with the of_property command and a
property is larger than 128k in size.

This happend when editing a FIT image (which is a ftd) with the
of_property command and the Kernel image was around 8M in size.

The simplified call chain is the following:

of_property -> of_flatten_dtb -> create new fdt with 64k in size (this is
fixed) -> __of_flatten_dtb -> attempt to copy kernel image (8M) ->
fdt_ensure_space -> allocate only 128k for fdt->dt -> memcopy 8M into fdt->dt
buffer -> crash

The fix is to grow fdt->dt to hold at least the new property. The power
of 2 increment is untouched to keep the same behaviour otherwise.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/of/fdt.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 544294a9ac..cf08fa1cfd 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -14,6 +14,7 @@
 #include <memory.h>
 #include <linux/sizes.h>
 #include <linux/ctype.h>
+#include <linux/log2.h>
 #include <linux/overflow.h>
 #include <linux/string_helpers.h>
 #include <linux/err.h>
@@ -400,6 +401,9 @@ static int fdt_ensure_space(struct fdt *fdt, int dtsize)
 		previous = fdt->dt;
 		new_size = fdt->dt_size * 2;
 
+		if (new_size <= dtsize)
+			new_size = roundup_pow_of_two(fdt->dt_size + dtsize);
+
 		fdt->dt = memalign_realloc(previous, fdt->dt_size, new_size);
 		if (!fdt->dt) {
 			free(previous);

-- 
2.39.2



