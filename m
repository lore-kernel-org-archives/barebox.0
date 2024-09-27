Delivery-date: Fri, 27 Sep 2024 12:43:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8S0-003N6l-1F
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8Ri-00067c-CN
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OryGL4Yo0bd7GOr1ld75WGOZSs56tVCmfH2vuAaQSaQ=; b=Fr5oHA8ZjXa2uQRLBO8EY0+nLl
	jnUgfi3AF4rIsxKofJ+7W8JaV09OMpuDzkJhh6P9jsNozDFtDdqVoPLirsEqKM/6ueaZUGI9CcEtO
	mHVWmPUQ0RNGyxEa4n3OhWU+ChRSXZFySc6m6bqVZzhBkYEONW7hKjwOHSLKnXcwUKxMty7dPvU/f
	SMlF2uN3oSIjpO7opFZEMcby3pguE9tpl/0WbCQ87Ics8oIVjR2uQuZWjXHE1ImkiPwGaJIjpVwUo
	s2u0lw+xj+/fxvYYQPkgOFIsX5hhvQqZWPbF7Ko5yn0emxj8BWgo05AySMFSO7BXA1AI0WABFeGm6
	tHUzmEVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Qf-0000000Ar0s-0k2C;
	Fri, 27 Sep 2024 10:42:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Oz-0000000AqWL-1ALM
	for barebox@bombadil.infradead.org;
	Fri, 27 Sep 2024 10:40:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=OryGL4Yo0bd7GOr1ld75WGOZSs56tVCmfH2vuAaQSaQ=; b=giLGJ+Nn4SIdnOSUNmHUZaUl+v
	FQ5k63dBHV9drJsFWO/BvHttILJwwtNN5JHPceAoMeVW6BRZaZv602SaY3p+msPBwWgrzdSAlMeBf
	8ah2FVOEOqDDsQzrt/U8UoRrpKKAsxzNH0He1oNGKbiLq6cSP9ovOwIQQryzsoo9LQkvho9Vfmofs
	ZXK92MThTFAkfHVhkqla7PcZ0AarRgi+MDrrQZJ2cDjEB5udxsvKr1QeY9mRPY/zD2edklBKo+D/D
	p1/VE7XZvP5yHesjN0u0uDhoQedayIui9Ov3wetd4OTmLFkcaEgSe0RankcFQ6aSC9l3Ry8l+IWW4
	gr5bGqxg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Os-00000002Kcn-0keo
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:40:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Or-00043S-RI; Fri, 27 Sep 2024 12:40:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Or-001u4H-Ea; Fri, 27 Sep 2024 12:40:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-000PJg-1X;
	Fri, 27 Sep 2024 12:37:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2024 12:37:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240927-vop2-v2-14-dc8dcfc651d5@pengutronix.de>
References: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
In-Reply-To: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727433454; l=573;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=xRjkFEJDzbD6pVMHKx0jUjRnVjSi9AvYY6f9icO9gcM=;
 b=FzR89N1wPzrBrQYRanSbekQh/NTGj3WR3Q6S4xP2ZA2n1HOjusY9bOYNohkfgX2XYS2ELnvnY
 fp5cfAU8tgFCrYmfBOn+0jccLgTf7CQ3dHBGXZFLgdtj7UoxeC9iEB+
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_114042_518932_829CFE9C 
X-CRM114-Status: UNSURE (   9.57  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 14/15] vpl: make vpl deep probe aware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Ensure the VPL partner is probed before trying to find it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/vpl.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/video/vpl.c b/drivers/video/vpl.c
index f8c2159cd9..35fb342a8f 100644
--- a/drivers/video/vpl.c
+++ b/drivers/video/vpl.c
@@ -27,6 +27,8 @@ static struct vpl *of_find_vpl(struct device_node *node)
 {
 	struct vpl *vpl;
 
+	of_device_ensure_probed(node);
+
 	list_for_each_entry(vpl, &vpls, list)
 		if (vpl->node == node)
 			return vpl;

-- 
2.39.5



