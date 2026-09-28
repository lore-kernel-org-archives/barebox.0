Delivery-date: Mon, 28 Sep 2026 13:29:30 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB9Y2-007GvN-0j
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 13:29:30 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9B06F201E7E
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 13:29:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QTfMu0U+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LSlLwdLP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594969;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Cz3CU7ilSx+ENRQIDc9UTi72jPFizRwIoYEYNI9Q8Ws=;
	b=I5X1buHrkFprI77ABsUrrHC+cXNvxQ8ZjpffB9+d+7pkOPSKOqf3zZpWJck0gRrUFiBurg
	YxATegP6tmhVxtZQ2fct+MdKDO2sKVw/mndOPZHCPa8eVcHiQjNo17vXiObIRyjPwVK7Nn
	HI2Mr3VEbS+qq/dgTCS+QrxxNMiaUMJOOCe9Dm23QqkItm0P4jfnVJ96wh8LJG5uiqporL
	rf7o2Ada2Jm7nmZPvxFy4TQ/y8S8nTWBtQkU/nDCovJnlMUNyy8uxChpNLdYQUsEqwHBKn
	TPQMZEN842ODza0cKdJa2JY7F2nzVqwrZ+/BrlkpUvxF+XdY2snc5lvSPP0GQg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790594969; a=rsa-sha256;
	cv=pass;
	b=fB0Fv2UF/T67j1+HY7HwX7oVVUjF14Q8C8hIOaZwS6mvIRyzhNe1d/jUNNOE5+e7gKun6V
	3jN8Y05tJWy6ChtkFh3aWOCZwYuykV3u+zmI9tIeP9z2yXZbrMwUYFr3PA2cELpnc4Mzib
	PJybhLF0lGwmvlMiNDYvPaZPsP3i0IqYlnAnCZ02FzVRU/j1IJCxJhxKZOieJkJCnVnxau
	bWz96ZO+YhvWk85mria1xmE4K6s0St42IbnLyb4eep4Duf7hbcqkXSbwhFH/x20B7KRa8Z
	bCvixJCX0vkC5Ua56MkXHuZRDvkqG+Gpf2HuLNppYbFIkQ5yd0kJ4Rr1BkqTUA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QTfMu0U+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LSlLwdLP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cz3CU7ilSx+ENRQIDc9UTi72jPFizRwIoYEYNI9Q8Ws=; b=QTfMu0U+4Vb/1xJQA48QZ3kMaC
	Y3gFUMbmBa35qHbWNLKvv6dEnN/VclkMkDHa1Rr58HnlyDx7UasvQOqrboWRqZbP5TQzXds0+Q5n9
	ciGEmlB5XJPWJqVoeRr77oe5wXE0qajcdhHZqyfVWG5wtNasrfm12JFDfUNcW7DPXB/dPNVuelcVC
	JbRpST1tWi6l/T54dBmGGTSD6lxeqm9nk37wJjf1En2qTGwdnZO5pnmpIzSKEUGId4hCrBnWW67f1
	jleDd3z3b7yWWjwEa5P5PcHuGG9yk+1brpIpbzjlsDxl+ZJDZrSEDEh7KdonmS1wxcgEVJqJKgCpN
	B/fgkS4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wq-00000000S0k-1U20;
	Mon, 28 Sep 2026 11:28:16 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wn-00000000RzS-15yo
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 11:28:15 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C65C0201E6E;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Cz3CU7ilSx+ENRQIDc9UTi72jPFizRwIoYEYNI9Q8Ws=;
	b=LSlLwdLPy5/JVEDsOo5bFPGD53CIsA4usq0jzKaEejX+oSY5sYSG1P0p40blOMqiSHJ4MY
	H+Y+d0Ftit303NMKJpl6kzbVrbY3/zAh696WD5d4LIWLwpws+dMt/FCn+ZdKjLjJoAAB9A
	QaW8fSFh86Ce9lqy9behMtRDDrjkBXFx0NMVstBsyRcF0I96kPWupYJjIX9ygXP9oAdcWu
	ZxBQEMjDpgEQdKa3zdQ4mZvP/0ZYv5Yl619Li+QsxZt6BMzrfgZHda3rZxUnbYT+ZHZV3K
	D5O64g80akSkJ1xpwUCEkB7d6MWUGt69iuUgvynLai2fKesysY0qwPlVTwh2Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Cz3CU7ilSx+ENRQIDc9UTi72jPFizRwIoYEYNI9Q8Ws=;
	b=d9OVKro7oKAO49kPpeiUiC24mvykj/M9jlz4xBBDYafJilD686pKqGuV/4VF2C1b7u3Ekv
	K781h73fVsX8s3uqRhloT9j/r/Q3LcAnOA2yGABWv055q+HgXEj3wjiZM0eqFzRilszFf7
	cNrFN1ghYHQrfwLFkG2KbT0OIE6JeS85Kb7p/s10gwV68V8FaIeiH62NfLf4jNgsIODXAZ
	XxBOAHzR66zmG3CZuac4/otYzg/Rj9s2MRO88tGVddTjNIcdnNqTzC4J3Pp6E7JjTCKSah
	56RW2ERDy9fW3UFxjcxCfq2lOSfhtaDQYfWbg8dtKGOcf66linPWsgpSJKdEvA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790594890; a=rsa-sha256;
	cv=none;
	b=Yt/0rEwnlHX5ZP7E1JmX/c8HTwrLvddRrFym63plk37QTCLfaVV62BjqPGV6Cl3YRsqusw
	+tgYqK8sjlLk+Czqq125e+fK6ExtgRYV0nCzFWkO66ErpR5jUYj+PqOZHgqiJtvFxHsi0Z
	qjjWqKFwHov2OtGLXIJb2xZbPzvdQP/9jVtIbHcvKablCifk/2CyOB7ivOeOZL0NYB7Gn1
	PoCxUy0IfIUjJmEDyLh/AN+Y2NICLsa7V57mu7DdKJ/HCx3132zt/GBBG7WM52+8RzEn1c
	9mzCQafJ+v31RwOYkgz/LrRu1KKOD/hqH42Zb+mdgRRQqqrVprUYwF8pXue88g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id A64BF74D0A4;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 03/11] Documentation: security: require signature verification to be pinned
Date: Mon, 28 Sep 2026 13:26:58 +0200
Message-ID: <20260928112731.1271094-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
References: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_042813_455073_9835E618 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> global.bootm.verify
    defaults to "available", which accepts an image that carries nothing, and
    "hash" never looks at the configuration signature. Document that we expect
    signature to be set and enforced in verified boot setups. 
 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 9B06F201E7E
X-Stat-Signature: tz58aewkz5bukujqked75w46r54dnc44

From: Ahmad Fatoum <a.fatoum@barebox.org>

global.bootm.verify defaults to "available", which accepts an image that
carries nothing, and "hash" never looks at the configuration signature.

Document that we expect signature to be set and enforced in verified
boot setups.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/security.rst | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index e650c03a1023..7160f8f8e3c2 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -91,6 +91,19 @@ be allowed to boot any images that have not been signed by the correct key.
 This can be enforced by setting ``CONFIG_BOOTM_FORCE_SIGNED_IMAGES=y``
 and disabling any ways that could be used to override this.
 
+How thoroughly an image is checked is controlled by
+:ref:`global.bootm.verify <magicvar_global_bootm_verify>`. Only ``signature``
+is suitable for verified boot. ``hash`` checks the image hashes, but not the
+configuration signature, so it detects corruption, not tampering. The default
+``available`` verifies whatever the image carries and accepts an image
+carrying nothing.
+
+As a global variable, the setting may be changeable at runtime unless barebox
+is built with ``CONFIG_BOOTM_FORCE_SIGNED_IMAGES=y`` or the
+:ref:`security policy <use_security-policies>` denies
+``SCONFIG_BOOT_UNSIGNED_IMAGES``. Either pins it to ``signature``. This
+will also result in :ref:`command_bootm` refusing to boot any non-FIT images.
+
 For development convenience ``CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS``
 can be enabled after enabling ``CONFIG_INSECURE`` to compile well known
 development keys into the barebox binary.
-- 
2.47.3



