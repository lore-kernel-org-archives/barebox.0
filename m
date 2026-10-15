Delivery-date: Thu, 15 Oct 2026 14:51:04 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHKvI-00DvQH-1j
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 14:51:04 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E7BDF2027D5
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 14:50:59 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kiXzPovP;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=TwG52hcV;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AkwshvdN;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792068660; a=rsa-sha256;
	cv=pass;
	b=QzJktAuNlD4z/4ISzvjGux9QGm9DB/YXZK7fMxEGq0GB+qDqQdGIAbmlUblhvRsBleyTEK
	pERE6YMot6gN4e+5hck5e/mucu5CcRbFYQ5rg3PaBh9+VOJ5kLZD2kaezc7xZ8Eg5dN/YW
	PimVR7aR2ZoIzoJIDfSMDXDIVkT0t95PhyaJqjUMBSrRdsCc91fTXFKljHjwTSo3JkqkhI
	WG4qB6vptTO8LBSxlZwPXieJvt/L6TfARyVda+KORm6zJBd7VJV94Q6Y1k/CiBAWRgsMJn
	08Se0DnFLVy4CMkGVtvnY6Dz/hl0sGQD4GSRdN0iG1YKsEzPeLVpq2IRbMQAeQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kiXzPovP;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=TwG52hcV;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AkwshvdN;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792068660;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=UnYMatAChDC90L+VK7CyGCu15jEm/ouBCN5VsVFbIa8=;
	b=FUNXlA1+VEF/Zy72+S9RIpf4+V2z2c+ioQVlly8S0gffeImtP0AaBg1XQdINHzQSsRkISf
	iSXS2aWc7lMmyJYtZNTUCA0CDyDgLo7bOaZaLzxezpHb+9ody+KLB/QuYl8NaFHJZuKPCZ
	SbGCEVrHAQOicU6N3U0Q+FyYWMvZRTX/KzhySWiw3QdMA1sTQ1iFoyUU6E7mv27Olyx4MZ
	ZfMgjzvEO9PWi19xVEawLNJA9hqTF21x6YG6x21jp3dMGBSHPHnr8e+so6qDloCO4QEEtM
	6eKedndNrbb4v6lP24zPotmPBwYdYXL9upwNcIkanjwjzc9Hl5X4bhGwFR7O7w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UnYMatAChDC90L+VK7CyGCu15jEm/ouBCN5VsVFbIa8=; b=kiXzPovPQSha/am8qrAO3WrZ7j
	lXC2KsTL/BycM4jeF3cCEdBNX9FkaUYoCs6debWmyFG8FYZL+Ojm2unbfNYeEiexKjr8GWi9A5Jq9
	DUkq78hB863FATxa7Yle7A9WW4bn+xH+azt0LQNCI/AfECd5o7+qyFCoxMPhU/+XXaE0+h8ddRF1V
	t2TEaOcQbnMyMN/Yg9JAneP6PTPCz1XukfNNHv5JZuZ7orIqxySdA/InCxeo4eDI9MWx08Kos2fYs
	u1OtjJEcKkWFQCmpfEvRoiw4KQB5j6/YZE1D2aH+qZfq7IDQ8z5WQlhMLw2Slm0brFbY00LNpxYMu
	VGzC+e1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHKtk-000000009tL-1pGm;
	Thu, 15 Oct 2026 12:49:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHKti-000000009t2-3OW3
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 12:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=UnYMatAChDC90L+VK7CyGCu15jEm/ouBCN5VsVFbIa8=; b=TwG52hcVNfUp+XcN0LRicMvFVn
	8bPLmLt0C6HBBVSH8HbG2IvP5wR99PDp08bLAlI/NEP4+uO101iP/aLRWO7mRGCe2ysVxlrwtpTLk
	fYXFsUMSvu97iowLeMhEpMmVU0Q+LsJ75Id6PuWQ6cvUPySw4yuCSbAf08UC9AGkkvVtHAwkk7DG7
	bbtTqfO3hcvm5fzHo2MUr9nfsXlCcT0qdG2zy9duQiTh6Ckc6YXQYuA0VydnBa1aTc1PKLlZlLRQE
	R7aHLBsJB9+JA/XmWYhnUYoQSBOkVV09Gc3F38S7M/fhWHEzJt49d3NyN4HijQ6FU/QOsGfAu2TXr
	lewgU95w==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHKtf-00000000NGV-084J
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 12:49:25 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9C025200563;
	Thu, 15 Oct 2026 14:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792068556;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UnYMatAChDC90L+VK7CyGCu15jEm/ouBCN5VsVFbIa8=;
	b=AkwshvdN83BD8m10QlC8c4Rs3XCabLAquQB24DEwYnZNaPHV1p2DWuCNkeb7yFncbm+IdU
	fFuUNyoRL5l/x98PG4FkECqx2qv/YlHnvgTvrM6yk8FYxPTZ02EsH6VeewoHBG6+9R1T51
	lMMYt0k6asxFjUNRRv9fkKeLrefXHte/dAzUn/x6JUyFq0wNgFNJl+391Ys1yI/4iQBS7N
	Py7AEMSOAsnNNRj/7dkby+I0m5TrQgC8oAPYbB/tZa4YBQRoVAW7V8zezvxSKMpghMeABr
	DC3ToT3CKaMY4pxSVN3e478XR1edJj5cmIFDQvJtecdqa4qbAtUyyBRDzUNCFg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792068556; a=rsa-sha256;
	cv=none;
	b=d0qQNtSlTJftxSkVW3psR1ER2I/xW3GLLvJIu9fEBBRTPxrnSpfH0TZCopZm6I5orhHhNc
	1qkYz+34rbVmyj01xF+J3hVOqRBp3Lfsy96EeoU248WGAnu39JZ/rDk6B6I8KTy7fcfpsy
	5/qjNW3GBxlGSzqxwFhkEOxM8xglIW/T0zxgfv18HleYsReG9CJ3INK0f/GNr0Hq9xO0K9
	7LxCh+ys6MC4A8nWT2VBwfpIoyXamcowYKN6ZO0tUpfLR4G7abMo4Y2QqXbGJ83btKxnX+
	z3P1aa7o4Iu1QPegS80ddDPwDoPtV2qemQdtWa/B1myT+yIDv/qoChH7Ah4Q5g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792068556;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UnYMatAChDC90L+VK7CyGCu15jEm/ouBCN5VsVFbIa8=;
	b=ZEh5WLl9Q5pp8zbVBofeeI1QVYmK/56+Y4nmF/NtfqAn2ZlUui3X/wnXOgNIhtEZn2R49u
	Bq+wfO5i0uceVFWzORqYG6mnSLglBBGU7HVueyOyOQPRpoY4xc4IzBWAVxqynxWNB/Umfe
	G24bOSTKqzv12zXsFo6dbFmwBM54K1SS9n9pVaRdalVZ4W1GCv0boOlc4JG2CAePpoMh4n
	WBS95bfBKWupTCXvp75tLWTtCJyzTI991PEpDloNtmWTBpkB0WI03QChjwrl83CMchhmJq
	wR3wA+ciHeLdesrszDVzjCxps6pZAeNF4gxpaOjcMqaziVmFO4VGu2np3fEQxA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 92B5CFF991;
	Thu, 15 Oct 2026 14:49:16 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261015110335.2285479-1-a.fatoum@pengutronix.de>
References: <20261015110335.2285479-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master 1/2] Documentation: migration-guides: add
 heading for v2026.09.0
Message-Id: <179206855658.1645184.11514591757115938901.b4-ty@pengutronix.de>
Date: Thu, 15 Oct 2026 14:49:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_134923_407864_2E07A3B9 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 13:03:30 +0200, Ahmad Fatoum wrote: >
    Otherwise each entry is shown at the same level as the other releases. >
   > Applied, thanks! [1/2] Documentation: migration-guides: add heading for
   v2026.09.0 https://git.pengutronix.de/cgit/barebox/commit/?id=8ba0d28dcd92
    (link may not be stable) [2/2] Documentation: migration-guides: turn m [...]
    
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E7BDF2027D5
X-Stat-Signature: 5szhsddix595wbihcurqupjf8hggwy7m


On Thu, 15 Oct 2026 13:03:30 +0200, Ahmad Fatoum wrote:
> Otherwise each entry is shown at the same level as the other releases.
> 
> 

Applied, thanks!

[1/2] Documentation: migration-guides: add heading for v2026.09.0
      https://git.pengutronix.de/cgit/barebox/commit/?id=8ba0d28dcd92 (link may not be stable)
[2/2] Documentation: migration-guides: turn migration-master into directory
      (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



