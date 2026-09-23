Delivery-date: Wed, 23 Sep 2026 08:17:50 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9GIg-005Kp1-1W
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 08:17:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4B1B0201A8D
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 08:17:50 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xgbkehXF;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=JMuczbkZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144270;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=QcnZ9at5hx7OcQXI0DmoLsN4wwpQSm4uRwE4l87d138=;
	b=Q0Yf8U1yaUeSgV1vNdoXPau0y8pkKiBWaV/pzOhEmFU8r/vtY4TnMQGSRaQ96wpGbJWjZV
	Li4VithHZzlz+GeYV9lroFT9mGj+MN8KTXU0m+/CDrvwAMqCADbQbI/3uF08ZqOAd6NIFI
	ZoBD7JTzgAiBMn7Ajgm2nqHwRZEiLcy/Aj0yFrxP80qOOlr8JsvllIWK6WaMT8NJueaNbA
	Bd175UF1gN+lP7A7hTqusd+NgQ5b0puXpr0E9bvCiTEIdNDy4/N4Bx5jSsSDwH1SZtXTH6
	7OGVPvrL/vZOTAIqBcZKptCaEfyyaRgk+3Ezhq4LcgvkxCyz2IbIP+KK/IaPPA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790144270; a=rsa-sha256;
	cv=pass;
	b=GkROgXz48UQzkqZM+NbnINVR44YNwmoYZmfFv3ATIH/bf/nstrFhq9TkynLkO5Uu2zF2nw
	OeeS8hY5qNKpR5LlDfmnA8MBaEjkY+UAw43fXJpRBDPbk79JEBQu5rWXNDriyMwadmey/G
	CtPSnrPfyhylNEeZ2AEL9ByWOiTxQFcZQRMRxd+tI0eHprMh3ECLTwgWd4tZYrW9jYQw/+
	QN3C3sI9ik4QSNM4sQ15SjxQaM+HCFswWxzMIbB5X9GDGJuP+C4lt144DBZlR0K3RKyfFn
	qMe7LUkdkgbYlyFWmSnUVktiuSyteUg3GjOpj/EiKdNYvEK+XSr2jTLUifKxTw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xgbkehXF;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=JMuczbkZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QcnZ9at5hx7OcQXI0DmoLsN4wwpQSm4uRwE4l87d138=; b=xgbkehXFNz/bWteRZ4J4A2l7u5
	5UzKLA/t/DF6D2TzIRGCjUrV933WJnd2+wIWtktyKQTHVy8BZ6iZhh89fYaM7xjjAJ7bigE1y3wmD
	xzp1gAlsPey4IJA09r8BdVMHFDxqsOS15T4nSZ67eC9+Ncm2fYGbaV6q/a76eS72SGN6cAZ5GO8u5
	+rfjsqUijdPGrTyFsVUEU57Hcn6ov9na3dTcT1wNbNrU0tgwX29yEGGzm1BRAojz2lUmhFFS4HQOX
	+VbL/ZidMMsUD89qqNIIwcXWBW9NjF1u8sxdLl2XjbSHSZyeKjOs90Jh8dlo8Y5KqIwcJocUyjMAR
	X+GxVSlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GHh-00000007G0j-2gxS;
	Wed, 23 Sep 2026 06:16:49 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GHe-00000007Fzb-2DS9
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 06:16:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D8D6B20075E;
	Wed, 23 Sep 2026 08:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144204;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QcnZ9at5hx7OcQXI0DmoLsN4wwpQSm4uRwE4l87d138=;
	b=JMuczbkZGouV/FjBKkZeB0dNDl+JhoW5NTuNO0+HG8e4KtF1prFecnH3LeQKZK6rVESv38
	VFVY/uZXRhjyr71YlGFwOP/7/Iw3G+kHU/xKjaoJPCtlUK4VNklD0dn4n+jsDyDTnx0rJD
	GG8mc9s7PBaQQVX0VqOcImaZzENhaqyfawOMdbkZ1p7D4EDL4BojXE3eCcQbVF0+4nyPXM
	v/z7xBL6R/NbGuT+nx+1zFbDqFP94UDJiy2c3rtVThcRtoev+Z+ul8mJx0lmX0CL9INPGt
	yLBSA/BuMgTb2nq8ldAL8vSS2+U34CWOSKiLI7oQFDJ3aOAKfM5uVo+YSc1y3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790144204;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QcnZ9at5hx7OcQXI0DmoLsN4wwpQSm4uRwE4l87d138=;
	b=AErsNcAcJFcSV5wouRg684PrZfXVkI5bDKfktnzAuffvasywrCpKCtYgxn/+8Z2tYV4kX6
	hK92zF1IGT9cTSbIYWFyuOOLT04aGuM2Ue1y9N6LEKUqtxLmMlZlIfFkwYg4+2INXjdzhI
	38NQLVz63YkCTg2KdBGqB9Xt+CmRHwGJHBWDGCRbwB/tPOPmAmJG0FHGTqFyQ3ThcYkplJ
	uhTgMKYMF9N5sCT774m4dxSQw8QetRkmui76fr3WAOtFeiQCO7w3PXHjsuBHRzi78dTeZR
	GoZp+XGN4adxaCfszB5m4/NBrlRyeILbkKTnC0oaFTMyxH/eyGSzzPMlBQtB0Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790144204; a=rsa-sha256;
	cv=none;
	b=M5hPt+lQQQXOnzZi883ljQlxQDz9xtgAkr4sSkDMUxmi2GKfe1OeXsjkqp9XpQKrwMInXb
	ROmEQcxvOJn8pALyJIvLu4Cco08NT95cKVD3TXa+kRdwav/uK0RNLXZZexvEGx/JoZeRiP
	Eld/RIhTFtAWwpaJ6BYseYcNWXogUfM5qOGmPOfevBqojFSo2CGf1hSEiVlp+PbS+2ouiH
	fV9vXtjw3zvrbSl1DFDZXxFO3LFbexPlKBdu4LH0QwkQ9P3oTgDFWLHIXuaGQquKPK8inP
	DO9In7JbWuThhy60TVpOxcQqv0JYxzf+rElHhRRUD0kajgV3gY3OwCijMnsEgg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GHc-002M5H-2b;
	Wed, 23 Sep 2026 08:16:44 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GHc-0000000BpNe-36J4;
	Wed, 23 Sep 2026 08:16:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260921122329.1379536-1-a.fatoum@pengutronix.de>
References: <20260921122329.1379536-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] defaultenv: bin/devboot: propagate exit status of boot
 command
Message-Id: <179014420473.2819066.3141435187392861897.b4-ty@pengutronix.de>
Date: Wed, 23 Sep 2026 08:16:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_231646_725387_8DBADE42 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 21 Sep 2026 14:23:28 +0200, Ahmad Fatoum wrote: >
    The script ends with cd "${saved_pwd}", so its exit status is that of > the
    cd and not of the boot command before it. > > Save the exit statu [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 4B1B0201A8D
X-Stat-Signature: 6smadzzw7fc6zg7cub7yg7u4x49wnnjw


On Mon, 21 Sep 2026 14:23:28 +0200, Ahmad Fatoum wrote:
> The script ends with cd "${saved_pwd}", so its exit status is that of
> the cd and not of the boot command before it.
> 
> Save the exit status of the boot command and exit with it after
> changing back to the previous directory.
> 
> 
> [...]

Applied, thanks!

[1/1] defaultenv: bin/devboot: propagate exit status of boot command
      https://git.pengutronix.de/cgit/barebox/commit/?id=90fb96609ef7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



