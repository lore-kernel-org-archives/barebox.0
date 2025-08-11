Delivery-date: Mon, 11 Aug 2025 14:29:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRf2-009KfZ-17
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:29:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRel-0005kr-4Q
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:29:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YiQHuC76Esrdn3ZAm6lKOfy1RlBvpP3+qbOhuBA3ftc=; b=bld27rHaFkpa+sMRjmmrJxch+k
	zMQXOn248Icn8s0hBsyV9ok4lz/wvacABRtkbivWY6S2hEnTUBnXas0+ALDT7bRkEpzZwTcvmSlwb
	jGIpADwYEwfqSpXwPJzk9Yq8fo6buJllPmTricPlABLaLsbu339a7mnhuWd7/y67z3VR5jruFX7F+
	sDe5EhKfZPDWOTnPSOivTM5kkykb4LnIPdVqi94HE/Q52OtYVrlszrbiaNyJfpQvtGpWTsJhbnb/u
	jEGuAFZqqbPTaiQKmIBAi+KgzV0VLWCDyjgi5EGpeZu35TshIpn6taG2J0F1pvcfki+FnLA37s1MP
	idc2rVlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdj-00000007dcC-1JyA;
	Mon, 11 Aug 2025 12:28:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRde-00000007dVs-2Tej
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdb-0004WP-EX; Mon, 11 Aug 2025 14:28:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:43 +0200
Message-Id: <20250811122824.1667791-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052830_652496_0A52E629 
X-CRM114-Status: GOOD (  11.19  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/44] lib: param: rename dev_remove_param to param_remove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function doesn't take a device argument, so rename it to reflect
that.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/globalvar.c      | 6 +++---
 common/partitions/dos.c | 2 +-
 common/partitions/efi.c | 2 +-
 include/param.h         | 4 ++--
 lib/parameter.c         | 5 ++---
 5 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 31b24d594c6d..1ef98f44bc67 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -39,7 +39,7 @@ void globalvar_remove(const char *name)
 		if (fnmatch(name, p->name, 0))
 			continue;
 
-		dev_remove_param(p);
+		param_remove(p);
 	}
 }
 
@@ -282,7 +282,7 @@ int nvvar_remove(const char *name)
 
 		fname = basprintf("/env/nv/%s", p->name);
 
-		dev_remove_param(p);
+		param_remove(p);
 
 		unlink(fname);
 		free(fname);
@@ -510,7 +510,7 @@ static int globalvar_remove_unqualified(const char *name)
 	if (!(p->flags & PARAM_GLOBALVAR_UNQUALIFIED))
 		return -EEXIST;
 
-	dev_remove_param(p);
+	param_remove(p);
 
 	return 0;
 }
diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 6204fdabc81f..ce2e21357d52 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -311,7 +311,7 @@ static void dos_partition_free(struct partition_desc *pd)
 		free(dpart);
 	}
 
-	dev_remove_param(dpd->disksig.param);
+	param_remove(dpd->disksig.param);
 
 	free(pd);
 }
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index d237f734df50..88d8a2d739c4 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -573,7 +573,7 @@ static void efi_partition_free(struct partition_desc *pd)
 		free(epart);
 	}
 
-	dev_remove_param(epd->param_guid);
+	param_remove(epd->param_guid);
 	free(epd->ptes);
 	free(epd->gpt);
 	free(epd);
diff --git a/include/param.h b/include/param.h
index 1b0315999e39..856f7a52e1b8 100644
--- a/include/param.h
+++ b/include/param.h
@@ -105,7 +105,7 @@ struct param_d *dev_add_param_file_list(struct device *dev, const char *name,
 struct param_d *dev_add_param_fixed(struct device *dev, const char *name,
 				    const char *value);
 
-void dev_remove_param(struct param_d *p);
+void param_remove(struct param_d *p);
 
 void dev_remove_parameters(struct device *dev);
 
@@ -232,7 +232,7 @@ static inline struct param_d *dev_add_param_fixed(struct device *dev,
 	return NULL;
 }
 
-static inline void dev_remove_param(struct param_d *p) {}
+static inline void param_remove(struct param_d *p) {}
 
 static inline void dev_remove_parameters(struct device *dev) {}
 
diff --git a/lib/parameter.c b/lib/parameter.c
index 39a245242337..b51cee3d0e08 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -1006,11 +1006,10 @@ struct param_d *dev_add_param_file_list(struct device *dev, const char *name,
 
 
 /**
- * dev_remove_param - remove a parameter from a device and free its
- * memory
+ * param_remove - remove a parameter and free its memory
  * @param p	The parameter
  */
-void dev_remove_param(struct param_d *p)
+void param_remove(struct param_d *p)
 {
 	p->set(p->dev, p, NULL);
 	list_del(&p->list);
-- 
2.39.5



