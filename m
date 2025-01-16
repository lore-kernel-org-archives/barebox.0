Delivery-date: Thu, 16 Jan 2025 10:39:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYMLn-000Y0Z-2f
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 10:39:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYMLn-0007b6-VB
	for lore@pengutronix.de; Thu, 16 Jan 2025 10:39:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Do3t6v5WaLvkH/8s2frq1OGsk58noe9PdKYv7NCToRY=; b=YDKXhKekHkPleT
	wq0K5y/mB3MiwFvQ1ImxJvu8CRPQGdgPqaZz1SbZTxlw/Quppf6ez94FkUCan07jx5Vd684uMjKSV
	+niuXRukH3KWhKBthfOLrjexCAad/ZZpB2yPNwBEnxPlPKo2CT0MAtTOWq0dBZIqHcS7a80mfDL3w
	1FgJgUvmVJJU8/YTi+iaLlheggOoA2LLspN27bNPaYIs/TIdBljcEi4GR2kATDfnwzfk26Q3rJZUu
	PzaaP0QWI95waFYf+D1i1+yvV5PbaeSR/P6OZkilJe0mQaGYaNk2FHj3lbGIoHBqLtFkz5+6PF2zH
	Uma/L0j+NwM/pBN5+aKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYMLD-0000000EOYH-0pR6;
	Thu, 16 Jan 2025 09:39:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYMLA-0000000EOUA-2ruU
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 09:39:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tYML8-0007QB-4Q; Thu, 16 Jan 2025 10:39:02 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tYML7-000EK3-34;
	Thu, 16 Jan 2025 10:39:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tYML7-00723z-2g;
	Thu, 16 Jan 2025 10:39:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 16 Jan 2025 10:38:59 +0100
Message-Id: <20250116093859.1676220-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_013904_718176_4E9BE279 
X-CRM114-Status: GOOD (  11.72  )
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
Cc: Bastian Krause <bst@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: HAB: Allow for semicolons in HAB environment variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With CONFIG_HAB_CERTS_ENV=y, paths and PKCS#11 URIs to the HAB
certificates are taken from environment variables (allowing for better
integration with build systems). In this case these values are passed
internally via compiler macros (-D) to the imx-image host tool. PKCS#11
URIs usually contain semicolons. The semicolons didn't make it through
to the imx-image configuration file due to wrong escapes. Fix this by
expanding the environment variables using make rather than shell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index f195ddb7e8..7dcd8c9892 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -579,7 +579,7 @@ cmd_imximage_S_dcd=						\
 overwrite-hab-env = $(shell set -e; \
       test -n "$(CONFIG_HAB_CERTS_ENV)"; \
       test -n "$$$(1)"; \
-      echo -D$(1)=\\\"$(shell echo $$$(1))\\\")
+      echo -D$(1)=\''"${${1}}"'\')
 
 overwrite-fit-env = $(shell set -e; \
       test -n "$(CONFIG_BOOTM_FITIMAGE_PUBKEY_ENV)"; \
-- 
2.39.5



