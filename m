Delivery-date: Tue, 27 Oct 2026 14:47:43 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLhWh-003wF9-1m
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 14:47:43 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2C7F1200F75
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 14:47:43 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ghmAVTGk;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PpJEZ6HA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793108863; a=rsa-sha256;
	cv=pass;
	b=AocLasFY55fIv9mWAtdKmUrlLHK/x4+uXMG6t4TCWOhN+N+HBCe0FOBNbZ/EYFf0oUokQW
	4V2o+YAr9Gj9tVmpcEmAzjptfyufh2Lp1QMiu79U0F2OeEkdbb7/cI4hevwo4PKtwhmMXs
	e3ywEL+6iIU0IcLaX93G9hILIF5GcPQcHcD+DNfQo+gUu55Gu1OTgZJ2cnr5dqQhAfQAic
	yP+IuQZSZK9A5/6dEn7HXj5sWSYhlV+DZhrvWgCR/E0VFpZdgIonthCUvnWbWaWL3aDY8u
	ezkxv2j4hXjEk+SlQd2YDATEPhdDExhAbxLw9bAMzKdCvb0KTBTd8pSd+ocUJg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ghmAVTGk;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PpJEZ6HA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793108863;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=bggUm03X9dEzCVV99QXtVsyUx0czaf3N2O0c+gw0ET8=;
	b=Vjb8G1aJgyJO/QhQbonwLzYDZzrbrO6LvEcZsmL8qvTieGoVohbha8Sl35gI8UEzu1McqN
	fu6GgguSw1MDMrcTdX7lnWdidTKG/g24qgNawzH93jOF3Xlp7XkanurQajsjmZNFW/OS8z
	WBkyPE8DHnNzIfG2DZFUKcMqz6DiPmigd5iqQ7axhwoP6J1t9dwVXL30PFIXrlJsSiFOEw
	Cz9G6k1LBsR908KTmoXt7MX4bGr9dDAKhPNnLy1TXIGpwh1R9OdI/+/ASrxurq+g7PatY3
	mX/egk4AEe/kiO7WM8vWIraDPs4RVYeIs/+BW/6UJo494x2pfc9DWCnUIlz0kA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=bggUm03X9dEzCVV99QXtVsyUx0czaf3N2O0c+gw0ET8=; b=ghmAVTGkG3v73v
	MEDAWAYZgImhDCbDairGqb4mnd+zKkBmxs+KxaxtJk28qa37cU+ljPbd/7QuH5hVMZHQrjHDo+DS1
	VuIAkjUbOVjAA1cxdKDKC0Axt01+0TlkO5e7/bBQt9TLYvZ+PnTmjWhoCgfvs0cm5InGpKSlVdTdS
	BDatxjITpT5vG4eJbBzO0cwRX+JeIG/lF4lgkIWqsHs/1t6m7IcbkETDfPlemWc3Q20PHxaN5Hg+l
	wgn20YYEfFTzqdmYAKopCC4jKbHBTcrisxv5zJWZYJrftVM/uh2K71WI1l7nuiUPSFI0IjEUI/oNg
	2uc5Iv+87ZwGEoekjpGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh9r-00000004q3d-0Es2;
	Tue, 27 Oct 2026 13:24:07 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh9n-00000004pzq-25AN
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 13:24:05 +0000
Received: from ratatoskr.trumtrar.info (unknown [IPv6:2a00:1f:f805:2b01:a03:2f4:308a:7b52])
	(Authenticated sender: str@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BC85120293D;
	Tue, 27 Oct 2026 14:23:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bggUm03X9dEzCVV99QXtVsyUx0czaf3N2O0c+gw0ET8=;
	b=PpJEZ6HAK9HlY4M3WwhMR+5Sh2hRQu6knaf66Th46cDUyzmU5KROzLgeme8TslITR2IuPH
	SeJPhEJTXaIYUzDpHLi7PdtBg3ShnOmSQpLvaszUlitRGuCELvqKMBmttk8qlPZ2ShE6Yx
	vm5cgABHf5WP3It3orxEjuE1nv4oJPcfhFh1wjj/D1aGHc1zUBdlb6ZJvPMU1JPu0JvTcN
	SjQuKmiLdcByUq29/WFr8B+E8D49V5dR9M8pEEw2iitCTnLrwLHDsqMjdNhhWG6Bmb6Ewv
	BI6+Ey2Zn0IANdpfHruSEyl9XkWiRu0WnOtmbsUtcAkET1i5yHjHLmrM62TGJg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793107439; a=rsa-sha256;
	cv=none;
	b=dQ8izMYJIQbNDh2NRnkPZIyfmpKkUUryqcAAtMoezsG6hqeMyevEMPWDCH6DFmio8rpfNz
	PWyDIZDeyrGJpG8FdyXA5McCUMGcCKjzQPDX72CsRR9VFIYJCef3wg3M6U/w1veDxsO4Wo
	pXBhxYiBbCobaJgEeECUgJYHP2aMPa3bVSdOfyBjw91ENimWwf+f2+RG8yFWQiNC3QV/4U
	yjL8zQ2OgMk69uy4AZs1uNoa+/OL21Auf69qU13srrXJuRpBGqSK6WW7H6oRvwPGDhJrbS
	Ic6D7StQMF3LW6moS1Tmfgxp7FeK3EYyg6CoNIIy7UKvPdqr+p8uCWMxswo9zQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=str@pengutronix.de smtp.mailfrom=s.trumtrar@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bggUm03X9dEzCVV99QXtVsyUx0czaf3N2O0c+gw0ET8=;
	b=c815bwr8b4Slq6qu8d8OML9I6aurTms3LLIr3YpNgEnk+2rqDGbXGhqjX5kjWfZ3JpzxvK
	pp88hzznE6m9Zr5ZJXd/oT4B7UKgG8wqaq84FGmAutasv82oR/mI+s9oHeNFS/AlRjrFBc
	+bKhEWtVyYCLDQ6IcpRQgwI5lE2kOZ+gt93A1jl3187Lm020mdn6EJ4Xmu13v678YO1/HI
	E3ZXC3zSx3MsVJXOtewWFH2Uh+oBy6g94s9O46bsxtAkR4MRnQHaI0nQshqYtzMXihERxU
	htCqZfdRkfhrzb/CK394cfIacfY4K8Zt91gC1bwqfjjbrP4tTDjr3njIidkk5w==
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 27 Oct 2026 14:23:56 +0100
Subject: [PATCH 4/4] defaultenv: devboot: add devboot_bootconfig
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261027-v2026-10-0-topic-bootconfig-v1-4-2758d3d9a165@pengutronix.de>
References: <20261027-v2026-10-0-topic-bootconfig-v1-0-2758d3d9a165@pengutronix.de>
In-Reply-To: <20261027-v2026-10-0-topic-bootconfig-v1-0-2758d3d9a165@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1980;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=FgLJBPOkKugrdk71FWLzMGlGLs4j8XRAM+RyzNfg1ac=;
 b=owGbwMvMwCUmtVehiCsuTInxtFoSQ9aDpe+Ofa17aFe5JoU1ZmGr4+Kzzr//iTmekr/RmVN/v
 Mv9/4w9HaUsDGJcDLJiiiwqCyv4RD0+eEZOE+GCmcPKBDKEgYtTACZy7gfD/9Cj/ft1/XyPCP/d
 +fycQUBI4mSXejF3xukLDD5/F5q+3Ivhf9iW4x6pO7Os/KcfmDzloXRj7r9p+/sm867vOe+4T/3
 XYhYA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=24A1780E1548F0495996140A1ABD20720A5E5622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_062403_712285_F9B6256C 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Passed on as -o bootm.bootconfig, like devboot_initrd. Assisted-by:
    Claude:claude-opus-5-5 Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
    --- Documentation/user/devboot.rst | 5 +++++ defaultenv/defaultenv-2-base/bin/devboot
    | 6 +++++- 2 files [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Queue-Id: 2C7F1200F75
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.trumtrar@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: nkcr8itxrqm3thzoh71azh3uydf7oq4p

Passed on as -o bootm.bootconfig, like devboot_initrd.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/user/devboot.rst           | 5 +++++
 defaultenv/defaultenv-2-base/bin/devboot | 6 +++++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
index fce8398b22..ec676f2998 100644
--- a/Documentation/user/devboot.rst
+++ b/Documentation/user/devboot.rst
@@ -177,6 +177,11 @@ variables:
   Override for ``bootm.initrd``. A leading colon appends to the boot
   entry's existing initrd.
 
+``devboot_bootconfig``
+  Override for ``bootm.bootconfig``: a Linux bootconfig file, appended to
+  the initrd or, without one, passed alone as the initrd
+  (``CONFIG_BOOTM_BOOTCONFIG``). An empty string removes it.
+
 Variables that are not set (using ``[[ -v ... ]]``) are left alone,
 so unset variables do not generate override arguments.
 
diff --git a/defaultenv/defaultenv-2-base/bin/devboot b/defaultenv/defaultenv-2-base/bin/devboot
index 1a43246337..92f98c6f00 100644
--- a/defaultenv/defaultenv-2-base/bin/devboot
+++ b/defaultenv/defaultenv-2-base/bin/devboot
@@ -14,7 +14,7 @@ if [ ! -f "${devboot_script}" ]; then
 	if [ ! -f "${devboot_script2}" ]; then
 		echo "Error: Neither ${devboot_script} nor ${devboot_script2} found"
 		echo "Create one of them and set as needed:"
-		echo "  devboot_image, devboot_initrd, devboot_oftree"
+		echo "  devboot_image, devboot_initrd, devboot_oftree, devboot_bootconfig"
 		cd "${saved_pwd}"
 		exit 1
 	fi
@@ -42,6 +42,10 @@ if [[ -v devboot_initrd ]]; then
 	override_args="${override_args} -o bootm.initrd=\"${devboot_initrd}\""
 fi
 
+if [[ -v devboot_bootconfig ]]; then
+	override_args="${override_args} -o bootm.bootconfig=\"${devboot_bootconfig}\""
+fi
+
 echo boot ${override_args} $*
 boot ${override_args} $*
 ret=$?

-- 
2.56.0



