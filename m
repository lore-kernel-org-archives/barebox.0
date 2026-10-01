Delivery-date: Thu, 01 Oct 2026 09:44:12 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCBSe-008MeZ-2i
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 09:44:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 558A2202013
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 09:44:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=mD7rHtk4;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=bGeVbQ66;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=BnGUFIGD;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790840652; a=rsa-sha256;
	cv=fail;
	b=Gd/3llbj2aZPl1EtIg02+fehkA4W0C+jf4c39/ROgBH2ZlYq6zy5rD3ejRlDgN9WOZM9rh
	O7NIIQK6Fa+h6Jcw1jk+puB1ZSV1CLqhluYWtN3t8hAD/xrqY3cmmtneqaFA5n7Owtm2Eb
	/xJDe8ti1YPb1qC7eWx0yvJIjL27p+U/6zTHDlsCMX6ExXIkbTIXwTVtm8aa+VXooba/YP
	frrm1efUQTQAQiCIpn8W94KhZSJOiolEgK1n35BNKpDQh5W76GSIVrOU8YfJ/ftD/dxPRw
	HRi/1StLZ4Rnm/mSwK8AYehYJnVMGdH2JFMl1yjZcmQBtKgYzkp3VOMGPwFpyA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=mD7rHtk4;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=bGeVbQ66;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=BnGUFIGD;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840652;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Yj0vLiRa91ypT2Q3XDJd3EWusRAjwf5MljHi7ZuWei8=;
	b=d99OW2LXMVTWc6yTsXXAi59KcVRZiF6+p1hPQTtosAK5CC1g6KK0XiUpZmtFeGcmfzzoPe
	uvMYIAqGDvl7Oc9hrfgh1MunLkJm51DoOrVMy52VEuzXEckeCJsj8D9Fl3a1x/v36UI2sI
	0J2Akpl541B11GdpYgR608kGSSjjflcTWuZf31nfVkBVGEdAiqNve/n4r39lsN1gAMRGDP
	yKbaA29lN37Mbuo9SeygtuO5YwGEeDC4VUwv4OqXiZNfh+LKvCzOXh3c0p1Z5xYFg4MLXj
	/H78l/Toxei5Cg2xNQI61PqMXKQOcvgGYpo6BN/G8jfTHIvz3hOtY7p9bU9Cug==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yj0vLiRa91ypT2Q3XDJd3EWusRAjwf5MljHi7ZuWei8=; b=mD7rHtk4mngbLW/QeboEMnsKbR
	AEGFaXPZXJ28pTlt+I/NDxMFPixaZNin//M/6o1ZIJJKgeaME5DBbpq007Darlm0OJ83Re8iaQiOk
	sBEEspqYLLZcdLUPr6tcCecDr/pzX7f+uAe/gtUMjwwbkdGHIDn7LkFYIj7+u5sevi634lOFIPIxp
	9kjJCxi61xOMxSv4vjIILTRTqMJnX5sL95dj+ifQnKN0XWx2l0gkMyNSoDlA/khusPQcufKTPpH4t
	VoZuu4HN3a1qXyOCKXIMDxSLkf0D42AMPoI80ZHaHPBX8JfMt510I/1JL4Hm1tDK8VyBiC8Q+e1hD
	kLsq8tHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBRU-0000000822H-2qXV;
	Thu, 01 Oct 2026 07:43:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBRU-0000000821z-0RKu
	for barebox@bombadil.infradead.org;
	Thu, 01 Oct 2026 07:43:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Yj0vLiRa91ypT2Q3XDJd3EWusRAjwf5MljHi7ZuWei8=; b=bGeVbQ66YfjjIg6rSfKINVlpxA
	BUpvWyFiw4iK3DtAe0n5lKDKV/VlMLWuw36SkdXkdLGz6mVxB1ICQku6EvbB3fM7l+YTtzndKmqJj
	jVJ3zKrehHDEjyxeW1p3FXi6U3HxCzzA0NV3mDYkuy/HQ5SN2scMWMlVwVt7WyIDiNVcZyeKagqhD
	m3z07KObapt9BjNBeo5CcRv+6dJzn4zBeD7ojAJ076eHB011Wf8rIhpXEAv2YptgeX28UPTh5fRuk
	/k5e3qzmJsxv0ottETUnMEkZfH5enbs83nK1NLBIQTx/iH20sJvlWsuFjZLEryXhspxubS/wombUj
	9pYazfaQ==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xCBRP-00000004gtr-1lEW
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 07:42:58 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1D90F200758;
	Thu, 01 Oct 2026 09:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Yj0vLiRa91ypT2Q3XDJd3EWusRAjwf5MljHi7ZuWei8=;
	b=BnGUFIGDv3PPcz4m9jCRlkjGwMkHRUYddUOXYFHTjr9mMl4s+DMGzxvzXWC3xTVbQQchPS
	n92B4bjR3pk5lbl4FFdaBS/YnwUflulWZdjMm1AYSq8gbeLv330tcXkA1ivn807SfAN/d3
	p+Gql4PaGwdu/oN35S0Q6ZSsm0V3nS9LGCz1MYJpl3gX9lmxnmeGWNXz9fiBNhFsvFjOzO
	g/87W+8SyodzBTLZsrgSGHIxVD19pBJhSy90nn6P32CRfkio6Y6pE0cse0SouxQmaoN/rp
	veoRSStQbTEjAm7f6Yg807vItkS2Qr/dEUXTNBTb8foQNeytn/s/Rn781JAr7w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790840574; a=rsa-sha256;
	cv=none;
	b=CJlsVgDHPxY8xUbpzQDDyQKb2EdPSYy37ip8HEK6r5mHxGZ8Pl8Xpu7vO74KfhVQ2i12Vp
	242eT9hf57AldLQWbeB0TivOERytc+ei9Fu0ztZ3Nvkfj1v+1z+Yv0GlxiXoCBbCWNqG9q
	V/CyC/Wv1BYYU9LqYPPzEe+Z+jqWMgClzRzm3csQFFxbhbbNb4qgKOyDJ8B69PeK3CaUoQ
	kipCB4NrqcDVVmeqcCrZ8o/wUT92c95zgfVFcBTJUEii5BjXolXGRVG4+6DQTWA2ykcheB
	/h15Kv7WVpI1ZuL96nLdTD+vNiaW148Egik8J2TKyXaMKL5augDKDBThdK9qjw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Yj0vLiRa91ypT2Q3XDJd3EWusRAjwf5MljHi7ZuWei8=;
	b=V71g7vB6i+M6TA4ISjBqvQoKS3LjM3NbPd18fnR3damgWLj8ppU8pbAs7ZGYx2efrQIWEu
	lPQmVygXnEcd6lzmwsyMJifqSTuPtQdoTOVWEMEfYBLCIhc7GWwGoUzUL60BiGPwKIDvUo
	I73NJvFNp4B+waqPcmrQP1NrZ6aop+hL41/nH0ZvNiWPDYBJ9cG5s7inxhRWIHZnNm+5qR
	Pa/MwF4DGZzRn+6bNT9Ux08tIE8ME60fswtY6XMKRWTNi0Qkp5EP2wh6E0kiXZqL/Ym/vT
	jCkzdF/rNRLuAHjUv8n5sHmTshgLEHls04MNBUBZpRDtEUxbsPPAHdxRQdLusg==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 01 Oct 2026 09:42:53 +0200
Subject: [PATCH 3/3] ARM: rockchip: pack the device tree passed to TF-A and
 OP-TEE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261001-rockchip-early-boottime-v1-3-dd891bcdb74f@pengutronix.de>
References: <20261001-rockchip-early-boottime-v1-0-dd891bcdb74f@pengutronix.de>
In-Reply-To: <20261001-rockchip-early-boottime-v1-0-dd891bcdb74f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790840573; l=1722;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=gTWvgw/pCDoKh8jhJrGE1qZfm9uMi8WUl6dl0EWGBg4=;
 b=RENR1HCdqOctFY67jEctm2+T9NdPoG9yAz7JcO7c6FMfiFavTw4d9vz8EYHymltmRQwvd0Vor
 x2N7JAKPjg+AGiZN53GaLYc2QnfqH++ItuaaI7QpyZ5QvWkFQLrzejw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_084257_139002_81A4B455 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  rockchip_create_optee_fdt() builds a device tree with just
    the memory nodes, but fdt_create_empty_tree() sets its totalsize to the size
    of the whole scratch buffer, i.e. CONFIG_ARCH_ROCKCHIP_ATF_FDT_S [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-56.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.805];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,pengutronix.de:s=20260414];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:-];
	DKIM_MIXED(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 558A2202013
X-Stat-Signature: bz41fre6ezc3jabbzt8u9hzmki66jh4h

rockchip_create_optee_fdt() builds a device tree with just the memory
nodes, but fdt_create_empty_tree() sets its totalsize to the size of the
whole scratch buffer, i.e. CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE (384 KiB).

TF-A and OP-TEE both call fdt_open_into() on the device tree, which
copies totalsize bytes regardless of the actual content. TF-A does this
with the MMU disabled and OP-TEE through an uncached mapping. On an
RK3588 this takes 185 ms in TF-A and another 182 ms in OP-TEE.

Pack the device tree so that totalsize matches its content. OP-TEE can
still expand it in place, the scratch buffer keeps its size.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index e1ca197430..4b88de8317 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -172,7 +172,7 @@ static int rockchip_create_optee_fdt(void *buf, int bufsize)
 {
 	unsigned long base[ROCKCHIP_MAX_DRAM_RESOURCES];
 	unsigned long size[ARRAY_SIZE(base)];
-	int i, root;
+	int i, root, ret;
 
 	if (fdt_create_empty_tree(buf, bufsize) != 0)
 		return -EINVAL;
@@ -187,7 +187,12 @@ static int rockchip_create_optee_fdt(void *buf, int bufsize)
 		size[i] = memsize[i];
 	}
 
-	return fdt_fixup_mem(buf, base, size, n_mem_resources);
+	ret = fdt_fixup_mem(buf, base, size, n_mem_resources);
+	if (ret)
+		return ret;
+
+	/* TF-A and OP-TEE copy the whole totalsize, keep it small */
+	return fdt_pack(buf);
 }
 
 static void rockchip_atf_load_bl31(void *fdt)

-- 
2.47.3



