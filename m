Delivery-date: Mon, 19 Feb 2024 15:52:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc50b-00EkVB-2b
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 15:52:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc50b-0007J9-65
	for lore@pengutronix.de; Mon, 19 Feb 2024 15:52:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zw1Nl1pPfVN2/WODCt8o4AFVrt9GZPtMFa2JuJK8B38=; b=Oo3Qfvon3ZHJcZrgph3go3NrK8
	rdZWUk3/B6tyjPeuqUj8rCEC99Td88Yu4Cutxo9D8qHA8ZHp1puXzK3KE6TxfFbBYTtUdZRM8hItK
	vt5hMi98B4ZQUpmCNsJI7sE52ZKwEw8CUkxR1r8fd+VRPKS3WCdmty0rDAr9zJ70IGf0PQqAXr3gQ
	wS4uMiIT5WP9tIAI8i7t3wkttM+N4JWW5wAnv9YuTglFVRXV/u1dVkeAFKPtq5Gsf0ifvSHcHWCG5
	VuVcq36p65TezkWoqXPSaw3WGCB8wb/5Kp3uWPo1aMLO01Qo6Y2xEr8xQ0Eklo3xYpXo1scppiPcK
	qiPNuTyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc504-0000000Avee-033K;
	Mon, 19 Feb 2024 14:52:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc4zy-0000000AvcO-3cIn
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 14:52:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rc4zx-0006le-Bs; Mon, 19 Feb 2024 15:52:01 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rc4zw-001fcP-VQ; Mon, 19 Feb 2024 15:52:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rc4zw-008lEV-2p;
	Mon, 19 Feb 2024 15:52:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 15:51:58 +0100
Message-Id: <20240219145159.1962618-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219145159.1962618-1-s.hauer@pengutronix.de>
References: <20240219145159.1962618-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_065202_946702_559C62B7 
X-CRM114-Status: GOOD (  15.36  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] bootsource: add function to get device_node we booted from
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a relation between the bootsource and the corresponding
device_node. Add a function to get the device_node we booted from.
This is already open coded in of_fixup_bootargs_bootsource(),
use the newly created function for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootsource.c  | 14 ++++++++++++++
 common/oftree.c      |  7 +------
 include/bootsource.h |  1 +
 3 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/common/bootsource.c b/common/bootsource.c
index da528a5b9b..5666d8d30d 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -108,6 +108,20 @@ char *bootsource_get_alias_name(void)
 	return basprintf("%s%d", stem, bootsource_instance);
 }
 
+struct device_node *bootsource_of_node_get(struct device_node *root)
+{
+	struct device_node *np;
+	char *alias_name;
+
+	alias_name = bootsource_get_alias_name();
+
+	np = of_find_node_by_alias(root, alias_name);
+
+	free(alias_name);
+
+	return np;
+}
+
 void bootsource_set_alias_name(const char *name)
 {
 	bootsource_alias_name = name;
diff --git a/common/oftree.c b/common/oftree.c
index 51eebd36bd..c12b3cfb16 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -124,14 +124,10 @@ void of_print_cmdline(struct device_node *root)
 static int of_fixup_bootargs_bootsource(struct device_node *root,
 					struct device_node *chosen)
 {
-	char *alias_name = bootsource_get_alias_name();
 	struct device_node *bootsource;
 	int ret = 0;
 
-	if (!alias_name)
-		return 0;
-
-	bootsource = of_find_node_by_alias(root, alias_name);
+	bootsource = bootsource_of_node_get(root);
 	/*
 	 * If kernel DTB doesn't have the appropriate alias set up,
 	 * give up and exit early. No error is reported.
@@ -140,7 +136,6 @@ static int of_fixup_bootargs_bootsource(struct device_node *root,
 		ret = of_set_property(chosen, "bootsource", bootsource->full_name,
 				      strlen(bootsource->full_name) + 1, true);
 
-	free(alias_name);
 	return ret;
 }
 
diff --git a/include/bootsource.h b/include/bootsource.h
index f2ab3a2ad4..33ad269460 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -33,6 +33,7 @@ char *bootsource_get_alias_name(void);
 const char *bootsource_to_string(enum bootsource src);
 const char *bootsource_get_alias_stem(enum bootsource bs);
 int bootsource_of_alias_xlate(enum bootsource bs, int instance);
+struct device_node *bootsource_of_node_get(struct device_node *root);
 
 /**
  * bootsource_set - set bootsource with optional DT mapping table
-- 
2.39.2



