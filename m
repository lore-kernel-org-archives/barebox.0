Delivery-date: Mon, 14 Oct 2024 12:54:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0IiI-004E9V-2f
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 12:54:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0IiI-0004yg-8t
	for lore@pengutronix.de; Mon, 14 Oct 2024 12:54:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8vRGHDUMIK/TBSi+dWDB9zK9K/ZME1gZAfVefy8gSTY=; b=boGySdvf6GQM6gcuy5cG7lTSx5
	2KpurFAoQFUVYDbm92iuCoaurVhmMpXf0yJsCZvFQN0RQKeOU8EZ2xDpkYTSE/dWss5xcnwFAOmw8
	LPerKhXJPLozPNIjwigkT8mMjNbiM336xUM2PHc/Qp8nN7FJN+7ppN9PkChEWFHgYjZbFAu+FEJj2
	SoLNg1E2IzM74jKFxjKcdEL/ZbIwxRRWWOPyQha2LLLIyZTs3dayS/4uw0dCu6z6asfpIUuIzxaAl
	+wYtr8Q6dOMNZ+/LE6ml4XzrxEYmh3tViVNg9inBUPc5mMhYTeDpFbSZB/ShL0MMoUWGLFem6ikGM
	Lafvwieg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Ihf-00000004lVp-31tv;
	Mon, 14 Oct 2024 10:53:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Ib9-00000004jx9-2Ei0
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 10:46:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Ib7-0004G3-VS; Mon, 14 Oct 2024 12:46:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Ib7-001lpZ-J1; Mon, 14 Oct 2024 12:46:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Ib7-00Ax1B-1c;
	Mon, 14 Oct 2024 12:46:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 12:46:43 +0200
Message-Id: <20241014104644.2610132-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_034647_609887_E1381518 
X-CRM114-Status: GOOD (  10.14  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fixup! video: add dw-hdmi driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

video: dw-hdmi: drop never defined dw_hdmi_remove

Building without linker garbage collection triggers an error, because
dw_hdmi_remove is never defined.

We remove it, but keep dw_hdmi_unbind as a dummy function as it can
be called by other drivers and then we could make it do something
useful in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/dw-hdmi.c | 1 -
 include/video/dw_hdmi.h | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/video/dw-hdmi.c b/drivers/video/dw-hdmi.c
index 2e9f21332c2e..ac4f368f6369 100644
--- a/drivers/video/dw-hdmi.c
+++ b/drivers/video/dw-hdmi.c
@@ -2273,7 +2273,6 @@ EXPORT_SYMBOL_GPL(dw_hdmi_bind);
 
 void dw_hdmi_unbind(struct dw_hdmi *hdmi)
 {
-	dw_hdmi_remove(hdmi);
 }
 EXPORT_SYMBOL_GPL(dw_hdmi_unbind);
 
diff --git a/include/video/dw_hdmi.h b/include/video/dw_hdmi.h
index c7a2ee338160..b2831e60b9ff 100644
--- a/include/video/dw_hdmi.h
+++ b/include/video/dw_hdmi.h
@@ -168,7 +168,6 @@ struct dw_hdmi_plat_data {
 
 struct dw_hdmi *dw_hdmi_probe(struct device *dev,
 			      const struct dw_hdmi_plat_data *plat_data);
-void dw_hdmi_remove(struct dw_hdmi *hdmi);
 void dw_hdmi_unbind(struct dw_hdmi *hdmi);
 struct dw_hdmi *dw_hdmi_bind(struct device *dev,
 			     const struct dw_hdmi_plat_data *plat_data);
-- 
2.39.5



