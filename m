Delivery-date: Mon, 26 Oct 2026 13:13:13 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLJZh-003VDo-15
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 13:13:13 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8AC292022DF
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 13:13:13 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SOI6txf4;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GvA1Ktpo;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793016793; a=rsa-sha256;
	cv=pass;
	b=O2F9x6cV7h5OVIu+IP976NNVeHAx1S+IU6L/d4kAOZGB1wA95xK/Y7MuxY3/Bz6jZACerb
	f9vsLbBaGdSnrHwxpcyXvCTsaaIw/KA3s4xSDPkfuUf/8A0vWtzmR00X8tmo7tiAfJMKCz
	6vaTryN5wtwK62UlPlovIDEYVozI6xpmf6+JYln0nMjmBAfa9MgF3oLTRTjAsP/hLKSJZe
	CPpUZNuUbY5Q45iZtMB3Fe4i3RUZC7cUQlE2L9U33PEd7pahynWUjogxqVxe8VjK6BwMEJ
	cV7cIx2A5305BBXaGzXJ74yYvMggiuQmMPsSJFIQLOTNchSjj1OZebMozgvnPQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SOI6txf4;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GvA1Ktpo;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016793;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=GYKjwJB44kocBP9rWG3ntqAtJcoTcp+mqbmnJ4Ta4ww=;
	b=d19u5fAu8/4IZjmyFQIYa4PyKC0NGwTMD48M6qymwtEz6j+ut5weNrlVzrlPz3ihvYlT5M
	mPsUYQz+wFwMCE296T4Jo5YHF3L27XxwhtPsFHdakzk3PGWWCQUZ2+2jrZtEdvE9I2JR4u
	C8+D02ago3FdrkoIh0GS7y+mYxJV3EHrX7XO5EoxnDsMBi6krHR3phEjBJ7Z7IREtm+ipD
	76sAK4e4m9VeM5h3d7cB4NLUc7H/a6IcdX8bscBfMPxoDzyKiyvLb3IRbMsjE1MjHFqjQy
	FWGPeO/Vgh6ATWve7EyjBUCTRhoJ0tpQ4JVYU9ial62VkvHt6GBknFNvhoaHlA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=GYKjwJB44kocBP9rWG3ntqAtJcoTcp+mqbmnJ4Ta4ww=; b=SOI6txf4M96JER
	dvuVgeYyaGrKz7M96tkp2+Q/Hs62OXxmC9nBKETABPIbWs2t6GPwk+8Hfwpy+hwOaJPnZgZCH0WSG
	o+9wEV0JkKVILoS0q/sb/w2U3xB0xQN9SSBWae1pyH4gXDo7Uo1PxoHRw3Gb4JMeb76wy6c1CDiuF
	POKQk7G5zc66j+kdOCmQn4Brsb+fS5g0TNXvVqtZuEKNGix4+91VGycbyCqtLWYZn+ydolDdoyVOE
	se1/3hnOF/nnGX6pWIYMerbBkLShPGeFDN4HYR6cUY5MuPF4yA5TAf57OKoIwSK9a2PNlavUUC25S
	DfREM1BUCw18WM/2hxrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYd-00000002TGy-0spH;
	Mon, 26 Oct 2026 12:12:07 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYY-00000002TBg-3evO
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:12:04 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B79D0202375;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GYKjwJB44kocBP9rWG3ntqAtJcoTcp+mqbmnJ4Ta4ww=;
	b=GvA1Ktpohq19UFi1qA4kwjyZ3DCWHB2+Q+8a8xSETGYa3NsjBzmNtycwTGa7dZW26Tacxu
	5XEOz2NiU7GvXYgoUt3sRl0jnCXrsXVOfh0QDIKZiCAazhRVF4H0lB+eHOSBeeQy88cEAj
	bNuEy2kyL7y7oWW+6qrrMLzD9oPMQzwW3Bx8qvv24lkJ9RFZxYmF33edYuKbTahdhMQr97
	Wzao/vVaWTTmzJUVmXt4Ew2sP0P6Ch0RwMQF32JPz2M9lYBuBGxRvkrDxHc8S97P7LMkfB
	6t9EY8hLpdZE4A6zKV60BJUCY8jEeU0xwYCwVXQNCE5Rs2LtM+uyk/J9XxmFOg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793016716; a=rsa-sha256;
	cv=none;
	b=e7Z1hGISl7BuAcVPhwaI9utzhUD/dBkUR+attZKvYZIVndfSlLW3gLOHTBrIgPI4myoi6s
	vsOJwk8jg+qh4/Gpo0M5Au5pSDwxqPJMRqx5LyJpP7WNMIVLlR8p9SeW+jN6zJGI40KZm+
	aR1d0aq5o9l2hOWUOseUp8wPxjdfKcdYs1VdsSH0KdozvU3iLcFlpPpE2D6hUxc9ZBN4pH
	bFodhfbceACOsTW85OxYi6s+T2N5rpCZqQiKFNDUVPa6hPgIH9LVny4V7fBw6I++TksR2w
	DjzUaiEmrXXfe/saa6gq56VM1SrSA0vIP31p+fP7q9Lnumvq6xSUK4SCHpArFA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GYKjwJB44kocBP9rWG3ntqAtJcoTcp+mqbmnJ4Ta4ww=;
	b=U5pN/xf+U7ahnwPWC5cureGXJ8Ayyv6Dvnq1ERytEXvHlNryi/NOpvVebAN39ciFfTcaQX
	EQWF2sUwpywZYaNqX/P09kFSvJBTOoAPXEkCS4G8zDB8BVv4+KMBW+JC2nAtmlugbvDbcT
	dFCPjrwsE+LAGNC5yc2MKS3BxgLxEhAkcQWWlH43glff9Q92xtpOxnqbJ+uICQODHwRLg3
	gjJZAkXRgEpzqoAcuqw72GDFivnAgHMqbinmetVgbUfRcl0wmQpEh78zL1El0rNz+FuGLs
	t6lZ34kvTGYjI3ZbzU5pf4y0q4NRLqi+aQPG2X06dfi9jpGyTx1A7yclIJFuKw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 9EE0C744100;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v3 06/12] efi: payload: honour bootm dryrun in the EFI application handler
Date: Mon, 26 Oct 2026 13:09:57 +0100
Message-ID: <20261026121150.455510-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026121150.455510-1-a.fatoum@pengutronix.de>
References: <20261026121150.455510-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_051203_116048_A767D17E 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Unlike do_bootm_efi_stub(), the "EFI Application" bootm handler
    never looked at data->dryrun and went on to StartImage the application, so
    "bootm -d some.efi" ran the image it was only supposed to loa [...] 
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 8AC292022DF
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: qwcxpk8ekeiftjkoiittu1orwpxaq3h4

Unlike do_bootm_efi_stub(), the "EFI Application" bootm handler never
looked at data->dryrun and went on to StartImage the application, so
"bootm -d some.efi" ran the image it was only supposed to load.

Unload the image and return once it has been loaded and its type
detected, which is as far as the stub handler goes for a dryrun too.

Fixes: 35fb1743f5ac ("efi: payload: bootm: add support for efi stub boot")
Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/bootm.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index d074709e3975..d6a79f0c7795 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -220,6 +220,11 @@ static int efi_app_execute(struct image_data *data)
 
 	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
 
+	if (data->dryrun) {
+		BS->unload_image(handle);
+		return 0;
+	}
+
 	return efi_execute_image(handle, loaded_image, type);
 }
 
-- 
2.47.3



