Delivery-date: Tue, 03 Nov 2026 11:17:30 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOBa5-006kuE-2D
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 11:17:30 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 802CB200AD4
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 11:17:29 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="UX/X3brL";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=c4+GJRC0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793701049;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=7fcmYytt0chZlxatgTtznMvrQG0CVCjjmK5YE8AlSS8=;
	b=Weoq4BxYAffiYNaTsNAuwQ2wS/sQVrMQUkfN2f/Y7Y8LVRMhfKACmF6aW5+H2lZN/tiybs
	dkz/rmex5dZZ/qZc1TV5Mi5fBEcy6PIHp5wdjZTJvSOTPOeUChHRy+osxFDNAY8jkwcGJE
	ydnpG55Bw3X1HSYc0wJeEaSeYEG3wAkTsubnhQqOUWHIbSTH4vLGoQRscWcFGIx48SfE1f
	KH3TXEFrZ9eFn5cg3BpQobLUMOyr8v2bgoTYdurs1pynTG72Za9swkF05PVtkK6//Jy0IF
	fr8gmeF07SxYE0mqJr4p/+uT709qlAx4L+eRBipUuH4XIgO+opBHpxTc/fOrbQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="UX/X3brL";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=c4+GJRC0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793701049; a=rsa-sha256;
	cv=fail;
	b=NyHyEBqwMNDR2c/gAAe+y96CVzqOu0MB09yktixIa58o25V2dFDhdyuW+l2zYZT5mXEgbF
	gDqt/Va7p9/NnLMo1pG6SIVbk7O6DBRq3fDPBYL0hIBOb7Y2Vsp2+jVp3ubsf1pQYtxGli
	k6S50nKHdnCLaYyJsFOTtOIzzlcm+bxeTNewenbbJk1o3In//bYjvBWVD2c4WZQ8NftWAF
	kW79bZGRKwYPjV7WMDjW8KI5SJYKP5Mf+KgYCg+ukX01QXqZtUXqCG0kHZ8ufTmbekzaO1
	0ba5RsqCpEFMJ5Tup3aOZQtL25ke/ds+/N/BsgYT1kTJI0OayjO88YaDUloUMA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=7fcmYytt0chZlxatgTtznMvrQG0CVCjjmK5YE8AlSS8=; b=UX/X3brLhWzcC0vplwPac4+wta
	3B+sLh+sYexLTivqRK/bokgNklcxm0SKfhOrFpYp1kmbP2z84ZUMPo4SIsczyPTWaXr0bhRkGj4U8
	BY1k7Gx3M5Z2NCuQFggoB3QDauBiKfW3btC9Xth+Iv5PBbsJhHWibltr6fDcgPLk4YdqCnca90UX3
	F/W9fR1XMArQUpyzppt0HoWPjcV/D6OLh7fa9Dtt+MpjNMizv3oi4025toDIBzi31SJirNO5mYNV7
	ehcDhhUdNFztqa7f7sK0+cGi160+m5tGZ86XKqXQ6UafMPTaXaWspaXD0vwhN4w1Yw1UW3GezGE+q
	Rcb5pWmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBYr-00000001wf5-1lPp;
	Tue, 03 Nov 2026 10:16:13 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBYj-00000001wZG-0n7D
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 10:16:08 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 25946202299;
	Tue, 03 Nov 2026 11:16:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793700963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7fcmYytt0chZlxatgTtznMvrQG0CVCjjmK5YE8AlSS8=;
	b=c4+GJRC0U7b1hhIvTtVWaPlHoIBaTWVrmva0dBumdViEosn06YOxonkZGXeauLsLnRJpXQ
	okq7VUYIzewbnXAPpdgg33FNkTmzGLGPLxV6mvfaQ6n/U7uXOoucNkcZJd/8ilSLko5790
	de8S7uzveh0qK1SEY+pDkr5De01b52L0fXX5U5mEaqvN0tYia1ju5TxpBNwPWHh/rgz1cY
	9ncqSzKX25OPKaAURF6RCQwYDDuKEkH1Vxa86XS9G1I0cWBRsBa/aStc6tBDTixL7xib0c
	n8uqYy3cNXWFrE9n000d9b0mP09EnW6BMHFMvXDBTyCGVLXK055OVWuvxcuErQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793700963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7fcmYytt0chZlxatgTtznMvrQG0CVCjjmK5YE8AlSS8=;
	b=d7DzsqJikDBtqIGAmqV6BLgFM/nNmvdVo7w3qfDLflJJOu/yabKcxq2eUS3DWlCykPmMSd
	S9HI2OrO3kLNYoVDXnRapr5AQalJNdsIV4GkmRwEfJFIB7p50ZoXZK9+xRtMrujQ8aQI1R
	f7HSyogckFTH4qc42dYIDsN0YHZYaXAyn2obocpWkVX8q2F9GooP6PS+v2/E5BX+RxR2r6
	sdflcPdDPFHHJJ/iYibjj+F09Q+xjXQm4sxKybRolyma4zruB2lZYdkxjEt10zVeGIFw7H
	4ied63oh3G5vYLWZmui+DUa3L3Bf3SNxb/qYdQ5kMMdROoS0JcIxsoJazIeFrQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793700963; a=rsa-sha256;
	cv=none;
	b=cwFEa1x/sjgRCJk/+6VudeEwl86agCNRJh2kH1t05YBpIBp86TQsT9J7knZ/zQsX+zyv67
	/Ksb+L8Wc0dYszzVoKZUnL8HBswncroVggANqjq74LQ2BRrKGwayu3JmE30aPxqmev7UvU
	a5+WYOImQmqIr0fokSVPX7PJXVCfObhMGJxf54FBAdmUrcEAgmIetZ2t32J0LqrYyerUdJ
	xMS7ugVGxxXJeoa26pOOktsCLy873FIgc9SuCc3GC8JB2T/o7SPnUGcGI2rJqgS/od7Dmb
	INc/UEh0m9Zi7Xn4gmgJoysCkk++rwN8qs9199oDjrRfWB7V41Z1zgw0fRFD0A==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 0D9797410EE;
	Tue, 03 Nov 2026 11:16:03 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Subject: [PATCH] tee: optee: improve error message for unprogrammed auth key
Date: Tue,  3 Nov 2026 11:15:59 +0100
Message-ID: <20261103101602.3933234-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_021605_449317_622088C0 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Even with barebox now decoding the OP-TEE command that fails,
    the resulting error message is still rather cryptic: ERROR: optee: PTA_CMD_GET_DEVICES_RPMB
    invoke function err: f0100003 Linux doesn't emit an error message at all,
    but suppresses this specific error code. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 802CB200AD4
X-Spamd-Result: default: False [-55.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 9npywphz4ng7wum8zy7xiwgcxfxfh3ex

Even with barebox now decoding the OP-TEE command that fails, the
resulting error message is still rather cryptic:

  ERROR: optee: PTA_CMD_GET_DEVICES_RPMB invoke function err: f0100003

Linux doesn't emit an error message at all, but suppresses this specific
error code.

We won't go that far in barebox, but let's bump the message down to info
level and make it more descriptive.

Reported-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/tee/optee/device.c        | 14 +++++++++++++-
 drivers/tee/optee/optee_private.h |  4 ++++
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/tee/optee/device.c b/drivers/tee/optee/device.c
index 425971b9544e..a0c975617ea7 100644
--- a/drivers/tee/optee/device.c
+++ b/drivers/tee/optee/device.c
@@ -59,6 +59,13 @@ static int get_devices(struct tee_context *ctx, u32 session,
 	ret = tee_client_invoke_func(ctx, &inv_arg, param);
 	if ((ret < 0) || ((inv_arg.ret != TEEC_SUCCESS) &&
 			  (inv_arg.ret != TEEC_ERROR_SHORT_BUFFER))) {
+		/*
+		 * TEE_ERROR_STORAGE_NOT_AVAILABLE is returned when getting
+		 * the list of device TAs that depends on RPMB but a usable
+		 * RPMB device isn't found.
+		 */
+		if (inv_arg.ret == TEE_ERROR_STORAGE_NOT_AVAILABLE)
+			return -ENODEV;
 		pr_err("%s invoke function err: %x\n",
 		       pta_cmd_str(func), inv_arg.ret);
 		return -EINVAL;
@@ -184,13 +191,18 @@ static bool rpmb_available;
 
 static void optee_scan_bus_rpmb(void)
 {
+	int ret;
+
 	if (!optee_ready)
 		return;
 	if (!rpmb_available)
 		return;
 
 	__optee_enumerate_devices(PTA_CMD_GET_DEVICES_SUPP);
-	__optee_enumerate_devices(PTA_CMD_GET_DEVICES_RPMB);
+
+	ret = __optee_enumerate_devices(PTA_CMD_GET_DEVICES_RPMB);
+	if (ret == -ENODEV)
+		pr_info("RPMB unavailable (auth key not programmed?), skipping RPMB-dependent TAs\n");
 }
 
 int optee_enumerate_devices(u32 func)
diff --git a/drivers/tee/optee/optee_private.h b/drivers/tee/optee/optee_private.h
index 9752e0ea933f..c4596b56a477 100644
--- a/drivers/tee/optee/optee_private.h
+++ b/drivers/tee/optee/optee_private.h
@@ -27,6 +27,10 @@
 #define TEEC_ERROR_BUSY			0xFFFF000D
 #define TEEC_ERROR_SHORT_BUFFER		0xFFFF0010
 
+/* API Return Codes are from the GP TEE Internal Core API Specification */
+#define TEE_ERROR_TIMEOUT		0xFFFF3001
+#define TEE_ERROR_STORAGE_NOT_AVAILABLE	0xF0100003
+
 #define TEEC_ORIGIN_COMMS		0x00000002
 
 /*
-- 
2.47.3



