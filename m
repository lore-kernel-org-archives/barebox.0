Delivery-date: Fri, 01 Oct 2021 12:11:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFVx-0002Yq-TN
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 12:11:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFVw-0006PY-8S
	for lore@pengutronix.de; Fri, 01 Oct 2021 12:11:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6PO8OhSIUs0GXBXRzXBKbciqwqmJAY5Ijk0lx1o60ms=; b=UqF7cUGn+mz3VW
	kiyHQ2CnbD+oee6ZFGrtuiJhfQCEptja65DnQyS/VRNZZhuBGK75goRY1yHM9FrKXDkd0o8cs4TYg
	k7cj7+FNIyw2mdU0iIDac8ZT0hnXyrs1rYvTmKmFrletDCzjYYiPDu07IIbRt1ytBxeGvsgL4XPln
	CCUBFLFy/vqRxCBHkftS9dCy/LywQOQhYxRh4lwFcnyyuS4CCJUwh8HBSuQbDKSTDE8Rw0HTRmXBu
	h0gkQIxvKxxNGKGg2UVesXhSUyKuNU1l1orl5NOWdTZOBnzp1tpmluM9JzJHsJOB7q7YhYIxD8UNc
	Kt6BdgqkrtLZjUvY24yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFUU-00HQny-Ko; Fri, 01 Oct 2021 10:10:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFUJ-00HQjc-18
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 10:09:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWFUF-0005kv-6W; Fri, 01 Oct 2021 12:09:51 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWFUE-0001pj-Gq; Fri, 01 Oct 2021 12:09:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  1 Oct 2021 12:09:48 +0200
Message-Id: <20211001100949.6891-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211001100949.6891-1-a.fatoum@pengutronix.de>
References: <20211001100949.6891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_030955_154114_BEB50496 
X-CRM114-Status: UNSURE (   9.43  )
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
Subject: [PATCH v2 7/8] scripts: imx: add i.MX8MN support to imx-image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While soc imx8mm in the imxcfg would work too, it's less surprising to
just tell imx-image about the new SoC.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/imx/imx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index ce18778f5400..87560ad27de1 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -234,6 +234,7 @@ static struct soc_type socs[] = {
 	{ .name = "imx6",   .header_version = 2, .cpu_type = IMX_CPU_IMX6,   .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
 	{ .name = "imx7",   .header_version = 2, .cpu_type = IMX_CPU_IMX7,   .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
 	{ .name = "imx8mm", .header_version = 2, .cpu_type = IMX_CPU_IMX8MM, .header_gap = SZ_32K, .first_opcode = 0x14000000 /* b 0x0000 (offset computed) */},
+	{ .name = "imx8mn", .header_version = 2, .cpu_type = IMX_CPU_IMX8MN, .header_gap = SZ_32K, .first_opcode = 0x14000000 /* b 0x0000 (offset computed) */},
 	{ .name = "imx8mp", .header_version = 2, .cpu_type = IMX_CPU_IMX8MP, .header_gap = SZ_32K, .first_opcode = 0x14000000 /* b 0x0000 (offset computed) */},
 	{ .name = "imx8mq", .header_version = 2, .cpu_type = IMX_CPU_IMX8MQ, .header_gap = SZ_32K, .first_opcode = 0x14000000 /* b 0x0000 (offset computed) */},
 	{ .name = "vf610",  .header_version = 2, .cpu_type = IMX_CPU_VF610,  .header_gap = 0,      .first_opcode = 0xea0003fe /* b 0x1000 */},
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

