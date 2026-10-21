Delivery-date: Wed, 21 Oct 2026 22:35:50 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJd2L-001b0S-2b
	for lore@lore.pengutronix.de;
	Wed, 21 Oct 2026 22:35:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 923D120280A
	for <lore@pengutronix.de>; Wed, 21 Oct 2026 22:35:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="umL0m/Rh";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=TnfpcPIF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792614945; a=rsa-sha256;
	cv=pass;
	b=JFXLf4Uz6ntD8fYn6EosuSgqirTmEtRZAopwNEv3YJ4d9OXn6x7cAomzE4FgNZnFGABtkI
	VeXNBbHrT0QaW1Gn1uwvkY8ig+TbyTbedoncTohkvh8KCaKkckHF1DkqyJJnoBObAPxI+6
	cEaLOe0s1m7aCdOxey/4mZl2CZ0XLFx3RtWY2RAY16i/x0FMOHQMO8hLKvscJjQpBwo6gY
	R6e3AR3ag2DigttKTqSVzk5Izljzheem1lHhX1g5GUIy6K185Y7p9JxcVK1HrDXbaYGcD3
	uJswC2Z7Q7DTrvCLkf/IFrXBsIrFohr/nye2xO/KqN9dAuBCv0I338M0HBCf6A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="umL0m/Rh";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=TnfpcPIF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792614945;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ioKkLkOQ06xrx8powMqYXmX4xlZX8sii68+1mk0KoCg=;
	b=HF573FpYI9P7oxEk7B7PNEZTMwEsGCqMSIWTC1+ZGHtxgGU41YkBCljqdUijjx+7zK93A5
	Kj0XBjgEzZW8hh0UNM4qsA4dUDG0tbiEhomOPpmT+uRgYKKdk1QdIUnioihlDIxsO1+ga5
	JuYkUVQQ0A8miZDqnbUQMn8+r8XnTeCgWExbR/Co1S+FhLarAdZBKpxw015w4FKo83Ki4O
	El62o7O4m6u2rdZIp0iOwlGe6m2Vbg3O0WTi59QCkwDe/4Woc8lwDIARxtEs4EyQSOxLh6
	U7KhbuyVMk/WGuo3rBA7c4wlyolB/HVfEAIwoiHVJTr5skLWxKfT8MuJUKWitQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ioKkLkOQ06xrx8powMqYXmX4xlZX8sii68+1mk0KoCg=; b=umL0m/RhL+2BHCHs6SwOuVshot
	aOiDj/khzCVajRB2PWwrQar2RLnDCiscj0QJDqbj5Zuttlry4wpKVcA4tOnP/sVahZxsFsNR/3tIn
	gS2/zlAXk76XbY/IU3y05MCeE8k4U/qOoW+z4/2qivUKa9GnyOzjNr7bWuT7J4HIaTBXd2pWQLpSD
	LNHsgS/hhRROMwRnpRFKYjUtZDSEuLsb1NKeYyQH8+qmau5PbudiR4S6i3ih9DezD4Ho17pVJdvH7
	7DEkAzQCcVEF3BWYKeL7ycIgMPRyVfS3UGh4IWN432A0VyqK1xYvlh4URmJeSNHyySlj/TF8tOFpj
	hMesMCoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJd0m-0000000CqDY-2cte;
	Wed, 21 Oct 2026 20:34:12 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJd0j-0000000CqBh-2O6I
	for barebox@lists.infradead.org;
	Wed, 21 Oct 2026 20:34:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8E33C201F24;
	Wed, 21 Oct 2026 22:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792614841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ioKkLkOQ06xrx8powMqYXmX4xlZX8sii68+1mk0KoCg=;
	b=TnfpcPIF8dccAqqTxQMtPcF17xv3NBwRoDkuBDvYd71HDsmbrxjtruiuwWN7PDHpFGRDe2
	OanMf3hvgNhcDPVLJfS3Xl92vs8ouGvu3PWPcvY6w7x20j2ZklyoGoEaTV8roqvy7cjDw6
	JG2pU0qO/cwcck7BndIsLdT3Y41vjOsBtH3IIq23F/Pq7ruFqd019/k7tykk2pB2soFIn4
	xsGHkeu7gd4fVQqhkVO7XSA5EoZH4sRxOS/ROJ02/+ee8jw84nwqkCSC5UOqMUlcnY+8wE
	898gd+EfuN3jlCFv1vzOTwNnc1mcJsF3r9Qcrtd3nMvykAhXgzal1ODms6dUnw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792614841; a=rsa-sha256;
	cv=none;
	b=Pf8omQoHRahAj6plT9hAQf8zkcxsetY6cp4eDstSP2ypKk7EazRKPBq4CRPHgwWOMQ7wtx
	1Vpti/Xa6OZfcDsIn9XVuGv/EWi+Ft8QkN2PJhQcTNd3CtBNXV1ZCCombyhryu4HlEBcIO
	NpGWw7JFqM1jnQSXltzsdtvHscVpSLsizzO6D9w+rh/OKopgR2Pef/2VgAY5YkbsRrBG1s
	KuJJp4GWlI81R0vulDHALRLfs8rISIjaJDiyiMhH5hwoWHw6OjtNK0S2NcAqn9mX8b2x0s
	ynebd+RolK5O3wjG5R/OosATZ/jiabMOntRQUFXraq3ei4HQGx3x3gxfIBAGjw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792614841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ioKkLkOQ06xrx8powMqYXmX4xlZX8sii68+1mk0KoCg=;
	b=G78TNJX6IsRtHVADohNyZPFxujkGBuHJmjbn3JmOtx9lAYRKTSL4kLi1vxPpXkW/7zbcpA
	9eR/mgCUp7ZoUM1mmBbHQ2q+FK6Jeq/nRXWQZOUY687F7xsgQBVZH7kEptlOlovE6W8/rc
	yRzM2vilUpRAzwja1VgLeYRsEMT3C4FVtOjslHY4q0Lt77gLAlJUlYTQtWBKZ+v9BUgvck
	WPi/AmYuiync49PgvQHKf7+FFJSgzEh9/GCTfMqMgvBangFwAdaDjqHyBqLd65gvhRdLFt
	sDcWHNER4k7jySx7Iko39azUjVzVk+rD/yT7g2YHoQiB2bmLWtuAvkG5CoiT0Q==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xJd0b-000bcM-1Y;
	Wed, 21 Oct 2026 22:34:01 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 21 Oct 2026 22:33:53 +0200
Subject: [PATCH 2/2] arm: socfpga: agilex5: add SSBL verification
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261021-socfpga-agilex5-verify-ssbl-v1-2-0463e94669ab@pengutronix.de>
References: <20261021-socfpga-agilex5-verify-ssbl-v1-0-0463e94669ab@pengutronix.de>
In-Reply-To: <20261021-socfpga-agilex5-verify-ssbl-v1-0-0463e94669ab@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_133409_766700_D27C185A 
X-CRM114-Status: GOOD (  25.13  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Altera VAB usually uses a certificate that is appended to
   the SSBL image using the fcs_prepare [0] tool. The certificate contains a
   sha384 checksum and is signed using a key chain that ends with the r [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 923D120280A
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 7sk1y6uspr9z1ie6rqeua8nrh7d1nw9h

Altera VAB usually uses a certificate that is appended to the SSBL image
using the fcs_prepare [0] tool. The certificate contains a sha384
checksum and is signed using a key chain that ends with the root key
that is written to the hardware.

Assume that the certificate is appended to the SSBL image. Read the
certificate from the same flash partition as the SSBL, pass it to the
SDM firmware for verification and check against the root key, and
finally verify the contained checksum in barebox.

The SDM firmware returns success for the certificate verification if VAB
is disabled. Create a dummy certificate to check if VAB boot is disabled
and accept an unsigned SSBL in this case. If there is a valid
certificate attached, the checksum has to match, even if VAB is
disabled.

The implementation is a bit quirky, because

1. it needs to deal with the broken SDM firmware behavior, which expects
   a 32 bit word with value 0 in front of the certificate,

2. needs to walk and parse the (still untrusted) key chain to find the
   actual size of the certificate, and

3. I haven't found a better way if VAB is enabled than to check a dummy
   certificate.

The VAB code could be moved to a separate module to make it available to
other SoCFPGA platforms or to barebox proper. Since it's only used for
SSBL verification for now and is mingled with the SSBL loading, I kept
it in the xload code.

[0] https://github.com/altera-fpga/libfcs

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/agilex5-xload.c | 157 ++++++++++++++++++++++++++++++++++
 1 file changed, 157 insertions(+)

diff --git a/arch/arm/mach-socfpga/agilex5-xload.c b/arch/arm/mach-socfpga/agilex5-xload.c
index 9e55252c04cc..077f67014945 100644
--- a/arch/arm/mach-socfpga/agilex5-xload.c
+++ b/arch/arm/mach-socfpga/agilex5-xload.c
@@ -5,6 +5,11 @@
 #include <linux/sizes.h>
 #include <mach/socfpga/generic.h>
 #include <pbl/bio.h>
+#include <mach/socfpga/mailbox_s10.h>
+#include <mach/socfpga/soc64-system-manager.h>
+
+#include <crypto/pbl-sha.h>
+#include <crypto/sha.h>
 
 static inline u32 barebox_arm_size(const char *head)
 {
@@ -52,9 +57,128 @@ static ssize_t agilex5_bl33_read(struct pbl_bio *bio, void *bl33,
 	return size;
 }
 
+struct vab_certificate_data {
+	u32 magic;
+	u32 flags;
+	u32 reserved0;
+	u32 reserved1;
+	u8 hash[SHA384_DIGEST_SIZE];
+	u32 measurement;
+	u32 reserved2;
+};
+
+struct vab_certificate_int {
+	u32 magic;
+	u32 size;
+	u32 version;
+	u32 type;
+	struct vab_certificate_data d;
+	u32 keychain[0];
+};
+
+/*
+ * Use a wrapper struct that starts with a zero word to be able to pass the
+ * certificate to the SDM firmware as it. Let the code that reads the
+ * certificate deal with it to avoid a copy of the certificate.
+ */
+struct vab_certificate {
+	u32 zero;
+	struct vab_certificate_int cert;
+};
+
+static ssize_t vab_get_cert_size(struct vab_certificate_int *cert,
+				 size_t size)
+{
+	struct {
+		u32 magic;
+		u32 size;
+	} *header;
+	ssize_t offset = 0;
+
+	/*
+	 * Each element in the key chain has a header with some magic and the
+	 * size of the element. The length of the entire key chain is attached
+	 * to the end of the key chain. Walk the entire key chain to find the
+	 * actual size of the key chain.
+	 *
+	 * Note that the header is still untrusted!
+	 */
+	while (offset < size) {
+		header = ((void *)cert) + offset;
+		if (header->magic == offset)
+			break;
+		offset += header->size;
+		if (offset < 0 || offset > size)
+			return -EINVAL;
+	}
+
+	return offset;
+}
+
+static ssize_t agilex5_vab_read(struct pbl_bio *bio,
+				struct vab_certificate *cert,
+				off_t start, size_t size)
+{
+	ssize_t ret;
+	struct vab_certificate_int *tmp = &(cert->cert);
+	size_t tmp_size = size - sizeof(u32);
+
+	cert->zero = 0;
+	ret = pbl_bio_read(bio, start, tmp, tmp_size);
+	if (ret < 0)
+		return -EINVAL;
+
+	if (tmp->magic != 0x25d04e7f) {
+		pr_err("vab cert: invalid magic 0x%x\n", tmp->magic);
+		return -EINVAL;
+	}
+	if (tmp->size != sizeof(*tmp)) {
+		pr_err("vab cert: invalid size %u", tmp->size);
+		return -EINVAL;
+	}
+
+	ret = vab_get_cert_size(tmp, tmp_size);
+	if (ret <= 0) {
+		pr_err("vab cert: invalid certificate chain\n");
+		return -EINVAL;
+	}
+
+	pr_info("read vab cert to %p from %lx (%zu bytes)\n",
+		tmp, start, ret);
+
+	return ret + sizeof(u32);
+}
+
+static ssize_t agilex5_vab_dummy(struct vab_certificate *cert)
+{
+	struct vab_certificate_int *tmp = &(cert->cert);
+
+	tmp->magic = 0x25d04e7f;
+	tmp->size = sizeof(*tmp);
+	tmp->version = 1;
+	tmp->type = 6;
+
+	return tmp->size;
+}
+
+static int agilex5_vab_verify(const void *data, size_t size,
+			      struct vab_certificate *cert)
+{
+	char computed_hash[SHA384_DIGEST_SIZE];
+	char *hash = cert->cert.d.hash;
+
+	pbl_sha384(data, size, computed_hash);
+
+	return memcmp(hash, computed_hash, SHA384_DIGEST_SIZE);
+}
+
 int agilex5_xload_bl33(struct pbl_bio *bio, void *bl33)
 {
 	ssize_t size;
+	off_t cert_offset;
+	ssize_t cert_size;
+	struct vab_certificate *cert;
+	int ret;
 
 	if (!bio) {
 		pr_warn("source device for SSBL is not configured\n");
@@ -70,5 +194,38 @@ int agilex5_xload_bl33(struct pbl_bio *bio, void *bl33)
 	if (size < 0)
 		return size;
 
+	/*
+	 * The certificate is 8 byte aligned and attached to the SSBL binary.
+	 * The certificate must not be larger than the partition and is
+	 * usually smaller than 4K.
+	 */
+	size = ALIGN(size, 8);
+	cert_offset = barebox_part->nor_offset + size;
+	cert_size = min_t(size_t, SZ_4K, barebox_part->nor_size - size);
+
+	/* Use the SDRAM behind the bl33 for the certificate */
+	cert = bl33 + size;
+	cert_size = agilex5_vab_read(bio, cert, cert_offset, cert_size);
+	if (cert_size < 0) {
+		/*
+		 * There is no valid certificate. Generate a dummy certificate
+		 * to ask the firmware if authentication bypass is allowed.
+		 */
+		cert_size = agilex5_vab_dummy(cert);
+	}
+
+	ret = mbox_vab_src_cert(cert, cert_size);
+	if (ret)
+		return ret;
+
+	ret = agilex5_vab_verify(bl33, size, cert);
+	if (ret) {
+		if (cert_size != sizeof(*cert)) {
+			pr_err("SSBL hash mismatch\n");
+			return ret;
+		}
+		pr_debug("SSBL hash mismatch: Bypass authentication\n");
+	}
+
 	return 0;
 }

-- 
2.47.3



