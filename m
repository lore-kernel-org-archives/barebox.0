Delivery-date: Thu, 27 Nov 2025 09:07:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOX2T-005MCp-0U
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 09:07:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOX2S-0004jY-L0
	for lore@pengutronix.de; Thu, 27 Nov 2025 09:07:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OEFlyRvsa253CmebA/+40JGSyGDVomw6VSuxEYBTJUQ=; b=t0fcmojkQUulP+YD/Jp97xrxwo
	aJ7ijAulVq2tgdm7kLD/6X+MHd/iY00M4BoOs4mv68zrpns/BGPSkTSKQsyxm8aHG2+5zUp8PUAJc
	1+QDJh34NPNRs4vSUA+XrmV1d+j0DG9k3IoFKOEyeyH9Cw0VJrWFUAtXL65HgV9hP9Kettzf0zsiv
	jb4j0SNOfpU+2HhgTSbQTXVr5kj3FtuU/EviL2XLq2orW0TYHH+sEsrXC3a2FJ7O3DrXONd8X3dYF
	/2UK7FS2ODn3txQkEwC3VOqXOmmK3mcvFKV+DmTIN/RzOCVEx9wN1Em3co/1U14eT+CdFvSzMyGtI
	/FqlIJfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOX20-0000000GBT3-26mi;
	Thu, 27 Nov 2025 08:07:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOX1x-0000000GBS9-3K80
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 08:07:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOX1w-0004d5-AS; Thu, 27 Nov 2025 09:07:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOX1w-002kiT-0S;
	Thu, 27 Nov 2025 09:07:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOX1w-0000000BTpN-225e;
	Thu, 27 Nov 2025 09:07:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 27 Nov 2025 09:07:05 +0100
Message-ID: <20251127080706.2736258-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_000709_833264_BA09CA77 
X-CRM114-Status: GOOD (  10.55  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] bootargs: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

globalvar_get_match() returns an allocated string. Free it after usage,
even when the allocated string is empty.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootargs.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/bootargs.c b/common/bootargs.c
index ad8007d32a..36528b8b58 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -34,8 +34,10 @@ const char *linux_bootargs_get(void)
 	free(linux_bootargs);
 
 	bootargs = globalvar_get_match("linux.bootargs.", " ");
-	if (!strlen(bootargs))
+	if (!strlen(bootargs)) {
+		free(bootargs);
 		return getenv("bootargs");
+	}
 
 	linux_bootargs = bootargs;
 
-- 
2.47.3



