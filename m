Delivery-date: Mon, 24 Apr 2023 14:19:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAD-00FZ1d-Hg
	for lore@lore.pengutronix.de; Mon, 24 Apr 2023 14:19:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAD-0004PG-BC
	for lore@pengutronix.de; Mon, 24 Apr 2023 14:19:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n/lkNn6431M6U5S84dcbZOm9+OJCkGHBqtQ4UKqhDOY=; b=rme6dYYP77sL2DpDlF02oUsNRz
	S1ZjrC38agPld2QdosVmQNNMaAw9diDF/0Kbre7lZ9n0M70gTx/Nn06/GCYxizQgpt54Cwk0yEg9x
	/1qBCy6em2DcswcrFL6YfxegL204+SOBLv6V1wmcBTrrW7Vm30bpptiY1OepgRqiAEN6+AmLO9inV
	SCpjsLcr2y1sUDpcukdBzgcn9G+qsN4zqePJxWkFf0QpiOYY4O9KxtrkS8EE/JXV6aGb1kKPjGeU+
	JoKIzAjKh/zkVDmR+liKj+XSxkPfc0edb5nE7Y6rt7fNk8jzVEJx1Ml2eldVRv3OT1W+U/K+MYhMl
	PqT4LoUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv99-00GHZK-26;
	Mon, 24 Apr 2023 12:18:19 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv94-00GHX5-2A
	for barebox@lists.infradead.org;
	Mon, 24 Apr 2023 12:18:15 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id A021E40004;
	Mon, 24 Apr 2023 12:18:12 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Apr 2023 14:18:01 +0200
Message-Id: <20230424121805.150434-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
In-Reply-To: <20230424121805.150434-1-ahmad@a3f.at>
References: <20230424121805.150434-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_051814_849893_E3D551F0 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/7] sandbox: hostfile: don't warn on failed hostfile fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The node is not deleted, so the hostfile driver will probe the node in
any case and error will just be printed twice. Thus drop the checks from
the fixup.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/board/hostfile.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 436a7503befa..424f16acd5fc 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -257,23 +257,14 @@ static int of_hostfile_map_fixup(struct device_node *root, void *ctx)
 
 		ret = linux_open_hostfile(&hf);
 		if (ret)
-			goto out;
+			continue;
 
 		reg[0] = hf.base;
 		reg[1] = hf.size;
 
-		ret = of_property_write_u64_array(node, "reg", reg, ARRAY_SIZE(reg));
-		if (ret)
-			goto out;
-
-		ret = of_property_write_bool(node, "barebox,blockdev", hf.is_blockdev);
-		if (ret)
-			goto out;
-
-		ret = of_property_write_u32(node, "barebox,fd", hf.fd);
-out:
-		if (ret)
-			pr_err("error fixing up %s: %pe\n", hf.devname, ERR_PTR(ret));
+		of_property_write_u64_array(node, "reg", reg, ARRAY_SIZE(reg));
+		of_property_write_bool(node, "barebox,blockdev", hf.is_blockdev);
+		of_property_write_u32(node, "barebox,fd", hf.fd);
 	}
 
 	return 0;
-- 
2.38.4



