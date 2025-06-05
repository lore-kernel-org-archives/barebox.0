Delivery-date: Thu, 05 Jun 2025 23:14:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHv5-0049QK-1b
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 23:14:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNHuy-00061N-Rt
	for lore@pengutronix.de; Thu, 05 Jun 2025 23:14:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9HJXSR3UofC0P89DhNFHrYRdWqPpAbPZh2d6k5cgKSo=; b=he8vlFAovSkX+hkMIFEH5MDsgQ
	al+6IYUgPxoqD2TCMyeCLoYDxpSFxzH+R1fmMnIMmMTe7EpKFGBd0SR39Ma+wwEvFIGR+jM5xmNdm
	XEcC/n6qMloMPpcoe86PP1uoJWN4UJqXDIjwSaXjwMOVzb28ZFVYUkgjAl2Cy/e+ndoi6WfSw5Bs0
	CQ6iz31w10/mIYvpgEsU/AaEQmrZTmVoM/ZTFo8TXpeWt24PSgJpfxiXYWMRDEE52PXCI+XgERKWt
	IAlg6oOBH7785I+LcSjj4MjoKQp2hOmealMN5lQg+ZMnlMawfBkPg3M93wgkni+ffTM3fRzqRQfhO
	PZ7127oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHuF-0000000GeuB-46l0;
	Thu, 05 Jun 2025 21:13:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNHoB-0000000GeFp-09p1
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 21:07:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNHo9-00079B-QR; Thu, 05 Jun 2025 23:07:29 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu,  5 Jun 2025 23:07:20 +0200
Message-Id: <20250605210726.1916656-11-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605210726.1916656-1-a.fatoum@barebox.org>
References: <20250605210726.1916656-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140731_086843_7EC78DCD 
X-CRM114-Status: GOOD (  14.89  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/16] video: vpl: add vpl_bridge abstraction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux drivers can make use of devm_drm_of_get_bridge to get a handle on
the next bridge. Add similar functionality to barebox as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/vpl.c | 60 ++++++++++++++++++++++++++++++++++++++++++---
 include/video/vpl.h | 15 ++++++++++++
 2 files changed, 72 insertions(+), 3 deletions(-)

diff --git a/drivers/video/vpl.c b/drivers/video/vpl.c
index da8bd93b7d6a..0235c1e790bd 100644
--- a/drivers/video/vpl.c
+++ b/drivers/video/vpl.c
@@ -53,14 +53,15 @@ struct vpl *of_vpl_get(struct device_node *node, int port)
 	return of_find_vpl(node);
 }
 
-static int vpl_foreach_endpoint(struct vpl *vpl, unsigned int port,
+static int vpl_foreach_endpoint(struct vpl *vpl, unsigned int port, int endpoint_id,
 				int (*fn)(struct vpl *, unsigned port, void *data),
 				void *data)
 {
 	struct device_node *node, *endpoint;
 	int ret;
 
-	pr_debug("%s: %pOF port %d\n", __func__, vpl->node, port);
+	pr_debug("%s: %pOF port %d endpoint %d\n", __func__, vpl->node,
+		 port, endpoint_id);
 
 	node = of_graph_get_port_by_id(vpl->node, port);
 	if (!node) {
@@ -73,6 +74,16 @@ static int vpl_foreach_endpoint(struct vpl *vpl, unsigned int port,
 		struct vpl *remote_vpl;
 		u32 remote_port_id = 0;
 
+		if (endpoint_id >= 0) {
+			u32 local_endpoint_id = 0;
+			of_property_read_u32(endpoint, "reg", &local_endpoint_id);
+			if (local_endpoint_id != endpoint_id) {
+				pr_debug("%s: skipping endpoint %pOF with id %d\n",
+					 __func__, endpoint, local_endpoint_id);
+				continue;
+			}
+		}
+
 		remote = of_graph_get_remote_port(endpoint);
 		if (!remote) {
 			pr_debug("%s: no remote for endpoint %pOF\n", __func__, endpoint);
@@ -128,5 +139,48 @@ int vpl_ioctl(struct vpl *vpl, unsigned int port,
 {
 	struct vpl_ioctl data = { .cmd = cmd, .ptr = ptr };
 
-	return vpl_foreach_endpoint(vpl, port, vpl_remote_ioctl, &data) ?: data.err;
+	return vpl_foreach_endpoint(vpl, port, -1, vpl_remote_ioctl, &data) ?: data.err;
+}
+
+static int vpl_alloc_bridge(struct vpl *vpl, unsigned port, void *_bridge)
+{
+	struct vpl_bridge **bridge = _bridge;
+
+	(*bridge) = malloc(sizeof(**bridge));
+	(*bridge)->vpl = vpl;
+	(*bridge)->port = port;
+
+	return 1;
+}
+
+struct vpl_bridge *devm_vpl_of_get_bridge(struct device *dev, struct device_node *np,
+					  unsigned int port, unsigned int endpoint)
+{
+	struct vpl_bridge *bridge = NULL;
+	struct vpl *vpl;
+	int ret;
+
+	vpl = of_find_vpl(np);
+	if (!vpl)
+		return ERR_PTR(-EPROBE_DEFER);
+
+	ret = vpl_foreach_endpoint(vpl, port, endpoint, vpl_alloc_bridge, &bridge);
+	if (ret < 0)
+		return ERR_PTR(ret);
+
+	return bridge ?: ERR_PTR(-EINVAL);
+}
+
+int vpl_bridge_ioctl(struct vpl_bridge *bridge, unsigned int cmd, void *ptr)
+{
+	struct vpl *vpl;
+
+	if (IS_ERR_OR_NULL(bridge))
+		return PTR_ERR_OR_ZERO(bridge);
+
+	vpl = bridge->vpl;
+	if (!vpl->ioctl)
+		return -EOPNOTSUPP;
+
+	return vpl->ioctl(vpl, bridge->port, cmd, ptr);
 }
diff --git a/include/video/vpl.h b/include/video/vpl.h
index 5ea3d6dcf202..a8fda3e6294b 100644
--- a/include/video/vpl.h
+++ b/include/video/vpl.h
@@ -20,9 +20,24 @@ struct vpl {
 	struct list_head list;
 };
 
+/**
+ * struct vpl_bridge - bridge control structure
+ */
+struct vpl_bridge {
+	/** @vpl: pointer to vpl instance of bridge */
+	struct vpl *vpl;
+	/** @port: remote input port on bridge */
+	int port;
+};
+
 int vpl_register(struct vpl *);
 int vpl_ioctl(struct vpl *, unsigned int port,
 		unsigned int cmd, void *ptr);
+struct vpl_bridge;
+int vpl_bridge_ioctl(struct vpl_bridge *,
+		     unsigned int cmd, void *ptr);
+struct vpl_bridge *devm_vpl_of_get_bridge(struct device *dev, struct device_node *np,
+					  unsigned int port, unsigned int endpoint);
 
 struct vpl *of_vpl_get(struct device_node *node, int port);
 
-- 
2.39.5



