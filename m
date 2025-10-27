Delivery-date: Mon, 27 Oct 2025 07:42:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGwF-00CFWu-1V
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 07:42:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGwE-0000fP-TC
	for lore@pengutronix.de; Mon, 27 Oct 2025 07:42:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8LdjcerNLfXI505r3qxwXEuvvojHmoohT2lzHJcUa0A=; b=DaM/fXNKr2I6GXiUqAgQvxBd6W
	u5iHv8ZrThtOOzMuXNOxAK27UoUoq9DqrzyiwCMz9S4yjUEl6SKHHQfBvhWbuadOxnGhGH5j41kgU
	C5Wyiae/zWC9I3AoXylyISCoHJt31qvNsfCWZVdBGOhg9oXUNN6J+c4TGO/C1Vt3A+GdAFvfJX/MI
	zbtGJSPh0yXB1Z2DVvjHGRaz9Gg1HBZJpTBakK/9NxyKG/pCEpISk5EpaW+XmilDXAjetewAZfoq3
	4J45VUPDxs4Vlfh4hXgAQDAzFPcmc+6Y6aE8FzWJCr/wltdq5Oeer8UTQVg+MB++co7vyMqMmDbbt
	AXB+KPAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGvq-0000000DD4E-1gnm;
	Mon, 27 Oct 2025 06:42:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGvp-0000000DD3t-1Ot3
	for barebox@bombadil.infradead.org;
	Mon, 27 Oct 2025 06:42:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=8LdjcerNLfXI505r3qxwXEuvvojHmoohT2lzHJcUa0A=; b=quCQI3JUrUw4ViGSfBrdzJGjHt
	ZQD73ILnl1kDKZhTIzF4Dy+bd0vWFStnIYOjmd+sB5k1Tb/w+TsUnUAN8UX8u3GXjhjqFnazDluXO
	XktNeI4evPermrTRZaFkRg3GA7ES0wfVc0V4gd/CXaPbk4Ku0Mf98j8MufLSZrblvM/z0dkj1zwMN
	IuPaSABf+uoaW3AUJz4Wcmr8IkGkbMyjYAfATYSc9XJoriZpUYsmz3nSDDbwE04Q5oigVJkw4OsNY
	Oy0qhaesnoJgOVEQPKEw9r6jFdFLu9Y8tIrNODgfLmDZSOyfCtNnKW2NM2DVp+FVwDwGTXqwsKYVQ
	IF9DJ9vw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDG42-00000001SJ4-2YY3
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 05:46:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDGvm-0000aw-1w; Mon, 27 Oct 2025 07:42:14 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 07:42:11 +0100
Message-ID: <20251027064213.2412332-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_054642_735965_5115DA7A 
X-CRM114-Status: UNSURE (   9.50  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] video: vpl: add debug output when calling ioctl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To simplify pipeline debugging, add some human-readable output when
an ioctl is propagating along the pipeline.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/vpl.c | 44 ++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 42 insertions(+), 2 deletions(-)

diff --git a/drivers/video/vpl.c b/drivers/video/vpl.c
index 0235c1e790bd..c4a41648bf04 100644
--- a/drivers/video/vpl.c
+++ b/drivers/video/vpl.c
@@ -116,6 +116,46 @@ static int vpl_foreach_endpoint(struct vpl *vpl, unsigned int port, int endpoint
 	return 0;
 }
 
+static const char *ioctl_cmd_str(unsigned cmd)
+{
+	switch (cmd) {
+	case VPL_PREPARE:
+		return "PREPARE";
+	case VPL_UNPREPARE:
+		return "UNPREPARE";
+	case VPL_ENABLE:
+		return "ENABLE";
+	case VPL_DISABLE:
+		return "DISABLE";
+	case VPL_GET_VIDEOMODES:
+		return "GET_VIDEOMODES";
+	case VPL_GET_BUS_FORMAT:
+		return "GET_BUS_FORMAT";
+	case VPL_GET_DISPLAY_INFO:
+		return "GET_DISPLAY_INFO";
+	default:
+		return NULL;
+	}
+}
+
+static int vpl_do_ioctl(struct vpl *vpl, unsigned port, unsigned cmd,
+			 void *data)
+{
+	char buf[sizeof("0x12345678")];
+	const char *cmdstr;
+
+	cmdstr = ioctl_cmd_str(cmd);
+	if (!cmdstr) {
+		snprintf(buf, sizeof(buf), "0x%08x", cmd);
+		cmdstr = buf;
+	}
+
+	pr_debug("%s: calling %ps(\"%pOF\", %d, %s, %p)\n", __func__,
+		 vpl->ioctl, vpl->node, port, cmdstr, data);
+
+	return vpl->ioctl(vpl, port, cmd, data);
+}
+
 struct vpl_ioctl {
 	int err;
 	unsigned cmd;
@@ -131,7 +171,7 @@ static int vpl_remote_ioctl(struct vpl *vpl, unsigned port, void *_data)
 		return 0;
 	}
 
-	return vpl->ioctl(vpl, port, data->cmd, data->ptr);
+	return vpl_do_ioctl(vpl, port, data->cmd, data->ptr);
 }
 
 int vpl_ioctl(struct vpl *vpl, unsigned int port,
@@ -182,5 +222,5 @@ int vpl_bridge_ioctl(struct vpl_bridge *bridge, unsigned int cmd, void *ptr)
 	if (!vpl->ioctl)
 		return -EOPNOTSUPP;
 
-	return vpl->ioctl(vpl, bridge->port, cmd, ptr);
+	return vpl_do_ioctl(vpl, bridge->port, cmd, ptr);
 }
-- 
2.47.3



