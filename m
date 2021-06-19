Delivery-date: Sat, 19 Jun 2021 05:47:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwy-0003Pw-Um
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:47:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwx-0002mE-PD
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:47:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g20Zs9qsIyrT0Wp8Fcmp6hfdBqFGxjQifOJq0dB5XQc=; b=fSbDGmoTUuSL29
	OGxgd/fGbP3IrxiQvRLGk7XK/fTnEaDsKuwFFAJ0wlOFfev/D6999gGIyxN39C1JsgtIAMlhZ9a/b
	l5WijHkKWHwqqSela13xQNojRWwcFxodlHeGXMXVGOVm2W5GLODpY3W+KiEwxY04OSc2e9QpWfgbo
	xrpXeYNne9uCAprxpZV9lhzsKmMI4DJRa2SdQ0VzA0IcI+z2cGdfuN72i4kjOLpdEvodxTSyKUXo5
	chYhGwjA+Br9l/ZUFmV2+10x3aWthcDNY06JGqFXX3GJytyvjikemn3dN2SOM1vVPhS2idK7hp3VE
	Cuhdwl0c2Xt1D9ZYG7WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRvh-00GCHQ-PL; Sat, 19 Jun 2021 03:45:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRvF-00GC1X-5E
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:45:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv5-0001v2-Qv; Sat, 19 Jun 2021 05:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luRv4-00029T-SO; Sat, 19 Jun 2021 05:45:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Jun 2021 05:45:05 +0200
Message-Id: <20210619034516.6737-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619034516.6737-1-a.fatoum@pengutronix.de>
References: <20210619034516.6737-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_204529_243149_BA9121EE 
X-CRM114-Status: GOOD (  10.34  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/13] nvmem: treat devices without nvmem_bus::write as read
 only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

nvmem_bus::write is dereferenced unconditionally when doing write
operations. Align behavior with Linux, which allows drivers to omit
the reg_write callback when the device is known to be read-only.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index cfeecf70cd5d..3c14e390de39 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -209,8 +209,8 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	nvmem->dev.device_node = np;
 	nvmem->priv = config->priv;
 
-	nvmem->read_only = of_property_read_bool(np, "read-only") |
-			   config->read_only;
+	if (config->read_only || !config->bus->write || of_property_read_bool(np, "read-only"))
+		nvmem->read_only = true;
 
 	dev_set_name(&nvmem->dev, config->name);
 	nvmem->dev.id = DEVICE_ID_DYNAMIC;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

