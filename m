Delivery-date: Mon, 28 Sep 2026 13:33:17 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB9bh-007Gzb-0s
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 13:33:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B353F2001C8
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 13:33:16 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0vdwf2Kb;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=iTXTGR2u;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BDhMptk8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790595197;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=FNeOF2G464lO1vqtP6PgO4ai7A+CHcrK7jt4ByAiDGs=;
	b=XmaO4zpHzSBlzwDyvseqV5scDSA3k4p8+ClQHeZwYQK8pJ0VAMtIdqF3aMn8vKZu0JTW9B
	0D5z6nv2a3IcNFJA/KJqfPqdmabYUDGv7JOE47vFgIt2TQn65s47GTvkvM5QMUt3Yd3Gci
	ulmRWAU42wWr5+MylFY6UDJucw3fMd7AFwZgEwemvBSFZ8xBw0oEG3qqwQ3ZA1elueCruH
	BRU3P7DCSQt8p9+9sBZuDu7unR/mCf3lD07GNtMWqAK3wL0w83ymBQz+NQG+qvCS+PIcwJ
	8dzzLRY1O3iIM0Wygiz6bZNey1oXdpvUsvR0LFHFzv7PZOJ8GL5ROj8ASP5SFA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790595197; a=rsa-sha256;
	cv=pass;
	b=NDvpcHEGoSh3UVhVNrEdiq0d/tZokajVqmgOVullEvxmNfSsmi2OZIGCts3CodcHjeS0pP
	Zy2WA7bZuV6OmcchN2TVDwlOjAJgRBrvWWT24G2sN1EbVW8/CYrqAvqsDFWspO2JlS3AIA
	Up942HrHDzwF5IQd2xF09Tau/Jhf9oUMl8nd/RoVgOvuNv6CUx2R27wetSBr2tVV27jWIy
	+aowllzzKPpmYH1pDlhAczxSFqYxj10KUpKXimROgtvIjHwsZUWs9JLwAFHMpGtjjz1ee5
	IxsbuQBEfO4hc/P227YFZHb45wT6h8TUVpsgw3/7T8J7nSdus902AUQr4YT9YQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0vdwf2Kb;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=iTXTGR2u;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BDhMptk8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FNeOF2G464lO1vqtP6PgO4ai7A+CHcrK7jt4ByAiDGs=; b=0vdwf2KbUgEBdssjLzeJ0xaXwD
	aP8175p0nrUYD5qr/fj+JZFwHig16vd9GDXX5k43nl5RCbIWvqvhoAWzKaDNgMvcpZNt4j1ZVkact
	NKaJJluUqrbkl39ohoVkc6h9SEr9vQtQW7HlWwICIa6B64OiM/ef03P6tEOLsaOiq22z8WMFs1Tmo
	rApdHG5BhiiN3GEllXFFCW7ZIkfJjQkHqQwftteBUaRyuS/NWi/GA1Be3wHNXH/UnYeZ6ad24hTbO
	UO0FkEIUKYLyloi9S+ECfkIYw4QUq+3oTIJEX1zfQfJE9WYLxRxk3AUcUhOT+XjH35D2LCMfeQUex
	JRhy9PlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wv-00000000S54-2vvw;
	Mon, 28 Sep 2026 11:28:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wt-00000000S2A-1Thb
	for barebox@bombadil.infradead.org;
	Mon, 28 Sep 2026 11:28:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=FNeOF2G464lO1vqtP6PgO4ai7A+CHcrK7jt4ByAiDGs=; b=iTXTGR2uoQ/V0HE8lrtIQ1bwli
	uCysDgG+zLK9c9FWFgCKBMZwYjGZnUlHIiaDa40DJmIvEy/ib2wBQn2wJ/GQAtrJmFuCYxbrPjQwL
	HkMJFFNAyxAuoKS3URb1g7Jl2ZbJa/qBKY17k3IEX5wqtVzFJ7G6QE1u+gE8gDJkCLJls4jsazb2b
	mODiLwmbKxbu9d4dM07lHIfHwO47Bf0UlMqwuhXTqeKVtWfxrswxE6kyWDMA32jNFNWzrXgvY+fCQ
	EhwOnjuguJ5KQFRDZn4NNH4gU8RyoE04A5VuW8slhThXkOV3ohyD5eBjUvhsd3eD76BRsmnmhrxX7
	U7Pg/j/w==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xB9Wq-00000001PmC-1e3r
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 11:28:18 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 01B0A201F12;
	Mon, 28 Sep 2026 13:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FNeOF2G464lO1vqtP6PgO4ai7A+CHcrK7jt4ByAiDGs=;
	b=BDhMptk89Mq2v2Powrw3agZw+/dek1dUdFUlAdas1eObdCN0UOpPP6xGezXi5d6i1OOzTg
	59GHTxnVsM2g0hgorkB+NQk2vgopyi+ngKwop1ib8CBfmfklU3lakjr7M3TSg5DYPxvtWS
	pLxBLeaotopPClkmRFcGl+6b5+eaT3AM+Zrlp7Sw753yM0rbH7jfW3bYfbfEs/jF2UUbUx
	N3M4drFH+Th0VTP/prH2byKkXp1ifTDkYkw79roZ82i/sknmJoUUtIZ1pDKmVfTNESsNE9
	BgOluEZnrzOUSWI2N1hXtTtd3MdXufxVJ14ue474iXTPUgnbJsXMzHNlCMIcIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FNeOF2G464lO1vqtP6PgO4ai7A+CHcrK7jt4ByAiDGs=;
	b=eesRMm/2HPQ9n2C84Z68nEukswdvrrOsNgjmQciIVj2WrU/KaxKiU+rdka3tKt30w62u8h
	ChstUf+BVWXpoeO3finsAl9qTNyF13N91fHiVd8RdzCi+UC6NZenK9P+gnuYIBkg8uHRP+
	25Pgh68V1rVPYGM6yE0ICAnFUT7EQCWYcHYgSrJGJSk/pSafaWMZTl0tmsOHIAm8OcqtHr
	6ZymmJwQ/IDBA86JqLQSjlwMWamaZqOmfokPgMW8JptlwDhdhAw/TKWGsuIiFwNxYyAIMv
	4SFLG+Wr/Iz4Lu24WNTF5GOaUnA8SQm0PAsaV1hC/hiGiSmUO6VucZ0zkfVpXg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790594891; a=rsa-sha256;
	cv=none;
	b=Rq13/Kz9pVjF/icGM3DpquJqtgpMymPJm8qC4xUXIccmhdUI7Pyza7Q1LyIwebSN6LFcYO
	icNJNY1CYII75PyQz9TBi7fZ//PBVfO2XKAz7oVx2VGZISECWbxLL9xUxMBSJWNV9Ku8oW
	0aoILQABbTvDWWYEIMK0HgNAP9tjqoqsbArAi0BlNMxrUBVjkfdqSiK0wgEV+I9SpL7ZbC
	V1Yp/9zwdDvHhvMwXkGUeqJmy1iZRz0i4Y6N/M//MxgT9OIsdgMYWJw2IHK0slgbY7vYcn
	7TV/wubwGaf8hdGZDBH5rtO+hdb+ASexOaZ6RhQPHIUI4VNcw5ZKLt98OVhT/A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id DBFF07421D5;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 08/11] Documentation: security: update for barebox dm-verity support
Date: Mon, 28 Sep 2026 13:27:03 +0200
Message-ID: <20260928112731.1271094-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
References: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_122816_707259_C75255B8 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> We have gained dm-verity
    support in the meantime, so there is actually something we can offer users
    that want to use file systems in a secure manner, even though they will need
    to bring their own sche [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-59.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,m:a.fatoum@barebox.org,s:lore@pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B353F2001C8
X-Stat-Signature: kpcw3xpizpu8kzp9pzikcamswn41irhz

From: Ahmad Fatoum <a.fatoum@barebox.org>

We have gained dm-verity support in the meantime, so there is actually
something we can offer users that want to use file systems in a secure
manner, even though they will need to bring their own scheme on how to
discover the signed root hash.

Reflect this in the documentation.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/security.rst | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index b204e6df8d23..185adac2d51c 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -190,14 +190,18 @@ Avoiding use of file systems
 
 File systems are among the most complex parser code in barebox and a common
 source of bugs.
-Unlike Linux with its dm-verity support, barebox currently has no way to
-verify a file system before mounting it.
 
 The consequence is that in a verified boot setup, barebox should **never**
 be allowed to mount file systems.
-Especially, :ref:`bootloader spec files <bootloader_spec>` should not be used
+Especially, :ref:`bootloader spec files <bootloader_spec>` or
+:ref:`extlinux.conf <extlinux_conf>` should not be used
 in verified boot setups and signed FIT images **must** be located outside
-a file system and directly in a raw partition.
+a file system and directly in a raw partition and not pointed at by a plain
+unsigned file on an unsigned file system that can both be tampered with.
+
+If file system use is desired anyway, its integrity should be ensured by
+other means, e.g. by being mounted from a dm-verity block device that was
+setup with a correctly signed root hash.
 
 Prevent the kernel from booting the rootfs in verity boots
 ----------------------------------------------------------
-- 
2.47.3



