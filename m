Delivery-date: Wed, 14 Jan 2026 13:50:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg0KA-001Ep2-2k
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:50:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg0K9-0007Hp-Sw
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:50:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hhBhrTR1qyF+lIuMsBPsuuiGF5E3YJ33nTcNkB4Lj4g=; b=Uf+R0BDN83rFYcP8J/bahJ8EUs
	4eYBz9+z7oBp7CtQGLUrhYu/0rWkHdY8Kqd1fHO7o/5iECY+56axbkyngE93uhz8qT+ieDb8DFsbP
	UoSgfbkcEWKdNG1Yc0Vv7tfRIHDYVXMOFNM4WkobilfIZkJJxMtiX5KS8/+e0Rn2i55PSHaRDkt7F
	yDmf07JHERBkqBaNmbNPlRvs5nTXfVMEHlD6umkT1i5FkR1HytUaEX5UdKSLtzZboI+zNcBBdtkcT
	b1cIMAavaUOtHRs7xw+3CjFk3BBq6IbUCClBDSs4tYnK9Z78sgg5/buXYrnJ8gkWhUl1ljB5ISPN8
	gzz+MedA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg0JZ-00000009Ecm-3UAd;
	Wed, 14 Jan 2026 12:49:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg0JX-00000009Ebu-03O7
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:49:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1vg0JV-0007AV-1i; Wed, 14 Jan 2026 13:49:29 +0100
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1vg0JV-000ah3-1h;
	Wed, 14 Jan 2026 13:49:28 +0100
Received: from ejo by dude06.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <ejo@pengutronix.de>)
	id 1vg0JU-0000000Ab08-3MK9;
	Wed, 14 Jan 2026 13:49:28 +0100
From: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
Date: Wed, 14 Jan 2026 13:48:36 +0100
Message-ID: <20260114124858.2518566-1-ejo@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_044931_073991_19C86D26 
X-CRM114-Status: UNSURE (   8.79  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] bootchooser: clarify error message for disabled barebox-state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make clear that:
- state was configured as bootchooser backend
- is disabled in kconfig

Signed-off-by: Enrico Jörns <ejo@pengutronix.de>
---
 common/bootchooser.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index a79eee8ca2..caef15a03f 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -384,8 +384,9 @@ struct bootchooser *bootchooser_get(void)
 			}
 			free(state_devname);
 		} else {
-			pr_err("State disabled, cannot use nv.bootchooser.state_prefix=%s\n",
+			pr_err("barebox-state backend selected (nv.bootchooser.state_prefix=%s) but CONFIG_STATE is disabled\n",
 			       state_prefix);
+
 			ret = -ENODEV;
 			goto err;
 		}
-- 
2.47.3



