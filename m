Delivery-date: Fri, 09 Aug 2024 16:19:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQSd-007rQj-2n
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:19:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQSd-00074a-7I
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:19:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=faa94PQNLWyLdI2RoG6Rg/GvlWsuo+JyIU4h0SNgK6E=; b=tej4ELdMf+7ZWWqv1ex65aJ1fC
	hWapBg0qkBnRZJClndeZ8/UIXo3Pj7zhw1jqPorigIMTtKp3ECZOSVImzQxktRM7k0/9Dn8vvzGQR
	hqIiImVrAieKmDxJS34q65pcBC12jO38aXz8i7oJjegsOCqoywy3zKeplNFg+RH5gfPu4WBXxiatU
	+aoeErR4yWfMZ4kmmeU9UJhOiK8qrxDOMsL+bcVxxA4XWXkqRuo5Uh3fuQCNW+Mus4XGYKLekd0fR
	+cp1ljNfduahtpA5+5LXtNomSdfSTFgm4KdUbZc6NLYba9t8LJS3XQ1S8hyu2sM2HO+PyQ8+Qm9s3
	I+TiYAJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQS4-0000000BUw2-2XQZ;
	Fri, 09 Aug 2024 14:18:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQRM-0000000BUct-1IUa
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:18:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRI-0006mQ-Gu; Fri, 09 Aug 2024 16:17:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRI-005gZA-2l; Fri, 09 Aug 2024 16:17:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRH-001JLI-39;
	Fri, 09 Aug 2024 16:17:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:17:54 +0200
Message-Id: <20240809141755.312665-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809141755.312665-1-a.fatoum@pengutronix.de>
References: <20240809141755.312665-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_071800_368058_2C8F7FFE 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] efi: payload: alert user if CONFIG_FS_EFI is missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The /boot mount point is created by the EFI file system support when it
detects the ESP. Rework the error message to point this out.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/init.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/efi/payload/init.c b/efi/payload/init.c
index 5701d7ad6dcf..35cd8fc71661 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -370,7 +370,8 @@ static int efi_late_init(void)
 		return 0;
 
 	if (!get_mounted_path("/boot")) {
-		pr_warn("boot device couldn't be determined\n");
+		pr_warn("boot device couldn't be determined%s\n",
+			IS_ENABLED(CONFIG_FS_EFI) ? " without CONFIG_FS_EFI" : "");
 		return 0;
 	}
 
-- 
2.39.2



