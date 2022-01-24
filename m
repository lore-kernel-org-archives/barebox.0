Delivery-date: Mon, 24 Jan 2022 11:08:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBwGq-00BlhO-QT
	for lore@lore.pengutronix.de; Mon, 24 Jan 2022 11:08:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBwGm-00031f-HK
	for lore@pengutronix.de; Mon, 24 Jan 2022 11:08:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToWQK3UFw/oVylx0/+C9f4jRA2Y0Q4O9FBfURkM2UKA=; b=M5L7fH5XnMqwdf
	RYCiIgnZGLjHA8gIBnJ1lDzPBQ2CA42EeCvqHc5qJfaU29G411sm8CEAuWxBEQeJIEHy7Ipxvm94d
	RYAGCDJI2omgNhtUr/YUvbu1JD6GBcsWCmd0bJSQEr7hayNv8SOC0MdzqXE7cSdDIicCbPHvEs8kq
	wMYN5iCqp916uhp7mGEiiQHxaVxB9KZayD49VrKi/18ANU6U5Icy7fUvhOmtKCwaULSD1gPyh+PnC
	PNQkBztJwnQnu/AZGkZexbjbUDcUyRdHi4rxnQJH95/qCWRZlWs0RrNkWxe28yv5U7SbTJxLdSHf1
	NB+WTvMDJbqdJehjzXkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBwFB-002vBZ-2n; Mon, 24 Jan 2022 10:06:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBwDu-002uYj-8X
 for barebox@lists.infradead.org; Mon, 24 Jan 2022 10:05:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1nBwDq-0002CC-GL; Mon, 24 Jan 2022 11:05:14 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mol@pengutronix.de>)
 id 1nBwDp-00C6RH-Bs; Mon, 24 Jan 2022 11:05:12 +0100
Received: from mol by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mol@pengutronix.de>)
 id 1nBwDn-00CGwL-Lg; Mon, 24 Jan 2022 11:05:11 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Mon, 24 Jan 2022 11:04:58 +0100
Message-Id: <20220124100458.2924679-4-m.olbrich@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220124100458.2924679-1-m.olbrich@pengutronix.de>
References: <20220124100458.2924679-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_020518_363697_0F3396DD 
X-CRM114-Status: GOOD (  16.95  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] state: support backend-diskuuid / backend-offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On some platforms (e.g. EFI on x86_64) the state backend can only be
selected by a partiton UUID. On existing devices with a DOS partition
table, there may be no spare partition available for state.

This makes it possible to select the disk via UUID. The exact position is
defined by an explicitly specified offset.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---

I wasn't sure where to add the helper function. Is include/fs.h ok or
should I put it somewhere else?

I'll implement the same helper for dt-utils, so we can avoid additional
#ifdef here.

 common/state/state.c | 55 +++++++++++++++++++++++++++++---------------
 include/fs.h         | 12 ++++++++++
 2 files changed, 49 insertions(+), 18 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 8c34ae83e52b..2a8b12d20c5a 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -592,6 +592,7 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	const char *backend_type;
 	const char *storage_type = NULL;
 	const char *alias;
+	const char *diskuuid;
 	uint32_t stridesize;
 	struct device_node *partition_node;
 	off_t offset = 0;
@@ -607,30 +608,48 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	if (IS_ERR(state))
 		return state;
 
-	partition_node = of_parse_phandle(node, "backend", 0);
-	if (!partition_node) {
-		dev_err(&state->dev, "Cannot resolve \"backend\" phandle\n");
-		ret = -EINVAL;
-		goto out_release_state;
-	}
+	ret = of_property_read_string(node, "backend-diskuuid", &diskuuid);
+	if (ret == 0) {
+		u64 off;
+
+		ret = devpath_from_diskuuid(diskuuid, &state->backend_path);
+		if (ret) {
+			dev_err(&state->dev, "state failed find backend device for diskuuid='%s'\n",
+				diskuuid);
+			goto out_release_state;
+		}
+		ret = of_property_read_u64(node, "backend-offset", &off);
+		if (ret) {
+			dev_err(&state->dev, "'backend-offset' property undefined\n");
+			goto out_release_state;
+		}
+		offset = off;
+	} else {
+		partition_node = of_parse_phandle(node, "backend", 0);
+		if (!partition_node) {
+			dev_err(&state->dev, "Cannot resolve \"backend\" phandle\n");
+			ret = -EINVAL;
+			goto out_release_state;
+		}
 
 #ifdef __BAREBOX__
-	ret = of_partition_ensure_probed(partition_node);
-	if (ret)
-		goto out_release_state;
+		ret = of_partition_ensure_probed(partition_node);
+		if (ret)
+			goto out_release_state;
 
-	ret = of_find_path_by_node(partition_node, &state->backend_path, 0);
+		ret = of_find_path_by_node(partition_node, &state->backend_path, 0);
 #else
-	ret = of_get_devicepath(partition_node, &state->backend_path, &offset, &size);
+		ret = of_get_devicepath(partition_node, &state->backend_path, &offset, &size);
 #endif
-	if (ret) {
-		if (ret != -EPROBE_DEFER)
-			dev_err(&state->dev, "state failed to parse path to backend: %s\n",
-			       strerror(-ret));
-		goto out_release_state;
-	}
+		if (ret) {
+			if (ret != -EPROBE_DEFER)
+				dev_err(&state->dev, "state failed to parse path to backend: %s\n",
+				       strerror(-ret));
+			goto out_release_state;
+		}
 
-	state->backend_reproducible_name = of_get_reproducible_name(partition_node);
+		state->backend_reproducible_name = of_get_reproducible_name(partition_node);
+	}
 
 	ret = of_property_read_string(node, "backend-type", &backend_type);
 	if (ret) {
diff --git a/include/fs.h b/include/fs.h
index cd5eb571e08e..1a2f9c7f8e16 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -177,4 +177,16 @@ static inline const char *devpath_to_name(const char *devpath)
 	return devpath;
 }
 
+static inline int devpath_from_diskuuid(const char *diskuuid, char **devpath)
+{
+	struct cdev *cdev;
+
+	cdev = cdev_by_diskuuid(diskuuid);
+	if (!cdev)
+		return -EINVAL;
+
+	*devpath = xasprintf("/dev/%s", cdev->name);
+	return 0;
+}
+
 #endif /* __FS_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

