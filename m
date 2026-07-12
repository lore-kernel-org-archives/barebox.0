Delivery-date: Sun, 12 Jul 2026 23:40:06 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wj1uA-0038Fv-03
	for lore@lore.pengutronix.de;
	Sun, 12 Jul 2026 23:40:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1F1932020AE
	for <lore@pengutronix.de>; Sun, 12 Jul 2026 23:40:05 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PTiQcUlO;
	dkim=pass header.d=9lo.re header.s=protonmail2 header.b=aBDW9FWj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=9lo.re
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=O7qoeaPXYj5qnuyJD5ZH5ZhAcumpZa0mSCFfoKE4/Lo=; b=PTiQcUlO/5gG3rS28iJXu7CN6s
	00R0ERkYpD1y5z9fB550hBa//NAmxkDlB8u2oNDC4xrF0z2EBlLtSag76coS9YDPj/CqUlgFPLI2G
	0ROU5fLFq59MoZcC38E+CnvjNneYiKKM4tajXq4m0Y5nANUOaOu1uixwAqW5CqwlSAOwgyPZ5vjCG
	zPoTf8CiUpmxgLcP6GIIHZpVX1cbPYKHsmd0R9c4mQxizFZA0nHzQhzqAnNYD+CXxxtVFlsudBDH8
	npTmVmnhc0XzOrKYEP4RfvjfsmnTkKxG8taLhWpdAoPQ6+gVfoovNlSZ+wkgd8nKMfi/o10oyx9Qb
	Tz/xW7KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wj1sl-00000007myH-2Myq;
	Sun, 12 Jul 2026 21:38:39 +0000
Received: from mail-4398.protonmail.ch ([185.70.43.98])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wj1si-00000007mxj-2jhq
	for barebox@lists.infradead.org;
	Sun, 12 Jul 2026 21:38:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=9lo.re;
	s=protonmail2; t=1783892311; x=1784151511;
	bh=O7qoeaPXYj5qnuyJD5ZH5ZhAcumpZa0mSCFfoKE4/Lo=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=aBDW9FWjBApcZGhCJgBs5qW9WIb9JNby76v6/r0K0lZNTIWmC8rLTTVJ2KUOn8CYt
	 sMa74SzthVAZWpk3pN7WJ81kYTwvmpR3Skg+ZklquOzWfHsaGYxHZcheH2rWfmRvZE
	 2ByUFlCHuQliKNXJjWbbtXQhF4XXeIoTWfxM1Jl8xn1EuaLY5/DGwt3CsEShUGQW6x
	 SIG8RcZekLalMGtQxyDxGw8nYkWzgEeugZ8W1RsUicrLf+tilxRrPcx8HP5WnyH0OW
	 d1nWzLCPOKfTOhUXBu8arq2HAwQyNfRMfK263cc3CBFYOQaNR+qOiEs7DmIadQ/65z
	 bhJJZ3HuyxpyA==
Date: Sun, 12 Jul 2026 21:38:25 +0000
To: barebox@lists.infradead.org
From: Ingo Reitz <9l@9lo.re>
Cc: Ingo Reitz <9l@9lo.re>
Subject: [PATCH] video: backlicht-pwm: parse num-interpolated-steps
Message-ID: <20260712213724.186498-1-9l@9lo.re>
Feedback-ID: 102649497:user:proton
X-Pm-Message-ID: 7cbba687e7d4fd7645ab4e093b16256db8037751
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------98958ddc525c4731507f24c537bd877f0952f9829754eb80c80c62ce5dec9d1e"; charset=utf-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_143837_720503_868B806B 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -3.8 (---)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Port the parsing logic for num-interpolated-steps from linux,
    which populates brightness-levels between 2 brightness level by linear interpolation.
    This is useful if the amount of brightness levels ex [...] 
 
 Content analysis details:   (-3.8 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [185.70.43.98 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -1.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
                             [185.70.43.98 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-8.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[9lo.re,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,9lo.re:s=protonmail2];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[185.70.43.98:received];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[9l@9lo.re,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,9lo.re:+];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1F1932020AE
X-Stat-Signature: nw6yictyuag7diisdd84tgar9drigogt

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------98958ddc525c4731507f24c537bd877f0952f9829754eb80c80c62ce5dec9d1e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
From: Ingo Reitz <9l@9lo.re>
To: barebox@lists.infradead.org
Cc: Ingo Reitz <9l@9lo.re>
Subject: [PATCH] video: backlicht-pwm: parse num-interpolated-steps
Date: Sun, 12 Jul 2026 23:37:24 +0200
Message-ID: <20260712213724.186498-1-9l@9lo.re>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0

Port the parsing logic for num-interpolated-steps from linux, which populates
brightness-levels between 2 brightness level by linear interpolation.
This is useful if the amount of brightness levels exeeds what can
practically can be written into the devicetree array.

Signed-off-by: Ingo Reitz <9l@9lo.re>
---
 drivers/video/backlight-pwm.c | 76 ++++++++++++++++++++++++++++++++++-
 1 file changed, 75 insertions(+), 1 deletion(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 14fad55637..581fa0237c 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -12,6 +12,7 @@
 #include <linux/err.h>
 #include <of.h>
 #include <regulator.h>
+#include <linux/device.h>
 #include <linux/gpio/consumer.h>
 #include <linux/math64.h>
 
@@ -101,7 +102,9 @@ static int pwm_backlight_parse_dt(struct device *dev,
 {
 	struct device_node *node = dev->of_node;
 	struct property *prop;
-	int length;
+	unsigned int length;
+
	unsigned int num_steps = 0;
+	unsigned int *table;
 	u32 value;
 	int ret, i;
 
@@ -134,6 +137,77 @@ static int pwm_backlight_parse_dt(struct device *dev,
 		if (ret < 0)
 			return ret;
 
+		/*
+		 * This property is optional, if is set enables linear
+		 * interpolation between each of the values of brightness levels
+		 * and creates a new pre-computed table.
+		 */
+		of_property_read_u32(node, "num-interpolated-steps",
+				     &num_steps);
+
+		if (num_steps) {
+			unsigned int num_input_levels = length;
+			unsigned int i;
+			u32 x1, x2, x, dx;
+			u32 y1, y2;
+			s64 dy;
+
+			/*
+			 * Make sure that there is at least two entries in the
+			 * brightness-levels table, otherwise we can't interpolate
+			 * between two points.
+			 */
+			if (num_input_levels < 2) {
+				dev_err(dev, "can't interpolate\n");
+				return -EINVAL;
+			}
+
+			/*
+			 * Recalculate the number of brightness levels, now
+			 * taking in consideration the number o
f interpolated
+			 * steps between two levels.
+			 */
+			length = (num_input_levels - 1) * num_steps + 1;
+			dev_dbg(dev, "new number of brightness levels: %d\n",
+				length);
+
+			/*
+			 * Create a new table of brightness levels with all the
+			 * interpolated steps.
+			 */
+			table = devm_kcalloc(dev, length, sizeof(*table),
+					     GFP_KERNEL);
+			if (!table)
+				return -ENOMEM;
+			/*
+			 * Fill the interpolated table[x] = y
+			 * by draw lines between each (x1, y1) to (x2, y2).
+			 */
+			dx = num_steps;
+			for (i = 0; i < num_input_levels - 1; i++) {
+				x1 = i * dx;
+				x2 = x1 + dx;
+				y1 = pwm_backlight->levels[i];
+				y2 = pwm_backlight->levels[i + 1];
+				dy = (s64)y2 - y1;
+
+				for (x = x1; x < x2; x++) {
+					table[x] =
+						y1 + div_s64(dy * (x - x1), dx);
+				}
+			}
+			/* Fill in the last point, since no line starts here. */
+			table[x2] = y2;
+
+			/*
+			 * As we use interpolation lets remove current

+			 * brightness levels table and replace for the
+			 * new interpolated table.
+			 */
+			devm_kfree(dev, pwm_backlight->levels);
+			pwm_backlight->levels = table;
+		}
+
 		pwm_backlight->backlight.brightness_max = length - 1;
 
 		for (i = 0; i < length; i++)
-- 
2.54.0


--------98958ddc525c4731507f24c537bd877f0952f9829754eb80c80c62ce5dec9d1e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmpUCVEJEHlL4lgvt6NRNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmelh+OfDaseomYzAdQ8/PS/FiEEHNdsU635K+g7
aId7eUviWC+3o1EAAACbAP0QB95AY5qLWIlwORyk9WDN55o7K1ExsLEhyeaZ
11oskgEAhDBnJMr2BPaxoKaxo3Q4srbRF2ai1b3OmKyTXBmtyg8=
=VFYf
-----END PGP SIGNATURE-----


--------98958ddc525c4731507f24c537bd877f0952f9829754eb80c80c62ce5dec9d1e--



