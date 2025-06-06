Delivery-date: Fri, 06 Jun 2025 07:58:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6T-004HIG-2I
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 07:58:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNQ6O-0004sl-OU
	for lore@pengutronix.de; Fri, 06 Jun 2025 07:58:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S2CMakGaIVbOkKQXqDpRq7zjMg0ALtpivkm/jZw0Cyo=; b=0UW/i1muQogGDMJW/eGuO+NdN7
	InAqWmlcu9qCKAAQ32geRDY16b9iiHOoSGLNRC/Edrlz3F+bxwBNTlYummKNQfmLkSpgXtCLAE8DN
	616Dm7cbUWLHm0ZrYy5fizCriEkz9ncu45R7Igpf/xXseiD7qFiLv9W40FrKOV5A5Hv3Arpq0sLnE
	KHd2G1Y+mbXtaN54Pdcf0nPINh57E1InY352+2IcRzlLhT9+p7iOYhNUoOyt/TLcmaSgz456ojmvg
	D/7QDT3CrbqGhJ8POKDcfw7p9lGF6cOir8hika8D0WdMhqx/HHHWG9oTcqZl7w3nNrQxQ6xhcoFvY
	VOHIC82g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5c-0000000H9NZ-3D0H;
	Fri, 06 Jun 2025 05:58:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQ5R-0000000H9DU-0639
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 05:57:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNQ5P-0003r4-Or; Fri, 06 Jun 2025 07:57:51 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 07:57:39 +0200
Message-Id: <20250606055748.1990383-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606055748.1990383-1-a.fatoum@barebox.org>
References: <20250606055748.1990383-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_225753_054974_757679D4 
X-CRM114-Status: GOOD (  11.18  )
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
Subject: [PATCH v2 07/16] video: vpl: fix potential read of uninitialized variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

remote_port_id is passed to the ioctl callback, so make sure it has a
value if the endpoint has no reg property.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/vpl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/vpl.c b/drivers/video/vpl.c
index 35fb342a8f25..6fcba0901165 100644
--- a/drivers/video/vpl.c
+++ b/drivers/video/vpl.c
@@ -70,7 +70,7 @@ int vpl_ioctl(struct vpl *vpl, unsigned int port,
 	for_each_child_of_node(node, endpoint) {
 		struct device_node *remote, *remote_parent;
 		struct vpl *remote_vpl;
-		u32 remote_port_id;
+		u32 remote_port_id = 0;
 
 		remote = of_graph_get_remote_port(endpoint);
 		if (!remote) {
-- 
2.39.5



