Delivery-date: Thu, 15 Oct 2026 13:07:32 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJJ6-00DtWJ-0v
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 13:07:32 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1364E2000D8
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 13:07:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=07qusRby;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=EOKXXhcz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792062452; a=rsa-sha256;
	cv=pass;
	b=RnrD0vv5AGkoNkciyMc2yEwnYhl9TdhmtU3C2g7htmPWiD9ZKUkei6dIxFY+DwuOAXpHGo
	AgJmy8d468OjAqs2ROuDV5lgCPdpwMByR2OIPOaah4/jBpQxgNqqUwvbCQBAqXIf6MUwas
	B+bfi7393hUA82llI/mZa3aGqlpbe/IiSuj5T6G7sZJons4OKYzBWy/dEw+XRtODDW0mb6
	Yjdyc+gt/NubMIp65GGtn+NSU8+B9Eg+K6cwnpPr9C6TlSRnTp2JAuFG39TZXgS9JjTGr7
	VcpCR6GOxQeSYmTdtLFLtKIu45dFwmsh0D5VnqvJD2X/AyG2l9kDoi4wa+neWQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=07qusRby;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=EOKXXhcz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062452;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=/09oDM6f2Oj7IsfxwOaWocGJQoA0h4SC6laLRYYbNzM=;
	b=VFZ7W1Ia38tAzu1Rf4HlEsuoSTgsLU0fs3NYUDWUcnurTTaby38aDW2E6vzEfe1cufCtjA
	MXLU/konOAsDOFksxJvP+jsMVLjtNNiJP13ewHaS3H95vn84AaUPQDV7wfU/MqtEMadC2n
	+ZrWCOBylbpVNQRIjtrYJVqSSn0OyuMSVH2w5MBEWTA3nGo4aw0UMjD4OqLquY3nZstmav
	+tkfTGCNHbJozIM770w7r6vNQvBMWCHVU+rlVim9CA1B2/9LIMguxOH42SrtE2+ECYYyF4
	ST4ljF1EfRrj30K+fXXRnrgwcpiEm3J35gi23+ogoAG8s48T/w8cHh4GMwo6ng==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/09oDM6f2Oj7IsfxwOaWocGJQoA0h4SC6laLRYYbNzM=; b=07qusRbyJpTXPLXnViBsJ5yJQ4
	D3uItvwpfJl6tSiCJu+15FTDqqT2pZPhAdnAz0Uf7448SdOEhpzQzuBanIdZFhj+M1mewWaNCpORl
	XRRwcuxpUpoC5+16a44CzR352TrSafO6dYdGa7OiQZ5Aob3AkRhBQ8HhUfu+aM462OB9A2p4N5THZ
	h0T9yiOZaYl+wzM0cc66tzR1ypX9pLhtvaqqQ5PJv8fn7IMxq+MggFthEF9jTDj0qG9ro0lHXayDo
	huxwQmxskRUZOLqdMPQn/o/yKOiHrenc9wWT+FRj9PboXZaV1XVBKwuktqqMzZs2agMB86CE4fH0L
	kIVY4Gqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJIj-0000000HWpR-44bb;
	Thu, 15 Oct 2026 11:07:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJIg-0000000HWoO-2qVh
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:07:07 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B234B2000D8;
	Thu, 15 Oct 2026 13:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062424;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/09oDM6f2Oj7IsfxwOaWocGJQoA0h4SC6laLRYYbNzM=;
	b=EOKXXhczHe+8D09NJG2ejlyaaFLu8ZWU2T9Z+uqi8anv4V52ZKk41WL6BUe0UKCvrxap19
	EOn8Pf8QaiEDpz68ai49Oh3RwEmHb9zNYhkR6TGf+EJsHOlaJ/ScMt5xnpuiOKj3stRMMd
	GgXjtDE9cCj0EzUoTASZupR/riPB19KMXNd3YUvimXemocBQ3my8NvyPItf7XFjncmySM8
	Rvs/1/aKVcvy0XwOg6kva6v6DL9Y8tnhcw3/MucWGpWU/A4Ir4Df6GHvh4gy0pA9CGfgo+
	fqQhEQQv4itf6ggu2YM3PummdL91AA2Gt/0AH/ddhNUO8HESFtFmcZkA7y5nUA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792062424; a=rsa-sha256;
	cv=none;
	b=V2ROC5teDCUEyJbxzuTUMCmJGML3IXC6kYccWsWgcuy8+Mol6oHB5TTRdEoMiChz7ZQOcS
	9TDEyUEHG+/T68ubbhjPgsYep78sc0ywlNjaOUsbKReYy+zP/IEz012oZZVZdFfF0ILkuW
	PwR6s7vzu8XVdv00HcyZpFELSndW3wifyCkPt4GSMG+3TlJmnqhXlSLGC1Z30LTd2vuU4f
	CrzANiR5IHMEREkYGmYsH+Dt9yli6HteKdl4NAQ3g9qAB8ZdG6XG8UUGh92ie8fsXGvt74
	CQFq09ZAeRDubeTxFQKwBkLFzvb2xNuMJzSy6JnQLVHIfXUA7yNoQqtk5yk0Xg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062424;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/09oDM6f2Oj7IsfxwOaWocGJQoA0h4SC6laLRYYbNzM=;
	b=SoDdl5342WdXGEHwhwy8/hqaArfY2lhQ1+kGa/mgISfIIP90rBTbYkqv6y+575AeUg81QW
	ini+Z6UzWVXQgY7bT4fC8WGFYVzPJCyinWIERcE/HTw9mw9TC2fFY2PLpV2e5sNWjI8nem
	MtGKvAfnhBxnO/PsXJ18w0TBbs494k3dq6agn9mAyyHWspUcwe1P6YibauY73sIQZHv1Hs
	tLLqV31mg0qQuAI1LJlhtF8dfslQ06G6ozdLHHAMwHWGhTsVhaE1Ns5pOmaFZRh7rR5bEQ
	T83eFFnkIX8KG+M4EtP3BVAwqkpU+1jeC12o1d63BHbtgAgQ2pF0vtW57hurvg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 94804741434;
	Thu, 15 Oct 2026 13:07:04 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master 1/2] defaultenv: bin/devboot: fix typo in final exit
Date: Thu, 15 Oct 2026 13:07:00 +0200
Message-ID: <20261015110703.2378569-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_040706_875183_1F5DC539 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The script now ends
    with "ecit $ret" instead of "exit $ret", so every devboot whose boot command
    returns prints "ecit: Command not found" and exits with 127 instead of the
    status of the boot command. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1364E2000D8
X-Stat-Signature: rr1cty4mjzb4d3hmbpyoyj57rjpnspwo

From: Ahmad Fatoum <a.fatoum@barebox.org>

The script now ends with "ecit $ret" instead of "exit $ret", so every
devboot whose boot command returns prints "ecit: Command not found"
and exits with 127 instead of the status of the boot command.

Fix the typo and add the missing newline at the end of the file.

Fixes: 90fb96609ef7 ("defaultenv: bin/devboot: propagate exit status of boot command")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 defaultenv/defaultenv-2-base/bin/devboot | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv/defaultenv-2-base/bin/devboot b/defaultenv/defaultenv-2-base/bin/devboot
index 2752e8d7794c..1a4324633769 100644
--- a/defaultenv/defaultenv-2-base/bin/devboot
+++ b/defaultenv/defaultenv-2-base/bin/devboot
@@ -49,4 +49,4 @@ ret=$?
 global -r "linux.bootargs.devboot.*"
 cd "${saved_pwd}"
 
-ecit $ret
\ No newline at end of file
+exit $ret
-- 
2.47.3



