Delivery-date: Wed, 11 Mar 2026 12:07:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0HPP-00AQQJ-0P
	for lore@lore.pengutronix.de;
	Wed, 11 Mar 2026 12:07:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0HPO-00081h-IV
	for lore@pengutronix.de; Wed, 11 Mar 2026 12:07:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ajzBQ4Y80OchVCIIw+VENU1aafsXTD+OI0/NwfXWNRQ=; b=ZLizNDL17dv1kY2tBXN7qVG7vf
	TBQKV7mM4UdIYHgRHYaKHH7uKOymMGmIFmHBRC27EknOCUhsTnb6Tys5RBGKpBFfEqIHk8avAn6Fz
	TihwIVKiEX9dvmsbGyqtCOm+MnWgzcssOIx5LAybdNM8q6ML/3obcoZoQ+07jnxaINbZGuSkpI9Ro
	//gFinauAeWhWLEZC4RhEniQLU8NNKWNjWudJjrhKNQ2T0ffMiIBJdi9Y8IcIWaXJ4GSCmTl29kjc
	SdhF2QMxF1oPQFBmpP8Jr8x3LygrG9siuiJdW5ulkW2WOipAzpObDdozjEl0D81DUqiL+9nF1V8TA
	JpngzXSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HOw-0000000BTCJ-3wty;
	Wed, 11 Mar 2026 11:06:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HOv-0000000BTBF-0qYX
	for barebox@bombadil.infradead.org;
	Wed, 11 Mar 2026 11:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ajzBQ4Y80OchVCIIw+VENU1aafsXTD+OI0/NwfXWNRQ=; b=EkI6iPmLvPCqSv7+sgn+jFPApJ
	4XVCzSolVxL0sN/Y2e8xYrMq7esDUh+/guMUsplUSVIV4YYY20JXUlDqIZ/QImMsB/egYkyapRlBY
	3yXvdHFqadqgYHwHqb8lat6e6vVtrOK/3UeRX62cFnINPVpYi/9X4ilos0VDJGlUOuHO+pZVhkIIp
	62YMZwyzqlG8NF8NGSBrGh5+UKpmQlV2Tn+oGJyGx1h+e7T+AduZvpMjNc4wDxePfb5QCBgPd2pSR
	5sjF3NluqpNxZqrGcmlGjDXA5QMJZI0r2rRpbXjidtzCbQbCmpRXhEo7/w/Q+6BFdglqpewZu6qqw
	HWd6hZyg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HOs-0000000Gmaw-1ccE
	for barebox@lists.infradead.org;
	Wed, 11 Mar 2026 11:06:52 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1w0HOq-0007lL-SX; Wed, 11 Mar 2026 12:06:48 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 11 Mar 2026 12:06:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-agilex5-qspi-v1-4-be8a8e1318e1@pengutronix.de>
References: <20260311-agilex5-qspi-v1-0-be8a8e1318e1@pengutronix.de>
In-Reply-To: <20260311-agilex5-qspi-v1-0-be8a8e1318e1@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_110650_552141_10166C5B 
X-CRM114-Status: GOOD (  11.36  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] arm: socfpga: mailbox_s10: handle error 0x8f
 explicitly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The 0x8f is a command specific error code that indicates that the SDM
denied the HPS direct access to the QSPI. This is a valid SDM
configuration, but prevents barebox from using the QSPI flash, which may
or may not be a problem.

This configuration may also happen accidentally when using Quartus 25.3
to add a FSBL to a board SDM configuration created by Quartus 24.3.

Print a specific error message for this situation to help the developer.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/mailbox_s10.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-socfpga/mailbox_s10.c b/arch/arm/mach-socfpga/mailbox_s10.c
index ff2f261014b2..4199c4fb913a 100644
--- a/arch/arm/mach-socfpga/mailbox_s10.c
+++ b/arch/arm/mach-socfpga/mailbox_s10.c
@@ -319,7 +319,13 @@ int socfpga_mailbox_s10_qspi_open(void)
 	/* HPS will directly control the QSPI controller, no longer mailbox */
 	ret = mbox_send_cmd(MBOX_ID_BAREBOX, MBOX_QSPI_DIRECT, MBOX_CMD_DIRECT,
 			    0, NULL, 0, &resp_buf_len, resp_buf);
-	if (ret) {
+	switch (ret) {
+	case MBOX_RESP_STATOK:
+		break;
+	case 0x8f:
+		pr_err("QSPI: SDM denied direct QSPI access\n");
+		goto error;
+	default:
 		pr_err("QSPI: QSPI_DIRECT failed: 0x%x\n", ret);
 		goto error;
 	}

-- 
2.47.3



