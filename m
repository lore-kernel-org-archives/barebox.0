Delivery-date: Tue, 10 Oct 2023 16:35:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpL-003BOM-Qn
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:35:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpG-0000AE-GZ
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:35:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QsM5Nus6KBPfwSvlt6N4Mn2xNCfEqzXoQ5FEBFyxhv0=; b=sQbEjiOpw3s4AsL7Og5WU9flr1
	7r4op0WF1GAdRW0bA/wc80elFZbt46YTqBfoN31TCs0K37ohTmmQL84LqBo2nEsT5lKDvUUg5Z77f
	D+Sro2zbn9Or+XBAFTwq4/EupF48K9pI5WmgUAj9byey07md2kTb0TP/0fUc44KaZtWs17ugjv1xp
	0r4QyB19xtl9uTnQXUW+18yZgyW7RNAdZeDTDILxqN4tZtxu0CWntx7Js5th5cPyG3klpv0Da8jwi
	qGgOA4ftybzMRcDBp4hjXytNGsy2KfD8hWSK9vqIv7ig9Bi9VUDH0k/Q2r46VFGglwgyjQDsJdmfT
	2AYhcrqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnz-00DZuz-0D;
	Tue, 10 Oct 2023 14:33:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDns-00DZlZ-0Z
	for barebox@bombadil.infradead.org;
	Tue, 10 Oct 2023 14:33:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=QsM5Nus6KBPfwSvlt6N4Mn2xNCfEqzXoQ5FEBFyxhv0=; b=ANxbFEG12dPZWKbGA2H6YT8x8e
	HGditxtq6f5P5l6Jv3uSODnV750Nb86pA/qXzc8fazlQN2J2XyGb7bhBypp6an6m5mNV3H7dPz6EJ
	JB4wL55esNJeg8nVKtjumYvVy7KCTzSWVlfm1Q8V54944b7BEVoc6IqEtXWG9o+7E3eeh0cRJb2pJ
	yAdJbf9hihq2ep5pj53SGr1RG42igzvADC/UPtr2dvS6RJk856D4+EsHphcssuKuevdJaFJYLORxS
	rrpykEQGIoAt794gPLXYKWiWOwGSzYfPE28O0qdWljuzFl1N3TsbbriTGXzOFXpPh/QOztB54+iwA
	O8DsB6oA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnh-00GvG1-1M
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:42 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-R5
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:33:13 +0200
Message-Id: <20231010143314.2031253-26-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_153335_035968_A8FEC0E0 
X-CRM114-Status: GOOD (  10.52  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 25/26] Documentation: boards: imx: replace i.MX8MQ with i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some parts of the documentation refer to the i.MX8MQ which are valid for
all i.MX8M SoCs. Also rename the i.MX8 to i.MX8M to make it clear which
family we meant.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/boards/imx.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index c64446aff640..a8f014dd1b91 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -21,7 +21,7 @@ The Internal Boot Mode is supported on:
 * i.MX53
 * i.MX6
 * i.MX7
-* i.MX8MQ
+* i.MX8M
 
 With the Internal Boot Mode, the images contain a header which describes
 where the binary shall be loaded and started. These headers also contain
@@ -64,8 +64,8 @@ of the image to the card, use:
 
   dd if=images/barebox-freescale-imx51-babbage.img of=/dev/sdd bs=1024 skip=1 seek=1
 
-Note that MaskROM on i.MX8 expects the image to start at the +33KiB mark, so the
-following command has to be used instead:
+Note that MaskROM on i.MX8M expects the image to start at the +33KiB mark, so
+the following command has to be used instead:
 
 .. code-block:: sh
 
-- 
2.39.2



