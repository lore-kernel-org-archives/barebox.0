Delivery-date: Thu, 19 Mar 2026 08:03:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37Pt-002XsA-01
	for lore@lore.pengutronix.de;
	Thu, 19 Mar 2026 08:03:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37Ps-0006R1-Fs
	for lore@pengutronix.de; Thu, 19 Mar 2026 08:03:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oAsDEj+I8/8+QJ32qFnDeeVNk1oakHaaUMTBibqWBzA=; b=C7O+6AEfpcnl7l7TQm8+fGIO/A
	tEJGOno1VP/RU+OLpUQ+N8WUGBoGm0f4FE/+bEwhD+MGq7PNViJylPXFaKZYBUzSglz1lHWuDxuHp
	cp+NGie/TL8HBZhQ5qm3mWge1w44wt+Kd+El3AZh6LHPpBRA8GhMQGjtBbhMt+wnOjpl/MKh64NuA
	/4GdHgBwRvARjaPi1QWq8EFme9oKYeVahCWYyeBcxueZ+fFTCo93Oi5kH1yJrggoUcOk2W5H5Vug5
	1R7qeifH3ao3JHuS9qCtVX3um+zQ7d9vrpvyGxGkVgSdHU3hjtCJC8/2ByvI21vRKgZsy8txujW6b
	Ey27oiUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37PU-0000000A65P-0A5C;
	Thu, 19 Mar 2026 07:03:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37PO-0000000A63y-3zen
	for barebox@lists.infradead.org;
	Thu, 19 Mar 2026 07:03:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37PN-0006Eh-Fa; Thu, 19 Mar 2026 08:03:05 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37PN-0012Aa-0x;
	Thu, 19 Mar 2026 08:03:05 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37PN-00000008FE7-0kQZ;
	Thu, 19 Mar 2026 08:03:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 19 Mar 2026 08:03:03 +0100
Message-ID: <20260319070304.1965024-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_000306_987294_B57BA552 
X-CRM114-Status: UNSURE (   9.78  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] optee: Explicitly ignore OPTEE_RPC_CMD_RPMB_*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do not implement OPTEE_RPC_CMD_RPMB_* which are needed for the new
in-kernel RPMB handling which we don't implement. For now we emulate a
tee-supplicant for RPMB handling, so there's no need to warn about these
not being implemented.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/tee/optee/rpc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/tee/optee/rpc.c b/drivers/tee/optee/rpc.c
index bc398a625b..b91833d53a 100644
--- a/drivers/tee/optee/rpc.c
+++ b/drivers/tee/optee/rpc.c
@@ -69,7 +69,12 @@ void optee_rpc_cmd(struct tee_context *ctx, struct optee *optee,
 		break;
 	default:
 		pr_notice_once("optee: No supplicant or RPC handler for command 0x%x\n", arg->cmd);
+		fallthrough;
+	case OPTEE_RPC_CMD_RPMB_PROBE_RESET:
+	case OPTEE_RPC_CMD_RPMB_PROBE_NEXT:
+	case OPTEE_RPC_CMD_RPMB_FRAMES:
 		arg->ret = TEEC_ERROR_NOT_IMPLEMENTED;
+		break;
 	}
 
 	arg->ret_origin = TEEC_ORIGIN_COMMS;
-- 
2.47.3



