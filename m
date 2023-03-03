Delivery-date: Fri, 03 Mar 2023 14:45:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY5ie-007aMi-VY
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 14:45:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY5ie-00058M-TN
	for lore@pengutronix.de; Fri, 03 Mar 2023 14:45:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TnYtzjWDbWeq9oJoSeT2DqcLgRs4z0m8VF9K3UVQA/o=; b=NTBwaMqPhQQOLr+7Itjsv8TRHg
	ycOGcZuRnF+yhJ//Dete/evv4fH00ZsQIluUqYtcp6FsHwuTbAcGziHrCwxQyFgQC3FNexhWzroAR
	JX141fba/6eewVw6mR5umczOADJk6HqYjkMSIPRM7h71UsDk1HU8Qd0lKE/dRQHJhJ9HslFGxQXfm
	gJXstHSNNtzxYptggdmeUSVblPMQRLScvqtSXkClWwqPBQUsQINmXj0DIUVqShk4UCEgHmrev22JG
	mzVsDpH1l/sKUU5Td+6nuiFQYUbhlLEQasbAbItVu3OtqTkWIJDleVabOTySofqf2bNXUFZZMmlz0
	/TFJngTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY5hG-006Ve9-73; Fri, 03 Mar 2023 13:43:42 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149] helo=fx409.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY5hB-006VdQ-AG
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 13:43:38 +0000
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id DDB16349719
	for <barebox@lists.infradead.org>; Fri,  3 Mar 2023 14:43:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1677851010;
	bh=+g89Y+umrPj9dd9YyWXniXEM3UdHX7Ya1mlsTsWtbSI=;
	h=From:To:Cc:Subject:Date;
	b=Bbd5qIxEO+aIHzZRoId0fQ1O/EFHvGC3fo0WsdXSe3iAGSAgtuCTNrNFnf26F67wb
	 absfLfcRvATZYzEwq35REnuLF/uLbrJ7atWbtH6l+gqKOT6dT+Dt9mWOCTiEgtXkIg
	 5hPJEDVNOkCyMYBgrgPPjDR0YohXitBsAMXkIWNA=
Received: from fx409 (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id B14AE34965B
	for <barebox@lists.infradead.org>; Fri,  3 Mar 2023 14:43:30 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <3c3e.6401f982.7508.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx409.security-mail.net (Postfix) with ESMTPS id 08F33349702
	for <barebox@lists.infradead.org>; Fri,  3 Mar 2023 14:43:30 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id DA56C27E053A;
	Fri,  3 Mar 2023 14:43:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id C2DFE27E0552;
	Fri,  3 Mar 2023 14:43:29 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C2DFE27E0552
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1677851009;
	bh=TnYtzjWDbWeq9oJoSeT2DqcLgRs4z0m8VF9K3UVQA/o=;
	h=From:To:Date:Message-Id;
	b=XaV1KrKkcPYCjcPPzbkNjgXHM+JFHdoVuSmPjaZYmeIBsve08A1KeCHpgEy3AJDOC
	 iULgcON/qg4rMJUrq4uuXkiRaNIoi9UaZNkLSj6+ip+VcYihSoOH3e25e/gskdI/LI
	 aow6QiS/SQOPxaeHwvU4ParM536syYB+/WnbVl8Q=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id e8F49nnS4SDl; Fri,  3 Mar 2023 14:43:29 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id B266627E053A;
	Fri,  3 Mar 2023 14:43:29 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri,  3 Mar 2023 14:43:21 +0100
Message-Id: <20230303134321.10870-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_054337_534441_BCDD4D52 
X-CRM114-Status: UNSURE (   8.52  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: dwc2: Fix memory leak in probe error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The dwc2 driver private structure wasn't freed in the error path.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/dwc2.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/dwc2/dwc2.c b/drivers/usb/dwc2/dwc2.c
index ef957534c9..ff4842ce62 100644
--- a/drivers/usb/dwc2/dwc2.c
+++ b/drivers/usb/dwc2/dwc2.c
@@ -92,11 +92,10 @@ static int dwc2_probe(struct device *dev)
 	set_params_cb set_params;
 	int ret;
 
-	dwc2 = xzalloc(sizeof(*dwc2));
-
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
+	dwc2 = xzalloc(sizeof(*dwc2));
 	dwc2->regs = IOMEM(iores->start);
 	dwc2->dev = dev;
 
@@ -177,6 +176,8 @@ clk_put:
 release_region:
 	release_region(iores);
 
+	free(dwc2);
+
 	return ret;
 }
 
-- 
2.17.1



