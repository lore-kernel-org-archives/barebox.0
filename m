Delivery-date: Fri, 07 Apr 2023 12:01:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pkiuK-00D1Na-P9
	for lore@lore.pengutronix.de; Fri, 07 Apr 2023 12:01:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pkiuK-000622-NK
	for lore@pengutronix.de; Fri, 07 Apr 2023 12:01:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rUw8KmvDJNL5joXWMGD/0Rs1WYmN1puurW/GzKET5rU=; b=3wreW2d/mAn6d1lcq6YCXRSknr
	R/WHS0o6lrAUleYGnNEucntGVhs1QSt5jA8cya+iwL8DCRZ12iheW1ypTiRJF7KIRxaCJT7RXAQ83
	YZ9Z7p4JZflzHhCv9O+yMiOl+40Gvfpoa3jeqJBb+vxm9xEKYOPAPpFxa8GnIzJBZc8mR2ZObTYCO
	0vhELg9GRa1RWiNvXF7g0WixGg8AxFMoNkKySxGeAYIL34ILzOjuJDIR4js4ff+JoOL2aO2qR/ckR
	kTQbDWH3BbwBu/mIltL+EvSeInQw9uEMbzboJfLAK7aEJz7zr46JrWgNWl2Y4jI4IKE5ZFQ/Xsua3
	4zMWTpbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkisQ-009jwT-2P;
	Fri, 07 Apr 2023 09:59:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkisN-009juo-04
	for barebox@lists.infradead.org;
	Fri, 07 Apr 2023 09:59:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pkisF-0005Se-Qp; Fri, 07 Apr 2023 11:59:15 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pkisF-009Zsh-5o; Fri, 07 Apr 2023 11:59:15 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pkisD-00Fr4m-Dc; Fri, 07 Apr 2023 11:59:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: pza@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Apr 2023 11:59:10 +0200
Message-Id: <20230407095910.3778931-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230407_025923_079832_8343A264 
X-CRM114-Status: UNSURE (   7.77  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! spi: add per-driver bits-per-word mask
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

Fixed up commit introduces instances of the BIT() and GENMASK() macros
into the file. Add the appropriate header to go along with it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/spi/spi.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index d479e4f34f0c..f806c7a30b36 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -6,6 +6,7 @@
 #include <linux/err.h>
 #include <linux/kernel.h>
 #include <linux/string.h>
+#include <linux/bitops.h>
 
 struct spi_controller_mem_ops;
 
-- 
2.39.2



