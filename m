Delivery-date: Thu, 15 Oct 2026 13:04:41 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJGL-00DtSw-1O
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 13:04:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 634EF201ADE
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 13:04:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fRyOsfmk;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=CdXVwypH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BKH3mpDe;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792062280; a=rsa-sha256;
	cv=pass;
	b=GQ4ZwlcUmd4GhzuHP9nen8eOMroGX2yWvjjwcSYHTj+Wq4rPxiTIKvivgf5R+a10fZyDcc
	kSW4mT1oEFLBaswrWxHYyualWIUPV2jWHqhblQdVDCvVCbn9NCEFLE6EMqS/+ZWcYtG57g
	TY7GWn8zS1skq5StzKKgbcow58rb3tMtKmAUGAJ8O+MCl2xrp3QfVOKtAye87b+3/h31St
	btw2plFitw+sathQXjiASvh5/9Ev/3c12+5mgM+/V/Gs03z4VwbTJY8CgVZC+LtGCnzPnw
	dFVXZuOIyJICjwK5UHlmFL1egoOR8ZQ2Axq1T+GnnNbQQKbsJ9qj9qdNtqi5FA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fRyOsfmk;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=CdXVwypH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BKH3mpDe;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062280;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=2Kee3E8iqxC8jsVm6zNj+GLIuPdeXraHv2GgULZ1csY=;
	b=CxYY68o/sXnkzvjVwX41XXqySd4RsX8FkpngVBJmEaR8fJF6eMsCnfEC/hcBgYMDRvYC91
	4M1CVvvRARCex7QdnierUTvZYgLZlIsjgqT6wGjrZUAVz1itmE9lQvev9fZ/H+uwMkTATP
	9k9Z/rhhSaUCFoQDtj98X3R+bqTseebz1XViJJRW1M+nqBeWWAqVT4uIYbCb+YA5qXhJOS
	3CA5rcbonAqM9RYExEpXyzMWPhQiuIA6JTEHu/EZ/gg71FAM4glnUzlqGN4f0VjI4XoVDo
	RGuNNDe/arW18AQfzHDPxzYzSb7nmY9NzKcCS6c4/wBMM6B4pK7xwi1V4DBZKg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2Kee3E8iqxC8jsVm6zNj+GLIuPdeXraHv2GgULZ1csY=; b=fRyOsfmkIsN48yZdcgW+tsWkqQ
	bBf+BnxxgS47EfzGJ4hpEHHIEOs0YQtkHAmMqE5AwG6KeA5TnLWP0+2uUW4nIMWyKZztUsIrcvYa/
	P1CM4bhwlsIXkBzj7lpurn5DdvupS1Lk1ye5QS274148MQfZRQFQeDCKH/A1S3/hMZKvXv5c5SPXw
	Cz0mWIXFNwC+QZ5fBYm/UMXt1CbzFEDuhM9d0Np5ne4bjl+KxDFas3JCF+er6HPt8Iyk+md3Rx/ie
	JaC36aoX7R4+Im17oJ9vIRD6HHgyjdIehqh5Wd5ofu3/ezlQ67FDVpp6W3YyNstgdxXxhlzfHd/g6
	YG45UySg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJFN-0000000HWFq-2RXm;
	Thu, 15 Oct 2026 11:03:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJFM-0000000HWEr-1PgT
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 11:03:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=2Kee3E8iqxC8jsVm6zNj+GLIuPdeXraHv2GgULZ1csY=; b=CdXVwypHxXLjX6mpAhupLr5Mav
	dAPgs9E5lYLlx9W/XA9Gk4q4M2MFvdDvR3L2Vqt/RV47EC4TgS6BSrqbIkjS28g5AaOUDJKEtAvNz
	/FtQmqx8YgObvNSKT4iLBqqFTkreJK+J49lCwJIOwZE6WoogsjWb51WBGdEGnFN/LgLuv9OWuR+XL
	EXqVcQAMuxwyhb2Ld5sDd6vyDMynTSIAP4OR5/kjJI/xaVqLsfUxIWHVa9F9txHLINTlCkyvx6L/J
	+G5UJH/XHvzju/Dp5ebShvRzpNIrW40pCp453XlC7UX2sliPo2O7NYIgsq27GIOWGiLna8IAc7L9W
	s78SacAQ==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHJFJ-00000000HaA-21Iq
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:03:39 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9A947201ADE;
	Thu, 15 Oct 2026 13:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2Kee3E8iqxC8jsVm6zNj+GLIuPdeXraHv2GgULZ1csY=;
	b=BKH3mpDeBFE7K8rptxKrazc+19WwHfM+dHCRlq/J3PP3EjpzG8C1JvU0Ye6fg2Ne8BpmSF
	huJBo8BvntltLg/afR40t1w+6ptwBzXMN2EQo5sm8BtFVgfogyAfC2/YQqo6CszgK1fWMR
	GUtN8K5ZWKXO13WB7emI1UMRLq4PKdE3XBK60Aev5MB9DvNGhF6jRjCobvPbH5yLSC7vpt
	kcW4qu8XooII+sRB/2T8QZyo6cNFF+Q8kRf2vU5vom/g1nILEpg/Y3UvwtVAfhkQOQr3/4
	5HKpmA93ZguPCxIQijx9/NhJjh6t8B7r2g+N9FpSTVQ4XWjAl4uvnRErpO87+A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792062215; a=rsa-sha256;
	cv=none;
	b=O4CXbXQtOtD1Q+0mFkPh14QkIQbAz8fFggyH7nJqUSqmYLBc5KJw/Abpvwt4QOQ3oR//0n
	hHI+M3F2AjWkKP77o+X6RlqyD3bh6rt5nxMj6nOeFudN5GCQ8iB4Ikfinz2Ydyfd5J82Pv
	RXNBrML4chj3/NARC1yCvl6Cs4zUW51zWq9oKdCnsc7M+iEO0MwYTvOVaLMVIz34PRFXHF
	BxhKqpEv30L0ox6hP14euxYYanBlFVBBneaKK3Sqjbtr+lbVBHl9p8cfxLTaz1j2bYLFpd
	maX66xSNJY4YE5Hh+pd2nrhA/jWb/nvgaXayMl1G4uxdL99DWeld3h+eYFEorQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2Kee3E8iqxC8jsVm6zNj+GLIuPdeXraHv2GgULZ1csY=;
	b=RD1frY1kDh/Dl9bM3jNO7H7Nq+nSCdklbz5VepMUDIW6xxDTqMvcs0X+gKev+WsI7739Sv
	n3roxGxi7BMxzIR0aiyMnLXzEopeTgnC+jiHWI7ZVKT/JVuTbjmbJ41WrpCV0ar4o7zkOL
	YZI4873clS22kbF9BDm7D7L/p97OlwXrdWWZDNYQqolpGh55qPb2SVBg2APUYErWgef1uR
	nIK04mVp2w0c6p/kA8EOAz60FOMf/RMP/VGO6PdB4N/Lcu6SZG+mngucJi1D4R0hqNNajo
	TGuNW3GUI13CdXwzZLxcr6gXpco51hCe8noACUZkWCUGfCYGgPet5H+dQGzoZA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 82CF874066C;
	Thu, 15 Oct 2026 13:03:35 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 1/2] Documentation: migration-guides: add heading for v2026.09.0
Date: Thu, 15 Oct 2026 13:03:30 +0200
Message-ID: <20261015110335.2285479-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_120337_696529_8BF45B50 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Otherwise each entry is shown at the same level as the other
    releases. Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de> --- Documentation/migration-guides/migration-2026.09.0.rst
    | 3 +++ 1 file changed, 3 insertions(+) 
 
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
X-Spamd-Result: default: False [-59.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 634EF201ADE
X-Stat-Signature: uuowde7rka8yubbumf9rpmpx5j9ei1s1

Otherwise each entry is shown at the same level as the other releases.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/migration-guides/migration-2026.09.0.rst | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/migration-guides/migration-2026.09.0.rst b/Documentation/migration-guides/migration-2026.09.0.rst
index 09ac5585e4d5..b1a20e894d47 100644
--- a/Documentation/migration-guides/migration-2026.09.0.rst
+++ b/Documentation/migration-guides/migration-2026.09.0.rst
@@ -1,3 +1,6 @@
+Release v2026.09.0
+==================
+
 Removal of deprecated CONFIG_BOOTM_OPTEE
 ----------------------------------------
 
-- 
2.47.3



