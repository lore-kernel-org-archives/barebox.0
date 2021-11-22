Delivery-date: Mon, 22 Nov 2021 09:54:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp55b-0003fY-3Q
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:54:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp55Z-0001zI-Jy
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:54:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLKzmiYO+VQXH6/Ssfnt1eZMd5GJnqPvzbqiK1cWbSU=; b=C0n8y9HcF0GY4l
	6yImrjGw0Ywe64EJofdkzbgOwNgt/jYv91oxR6pDd5RscETUO0umb1TEA+uG7yT7e9B3ARK60UNOL
	gzUjjNy7FWESYokXmXxSZDmyhj78rXqo9NLny52NrljYvllnlaaiyden4Rfuj1AetwXO8TlEFK5vT
	w8sLFIRQrmJk35y+NMVDfNKLOiVOifu2eHre+b4HZtL/oppp0wQD2JTugPJkW8haPTkedqBgTZMUG
	1OBVEkW7qkVpWAxsbnpMPMk7dR6soP4PKhNpkLSps397QDm6+xFvp9rbf1Fb2Iy/BBgWwLuSbbu4x
	hatCV+yWMff9LPPgNq0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp54E-00FOBn-2p; Mon, 22 Nov 2021 08:52:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zL-00FL5W-1z
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zB-0007wm-Lb; Mon, 22 Nov 2021 09:47:37 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Atfi-Ta; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:28 +0100
Message-Id: <20211122084732.2597109-27-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004747_208064_F1B73F80 
X-CRM114-Status: UNSURE (   8.77  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 26/30] partitions: efi: move header to central location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The header contains GUIDs and definitions that will become applicable outside
of the GPT partition parser as well, so move them out.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/efi.c                            | 2 +-
 common/partitions/efi.h => include/efi/partition.h | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename common/partitions/efi.h => include/efi/partition.h (100%)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 135b08901a5c..6d811bfb3b01 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -19,7 +19,7 @@
 #include <crc.h>
 #include <linux/ctype.h>
 
-#include "efi.h"
+#include <efi/partition.h>
 #include "parser.h"
 
 static const int force_gpt = IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE);
diff --git a/common/partitions/efi.h b/include/efi/partition.h
similarity index 100%
rename from common/partitions/efi.h
rename to include/efi/partition.h
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

