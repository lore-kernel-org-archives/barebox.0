Delivery-date: Wed, 28 Oct 2026 10:26:01 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzuy-004H07-3C
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:26:01 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DB5BB20293A
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:26:00 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GOcrhJoz;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=B3ns+2wY;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179561; a=rsa-sha256;
	cv=pass;
	b=dsDi4lvkJFpGxCwuH3oVi9My5eznmCPXxZMrRAoY/Ry0Py0SK7z4Hvi7ui9ggeBaJEydBj
	JI6br0q/tCk65K9idwegPaMLxc/cxr6EhGkFe++gNPQoM5YrnJCmuscDWA1moPzJ1lXenD
	ey+Tw5QIM40MSi7tj/fv7v+U2GtyV7Px7Gm8z+sUs+0ZOLG3lCCzSgH2JrRlYgxZGl4FJJ
	r/+pqexEK4HNyaUoe0HKPO+35Vy/YaODksFqIzcgKMRImPsyNlovlDPqu3ctz1kAZ1r4et
	MJScBrlrmzHzFF1DhhXZGzBg+Kn7QomHRZXXxDJUQBz+CNRz5dcz3uRKXkvoYQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GOcrhJoz;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=B3ns+2wY;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179561;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=J4d9Taaw/lvGZb7KVJM/wjh9gj4JvZpYg7o1Ccpv4BU=;
	b=TIzP1U4el6dTCA8D+AGJbVW9cooE3Untosv+PkRGIXVBigWmzj9BBpXH9PwYHV7ST2qqCj
	CtWmFoA5SCbIMdxqmr34mgOoGksy49xdGTfut2+Koov5Cy1MuLiH9+E3106WHG521TBPp7
	LjNK/F331qxZzd12KBGkbONM5gqAeMJ7GqU3FzJOL/el8TmTDUqaOw92aZB5BPNKHHkpBB
	0teh5PkzsyExC7OSOS0GZvFf+izooncRvnT/mN3GUNcR+EaAmI0jRizBOSwCSAK7y7IqbI
	xKlFkAUp9wg69vS/n1YF6gAVbx04xZMv2KBcP1FfQyEpW/UULi3pstZ0EUxcAA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=J4d9Taaw/lvGZb7KVJM/wjh9gj4JvZpYg7o1Ccpv4BU=; b=GOcrhJoznVtXBW
	v3I5r97DeOaZVhmxJlPUz/UL3TfbNdoPYkA3tBtudGtZ3mXEMnSo3KIK6O6aemGwyaYcYWo/NgNPw
	SOIHMtXRMTmr+K5XjrOrHN6cFnzNQSsR/x5AOk/hp+Au2MvO77witQ7Bp1uAn56l0yH1+Q0UceRVH
	m92nw3a1MT0jatROBrGnytg52s0mUGHOyyLYRDRFxt9qrcSb2YXKoak1LXZENLI1iCXSIeJgCW19a
	o5ckVkGfqDX7rN87yGnuJ2Ot+cuOYpFnU1MUkV6nhf0d7ctOP6OwbVymNaDrzKTz21zvH3VS/wHaX
	e8DV1xkHKHZBiXj8eqQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzty-00000006eM9-08vt;
	Wed, 28 Oct 2026 09:24:58 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztt-00000006eFd-2Ypw
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:54 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BCC5120294C;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J4d9Taaw/lvGZb7KVJM/wjh9gj4JvZpYg7o1Ccpv4BU=;
	b=B3ns+2wYalpeEf69vZjOrD1NrWwW0NMP7np+vpYgc02XiYyUkU38d5giy4+rOIMFuEkF6n
	w+VIzVyqgEaMZOnaEV9dJSJjKZzXlTQ/kqdb2gJPXjkmzsdMOyWCkTgOhArQ7v4QPwHVhp
	+82mzaqlmSGz45FRMIwaSMjZC75/VEqwjkzfCaUn1meMyQm5Fm3vgs1THjlDh7HFgxz6wJ
	9zGgXTOeu12oN6f9Fz8fismtmaxeW6nE3GrYIpG7ZMft8Fqie8ehihS07xioPKu/+h+amF
	VwpYbnyT6w93FvjDz67gBSxPmcOFJeuiskAgz3VTObAcaqL8QDMCUu8mpHuBMA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179485; a=rsa-sha256;
	cv=none;
	b=gTTxc8x7oicIQ3cNgFGwlQJEUF64tssm4YzZp+g/ipv/fy4pyKKqVLkFAf0qzciWh81H5t
	sxjXIn9YiGBM5g1Wc1ogiGQKxshmj8zUq0TJe2F+GS5GvCwEXmYzn0Ahk17gxbecqe5x86
	C+Z4DTQ5B5cyfOqgO73co49w0iZLD+eq3dheFXO6tRsJO33PAhTRBFMJxTBfo/ulKqlxI2
	1pR2Yc1lnJhxNxRt18I8UoALS8Xir5j8r5RO0ghB6b/0d76jSH5KHYKL+3mcPdRxFvMGlF
	iapsc9nEW4KOEXxTSQ0te0xVF5Omq1SH1ULRhnywqVdXvkfC0PYEmL3Sm0xFyA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J4d9Taaw/lvGZb7KVJM/wjh9gj4JvZpYg7o1Ccpv4BU=;
	b=gcrhCPl+8D4XcqaNC4uNuxkYMgrSowtF78PHrvE8ODIc01H13CQtFuNLnfplEIQFfQ/cuq
	aOL+cUSk9YVmQ1rF33vhdbfuCuzuGaxZRRoc7ECTDdzYHWMaey6B+ti4Q9A1XTkg5nEq3C
	4a/xNEByJtejMaOkj+MOAtGZO2gXMLyW29S7+CY+PN7yN0Z8CDB/eCY3pCB2ghTgaem6Cu
	vJfym6YGj47LXc2a6DDBjSRCpRIgl+U0FjToNVvYXu0pGECvnb3am63Yr0CjhC4dGuItPI
	+U13+l5Oxs0z8jaAsOWXuiNm1wTYOWJTznL+UoG6rh2ordUNz9AtL62eSgWvJw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id A1D6474094A;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 08/19] mfd: pca9450: don't free device-managed memory in probe error path
Date: Wed, 28 Oct 2026 10:14:42 +0100
Message-ID: <20261028092442.3300753-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022453_800275_2BFB0241 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The driver data
   is allocated with devm_kzalloc(), but free()d on probe failure, which only
    works as long as devm_ is a dummy. Drop the free, managed memory is released
    when probe fails. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Rspamd-Queue-Id: DB5BB20293A
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
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
X-Stat-Signature: aqdhwh4frnmypwsq57jkdgdu73jubarz

From: Ahmad Fatoum <a.fatoum@barebox.org>

The driver data is allocated with devm_kzalloc(), but free()d on probe
failure, which only works as long as devm_ is a dummy. Drop the free,
managed memory is released when probe fails.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/mfd/pca9450.c | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/mfd/pca9450.c b/drivers/mfd/pca9450.c
index 523071bf12ff..ff608dd1af8b 100644
--- a/drivers/mfd/pca9450.c
+++ b/drivers/mfd/pca9450.c
@@ -100,21 +100,19 @@ static int __init pca9450_probe(struct device *dev)
 	pca9450->type = (enum pca9450_chip_type)(uintptr_t)device_get_match_data(dev);
 
 	regmap = regmap_init_i2c(to_i2c_client(dev), &pca9450_regmap_i2c_config);
-	if (IS_ERR(regmap)) {
-		ret = PTR_ERR(regmap);
-		goto free;
-	}
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
 
 	pca9450->regmap = regmap;
 
 	ret = regmap_register_cdev(regmap, NULL);
 	if (ret)
-		goto free;
+		return ret;
 
 	ret = regmap_read(regmap, PCA9450_REG_DEV_ID, &reg);
 	if (ret) {
 		dev_err(dev, "Unable to read PMIC Chip ID\n");
-		goto free;
+		return ret;
 	}
 
 	/* Chip ID defined in bits [7:4] */
@@ -138,15 +136,7 @@ static int __init pca9450_probe(struct device *dev)
 
 	pca9450_get_reset_source(dev, regmap);
 
-	ret = mfd_add_devices(dev, pca9450_cells, ARRAY_SIZE(pca9450_cells));
-	if (ret)
-		goto free;
-
-	return 0;
-
-free:
-	free(pca9450);
-	return ret;
+	return mfd_add_devices(dev, pca9450_cells, ARRAY_SIZE(pca9450_cells));
 }
 
 static __maybe_unused struct of_device_id pca9450_dt_ids[] = {
-- 
2.47.3



