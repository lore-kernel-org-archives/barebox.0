Delivery-date: Fri, 13 Mar 2026 14:33:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12e5-000DHt-1m
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:33:41 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12dp-0007pG-HM
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:33:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+3XFb5ZEhT2k//fpJuWNlDm11o3GjBFX0QoeABuxSMY=; b=B5vFGRaO9rE2luA7fTKgCynh9+
	+htwGVD9CPw8alxZSCLEuevNPe8EZZUGcoEZltr9hLOPGfbXc4vUvr8jnRHC33z4tK6U88u/wpobi
	bIOsnLaXOWe3K892CFR9+yu21pU0L4BTX4dkKrz4upC3dvTnzGv7nbxX0DusXL1d2A4yiHgbTScfm
	iS3eO387s/kkxw9Fh1PHcWquIZTsLSOSexdXe224V0AOMeiQMw307LSYJ9LMRlhNZH/WKqdBF4S3u
	cHkW11Tniavtw5/EKyXoMUNMRAFScLgQLuNs2/mjYh5C5TYAYDfAaFw6+hlX5PZq4ZpvYRs140uRm
	W+O4AryA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d8-00000000FY5-1N6X;
	Fri, 13 Mar 2026 13:32:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d5-00000000FVX-1SYh
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=+3XFb5ZEhT2k//fpJuWNlDm11o3GjBFX0QoeABuxSMY=; b=hM6XbAJ+HvqYc4fbflQwVy5G0G
	leADkHS7rMqKni4atAZdjcbsa2/SzaaKxWBMOPMidqhvVs9dMFKhbPp5stFb3FKlfbheFs0RFr6Rp
	Vv6j7ldi0HXk/tO2iC/AaATzqdZm/xxpxRGu0jBZ9pDmGq3umdvWXCGzJwjwnmz7hAoRtXMF5V9UP
	RxX9x6fsj/wUS4scphBaApBfqEET8Urns3ZnCUko/A3UEXGpIKseRwgYXW/64Wq6w+0+2B8fCzs9+
	NNIJ3HkB/r4IRZovLIMeZtzWtAcqk0W/s6JORjGSZ/hIovH6mJMBpPaJkq0uO0Vd/Yy1zDxYqkO73
	jessHXHw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cy-00000003OSW-3Az7
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0006mu-GI; Fri, 13 Mar 2026 14:32:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0005SR-0z;
	Fri, 13 Mar 2026 14:32:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-3EIv;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Mar 2026 14:25:40 +0100
Message-ID: <20260313132631.2257573-57-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_016363_AA704261 
X-CRM114-Status: GOOD (  11.17  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 56/58] of: fdt: refuse / in property and node names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

/ is used as delimiter between nodes, so seeing it in a device node name
hints at something fishy going on, so refuse that outright.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/barebox/177340042002.206359.73330334326620046.b4-ty@pengutronix.de
---
 drivers/of/fdt.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 2ef7658bc4ab..8418549a4005 100644
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



