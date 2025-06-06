Delivery-date: Fri, 06 Jun 2025 07:59:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6W-004HKA-2U
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 07:59:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6Q-0004vC-9C
	for lore@pengutronix.de; Fri, 06 Jun 2025 07:59:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9HJXSR3UofC0P89DhNFHrYRdWqPpAbPZh2d6k5cgKSo=; b=SCIsYEGVpkk5ahh8TcTQ+gOJ0Q
	49Bk5zJGoTKDglUoW2Vnn+hMQuVh8pbOxVEXnk0pUuABcGRoGyJnK9NlQJqNThrditO731Eb80Uvw
	wBX9PVWJrgt+lhsbJ9fKSJfvs9sb3csKskwsvptVhNwsikxzTl6S6mFdzaZ3JfNIBmUa1c6NGwQDi
	pZMettHEDf8Z4hWqAx49Ef6t560FNNO5IT8khM3TWURWJIQk6+oXk8aVJUKakB+y1xoYNLxaS/WoE
	GgOFwphKk5S2qhOzjzLcDBpKOJMbaIsqMWJkeEE4D8JicTx2F+pevgAAqaadTBoWVz9D9s4n3rlGE
	qbL7XUgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5c-0000000H9MX-0gCa;
	Fri, 06 Jun 2025 05:58:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5R-0000000H9Eq-37ie
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 05:57:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNQ5Q-0003r4-F2; Fri, 06 Jun 2025 07:57:52 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 07:57:42 +0200
Message-Id: <20250606055748.1990383-11-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606055748.1990383-1-a.fatoum@barebox.org>
References: <20250606055748.1990383-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_225753_776089_75358D54 
X-CRM114-Status: GOOD (  15.26  )
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
Subject: [PATCH v2 10/16] video: vpl: add vpl_bridge abstraction
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



