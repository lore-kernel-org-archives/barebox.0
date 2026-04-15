Delivery-date: Wed, 15 Apr 2026 13:11:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCy98-00CObu-0T
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 13:11:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCy97-0008CH-J6
	for lore@pengutronix.de; Wed, 15 Apr 2026 13:11:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6yTApVHTf2UxcWbh9rHMI0FjNl9tbv+WgrwzNVuMTmM=; b=WDqqpRH9fJPvjSM4PDeZ+JuuUH
	EXU0JXZdnkkUaAe40+FR2BBWvi1r1TDQOrawuODoimXYtvxSp3LxMckLj224nPSJ3HAm50lO5DjT8
	CvvCInDIWd5Jd1pzHgDhfrSvhgQD6ayE88j78FbBk82p385OlXPC6JnoCRGcyB+/fCReezbPOA00A
	P7qX170rqTRzKl7bDBTnBm+E6UxIcyMSOVz4cGsjgs7TrkdDCpTqTbT4CnUyOzkF8DRUmBhFly0Jv
	e3anPeeNz2wEwnueqscldBSOvdF9HAGRWyV8tFpi63OlyZNxUkQtYw8h/Hbic1EPjEWOyUKgv4Q6z
	im6A4xXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCy8f-000000011GW-2Zej;
	Wed, 15 Apr 2026 11:10:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCy8c-000000011FJ-1MEH
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 11:10:32 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wCy8Z-0007zH-CZ; Wed, 15 Apr 2026 13:10:27 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 15 Apr 2026 13:10:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260415-v2026-03-0-topic-soc_bin_id-v2-1-81fab6ba5de0@pengutronix.de>
References: <20260415-v2026-03-0-topic-soc_bin_id-v2-0-81fab6ba5de0@pengutronix.de>
In-Reply-To: <20260415-v2026-03-0-topic-soc_bin_id-v2-0-81fab6ba5de0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_041030_376008_EE3DB8E3 
X-CRM114-Status: GOOD (  12.24  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] common: misc: add soc_uid_hex to globalvar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

uidstr and uidbuf could be the same, but don't have to be. This results
in uncertainty on what exactly is the current UID used for
machine_set_hashable and to compare against with TLV.

Add an additional global var, that encodes SoC-UID registers in a
manner uniform across SoCs/manufacturers.

This can now be used to feed as data for bound-soc-uid into
`bareboxtlv-generator.py` or as the value for
`CONFIG_HABV4_CSF_UNLOCK_UID`

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 common/misc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index ecf9574f7a..be896706d6 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -268,6 +268,7 @@ const uuid_t *barebox_get_product_uuid(void)
 BAREBOX_MAGICVAR(global.product.uuid, "SMBIOS-reported product UUID");
 
 static char *soc_uid_str;
+static char *soc_uid_bin_str;
 static void *soc_uid;
 static size_t soc_uid_len;
 
@@ -295,18 +296,22 @@ void barebox_set_soc_uid(const char *uidstr, const void *uidbuf, size_t len)
 	soc_uid = xmemdup(uidbuf, len);
 	soc_uid_len = len;
 
+	soc_uid_bin_str = xzalloc(len * 2 + 1);
+	bin2hex(soc_uid_bin_str, uidbuf, len);
+
 	if (uidstr) {
 		soc_uid_str = xstrdup(uidstr);
 	} else {
-		soc_uid_str = xzalloc(len * 2 + 1);
-		bin2hex(soc_uid_str, uidbuf, len);
+		soc_uid_str = soc_uid_bin_str;
 	}
 
 	machine_id_set_hashable(uidbuf, len);
 
 	globalvar_add_simple_string("soc_uid", &soc_uid_str);
+	globalvar_add_simple_string("soc_uid_hex", &soc_uid_bin_str);
 }
 BAREBOX_MAGICVAR(global.soc_uid, "SoC Unique ID");
+BAREBOX_MAGICVAR(global.soc_uid_hex, "SoC Unique ID (in hex)");
 
 const char *barebox_get_soc_uid(void)
 {

-- 
2.47.3



