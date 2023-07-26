Delivery-date: Wed, 26 Jul 2023 21:29:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOkCg-00BBs5-62
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 21:29:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOkCd-0001uD-L5
	for lore@pengutronix.de; Wed, 26 Jul 2023 21:29:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MjYZiRqhjIqulM3qZvujRS4YsgvWUGzMWJFF1GwDoRo=; b=Mgt6pyT915hGK+qB5R71azUJ0Q
	UDiZqrdozw5TyrhoXDuIE28rLwhLgr5K0/gLm6RHoN7RpCEZNnpCpnGqDxVOjSHYFnxGHXZ+EJx+x
	i3c0gQVk42i+yy9gTaKs1cLm0B3RNn1y8WI0HDiqMzrqQYLKobZkakhy0pRF/lu0geleC3HImjA4g
	eMnEGuI+rKIMlKLtLVXdnncbwQnNAXYYCa/JTgcZpVt2macLJUNE3u6WuCQJtD0zZMfPXVMwzb14p
	OAYL0fN2jQ9ebqsCNS0cP35tRP4GuYbO0bpLa+onnTylqregtV0sac5nFOLgepuy/c7HCyH/rdAbK
	XTizjdgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOkBX-00BOG1-1p;
	Wed, 26 Jul 2023 19:28:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOkBP-00BOCg-11
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 19:28:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qOkBO-0001WB-0n; Wed, 26 Jul 2023 21:28:26 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qOkBN-002JSw-CN; Wed, 26 Jul 2023 21:28:25 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qOkBM-003qgD-2t;
	Wed, 26 Jul 2023 21:28:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Jul 2023 21:28:24 +0200
Message-Id: <20230726192824.917472-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_122827_400343_C21DEE3C 
X-CRM114-Status: GOOD (  10.50  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] bootm: export bootm_set_verify_mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have bootm_get_verify_mode() exported, so export
bootm_set_verify_mode() for symmetry. The same can already be achieved
by changing $global.bootm.verify, but direct access makes it easier to
set a default value that can be overridden by built-in environment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c  | 5 +++++
 include/bootm.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index 791d6b8fbbf1..c46b00a86f64 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -70,6 +70,11 @@ enum bootm_verify bootm_get_verify_mode(void)
 	return bootm_verify_mode;
 }
 
+void bootm_set_verify_mode(enum bootm_verify mode)
+{
+	bootm_verify_mode = mode;
+}
+
 static const char * const bootm_verify_names[] = {
 #ifndef CONFIG_BOOTM_FORCE_SIGNED_IMAGES
 	[BOOTM_VERIFY_NONE] = "none",
diff --git a/include/bootm.h b/include/bootm.h
index 655c5152d97e..ee2b574521db 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -145,6 +145,7 @@ int bootm_load_devicetree(struct image_data *data, void *fdt,
 int bootm_get_os_size(struct image_data *data);
 
 enum bootm_verify bootm_get_verify_mode(void);
+void bootm_set_verify_mode(enum bootm_verify mode);
 
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
 
-- 
2.39.2



