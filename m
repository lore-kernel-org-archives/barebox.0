Delivery-date: Thu, 02 Feb 2023 14:35:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZkd-00BQuk-KG
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 14:35:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZkb-0003uU-1L
	for lore@pengutronix.de; Thu, 02 Feb 2023 14:35:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X6L3wF69Lo1JFP0iCAsqiBscySPMIB8py2ZZB/m0KBw=; b=XiT6LI/3LEaTl0lmttC3bWOoda
	V+mdWU0SwGJsmRYYyfLHJfyJLOMQyO2/1PpKeYkBxbx3Vuy3Xa7oBBRffd+rWsDXucI/u6/qqcbfg
	tcwMoGCT/qbTpPNgC9k2ghNbj6u9mIZPn2AUUifean1b8zyK4/f/NUUzkpIf4fSfdn3WZKTi6hTpS
	h5WFtFkgl9v0o4DznkBdWLs9Bm9q4BDArdzVDxfFyVNE89qrtvsZtcyhSQcqQ0bYh1Tzgh81dmnrG
	otHtJJQom8X0uvimqELt/kLvBw1+ctfPeXXQS1d+OlaTq/MKgPA7e+mSq6a99K5euOE6sbq5ElQMR
	8xvCochQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZjV-00G1kW-7D; Thu, 02 Feb 2023 13:34:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZjQ-00G1j4-8U
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 13:34:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pNZjH-0003e1-18; Thu, 02 Feb 2023 14:34:19 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pNZjF-002BUM-5U; Thu, 02 Feb 2023 14:34:18 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pNZjF-001Mdu-JT; Thu, 02 Feb 2023 14:34:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Christian Melki <christian.melki@t2data.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Feb 2023 14:34:14 +0100
Message-Id: <20230202133415.319020-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230202133415.319020-1-a.fatoum@pengutronix.de>
References: <20230202133415.319020-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_053428_316789_EC86AF2C 
X-CRM114-Status: GOOD (  10.53  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] fs: tftp: print message when stack can't keep us with TFTP windowsize
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When the NIC driver doesn't configure enough buffers to keep up
with a big TFTP windowsize, error reporting is less than optimal,
e.g. on AX88x72A

  T BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBT T BBBBBBBBBBBBT
  BBBBBBBBBBBBBBBBBBBBBBBBBT

or on older DWMAC1000 (non-EQOS):

  WARNING: eth0: Rx error status (8800)
  T BBBBBBWARNING: eth0: Rx error status (8800)

While we probably want to:

  - decrease rate limit in __net_poll()
  - increase ring buffer depth for affected drivers

For now, at least print a helpful warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - reword commit and warning message to point finger at
    network stack (Michael)
---
 fs/tftp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/tftp.c b/fs/tftp.c
index 0b0b86a1a07e..a63b133caa25 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -477,6 +477,8 @@ static void tftp_handle_data(struct file_priv *priv, uint16_t block,
 		/* completely unexpected and unrelated to actual window;
 		   ignore the packet. */
 		printf("B");
+		if (g_tftp_window_size > 1)
+			pr_warn_once("Unexpected packet. global.tftp.windowsize set too high?\n");
 	} else {
 		/* The 'rc < 0' below happens e.g. when datagrams in the first
 		   part of the transfer window are dropped.
-- 
2.30.2



