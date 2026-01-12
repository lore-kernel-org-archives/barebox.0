Delivery-date: Mon, 12 Jan 2026 09:56:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDix-000Sne-35
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 09:56:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDiw-00024V-Vv
	for lore@pengutronix.de; Mon, 12 Jan 2026 09:56:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sg25INpJMCxdUJILySSes3Xc/RCCnYAwEZhVnZw6QhA=; b=KpVz85plAxNzRV1y1qF3K6rzOP
	dPtlWSzTULPhSt73OrzuV/O/XRHxAmV4pPsw2fbV3Qgwvq5SwSjn9Was9NvHlaVo056NWP+C7/zKl
	CiQxWE/Htd8j3H/Lmk6uBsd4ev94TJ0oEC2GgnL1lJNaAI4BNJicIsnCIJepCN92x/zCD7lsRnOXO
	k53pzF7Yjd1WfZ7ADU6tFJA0YJIz5xzm/OY+FDm/aunk5JSnHD5nMZ8EL3a/EVymi0vPPJLljl3r6
	VWmxTLHCoutNohsRGf7v7Uv2Bz3nrVNmGD0MkMW9iEbhD3HbC2SK2e+C7rod0wnA1Y0HLUxafZR8M
	aBW2SB7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDiP-0000000520B-2Rce;
	Mon, 12 Jan 2026 08:55:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDiN-000000051yw-1XjM
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 08:55:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vfDiL-0001qw-Qm; Mon, 12 Jan 2026 09:55:53 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 12 Jan 2026 09:55:40 +0100
Message-ID: <20260112085548.2952525-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260112085548.2952525-1-a.fatoum@barebox.org>
References: <20260112085548.2952525-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_005555_404693_47441719 
X-CRM114-Status: UNSURE (   9.41  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] scripts: Makefile.lib: suppress graph_port warnings for overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In overlays, often only part of a graph is applied with the rest in the
base device tree, so this warning is seldom useful. Disable it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 scripts/Makefile.lib | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 66e690fbfd67..0dbaa071cfc3 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -397,7 +397,7 @@ ifeq ($(CONFIG_OF_OVERLAY_LIVE), y)
 DTC_FLAGS.dtb += -@
 endif
 
-DTC_FLAGS.dtbo += -Wno-avoid_default_addr_size -Wno-reg_format
+DTC_FLAGS.dtbo += -Wno-avoid_default_addr_size -Wno-reg_format -Wno-graph_port
 
 # Generate an assembly file to wrap the output of the device tree compiler
 quiet_cmd_dt_S_dtb = DTB     $@
-- 
2.47.3



