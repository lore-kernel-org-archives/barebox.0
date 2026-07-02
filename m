Delivery-date: Thu, 02 Jul 2026 12:40:16 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfEq8-00CENB-06
	for lore@lore.pengutronix.de;
	Thu, 02 Jul 2026 12:40:16 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D2AF3201544
	for <lore@pengutronix.de>; Thu, 02 Jul 2026 12:40:15 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RXprJyq+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4bGOievFX+WwSdouZte4QlYmbNyLYDszVR5lRMgMQaI=; b=RXprJyq+7d+6b5
	oRVVhgn/40QD520EAJpNUlv0oBj0V/i9ISRAsNWfNe8IDrn2RZSiMDB/U0qLIzEp0Tuo7/1wUh1AH
	kZlG03yLW1sFyK2ClUMzS5bvoLaSRa6zSwGsWNMfgQWRQy2KxZQXFfAhgiFQobUgkTDE777HHJtcR
	AZlj2d7Y2R3qtF5Uvi5hGfPcISv4Lt6JpPCWRFqayDVXPBZs3DJcdbvFuy/estPZprDn3iKvv5SIN
	64e6MCo3dMamHSwFFaD96DWPMD2NxmEfEn3wJtgpTn2gPaP8HHi8WvD08WTZc/QRjKeuSPwCMQpjD
	PHmU8a194or+D2lH2xDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfEov-00000004BYZ-080p;
	Thu, 02 Jul 2026 10:39:01 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfEos-00000004BXK-01u3
	for barebox@lists.infradead.org;
	Thu, 02 Jul 2026 10:38:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 654C0200379;
	Thu, 02 Jul 2026 12:38:53 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wfEon-005jNh-0w;
	Thu, 02 Jul 2026 12:38:53 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wfEon-0000000A2Fb-0lHs;
	Thu, 02 Jul 2026 12:38:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Subject: [PATCH] optee: device: report correct command in enumeration error message
Date: Thu,  2 Jul 2026 12:38:51 +0200
Message-ID: <20260702103851.2391715-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_033858_203957_E84E28E5 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  While enumeration failure always mentions "PTA_CMD_GET_DEVICES",
    it is possible that either PTA_CMD_GET_DEVICES_SUPP or PTA_CMD_GET_DEVICES_RPMB
    were the culprits. Remove the hardcoded PTA_CMD_GET_DEVICES in the error
   message as it's no longer accurate and replace it by the actual command being
    sent. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Queue-Id: D2AF3201544
X-Spamd-Result: default: False [-5.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 5tnzesoq8cahpu1f5bhwp9xcrghhch6f
X-Rspamd-Server: mx1

While enumeration failure always mentions "PTA_CMD_GET_DEVICES", it is
possible that either PTA_CMD_GET_DEVICES_SUPP or PTA_CMD_GET_DEVICES_RPMB
were the culprits.

Remove the hardcoded PTA_CMD_GET_DEVICES in the error message as it's no
longer accurate and replace it by the actual command being sent.

Fixes: c840a27cfaa4 ("tee: optee: use RPMB probe capability to select enumeration path")
Reported-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/tee/optee/device.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/tee/optee/device.c b/drivers/tee/optee/device.c
index 2713af0797e1..425971b9544e 100644
--- a/drivers/tee/optee/device.c
+++ b/drivers/tee/optee/device.c
@@ -21,6 +21,20 @@ static int optee_ctx_match(struct tee_ioctl_version_data *ver, const void *data)
 		return 0;
 }
 
+static const char *pta_cmd_str(u32 func)
+{
+	switch (func) {
+	case PTA_CMD_GET_DEVICES:
+		return "PTA_CMD_GET_DEVICES";
+	case PTA_CMD_GET_DEVICES_SUPP:
+		return "PTA_CMD_GET_DEVICES_SUPP";
+	case PTA_CMD_GET_DEVICES_RPMB:
+		return "PTA_CMD_GET_DEVICES_RPMB";
+	default:
+		return "PTA command";
+	}
+}
+
 static int get_devices(struct tee_context *ctx, u32 session,
 		       struct tee_shm *device_shm, u32 *shm_size,
 		       u32 func)
@@ -45,8 +59,8 @@ static int get_devices(struct tee_context *ctx, u32 session,
 	ret = tee_client_invoke_func(ctx, &inv_arg, param);
 	if ((ret < 0) || ((inv_arg.ret != TEEC_SUCCESS) &&
 			  (inv_arg.ret != TEEC_ERROR_SHORT_BUFFER))) {
-		pr_err("PTA_CMD_GET_DEVICES invoke function err: %x\n",
-		       inv_arg.ret);
+		pr_err("%s invoke function err: %x\n",
+		       pta_cmd_str(func), inv_arg.ret);
 		return -EINVAL;
 	}
 
-- 
2.47.3



