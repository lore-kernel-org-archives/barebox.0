Delivery-date: Thu, 12 Mar 2026 17:05:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0iXB-00AspF-04
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 17:05:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0iXB-0002yJ-BC
	for lore@pengutronix.de; Thu, 12 Mar 2026 17:05:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HkXkCAW+JQ8bFKnqlCVO1+s7esjc5AUn/sroptARcz4=; b=jJsNZcicot+/Yp1DURPhd2YOje
	8PR5hFP2ZFZWL6nU3rV0Jh2ULHXP4o6/sqrBKGYZ/ib4yfNj5m3Hhe9s0kuJTyDLT2CDvEB30TtWd
	3dMBBVSESl0cYPcisdl+ub+mNd8iacUcyBiV45bIoJu26SIXg9fSAaorRk3f1VeNSdQ6Mhu6lEi9L
	pw42M+TOIUYy0k4vMyRWFMJ3rd1kRMWhUVf2Oh0ySlCWVC27x82a0Fax8uwGqwmbncbNTcIwfJNwn
	uZfTPZprBgWqDZ9fKhwzQf8Me3CrKFLzPGAlxCo0cezq4IbRzujnWUtk0ctA7RC/iCsYUSKKfX6m7
	Bl5ylyjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0iWe-0000000EUHp-3zfK;
	Thu, 12 Mar 2026 16:04:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0iWc-0000000EUH0-1vdN
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 16:04:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0iWa-0002qw-I6; Thu, 12 Mar 2026 17:04:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0iWZ-0052uD-05;
	Thu, 12 Mar 2026 17:04:36 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0iWa-00000000oqo-19KK;
	Thu, 12 Mar 2026 17:04:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 17:03:54 +0100
Message-ID: <20260312160433.194560-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_090438_519384_E25387B0 
X-CRM114-Status: GOOD (  11.21  )
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
Subject: [PATCH master] of: fdt: refuse / in property and node names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

/ is used as delimiter between nodes, so seeing it in a device node name
hints at something fishy going on, so refuse that outright.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 13fb4b5c099e..1648f4c2d945 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -67,6 +67,14 @@ static inline bool is_reserved_name(const char *name)
 	return *name == '$';
 }
 
+static inline bool is_allowed_input_name(const char *name)
+{
+	/* We are stricter on input than on output, because we assume barebox
+	 * code won't attempt naming nodes bogously.
+	 */
+	return !is_reserved_name(name) && !strchr(name, '/');
+}
+
 static int of_reservemap_num_entries(const struct fdt_header *fdt)
 {
 	/*
@@ -248,7 +256,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 				node = root;
 			} else {
 				/* Only the root node may have an empty name */
-				if (!*pathp || is_reserved_name(pathp)) {
+				if (!*pathp || !is_allowed_input_name(pathp)) {
 					ret = -EINVAL;
 					goto err;
 				}
@@ -285,7 +293,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			nodep = fdt_prop->data;
 
 			name = dt_string(&f, dt_strings, fdt32_to_cpu(fdt_prop->nameoff));
-			if (!name || !node ||  is_reserved_name(name)) {
+			if (!name || !node ||  !is_allowed_input_name(name)) {
 				ret = -ESPIPE;
 				goto err;
 			}
-- 
2.47.3



