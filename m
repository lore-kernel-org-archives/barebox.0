Delivery-date: Fri, 06 Jun 2025 07:58:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6V-004HJA-0P
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 07:58:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6P-0004tq-7O
	for lore@pengutronix.de; Fri, 06 Jun 2025 07:58:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cMAxISJ1Mq4KO90X0+J6uOD/BqwpZrmCaVJH7Kess8Q=; b=167wqWi7babIpb89UUyNI9umK4
	GD4Q+yTcEK+6chLrwiNirX3qsPNk8kW7rXLcJ184XgxCqWTdSvaEVUws5DICFaDhI7K0tKidJh5cP
	dQ9tBBc2RonPws5qu7jUitV7383o+bOxjtO6HFE8nqyEORdVOK1RPjvQ9neuEpnv4qsXK09nlqh+m
	NQmTtradOqEfuPUm+uqasdWCcGm0aJ+tC+tnGffU0FOmEQGKuRhmGhzgh6f/guiKP9QTh0gq0lqmD
	iZLHxwvalXFIkx1U1bMDZyuZGEbqAixjpIfOuwcNBMAFHtOW4gFPArvmXzpp3DuV7Q2t3im5PGUuE
	sX4tIRBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5a-0000000H9Ky-3YTd;
	Fri, 06 Jun 2025 05:58:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5R-0000000H9DV-0zpS
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 05:57:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNQ5P-0003r4-Vr; Fri, 06 Jun 2025 07:57:52 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 07:57:40 +0200
Message-Id: <20250606055748.1990383-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606055748.1990383-1-a.fatoum@barebox.org>
References: <20250606055748.1990383-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_225753_268585_2445B468 
X-CRM114-Status: UNSURE (   9.74  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/16] video: vpl: factor out vpl_for_each
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently resolve the video pipeline on ioctl instead of at probe
time. In preparation for allowing resolution at probe time, provide a
helper function for resolving the video pipeline without calling the
ioctl right away.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/vpl.c | 27 ++++++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/video/vpl.c b/drivers/video/vpl.c
index 6fcba0901165..0b86ef9f7e81 100644
--- a/drivers/video/vpl.c
+++ b/drivers/video/vpl.c
@@ -53,8 +53,9 @@ struct vpl *of_vpl_get(struct device_node *node, int port)
 	return of_find_vpl(node);
 }
 
-int vpl_ioctl(struct vpl *vpl, unsigned int port,
-		unsigned int cmd, void *ptr)
+static int vpl_foreach_endpoint(struct vpl *vpl, unsigned int port,
+				int (*fn)(struct vpl *, unsigned port, void *data),
+				void *data)
 {
 	struct device_node *node, *endpoint;
 	int ret;
@@ -96,10 +97,30 @@ int vpl_ioctl(struct vpl *vpl, unsigned int port,
 		}
 
 		pr_debug("%s: looked up %pOF: %pS\n", __func__, remote, remote_vpl->ioctl);
-		ret = remote_vpl->ioctl(remote_vpl, remote_port_id, cmd, ptr);
+		ret = fn(remote_vpl, remote_port_id, data);
 		if (ret)
 			return ret;
 	}
 
 	return 0;
 }
+
+struct vpl_ioctl {
+	unsigned cmd;
+	void *ptr;
+};
+
+static int vpl_remote_ioctl(struct vpl *vpl, unsigned port, void *_data)
+{
+	struct vpl_ioctl *data = _data;
+
+	return vpl->ioctl(vpl, port, data->cmd, data->ptr);
+}
+
+int vpl_ioctl(struct vpl *vpl, unsigned int port,
+		unsigned int cmd, void *ptr)
+{
+	struct vpl_ioctl data = { .cmd = cmd, .ptr = ptr };
+
+	return vpl_foreach_endpoint(vpl, port, vpl_remote_ioctl, &data);
+}
-- 
2.39.5



