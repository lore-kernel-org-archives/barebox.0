Delivery-date: Mon, 09 Nov 2026 10:52:07 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQM2p-008yqz-0x
	for lore@lore.pengutronix.de;
	Mon, 09 Nov 2026 10:52:07 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 823A7200ABF
	for <lore@pengutronix.de>; Mon, 09 Nov 2026 10:52:07 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DRvGWiI0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="EKS6gCv/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794217927;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=mzwc10ldDo02StXfrGg/ZnlqFmkc0xd++BeFeG3zOXA=;
	b=GikL22hNkcPR3sFs9oIf7varAOLjOD3CIEEmA5pujF4a4e0AtC6LyBBAO3Rvk+fXbsspE6
	Ak72FiA/sqkMJX11uKnZbTqV4GWBW8Bw/ntCnva30rtFouMsBxhdD9GLhCY+EXGyEykzEE
	UjvtzQTP+1h4azJmAXozXUIh9LX9dj8jHkHUQKk9YCCYI4qPL46rD8e0IyezIL4qcxQ23e
	fSsIHNbZUruddJiGTs6gxXfwXRi4aIih6Zp/apRko+zCAzeQAgjtfl/352WKS06JzlJpFV
	u4i6Ldcpxczc877jeWLWz/yjdR1/khcC0uwxTIOa0FmjVcp0kFxZNzhU6cqDpw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794217927; a=rsa-sha256;
	cv=pass;
	b=WAdVfmWHdIZ3de6y25xDK6pyK001nzBm4xLCebxZf1cEHGIRUR1FuCnn1E24hE4w7ZFTTl
	2ieXetJDDCvQSB6yPoau0tTCR3nOXJPqrZ8DNms9WPD5nryY587rwRgakJp/K2ypUNHxux
	qNjur7fJBtHnQfYHrZOIRjPudw01s4aY0eVxe5xMEESI808DO7UJhuXzLTjRkQLDRUMu0c
	+E57h72MScDEgnKyldNBsMpD31Ll91EB+e/CxVj27AkQicsfbEVJEv0li5ZtUjZC+kbm54
	dX+p2ZOvNoaTnpZQkN0LwWoVmXa3kwf2NSr96xzYSADzFUQq1r/D6uI1NvGfZg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DRvGWiI0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="EKS6gCv/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=mzwc10ldDo02StXfrGg/ZnlqFmkc0xd++BeFeG3zOXA=; b=DRvGWiI0fpfcC+
	f6ftY82gM+9wng028YzQNmEtpdE346oEXnPjSuBVU8S83lYFUnNRoVPY0z2hlX9YKJAWAN89nZty+
	Up66VMdH6Ymo10AglVuDTt6VHwBwUv80zMPgsoccN5ecNRLeFvrtvIRLsgRtwjF691Ms61W18Odms
	1io97glv7zlKRfmH8W+kPjUL16bezDFhu9rqUon52muuYwkeMrR3ad+nqOm4ekHRLQcK+cFjqf7q9
	oonZ8/AEWOedoHZKX/HzMqz9qy13FGFDx3EQ+BSEOcoB/znbnKIguM7hr36OVknQrhU4Mdbu0/N2i
	QSn/jtsEU0qk0cQYMpkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQM1s-00000000In2-39rl;
	Mon, 09 Nov 2026 09:51:08 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQM1q-00000000ImN-3MMA
	for barebox@lists.infradead.org;
	Mon, 09 Nov 2026 09:51:08 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 445DD200ABF;
	Mon, 09 Nov 2026 10:51:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794217865;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mzwc10ldDo02StXfrGg/ZnlqFmkc0xd++BeFeG3zOXA=;
	b=EKS6gCv/6qJXP9afmaiXRLEaDJRI8+9OtT5Wqjtvyq/2vjMs0EL4iBc6+jgBaKOzzbR+mx
	hUqq7elALP0sSEQeohKPtYbEAcxrcVNugNShxDhA/ClHyA1cmL5bAoMHQxwNjeEuy7MzjW
	aBNHPcx6QQ6sEYm8Vyjg0laQSv7Xb9xLuQUbfFlXOYgGkrGthskg30Red190EBssRFBDHP
	cUaULqX79v3zaHKOhywy77x9v8YUQFV9FiK8tm2gZ1sYBqU0Z/BR5O+okOjNX04VvkWlkw
	nDZKOoMO+EC8mzHYef/iFQekCtD9D/1q3Nns56VyyQbWbQ2naF7TgY0wTIoEjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794217865;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mzwc10ldDo02StXfrGg/ZnlqFmkc0xd++BeFeG3zOXA=;
	b=EUgCGjfx6y/kG7gkUGNxU+y08d1nDe98Se+DWt8E2yLPjpVjUPK1+h+imxiSHWl1rjztDN
	XN4j2i+LnKSVf1DjD+OTSY4vacb4Q0qqMsi7pruMTOIVX0kKrMleapP88LPSG3m9N6NwBo
	0MWxe1TptN5nyTuqCpwlPmSozkkb4YrK35p//2Wn3t2kgYKqTXrHuPOyAqjI59snng+bBZ
	Mh4/HTUBImF1YwUurnNpvBewbNsFlWeiqKeDo/T79SIst2As1/rA62rPIjKuTv8vhleheM
	GzwJs69udBYokiPKSnzIGFyUyN+pBRCuyi8FYa6dYF2MCbz7MAEzgs0PZ3MUjw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794217865; a=rsa-sha256;
	cv=none;
	b=CgiJtTpLqTeUtZL5cCv5UGOUGTQKuo0oKQ8BjDAYK8FJqxfFlp79gXuE4A9CIOeNKti0l4
	c9WXb53RRuL1j9BGSF3t4s5JaX6qVbS584nFt79Z40r6d05+v5j0fbosmM6wLS9GgXv/B4
	WVZovVDZ1aaDdV608I06tSRzuZ9PN8EvrslwqPBMJBl1McvDp+fkO+u+0XhiuXSoDMtgzL
	mJ6evJ+wWa3oTeIbXJfgxCOgD6qZogz27242CELCbE97Pbr0oJU3IcR39R/4lATFAWqfC3
	9ZTE4Kili0oSCJFrSSIjDntzpNq7Hax8ZG6g3b0Hw4zeZ33xevCEWMPG+aGeCw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 3C755FF961;
	Mon, 09 Nov 2026 10:51:05 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261108075530.1207763-1-a.fatoum@barebox.org>
References: <20261108075530.1207763-1-a.fatoum@barebox.org>
Subject: Re: [PATCH] checkpatch: allow a space after BAREBOX_CMD_HELP_OPT
Message-Id: <179421786524.532999.10826527002181919267.b4-ty@pengutronix.de>
Date: Mon, 09 Nov 2026 10:51:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_015106_991478_B90F8CB4 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 08 Nov 2026 08:55:28 +0100, Ahmad Fatoum wrote: >
    Command help is commonly written with a space after BAREBOX_CMD_HELP_OPT,
    > so the strings line up with those of the BAREBOX_CMD_HELP_TEXT( l [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.03 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.62)[98.32%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 823A7200ABF
X-Stat-Signature: uf5dfgdk4wf34yuti37tjea7kdd3cqmy
X-Rspamd-Action: no action


On Sun, 08 Nov 2026 08:55:28 +0100, Ahmad Fatoum wrote:
> Command help is commonly written with a space after BAREBOX_CMD_HELP_OPT,
> so the strings line up with those of the BAREBOX_CMD_HELP_TEXT( lines
> around them. About 300 lines in the tree do so and checkpatch warns about
> every single one of them.
> 
> Let's accept the space for BAREBOX_CMD_HELP_OPT, but keep warning about
> it anywhere else.
> 
> [...]

Applied, thanks!

[1/1] checkpatch: allow a space after BAREBOX_CMD_HELP_OPT
      https://git.pengutronix.de/cgit/barebox/commit/?id=d8e021b78bef (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



