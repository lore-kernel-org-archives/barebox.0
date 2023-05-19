Delivery-date: Fri, 19 May 2023 12:02:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzwwh-006Xr7-Ae
	for lore@lore.pengutronix.de; Fri, 19 May 2023 12:02:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzwwf-0004Or-1I
	for lore@pengutronix.de; Fri, 19 May 2023 12:02:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hc8HPtNwO557ITfa8ynFZ5EsTe9UP06m14A9MhaiUC4=; b=QUUtewuTpzOxM+qu+iQ5cpp4qN
	AZcbshVPf/eqACRUWmFPkVAW+Bn3gNhzHvW8FaUKyEs08yvDc3Ax0npnr2JLOe2LWzbsa4Vx9NyCY
	PAYMwDhmIaRfhr2rw+3fqpWKYq2OmIss6u5CAyZ2bHUFSMs/859jbdF2BTMuUwrgX9yNirYcWac9I
	TL6jDKHyo+dJCHPsxyAXWC2UEYwAY7sG6FWckYvrKzaTLH3kuseI+FPtO3VRw38zdYKoRJ1Iust21
	lxYsuzinkJ1o+LEPoDdiozjNh8BpOJjL1mCRENMjQexm/erZacxx/QGgE4PxHsV+DIPXNYJ+diVTj
	AK+Q7DnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwvY-00Fp2F-0S;
	Fri, 19 May 2023 10:01:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwvS-00Fozy-1y
	for barebox@bombadil.infradead.org;
	Fri, 19 May 2023 10:01:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Hc8HPtNwO557ITfa8ynFZ5EsTe9UP06m14A9MhaiUC4=; b=ZRDr2+EgpVqJ5bu4YMKdOpPNgc
	xKgnmZTG/jS7iSbHlAuGGWq5cSP2+mbEz3geMwhmpDEIE3Ac1S0JakusEJKYaYCGw5jaIhqLzTXyr
	IGyatGqno5xrp+LT3gGpSIUUcAcqjMcF09XnMKzewi665t/8YkM6TtAPLiTcNa4sbumRX72lC8I4R
	LDzpT+HoKSIjTGboOehcNFpL2IHJtR/gQUVgItJXuiAcZRdr6adMSsoHE0zQeaBZEWtthFdjiEMu8
	nbwEOwKyb8Q+hZn7SuT141ZLpRVH4YIhalxHwwDESsNuVsnZej2asgeM1x+KM1+rRjphhCOhwrKj+
	0voLNKcw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwvP-00Fqz4-1W
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 10:01:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvL-0003qf-9Z; Fri, 19 May 2023 12:01:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvK-001HUD-KV; Fri, 19 May 2023 12:01:22 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pzwvJ-009vVN-8A; Fri, 19 May 2023 12:01:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 May 2023 12:01:16 +0200
Message-Id: <20230519100120.2365970-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230519100120.2365970-1-a.fatoum@pengutronix.de>
References: <20230519100120.2365970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_110127_619593_9B5CC2A5 
X-CRM114-Status: GOOD (  10.68  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/6] treewide: drop null pointer checks around of_delete_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_delete_node is a no-op when called on a null pointer, so remove the
useless null checks around it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 commands/of_dump.c     | 3 +--
 commands/of_property.c | 3 +--
 common/blspec.c        | 3 +--
 common/state/state.c   | 3 +--
 4 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/commands/of_dump.c b/commands/of_dump.c
index 86755ff1e445..87a0b1ba535c 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -120,8 +120,7 @@ static int do_of_dump(int argc, char *argv[])
 		of_print_nodes(node, 0, maxpropsize);
 
 out:
-	if (of_free)
-		of_delete_node(of_free);
+	of_delete_node(of_free);
 
 	return ret;
 }
diff --git a/commands/of_property.c b/commands/of_property.c
index 063e97775c59..b507a3541e0a 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -401,8 +401,7 @@ static int do_of_property(int argc, char *argv[])
 
 out:
 
-	if (root)
-		of_delete_node(root);
+	of_delete_node(root);
 
 	return ret;
 }
diff --git a/common/blspec.c b/common/blspec.c
index 4b4e04b03997..e95a8dba8d76 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -473,8 +473,7 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 	ret = false;
 
 out:
-	if (root)
-		of_delete_node(root);
+	of_delete_node(root);
 	free(filename);
 
 	return ret;
diff --git a/common/state/state.c b/common/state/state.c
index 040835702b66..6b4acbb32bcc 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -559,8 +559,7 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 		goto out;
 
 	/* delete existing node */
-	if (node)
-		of_delete_node(node);
+	of_delete_node(node);
 
 	return 0;
 
-- 
2.39.2



