Delivery-date: Thu, 15 Oct 2026 11:24:32 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHhQ-00DrNC-23
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:24:32 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2418D202381
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:24:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yY64VKuj;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="Hm+/voIQ";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=UUykRjoV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056272; a=rsa-sha256;
	cv=pass;
	b=gqBo5syBGqEfOe6IOVCKVlCI8c8jfjUqs1vJrui3YFFpS3pn5PEO3X9LDA7NLxRWZP0akc
	DhSCLRL8Q/i4zt2sngMAJsS4oIYSWTukXtLNVMyyjvLMmgZDTbDUfvtRi1pIvNImFkKbnu
	Jy1wgE+J9Te9J/Pi0XcTswvvI6fCWWeE3e4HlW7/u2wUg54wC3WqizdtNrMwIgRyJyVqJ4
	AtXT+Rok3ibwybf9mHmQ0F2TSvc7Harldq0iqwEXFlG3J+TjHW1iE5SfrM5cg+ZprBaS58
	5NTRgxzhLSYiEIAwIlw5LEnLhqnRPl3txZ8teHVOS9aQ7jf/blKHIg/JeJiA3w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yY64VKuj;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="Hm+/voIQ";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=UUykRjoV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056272;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=dqQYu86k1+EF7QgVnxX6q7D+BqHgc0N8gQD79jjXMMI=;
	b=MqP8whGESrMzBivmRLqdFAT/yNuGEEWpc3rK0bGpQebGQLKq0v4QrIuUkpdhz0WFqyliCT
	YbECnPEFiqg3xA/+65x1QSvePqK3QuqK8XCnEIMPyhdCycbSB5zhiIk9OSUBFfTeJfXVr0
	F2GRFHkmlBy/qqhjzmOQJc7BCAuhFdHFc1mnb6n4fO73syR/USEQbLyM7EchxKAbBGoIvS
	TmIINKFETVMTSwbDOPewn0q2D71uPGupvS+m4ACYwqojRRBgXErvwHTJr5mh2nS9PcWjJN
	zw59wSQQtXdfSmcAddkCcGnfm18sPl4utm9B9Bv2PInMAuLBGNzGO4v8V0qf0Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dqQYu86k1+EF7QgVnxX6q7D+BqHgc0N8gQD79jjXMMI=; b=yY64VKujmDMoGlQzm9h2lLCHp8
	Cr14yZJo9Ald8IgidCX4ns/QkBWlKz5xRNlY15OCx1uZr2P2dcK35QzwWRPBOd8lXOmuiHP6+vb9i
	wvbW1PEdGK0a0nG6ahswlYaYyZb3QXYlVtt4UO2cyvbEot97jeKhAejq6ggORLGeoXi7vl2buRg3i
	EpJf8+qYQiTi/hS4pDvt4ZAxFPr2+opurf75uWV61TYaxhQu74drEPRULlt/VKr8NqB778TpDMMvu
	hRePRXW5FX2sjx6c4Q4MQVDqyLiQA7cZvhMcQ/VrXUD33lezHIfiANozZZ+fBgHfToLJvMbcj5NWF
	3ssrfZuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgH-0000000HFZx-3Y0p;
	Thu, 15 Oct 2026 09:23:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHgG-0000000HFY5-0RTZ
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 09:23:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dqQYu86k1+EF7QgVnxX6q7D+BqHgc0N8gQD79jjXMMI=; b=Hm+/voIQq+kvvarUByWMtdDOh3
	fdY0r1HS6cHPj2KR8KtZHVwkRZprwjuC3EGAWTIYMOwqGBQv3btlPVKhooW4QusTRcOhH4IOUtRFH
	EId3NGj7mwQS2wE98nXvSVMEabwIPIFw44nB1C//BVhcl8WAtSk/X/smTvtfo4t5fpMM+VW6mkkJL
	3q4jstB5PSqcVMn27DU8zEeJThYDBB7X1jpaX0qrnkRp2MfQp8O1vm7ahrlVc0Cysa8I9DRErn33W
	RTmTxd1QMzzbe/RbdDupxVzxsJ5rHl2vR0E2YQmIqfkKl2qd2J/cAZ46ardwsgX3m183QuQm4j8SU
	GywV+jYw==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHHgC-00000000AOb-3Knc
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:23:18 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CE6182027D8;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dqQYu86k1+EF7QgVnxX6q7D+BqHgc0N8gQD79jjXMMI=;
	b=UUykRjoVzuDuVobAWQxYlgw3fSLgLn0zDiJRRRQ7HOsD+2JxvVQil8FjkL5WUozFVtAhPb
	PXEjU8CsEXcRUyBd0SZ625XpPRGK63bnI1a/6NAv04dNJJYk7jM8zoIwzbfQ4zzjX5UWRP
	38dlHzTPM3ktUNGPGVgftcXGaph0zyAM3j6kSWyNlAvqVC5k8WbvlbotcnKE8EDUguj33F
	VJJhNXQDcA4pVdhG0mufr/mhpujSa6LBZipNxYiGi8y/u7QoQg8Dz2Mpv+vU9gjxKy6037
	c5TRn9lkDfh87sZ4AHTRA0982s4LuPZrH3WeoFlOnN6UkurSAc0fuZfwWGwpZQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056191; a=rsa-sha256;
	cv=none;
	b=e3LqU/PfOubwhuIdOvet78P8mTqVOtd6IbnGqeJeA7Mfl7yEk3hnzvSGEu0tMJXP0hJkSV
	BMSehs1KqZFO+Z/9aaVyc9I6Th30O1hO8cSMNTzcwTZqE/z6My17RZa5dxuVYyI1C5bl8b
	A3mR7vCwBfYEvVj5Adw2NsZ8pWPPiGJAzks2hlwWTIobt2riwfOEVGmRkjCT7ubaot6gYp
	zfPm2k50t9Y6m55YclfoShXMiM84R71i7+yOkYy1VFVaYDvhri+yenIdHVGol27X0FgtEK
	JVOts1ZhuTgvHJCRJlNLHUBYo2jrSK6fEiIsI7rX+mN8YRGbeeD+t07EfS1tfQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dqQYu86k1+EF7QgVnxX6q7D+BqHgc0N8gQD79jjXMMI=;
	b=HoXOqpa1162yOaGvKMVIzeZA+H2xa/SpeYVSjEViShxmEkBG4LwVhWEThCaRVg03ujWatN
	+8OMMHJIHedz2KNW3L8ItyDkLs9xeWLRgW1+TUT8joKLXjGTm3j3eVZ3ZN+tJK5IA0UipZ
	Bw9EfpBXxFvkv3RMpe6fI29IdqR4kHHfyF4a5p/aW7vSo6di4o4o4e7qNaCSg2LsZkmijw
	k/rEakHh6V6I0Hl4//fXCJFpdrHxYDInwFduAK84TtnZs7ZUJADnYsO6kDLxnQlhAGkZEm
	hCxfBVALH8dZttQSWKa24Zth+kURG0MQuyme6cZKGzWCNMS26m/KXM/wgVpKOg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id B34A07415BD;
	Thu, 15 Oct 2026 11:23:11 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 10/10] test: py: efiloader: check global.efi.bootargs reaches the kernel
Date: Thu, 15 Oct 2026 11:18:52 +0200
Message-ID: <20261015092308.146516-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092308.146516-1-a.fatoum@pengutronix.de>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_102317_342908_78E1B022 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Set a global.efi.bootargs.* variable before booting the Debian
    kernel and verify that it shows up in /proc/cmdline ahead of the Linux bootargs
    when booting via the EFI stub and that it is absent when [...] 
 
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_MIXED(0.00)[];
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
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 2418D202381
X-Stat-Signature: 85u4yhhbf7tzu4a6kksmyug3bm4r3wef

Set a global.efi.bootargs.* variable before booting the Debian kernel and
verify that it shows up in /proc/cmdline ahead of the Linux bootargs when
booting via the EFI stub and that it is absent when booting the same kernel
without EFI.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_linux_efiloader.py | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/test/py/test_linux_efiloader.py b/test/py/test_linux_efiloader.py
index eae6703e9d49..a39c6804f61a 100644
--- a/test/py/test_linux_efiloader.py
+++ b/test/py/test_linux_efiloader.py
@@ -50,6 +50,8 @@ def configure_bootm(strategy, barebox):
     barebox.run_check(f"global.bootm.image={kernel_path}")
     # Speed up subsequent runs a bit
     barebox.run_check("global linux.bootargs.noapparmor=apparmor=0")
+    # EFI load options are only used with the EFI stub
+    barebox.run_check("global efi.bootargs.test=efibootargs=1")
 
 
 @pytest.mark.lg_feature(['bootable', 'efi', 'testfs'])
@@ -76,6 +78,8 @@ def test_boot_manual_with_initrd(strategy, barebox, env, efiloader, debian_iso):
                                    "\n".join(dmesg)) is not None
 
         if efiloader:
+            # global.efi.bootargs.* must precede global.linux.bootargs.*
+            shell.run_check("grep -q 'efibootargs=1.* apparmor=0' /proc/cmdline")
             check_efi_kernel_no_warn(shell)
             check_expected_efi_messages(shell, env)
             check_efi_systab(shell, env)
@@ -87,6 +91,8 @@ def test_boot_manual_with_initrd(strategy, barebox, env, efiloader, debian_iso):
             # Verify that EFI was NOT used
             assert uefi_not_found, \
                    "EFI stub was used despite global.bootm.efi=disabled"
+            _, _, ret = shell.run("grep -q efibootargs=1 /proc/cmdline")
+            assert ret != 0, "EFI load options passed despite non-EFI boot"
 
 
 def check_efi_kernel_no_warn(shell):
-- 
2.47.3



