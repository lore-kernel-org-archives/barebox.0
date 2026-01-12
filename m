Delivery-date: Mon, 12 Jan 2026 15:18:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfIkU-000Y8M-0H
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 15:18:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfIkT-0006Aq-48
	for lore@pengutronix.de; Mon, 12 Jan 2026 15:18:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cZNdolP/FXkA5tKVp/W+sN/OOQn7LT2MIC5Ul+I43W0=; b=hcB9dWvB19TlIwTgFrRLXKSIKH
	JXzi2h7N/zxy3hsOG54qNI1WfIwZHV3hCnUylqdF5Z+PtI9Sqiey68X/+rq2BEcoFQxzny3GJcK5s
	I/sBYeVp0QVZHDno2sE6pdhk5A97rPI7IOXPUuU3DRikX9sM36kCaj1yYnAoHZOJOe3XVLfLz8yQE
	C1r3+tyrfWLZWS2WufNRIftwLq8X0xBNFvnhy36p1cUZ06s62V2XFXK7RHfKHBkQzXTeM3m15ZL5Y
	GpbfR4UY0G8I/ymR4hBKUMhHTF3tnvkDpvfM0b809fLCJa+bFLHZK72xXBAFZDWw2lb9VaBRKLiy0
	RD9tmzFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIjx-00000005Vls-0lyJ;
	Mon, 12 Jan 2026 14:17:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIjt-00000005Viq-3RwC
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 14:17:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vfIjr-000614-Pb; Mon, 12 Jan 2026 15:17:47 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 12 Jan 2026 15:17:39 +0100
Message-ID: <20260112141746.3068571-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_061749_878442_8BD8F31F 
X-CRM114-Status: GOOD (  10.08  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RFC 1/2] images: allow suppressing missing firmware stderr output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is a Kconfig option to turn missing firmware to an error, but
there is no way to suppress the warning that is printed in any case.

Suppressing the warning is useful however when reproducing an issue with
a multi_defconfig, so allow changing it to output to stdout by means of
an environment variable.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 images/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/images/Makefile b/images/Makefile
index ebbf57b46355..96f66b0a8e70 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -254,7 +254,8 @@ images: $(image-y-path) $(flash-link) $(flash-list) $(symlink-y-path) FORCE
 	@echo "images built:"
 	@for i in $(image-y); do \
 	  if [ -s $(obj)/$$i ]; then echo $$i; \
-	  else >&2 echo "** $$i skipped due to missing firmware **"; \
+	  else $(if $(NO_MISSING_FIRMWARE_WARNING),,>&2) \
+	  	echo "** $$i skipped due to missing firmware **"; \
 	  $(if $(CONFIG_MISSING_FIRMWARE_ERROR), >&2 sed 's/^/\t/' <$(obj)/$${i}.missing-firmware; missing=1;) \
 	  fi; done; if [ -n "$$missing" ]; then \
 	    echo >&2 "Firmware missing in CONFIG_MISSING_FIRMWARE_ERROR=y build"; exit 1; fi
-- 
2.47.3



