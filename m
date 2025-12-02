Delivery-date: Tue, 02 Dec 2025 10:23:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQMbl-0077G7-0J
	for lore@lore.pengutronix.de;
	Tue, 02 Dec 2025 10:23:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQMbk-0004qi-Hx
	for lore@pengutronix.de; Tue, 02 Dec 2025 10:23:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HAT54Ccb0rqOp9Y+fEWzhcgdcJXA/HxhyI6xF+bCb3U=; b=ZSUKkI4gL4CPBfHsd7QtTeZOxZ
	VrVFo7utpAbPUmb1wEr1l49ww9ibZc8bPSfkSnNg5rhFJQChR+BOPiX9xSYENAko+fd7wlAcv5ucq
	8ubIpobPamtl48vSTIuUd/oyTrh4CqoOMlvvbp3QBDmoX/7OOeEhc35tYA7ewW+9rSa9RjE0sB67+
	wlgKTutHWepBD9PKGAfExzJItY5K3OwxsMdoZOZUWN/N6C7E10xuPea0Xyl2unZ5JMAj33K5ARqRd
	+9I/px5hAjh6q/qfqcIEKmq/n/uVX/V+1me+OSkERv3GCggAOkjgnbUIMAG7XAJ69QlmNxObh1ZlN
	vkZbZm8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQMbA-0000000568C-07C8;
	Tue, 02 Dec 2025 09:23:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQMay-0000000566w-1H8S
	for barebox@lists.infradead.org;
	Tue, 02 Dec 2025 09:23:01 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vQMaw-0004cr-O2; Tue, 02 Dec 2025 10:22:50 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 02 Dec 2025 10:22:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251202-base64-bounds-v2-1-34d3716c3f55@pengutronix.de>
References: <20251202-base64-bounds-v2-0-34d3716c3f55@pengutronix.de>
In-Reply-To: <20251202-base64-bounds-v2-0-34d3716c3f55@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1465; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=oWY2rISXGxyF9E8QGhmtmQiz0I86cTB8cuLw8B69pkc=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjUW//SmO/RQau5KpdWLb3Vm7r8xpKuqifrXkkJzvL7m
 fnepGSBdUcpC4MYF4OsmCJLrJqcgpCx/3WzSrtYmDmsTCBDGLg4BWAiKaEMf0VXPP+4cYXR+lTL
 ebvm32JaETUpgX1G1TdvX9f3QhFzdy1jZLhyVuDYYc3qS3tnzMtcViMTwMsdUM8RnzD1uf99Fs/
 71gwA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_012252_345528_A39AE5AE 
X-CRM114-Status: GOOD (  12.29  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] lib: base64: Fix out-of-bounds potential by
 respecting dst_len
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

__decode_base64 generally writes the input in 3 bytes increments,
corresponding to 4 bytes increments in the base64 input buffer. This
means that in order to respect dst_len as the size of the output buffer,
the case of exceeding dst_len within a loop iteration must be
considered.

In such a case, refrain from writing the last one or two bytes if that
write would be past dst_len.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 lib/base64.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/lib/base64.c b/lib/base64.c
index d5ab217528..3e29f0a56c 100644
--- a/lib/base64.c
+++ b/lib/base64.c
@@ -163,19 +163,19 @@ static int __decode_base64(char *p_dst, int dst_len, const char *src, bool url)
 		 */
 		if (count > 1)
 			*dst++ = six_bit[0] << 2 | six_bit[1] >> 4;
-		if (count > 2)
+		if (count > 2 && dst_len > 1)
 			*dst++ = six_bit[1] << 4 | six_bit[2] >> 2;
-		if (count > 3)
+		if (count > 3 && dst_len > 2)
 			*dst++ = six_bit[2] << 6 | six_bit[3];
+		/* last character was "=" */
+		if (count != 0)
+			length += min(count - 1, dst_len);
 		/*
 		 * Note that if we decode "AA==" and ate first '=',
 		 * we just decoded one char (count == 2) and now we'll
 		 * do the loop once more to decode second '='.
 		 */
 		dst_len -= count-1;
-		/* last character was "=" */
-		if (count != 0)
-			length += count - 1;
 	}
 ret:
 	p_dst = dst;

-- 
2.51.2.535.g419c72cb8a



