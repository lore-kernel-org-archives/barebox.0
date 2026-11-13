Delivery-date: Fri, 13 Nov 2026 08:25:59 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRlfb-00AL2I-14
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 08:25:59 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 36DCE2023BD
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 08:25:59 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=J67fE3rY;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=MMFRDhck;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554759;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Mo6qhYM+NGd831mJnnqmxlwsqoOaQK4/Z1LmPYLDD3o=;
	b=bFBiV2sbRKhai61YcxQkIVOeyKmMZ+v8ybkLy82uUEQJFfrGtEK8YZmxal9L1k24N3NS44
	Kjo5OMhJQBB0S4JX0HVnR3IMH3vuiwkxRwuatGhPXcN5BaQAmfCKgbV4pe+N9zxVZVSQOb
	KSqQFVBo+r+CSXAQt0l8dvL8LkfAdUlGQgOZUfKV6NSHK13rFvbIrSndN7GoAoal4tALLw
	3aggcqAVugKNgmA8M5ZKA9NF/AZ2xNQ+c6tuN1xUHR/CPiumjVV6BEGCtBjgUqqfbkyy2w
	6qp2dAbmsl/VRbgipfciWnkbnjJrNpvtcRQtG3D2Btmk5eIvCpqr6ekpuln9Bg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794554759; a=rsa-sha256;
	cv=pass;
	b=Ip/CSRIKVZpJJFt6Arp9k84n5c35DlAjsJiKh1J5I/ZckXbgXFJRCzpHHNnQYrj8rdcEco
	TczYpGzIHeMgNaspXuTZ0wNfofq6vH9lNkGKbEMpH+m1zDkDiysGZjpVEq9r9gDdU4nV5n
	All/NXG4GLqNwnd8k/YbWNs4pl0P9xAe7lNZnCZgXqy0Eykk0HYzlCOTB4733JFOy96QM7
	krHZ+N6to758zqNAsTJ8/uKDC8kLj+tuchTcZF12hWh0hMZaNk5FqTS7gkkquEGgjXiwu5
	3vtV/I3NE77/5zUHFvJ7Exhs0W7meRPHcc7V4oskxbRgZLYhZrS2nDcRDji++A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=J67fE3rY;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=MMFRDhck;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Mo6qhYM+NGd831mJnnqmxlwsqoOaQK4/Z1LmPYLDD3o=; b=J67fE3rYTuJIkq
	LcD8rW5F6pT2+3faW7Q1Sb0RNV/dRhox2CP9CDj2p6eyVE4TtJ5nXJBRFL9psA0EPVY9PPnbjXiiv
	7LRUM64/O7GiPCVEg5fFZPUwgDLr3My+gm5R2QuTBC/2MGsfkXkppYw9ZIDIzN7eBpTjzTbD1Z/3X
	i0XMbkCkfT8l9PVGkeTBSZaDgPBKplhfPg6pYuRhX6HqENJ+A7r1NXbvvfAdET1hP9bUwOoboU9WF
	c0dMhdZ0aKfpQTbhu/C4wcTs9R1bI8sZvrowfzCk8Py2DeA0UObw3VwP+O2kPELNjl8JuTn5bnZ6Q
	ICswwn+BXylRVrl8+CPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlao-0000000BtCr-1vsd;
	Fri, 13 Nov 2026 07:21:02 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlab-0000000Bt3j-1UEJ
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 07:20:52 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id F304B20592B;
	Fri, 13 Nov 2026 08:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mo6qhYM+NGd831mJnnqmxlwsqoOaQK4/Z1LmPYLDD3o=;
	b=MMFRDhckm6xq1ap88Ecay8HRmaHGGpNYJ5QfLVQL3xK83UIYjgKq/b8NxCHcvhw/CouX9U
	7NgnaiYWGcBgW8th1bwYNPlXDfGIQrgPe7el0WGyPJzj7cD2HaOn6BEuj5SnG7+L3IdlBP
	BvnbazSNXP89TvYuVm6+hACVi1Ph8yJFwUTbGbABdPVBtQLi53Dc12BsMxXXUXYkGPa5Md
	kudjIQ3SkJQk0XXUTMFNJtU8n9MJPPzb9Cgle1O/fOquSf2147t4vwBDvM2b4VfrKyAg6u
	5vE3AOUgMb+0mJPBMgPJhBfed4qDE71+YtkJfaqJT93swnFM3KFkbwkMUEFE/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mo6qhYM+NGd831mJnnqmxlwsqoOaQK4/Z1LmPYLDD3o=;
	b=YPykP71MxAV+oPXbanSdqeE4vGVOlMWHAFX7prCtmfdXdwvBbjSnS42fu/KlTCeALEWTmm
	/SaxymIuf3Ld5SszPuHquYwxC77kKRbAt+NPISQoChJ4ljQlfNmiY27kCDanQR2mPbdBtU
	L9M0z+RbjRT++/PQgJKwqS8vE3Btrwq6EKi2PDY9cE6CMUiwpc1YmcV4PMfbtyYWDiyJRr
	5+TIJXL7BgbJ2rk04yUX8jFI3YIMwVA6h3Puxo0xOU3gsrmIqIP78Ja9xaKtY6yYDyEAj4
	Pm59rGbvIP53hfIjG4/GindDzBOOF8vkh/niTqrYDX4oLnUyhxYvNKc7dnk24g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794554442; a=rsa-sha256;
	cv=none;
	b=cIcUAc1MqvXmFkE8YFMSTewcXx+PqZSNIJ+aj/NSuAG9WS942qa3bALehd7+f07P6B4kLA
	WcENda5/Pm3yelDuZHc1rl9PGJGCIPUXa0L+3eFPj/2S177duZy5snQ0U8UXo3d139gryC
	iPv6r4MltP5uNBHO/sD+vgKEBkdGHxpUyKCqFtL58G8o5hsCwcNnUWtcYmRNFLbxwCM7An
	r+LsqJrcOfw64gG4hfPJ0fs5jE9oy14wF4wlcQvCJFj302OliuuaqVVMowFdXSsgoJnSeV
	XEZHFkvsYJv4ok3XQXcfgrJbg48zrbnX+TAq569ifoRoCHYIosqgV4IPCqoVjQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 08:20:44 +0100
Subject: [PATCH v2 9/9] Documentation: migration-guides: describe reverting
 boot globalvars
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-boot-globalvar-stack-v2-9-14c0f0a0986e@pengutronix.de>
References: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
In-Reply-To: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794554441; l=1905;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=kfVWIdzuxZsRZklZBuGKQuM5tStHiHcYfuRZWgqKd5U=;
 b=efhNcNAPwH+7cxolgx0osPzb/Hvu3f6bWvm5X+ZOA8Iibcfqu5XXK5P826D5KkUnh5bm/Iffz
 sD80/wMKhUJDkXCi6RMKZyx/bTljPUzZHIV2tUmlaODqCJwGGPvueH9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_232050_134966_CD8DA9C9 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Describe that the boot related globalvars are now reverted
    after booting, that the .dyn infix is no longer necessary, that values set
    in global.linux.bootargs.dyn.* before calling boot are now kept an [...] 
 
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 36DCE2023BD
X-Stat-Signature: rodq5inedwkn8ui41byj4hg7bxghwiok
X-Rspamd-Action: no action

Describe that the boot related globalvars are now reverted after
booting, that the .dyn infix is no longer necessary, that values set in
global.linux.bootargs.dyn.* before calling boot are now kept and that
the order of the Kernel command line options generated by the default
environment boot scripts may change.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../migration-master/boot-globalvar-scope.rst         | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/migration-guides/migration-master/boot-globalvar-scope.rst b/Documentation/migration-guides/migration-master/boot-globalvar-scope.rst
new file mode 100644
index 0000000000..92428ae1e0
--- /dev/null
+++ b/Documentation/migration-guides/migration-master/boot-globalvar-scope.rst
@@ -0,0 +1,19 @@
+Boot related globalvars are reverted after booting
+--------------------------------------------------
+
+``global.bootm.*``, ``global.linux.*``, ``global.of.*`` and
+``global.boot.watchdog_timeout`` are now snapshotted before each boot
+entry and each bootm and restored afterwards, so changes made while
+booting no longer leak into subsequent boot attempts.
+
+Boot entries therefore no longer need to put Kernel command line options
+into ``global.linux.bootargs.dyn.*``. The boot scripts shipped with the
+default environment have dropped the ``.dyn`` infix.
+
+``global.linux.bootargs.dyn.*`` variables are no longer cleared after a
+boot entry returns, but restored to their previous values. Values set
+in this namespace before calling ``boot`` are thus kept and passed to
+all boot entries instead of only the first one. Settings meant for all
+boot entries should be put into a different variable, e.g.
+``global.linux.bootargs.base``, as ``.dyn`` no longer has a special
+meaning.

-- 
2.47.3



