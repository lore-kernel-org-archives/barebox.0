Delivery-date: Sun, 02 Aug 2026 15:21:00 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wqW7g-005Xf3-0p
	for lore@lore.pengutronix.de;
	Sun, 02 Aug 2026 15:21:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A3539200EC8
	for <lore@pengutronix.de>; Sun, 02 Aug 2026 15:21:00 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FP5fYD81;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=pMD1PXhB;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 198.137.202.133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dkTyz4L3ZhSW8Np6donbb4Mcm5fAjszyfE7PdKTUTXw=; b=FP5fYD81n7gWMqFCTuPx+GtEO5
	dAtX8BbIlbDOky9bCltTmVf2SN39DxrxRQq3JJC4f9+7r4QtvOBT9+GGLmu6Feu4yeUQvQfN5QQJa
	oQnDJ0mzZs6Wsjm9CmUwPl7hAKjFK8f+qgo5Mglv05PRKpGg7li9gfC95xLAf6pRKc9GrtygDf8tJ
	AcnDCRHFadWHQJHa8rkjwfPvAnVgFddKxbtpfrNLeapfS+TOmjiJACC168fYgrW0J+aTsdX5Mrzp/
	J6N8QR6CUt+2W0j6+3YlZ8IpZ5PzqhyfTychsuftpez0Y/QQ93akDdf4ci07fR/tfd+lOKM2H7Gb6
	dSndNltQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3B-0000000Fevy-0uYV;
	Sun, 02 Aug 2026 13:16:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW39-0000000FeuE-43Jg
	for barebox@lists.infradead.org;
	Sun, 02 Aug 2026 13:16:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9528E43E14;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D67C2BCF4;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785676579;
	bh=oOeINm802hBsONryguncLRDyyWO/3D5PgLybNdkiF2o=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=pMD1PXhBtib7ltM/+5CnALmavk5x3ZDTCSxrrdYMNsGxWfwuUcKXQw7VR80RwwTCo
	 5CxG+2VpstizVBIjrE5/gAGP1/8lAhBFIlSrRJWaII2smTKDF4dtOqN+h1xHVJKWqm
	 I3wc6fPlHONwi8shdEj+awsHJOmRmKEP1vfi86sLUBE7b+Ce8FhUqG6O5TBg5ZC6Xt
	 VTx5XW4EW+ASbyqJMD6+alNK+D7BPuskHZk1miphwNJiHUT6YJ9oKBB+aB0tHbi82Z
	 Z27k+uFQf57MKwKm26QEvSZkCE0zRW2zGwF01oum9VYofKIBWLCd7PGp4atTlpwEK8
	 o+3LrNMpMRrsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 695E3C55177;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Sun, 02 Aug 2026 15:16:27 +0200
Subject: [PATCH v3 11/15] ata: ahci: add helper for ATA commands without
 data
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260802-rn102-rn104-series-v3-11-f7685a279fb5@gmail.com>
References: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
In-Reply-To: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785676613; l=1078;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=tsY7GPVDrmTr0Jjsz7fL+Yu5UV/pmkPT8sqzkIvC8tY=;
 b=OLZkfaLPIsR9TJT4QOc6Azua9gTNlo2SfHClndwVCTD5DX3FG01yBeVljCUTLCH2PDKdgcA9i
 L7HOFPWqle7BtwpkCnTgcqIg1siJNLuQ+ZPj/Ibn0dXmW96Ke8p4pH1
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[99.99%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[198.137.202.133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A3539200EC8
X-Stat-Signature: b6kqgoc86z6kzw5xymxd3g3fo8aaf6rx

From: Luca Lauro <famlauro93l@gmail.com>

Introduce ahci_ata_nodata(), a small wrapper that prepares a FIS and
submits an AHCI command without PRDT entries or DMA setup. This avoids
duplicating zero-length handling logic across callers and simplifies
ATA command submission paths.

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 drivers/ata/ahci.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index a080de236e..09d37720c2 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -238,6 +238,21 @@ static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf
 	return ret;
 }
 
+static int ahci_ata_nodata(struct ahci_port *ahci, u8 command, u8 feature)
+{
+	u8 fis[20] = {
+		0x27,        /* Host to device FIS */
+		1 << 7,      /* Command FIS */
+		command,     /* Command */
+		feature,     /* Features */
+	};
+
+	if (!ahci_link_ok(ahci, 0))
+		return -ENODEV;
+
+	return ahci_io(ahci, fis, sizeof(fis), NULL, NULL, 0);
+}
+
 /*
  * SCSI INQUIRY command operation.
  */

-- 
2.47.3




