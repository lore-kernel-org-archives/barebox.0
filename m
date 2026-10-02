Delivery-date: Fri, 02 Oct 2026 13:47:53 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbk1-008pQz-0w
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:47:53 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1DD212003A3
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:47:53 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BxXUm5kP;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=A6bahs58;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790941673; a=rsa-sha256;
	cv=pass;
	b=e3KojbCU2rMdwipR/QapZhCbyNLeId6pN/1Mckzsviy/+qAyS53aFs0E0uYBIvLtk+2QW9
	9QWxK2GdHV1Kk9C9gLa6NeNWdMubcsYOwfbQI6s8d/sT2ucz/7cOXRfRuwSa46nYHUljB9
	oNvitPrN2JSOcninRdF8OoO4f618D5XN7w/BirBKIysDYTEiv4qQQE9j+6eMlNj60xNNmX
	PvAt9io7Gyi07KLXBp/9+v1Xtjq9vp1g7wyP5BMvOhTOCD6TfCYvRd0ht1fjVP+PYcx/WP
	A7wxEg31hTSIq6KPNs26lQV2Tcl9Qx1TzdJl1HmDQhUOx2zzolt6p1co3GOSsg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BxXUm5kP;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=A6bahs58;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941673;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=WpOvS27rvKkaU/2Hn+f8wIYQ15Rux8ftaqF6EnMX/6w=;
	b=RV8JEp3776ouPmdcV5n64xFP3GbeIloYre08ZxmOOc+Nybiym+Mt4taK3tSHLsveXTtJ44
	rsn8lzm3omUwjeMPUKeps4F8FaFwO1mDKf/zhXJgeorIPwJSx5y9X4qlPt3i0gFk7ujPqc
	1u0gFL9oUK9vS0KUCG2uxWzCITNwWvAJrbbTREQTXRNwu+6czVra4Mg5hIThuINDMuRXxB
	DrODA34pup8C9g6GTbVdOuSuH60phUOb4X28WyL0B4x3XDOD5D0yF+9fKEyvFc5OK9SdOA
	ctgEUzoFeHvqaUYImYqo6tzAubiK7SkPfA6O60GmBXNn7q8pE1bACpyS4QMtgw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WpOvS27rvKkaU/2Hn+f8wIYQ15Rux8ftaqF6EnMX/6w=; b=BxXUm5kP2oumUcKoJltBO0t9Wy
	iq9DmsOpV5unZ4D8zIUaYNPmhmNwauHAtjBmYTsrGcaAAIA6cMp52kISAQayvZ2EQ4DA/DTvjyY1b
	xoFSRxtENBKiwVdKYfWS3Lz0Af+mKvOaSZErY8Gqv8eA8U8nVxco4r74bvp5qJinsLcCigx8MZfJW
	pBj99Oiq8Bb/grATP6lbiW3NzC1dYadsyVm/rzuwufRSsKW9xdwSGP+aPjBljqsLXBVaOJBwoPTlp
	sKSbVfPgBW6c7nQoNNqDoh5kV/BFg6pn0zOnA53kf2I5yUM3KODdftagY7MQ+poA5p71n9Sdg53yB
	EZmbnwjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfJ-0000000BVHI-48lD;
	Fri, 02 Oct 2026 11:43:01 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfE-0000000BVEW-1zIA
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:42:59 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7E7712003A3;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=WpOvS27rvKkaU/2Hn+f8wIYQ15Rux8ftaqF6EnMX/6w=;
	b=A6bahs58Ke1NOrhbzAdHFDBbgsDu/ets/qmVmrySKhFxPHHamWBqH/WpCf9c3cwdWC1jNX
	ZfJUCxCkpxLV+Qu1GrBf1aNgxuRF7zdDZT47BokBY8r3NplFuWZXUeGGSVQBffntUVQwmx
	QHFZAIIvbFNGT1aVWbYU0lwIaPqDW6mLX93ovLtIEqpZy5mu6V5CgRJ0nsN5yLgOlAUPSe
	1xwhfYsHBrizjfJQ7N3m+bApa6COXgi0jYQMHjrGqiekgm1X08jrtyPjKWNbheTSq/3Zj+
	+e68Lvb8f6yexA3MP9NLxu96ptpc+wsf42iMUNgq1g9JlIM2epQdKfoAAKhrfw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790941374; a=rsa-sha256;
	cv=none;
	b=Z1M2tZT4N6K4A539uiP0BGFCikNKEtIyatmFpFSPrugO6myltwcpzL6NOO5QVS9rfeLzWb
	YpZWepuAd1Mn785pg12jqt/EQQ+Gr/hIdNY4qTXkm/BVYmpDvgOI/1AhvWkad8TXGfD8qk
	aa4ExRV2vKVray6m2C2vY/nvUh1rxxA3TIugV5TmD52iJbwubIgcTrrDwUTPnO45YQCWqA
	hOIwvZLoM9cN238WpYmGzFu8Zn1ng5HOjkbt5DtJ0GND8VITzmGiq9LQteSZErbPl/rRYs
	3vLLjmYELwEm3NOBzPfL6lmn3aJR3CQJqjiZqY8Ddb4Hy9TtoqMnZdqUNXASwA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=WpOvS27rvKkaU/2Hn+f8wIYQ15Rux8ftaqF6EnMX/6w=;
	b=LKfIVlletKRihEdFtA1QhX6E9uarRPgKW1CYMsTgvqYd5VnKIiVqrJHXINsar9eIlYDsZi
	gtfnk06tmCHUT++1QWCLFA01WcLHKbHB8V8HTdZjeCwSp1tWZ8naVm8sQH3FQyyis2LxcR
	8moJKrfXbohUJ/XV0zxuOKUaWxC+C+7IsO0j5ZRzzd/xK4b/eNzLj730srsjL2Cq8V+9Jk
	k6SQKM5wjdUYoV7DYeW9IY10YEyKq/IpHJlX1NtmlxGz66qEeSFBbUzUFPBSE4MhKCchLe
	7SUOXqqi2kFFPp32HfQuGEzyxhAaZTXC7n8TdcmWObDf81lAkzmbEThgHQ02Dg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 60C1F74021F;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 0/6] fs: ubootvarfs: harden parser
Date: Fri,  2 Oct 2026 13:40:03 +0200
Message-ID: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_044258_369222_E5F28F39 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Fix a number of issues in our U-Boot env support, mostly unearthed
    by fuzzing with some LLM assistance. Ahmad Fatoum (6): fs: skip directory
    entries whose name does not fit struct dirent fs: reject negative lengths
    in ftruncate() fs: ubootvarfs: range-check the new size in truncate fs: ubootvarfs:
    do no [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1DD212003A3
X-Stat-Signature: s65d47wdararangf1op99ztrnm9ypnba

Fix a number of issues in our U-Boot env support, mostly unearthed by
fuzzing with some LLM assistance.

Ahmad Fatoum (6):
  fs: skip directory entries whose name does not fit struct dirent
  fs: reject negative lengths in ftruncate()
  fs: ubootvarfs: range-check the new size in truncate
  fs: ubootvarfs: do not form pointers past the end of the environment
  fs: ubootvarfs: reject variable names containing '='
  fs: ubootvarfs: handle removal of variables that are still open

 fs/fs.c         |  8 ++++++++
 fs/ubootvarfs.c | 36 ++++++++++++++++++++++++++++--------
 2 files changed, 36 insertions(+), 8 deletions(-)

-- 
2.47.3



