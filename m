Delivery-date: Tue, 28 Oct 2025 19:04:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3f-00Cllv-0W
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 19:04:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3b-0001FG-16
	for lore@pengutronix.de; Tue, 28 Oct 2025 19:04:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8WTDE3tdDMkshIQxbnjroEqf7Ywwg/rqBzSUiDnzMG8=; b=h6QEwY9ttIpKfONZcJ3Aj6r6pH
	2cDTAe6Jvgicqq1rTnXVIZCUxLbjqNMHxqoW7Mi7IFyA5MZmu8tZLJ7/xc2+n8g/rf3rc7Rj58lEZ
	dqHe7VyhYR4inEzuHCZHLtxp+f+iH1t+uY0i+nVxJajF0zohAfv3knX0PrxRDd+rYm8vohtcmxN82
	NbQNu/mnKW7V6nv5zZpEkJ/7+wLy5Ucug/KigUVtwBeFcld2SmJZb5Ts2xrxliDA4B2NPBLx4GX29
	vtaYHc8klQadZ0PplgekGNDUpyJ5RaOT3U16DhuUYy3RYD0Z8tLgszMxv4CGgMknXFHOmHADMNK8k
	S25nzKIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2y-0000000GSLc-21iC;
	Tue, 28 Oct 2025 18:03:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2p-0000000GSBR-35Sb
	for barebox@bombadil.infradead.org;
	Tue, 28 Oct 2025 18:03:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=8WTDE3tdDMkshIQxbnjroEqf7Ywwg/rqBzSUiDnzMG8=; b=jNYA/ZhR+wOrVKmD9si+sU2KYD
	NJWjWEBJsDqz5xtubRpWDHS378KnDHqAQYwhgGDLP76F8X0W9n9NLWy4uJKX5EeEyqw9+jMMym/vL
	sKYoCuGtYDrIYgZICfGuCAbIOQCtzOY6LHCfcge8ejtzP/yGECi29m0WICFUXzcpY2azy3u5n6oL4
	8MxemxGmX2aaZNc+xnig1CiHgLpUdauNpspN1F4N3fCisZshJJDwgJKUTkzE/vz9TSmztSxb9/ySx
	iDIL70BXmIrXnwpXPjn7pTga6dyrY3QX5pKu9KQAlE86U03x/3bpDSvjIojctxUFd0XY5L1UjDnID
	Uz6fo36w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDnAz-000000050DP-3Tyl
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 17:08:10 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDo2h-0000PX-5g; Tue, 28 Oct 2025 19:03:35 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 19:03:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-tlv-signature-v2-7-3bafce636ad7@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
In-Reply-To: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1041; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=MR7EzFItX275m+2F7CmYKdGgq8XVQXVOXgBy5Dzr4t0=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkZC2s3WyyjG+DbNJTLa3UoG3nXz9ymveq6kt9zbOAc
 NZwr5CEjlIWBjEuBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwETKvzH8jw5Nqfy1+67Z3otW
 fxSFWUp7dC8cPNEXErF77Z7OQ/kGOQz/Q3lWJsQVSwtpPepbO/PX21sizyOqQr+7WLy/U1YeVG/
 DDQA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_170805_943432_7E990780 
X-CRM114-Status: GOOD (  10.46  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/17] commands: tlv: Error out on invalid TLVs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TLV parsing happens in the TLV drivers probe function
(tlv_probe_from_magic()) but register_device() does not propagate
errors from match(), always returning zero.

match() however ensures that dev->driver is always NULL if an error
occurred on probe and since we're only probing the TLV driver, rely on
that as indicator of an error during TLV parsing (e.g. CRC mismatch).

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 commands/tlv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/tlv.c b/commands/tlv.c
index 6118a2947f..c01a7b0399 100644
--- a/commands/tlv.c
+++ b/commands/tlv.c
@@ -29,7 +29,7 @@ static int do_tlv(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	tlvdev = tlv_register_device_by_path(filename, NULL);
-	if (IS_ERR(tlvdev)) {
+	if (IS_ERR(tlvdev) || tlvdev->dev.driver == NULL) {
 		printf("Could not open \"%s\": %m\n", filename);
 		return COMMAND_ERROR;
 	}

-- 
2.51.2.535.g419c72cb8a



