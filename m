Delivery-date: Mon, 26 Oct 2026 14:33:13 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLKp6-003WZQ-2J
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 14:33:13 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 93181202292
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 14:33:12 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nTOkVXPi;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=JWZLQZsk;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793021592; a=rsa-sha256;
	cv=fail;
	b=a3A3OlttNPBaWQa6P3LIDoZuRc9XOZvlOZwpeBydqcylzTPlD/IhXYavpcH1GsCRVZmM//
	kAMR4pufeq06YIWelk9Qk5FH234MJ440/RcuHgPsOQyU2JSHqMqiQCH4HhNXr8I+UBP5mg
	h12ALERcU5sBxkk6xmQTMmIf/QWZCtTH6f0DqAa0Kbzl/qUup4ymxOHdI2nZZXFbz8hO3h
	oLnL1rPf6BhNyFxkSH1tiW+5uZGi1B+h/8PdXbBOlhHkTxUOZlFoMco+x08ngOMgEzfQZA
	DK1svI4GfyDERDpCS1E/qiejYgpHuNPxUpxgT5bAK3dIpf/t95tj11Y+YkS9Mw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nTOkVXPi;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=JWZLQZsk;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793021592;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=LX5XXHCMusojq8rIsCMfsOwRWubqohsviOkr1a9oJGo=;
	b=VPqCs8B5GOr3QCY7ckvrfWrtdfcTxO6TiLgImdjVPFq/e9jdgcauJtq3jZSLP6tefeq2Vq
	PTdMA+0QNkOIv5My2QfgH04Jp6Za/gP69495VcGMH6DtjPSM/+AX6wGUDxX0vR8HW3x9+g
	u5KIj9zv+mRVyPRyey177Hb2QiLt5CEJ2lX2lcGYYNz5zC9vYzkrdJZHQfbNeF9oRBYwQK
	nOs4Wd9I+M000CJQfZQ2E+tYpiAefBJZkS7I1Y94FCf9DU1z1KrYjZWf1IR2tR1rOUbkGN
	3mcH+kXgMvJHYjkKcaPRQzqNvYUodQK3D2sLwbxoV4aiDWkPEQaWztyEGMtgzw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LX5XXHCMusojq8rIsCMfsOwRWubqohsviOkr1a9oJGo=; b=nTOkVXPiTAixfU/XdyLsbvX1lI
	Avxzic1vBBSKDcKi1aJZhZn1JaQPIr1/eXXu8JD5Z6cItUVPEXRVCLlwHixJjQLY2fi2Qxz8d9q5G
	C82xbv9xX7rl0B7M58kv17ZbeP3yzNtm3capS/JA5wohGXeovJdP0r+kpnp4h3/cpiNsJZOYb6R6r
	HIqM9VWvCPh3vH+gwBSFxDVlOrZHyuxoAze1xTHFCWH1u2eRNEPRmb9SvnGzm1aZkxzYOQ0N9zgUb
	oZLhNg7EkJTqrkmOy6ZYDyjfL52BlZThxyQYbToIxWiOjo/1gXC0JsmUlqzAyRtcciyZ/iJ3iRqRE
	0aY0skNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLKog-00000002bwv-2NsG;
	Mon, 26 Oct 2026 13:32:46 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLKod-00000002bvo-1REn
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 13:32:45 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6D61E2022B5;
	Mon, 26 Oct 2026 14:32:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793021561;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LX5XXHCMusojq8rIsCMfsOwRWubqohsviOkr1a9oJGo=;
	b=JWZLQZskEdgjAUkD96Hh3ZSukz8aAWhAcz85/v5/1WNjzxSb1sZNwC0Qz6rvT/TQr01ixT
	Te04SK4CsqzLUOdRCM3zkazenkI4j8OEBVWm+oHlyVAEqp5tjLc01qkbwJ70FtfCSLCi9U
	xNKH17eKtIwhdypjFIKLD9Gc5muhTprSZCzTsrwVeW9JmQzc2ABfo5qcRMTungWXebwQI1
	igP1ZuPgGZW/0MhWIdso+M8nxLpql/HrKZxoMIeco9Em0w/NL5z2l2YNdm7mTuScLOHo2v
	iE9IgGwGfx9dkyV8yckKRbX/fpPa+6MuVSZvHSm3Ma/Wki1n7CCgtucQTAqIFQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793021561; a=rsa-sha256;
	cv=none;
	b=aCJ0J45ZIB07skmSRWRQ2mja/SHKh7C7Xd0wBJNsMIEdBlWVA5VSFCZKnKQDRsAg63rvXr
	OV3FV/2kwKN1FWSDnrDY4GRb0XpI2xMesuuO11DPq36Yg3U2SiYcfcJiDWO192bHskCGXd
	MKM2hj0MI2T5UcHe6yGjVFl6kfXY69dUKmvvFkbL5tj1W1N7+zQReSzt/lSP0PHyvCDrOZ
	SEJQFyWSEMdqJc0lGuNJ7OAl5elADZJCuhi5yJopvGZrG92fC5Rokv93Eq49uZ82DFSSK8
	dXWMRbFjFL5XdUIGukAWQo0sf9JUzePUy3ER9OEQBF4cg5u1DtwBm8Owmq7gNw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793021561;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LX5XXHCMusojq8rIsCMfsOwRWubqohsviOkr1a9oJGo=;
	b=d4i269v19q5ZoZ1t7OmbG8nxUpMBKpUfozwcHuePrQe5FB4+5BCIJFgP87QEn2Nn6uVTKc
	TCGmUwmlsRfLnyF2pOXK/bx5Qb4mm1XKjzB4YIT54NyHeBbeueVJXgxMLpYehTn4F8QhyC
	9R4/Rey6EEAkpwVsIxXKPAg97HgnLt3RjkRYoYynlpp02SGnBL7uaY90R4ZlqYCWfWvMCt
	28Mj0C5JWSUfXNU3WkHP0ipQBt8fpKIQcqGeSJIyo1el2TzElRO4K/1XJudFr7loQjaKEy
	jEhHfFiFecsYdsScA8UpANFgZZhpNKyAwX/q4dsJlg0fMccQaXHKQSAB8SYbWQ==
Message-ID: <15cbf71b-3da6-4993-98f9-0d5357fdbc54@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 2/2] arm: socfpga: agilex5: add SSBL verification
To: "Michael Tretter" <m.tretter@pengutronix.de>
In-Reply-To: <20261021-socfpga-agilex5-verify-ssbl-v1-2-0463e94669ab@pengutronix.de>
References: <20261021-socfpga-agilex5-verify-ssbl-v1-0-0463e94669ab@pengutronix.de>
 <20261021-socfpga-agilex5-verify-ssbl-v1-2-0463e94669ab@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 26 Oct 2026 13:32:40 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_063243_543988_B5F30FC5 
X-CRM114-Status: GOOD (  40.11  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-10-21 22:33, Michael Tretter wrote: > Altera VAB usually
    uses a certificate that is appended to the SSBL image > using the fcs_prepare
    [0] tool. The certificate contains a sha384 > checksum an [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
Cc: BAREBOX <barebox@lists.infradead.org>, Michael
 Tretter <m.tretter@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 93181202292
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: tmcetdpfy38nrxj9zfix9iy5njqki1hr

On 2026-10-21 22:33, Michael Tretter wrote:
> Altera VAB usually uses a certificate that is appended to the SSBL image
> using the fcs_prepare [0] tool. The certificate contains a sha384
> checksum and is signed using a key chain that ends with the root key
> that is written to the hardware.
>=20
> Assume that the certificate is appended to the SSBL image. Read the
> certificate from the same flash partition as the SSBL, pass it to the
> SDM firmware for verification and check against the root key, and
> finally verify the contained checksum in barebox.
>=20
> The SDM firmware returns success for the certificate verification if VAB
> is disabled. Create a dummy certificate to check if VAB boot is disabled
> and accept an unsigned SSBL in this case. If there is a valid
> certificate attached, the checksum has to match, even if VAB is
> disabled.
>=20
> The implementation is a bit quirky, because
>=20
> 1. it needs to deal with the broken SDM firmware behavior, which expects
>    a 32 bit word with value 0 in front of the certificate,
>=20
> 2. needs to walk and parse the (still untrusted) key chain to find the
>    actual size of the certificate, and
>=20
> 3. I haven't found a better way if VAB is enabled than to check a dummy
>    certificate.
>=20
> The VAB code could be moved to a separate module to make it available to
> other SoCFPGA platforms or to barebox proper. Since it's only used for
> SSBL verification for now and is mingled with the SSBL loading, I kept
> it in the xload code.
>=20
> [0] https://github.com/altera-fpga/libfcs
>=20
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  arch/arm/mach-socfpga/agilex5-xload.c | 157 ++++++++++++++++++++++++++++=
++++++
>  1 file changed, 157 insertions(+)
>=20
> diff --git a/arch/arm/mach-socfpga/agilex5-xload.c b/arch/arm/mach-socfpg=
a/agilex5-xload.c
> index 9e55252c04cc..077f67014945 100644
> --- a/arch/arm/mach-socfpga/agilex5-xload.c
> +++ b/arch/arm/mach-socfpga/agilex5-xload.c
> @@ -5,6 +5,11 @@
>  #include <linux/sizes.h>
>  #include <mach/socfpga/generic.h>
>  #include <pbl/bio.h>
> +#include <mach/socfpga/mailbox_s10.h>
> +#include <mach/socfpga/soc64-system-manager.h>
> +
> +#include <crypto/pbl-sha.h>
> +#include <crypto/sha.h>
> =20
>  static inline u32 barebox_arm_size(const char *head)
>  {
> @@ -52,9 +57,128 @@ static ssize_t agilex5_bl33_read(struct pbl_bio *bio,=
 void *bl33,
>  	return size;
>  }
> =20
> +struct vab_certificate_data {
> +	u32 magic;
> +	u32 flags;
> +	u32 reserved0;
> +	u32 reserved1;
> +	u8 hash[SHA384_DIGEST_SIZE];
> +	u32 measurement;
> +	u32 reserved2;
> +};
> +
> +struct vab_certificate_int {
> +	u32 magic;
> +	u32 size;
> +	u32 version;
> +	u32 type;
> +	struct vab_certificate_data d;
> +	u32 keychain[0];
> +};
> +
> +/*
> + * Use a wrapper struct that starts with a zero word to be able to pass =
the
> + * certificate to the SDM firmware as it. Let the code that reads the
> + * certificate deal with it to avoid a copy of the certificate.
> + */
> +struct vab_certificate {
> +	u32 zero;
> +	struct vab_certificate_int cert;
> +};
> +
> +static ssize_t vab_get_cert_size(struct vab_certificate_int *cert,
> +				 size_t size)
> +{
> +	struct {
> +		u32 magic;
> +		u32 size;
> +	} *header;
> +	ssize_t offset =3D 0;
> +
> +	/*
> +	 * Each element in the key chain has a header with some magic and the
> +	 * size of the element. The length of the entire key chain is attached
> +	 * to the end of the key chain. Walk the entire key chain to find the
> +	 * actual size of the key chain.
> +	 *
> +	 * Note that the header is still untrusted!
> +	 */
> +	while (offset < size) {
> +		header =3D ((void *)cert) + offset;
> +		if (header->magic =3D=3D offset)
> +			break;
> +		offset +=3D header->size;
> +		if (offset < 0 || offset > size)
> +			return -EINVAL;
> +	}
> +
> +	return offset;
> +}
> +
> +static ssize_t agilex5_vab_read(struct pbl_bio *bio,
> +				struct vab_certificate *cert,
> +				off_t start, size_t size)
> +{
> +	ssize_t ret;
> +	struct vab_certificate_int *tmp =3D &(cert->cert);
> +	size_t tmp_size =3D size - sizeof(u32);
> +
> +	cert->zero =3D 0;
> +	ret =3D pbl_bio_read(bio, start, tmp, tmp_size);
> +	if (ret < 0)
> +		return -EINVAL;
> +
> +	if (tmp->magic !=3D 0x25d04e7f) {
> +		pr_err("vab cert: invalid magic 0x%x\n", tmp->magic);
> +		return -EINVAL;
> +	}
> +	if (tmp->size !=3D sizeof(*tmp)) {
> +		pr_err("vab cert: invalid size %u", tmp->size);
> +		return -EINVAL;
> +	}
> +
> +	ret =3D vab_get_cert_size(tmp, tmp_size);
> +	if (ret <=3D 0) {
> +		pr_err("vab cert: invalid certificate chain\n");
> +		return -EINVAL;
> +	}
> +
> +	pr_info("read vab cert to %p from %lx (%zu bytes)\n",
> +		tmp, start, ret);
> +
> +	return ret + sizeof(u32);
> +}
> +
> +static ssize_t agilex5_vab_dummy(struct vab_certificate *cert)
> +{
> +	struct vab_certificate_int *tmp =3D &(cert->cert);
> +
> +	tmp->magic =3D 0x25d04e7f;
> +	tmp->size =3D sizeof(*tmp);
> +	tmp->version =3D 1;
> +	tmp->type =3D 6;
> +
> +	return tmp->size;
> +}
> +
> +static int agilex5_vab_verify(const void *data, size_t size,
> +			      struct vab_certificate *cert)
> +{
> +	char computed_hash[SHA384_DIGEST_SIZE];
> +	char *hash =3D cert->cert.d.hash;
> +
> +	pbl_sha384(data, size, computed_hash);
> +
> +	return memcmp(hash, computed_hash, SHA384_DIGEST_SIZE);
> +}
> +
>  int agilex5_xload_bl33(struct pbl_bio *bio, void *bl33)
>  {
>  	ssize_t size;
> +	off_t cert_offset;
> +	ssize_t cert_size;
> +	struct vab_certificate *cert;
> +	int ret;
> =20
>  	if (!bio) {
>  		pr_warn("source device for SSBL is not configured\n");
> @@ -70,5 +194,38 @@ int agilex5_xload_bl33(struct pbl_bio *bio, void *bl3=
3)
>  	if (size < 0)
>  		return size;
> =20
> +	/*
> +	 * The certificate is 8 byte aligned and attached to the SSBL binary.
> +	 * The certificate must not be larger than the partition and is
> +	 * usually smaller than 4K.
> +	 */
> +	size =3D ALIGN(size, 8);
> +	cert_offset =3D barebox_part->nor_offset + size;
> +	cert_size =3D min_t(size_t, SZ_4K, barebox_part->nor_size - size);
> +
> +	/* Use the SDRAM behind the bl33 for the certificate */
> +	cert =3D bl33 + size;
> +	cert_size =3D agilex5_vab_read(bio, cert, cert_offset, cert_size);
> +	if (cert_size < 0) {
> +		/*
> +		 * There is no valid certificate. Generate a dummy certificate
> +		 * to ask the firmware if authentication bypass is allowed.
> +		 */
> +		cert_size =3D agilex5_vab_dummy(cert);
> +	}
> +
> +	ret =3D mbox_vab_src_cert(cert, cert_size);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D agilex5_vab_verify(bl33, size, cert);
> +	if (ret) {
> +		if (cert_size !=3D sizeof(*cert)) {
> +			pr_err("SSBL hash mismatch\n");
> +			return ret;
> +		}

This is unnecessary hard to read. I assume cert_size !=3D sizeof(*cert)
means "This is not the dummy cert generated above", because a real cert
must always have data besides the header, right?

> +		pr_debug("SSBL hash mismatch: Bypass authentication\n");

The dummy cert never passes agilex5_vab_verify(), so it's not necessary
to check its sha384 sum.

I think you should rather have a dummy_cert boolean and return
successfully in the dummy case right after calling mbox_vab_src_cert().
With this you would also not have to return successfully after a failed
verification, which raises eyebrows.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



