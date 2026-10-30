Delivery-date: Fri, 30 Oct 2026 11:55:19 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMkGU-0057I9-28
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 11:55:19 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8319C200AD1
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 11:55:18 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rZWb1Ewe;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Gin6brWS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357718;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=0Hor9RlXHBq9L6Tp3YJ/bjmAAYeIl6kscFEAbc5CXos=;
	b=fMIC6dA/VrgPlO4HnZZOehJRItwkGF/ivQyv6P8Bly262wREvy4Yxb+6P7y7b9xExe1jUd
	3dQzP1Mu4U1e2AhJsqDUgu1I9Aa7YN2p56+OB9WTANsVVsz/DSTR7D08oYRqSRTcR65/8i
	cDtkTOq6/8u0UYAhe/w/qwN2C6u2wy8+V8sSH6eIAhgcUaJFSX3tn7KIEzS76opB/LdrFC
	EmdKroZpoJlJ7F4zP+B83xtJU3OoWgfKUC6wuxuQhC0RTLwRb/iXqdCLDq6o0aUeAFgUrU
	CrDHXn0j0/sHCK3Ihfqb7Y2itkJ7rUYOLR1f3CSrdLu32u+bmcbWeUUC+uf/FQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rZWb1Ewe;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Gin6brWS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793357718; a=rsa-sha256;
	cv=fail;
	b=W+uhZtU3tKodvpZ0MBfYbnJnExv58lHJ5lo7sYRSJVZbvlf+c9Wu+IoICGcQoLCKGZIII6
	9F03einxb5S7Im5vKUSF+Ewibt1Qp5r7G+F88q36ThaviKRqqu5ti9i78peNdmornrOgC+
	79sHDG2ajTopQ5V4DnCBgk434vxYB0jNteWhgAgTkmWrlUXf7CDTnYRzh5VPJX3xWjY66T
	hPgQ20/ryZcRvGBjsa6ZXczINjUO/gAvKI6rXzV66BYszRE1NJpy5c6tiQ+sS0XkkqTEtK
	/VuJ6g9OJZPi8GHXxdrYYFsmJbkj7i7MQF5tmnlx03V4aVetcP2P/6dQpRLYFQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=0Hor9RlXHBq9L6Tp3YJ/bjmAAYeIl6kscFEAbc5CXos=; b=rZWb1EweYkgJ7CLrdXlh+DrRmL
	10fPMKz5FvDjkWAaupXVSSy0DIBOE03nDkfjcKsL/kEuPrTwJVcu6fvjjCprISISsJc+AVUdSYJr5
	W3E7LaOD41n7KL5kv0Rnb7wvx3XlhmFN7PcK48KH8Vi7t36GDKVloQ46NS4P02vJvjgbZnsiE5L4/
	dsZEenS+bYP1QqJUe4MPjKE1jXmP0UzEVE1zOwOHtx5pfSBVNyLoZ26wZxV5GtnSPTSyMwkS8hj/q
	rk7Z0GPCEHtEkA/d1YnkVpGIxl6qz5I7KIDkpJr36nfHgUzCfzZmYUi1OH/qr+5DxtTOVJk4bk3/l
	mmCewlMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFK-0000000BSmy-0U0B;
	Fri, 30 Oct 2026 10:54:06 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFH-0000000BSlD-1dsj
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 10:54:05 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8539D201FF3;
	Fri, 30 Oct 2026 11:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0Hor9RlXHBq9L6Tp3YJ/bjmAAYeIl6kscFEAbc5CXos=;
	b=Gin6brWSm98/o0Z4/bEyU1kcFiV7CcaBf2b19q1rxRd04NeHsAoiCHDGXyDjIyurrvVjEI
	rojIWAjOXRq5KuYlHwga29VV1HIC3odoqoOZ9eDPYuIUzUQPHAfedxHMp6VeX1MDsbxMr7
	oE/TLpc1uqY+Y5R+kdnOAuet/DvtGmHocMUbIS5U58P9nHWB7hVhxQOw13HKNyF+Zv5oCB
	4baQaNUwo8K4Jg8Ke6T47byEge+gktiWCHZ7SDX3tnOT6Xjpsimsd0y0+5QtnLnOONNVay
	AyHaEYt2FQ0LnY2p50A8MGyUouARKpCaXF714H2Oh2rqXmhSL64oYT+XU54iqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0Hor9RlXHBq9L6Tp3YJ/bjmAAYeIl6kscFEAbc5CXos=;
	b=cmdvwQsB34ai+VNFcRoW4KE1MMVGVd3phW+fu8QBbC0qcNpGpfJKaUT9ntxq9TZRjAmhY8
	kLO/JAarfRpdOS4L0KmQFLd0jeTFA45+KuiuFT1CPcgMDo5M/zfz0nncjc556SyrsUGqve
	v0oe+HRRA53qz4FSyA/FsVm72Th6MSTq0kcJA3ld4kR5a3Ru+Wbr5DEzeccYU8coQlEL6F
	iLUnHgxI9/JYQU1Wtg1SBDq79FTopGvq6hgII6+v/JXmd9jk4CXS+8clirmBz8ILBlSqJY
	oC43tRJ6t95kXsbhnzw1/O3dfQXdodAq0yNuCeYLPxL3tzB2N+P+UQXn9GcQHg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793357640; a=rsa-sha256;
	cv=none;
	b=BaevVYqM8CQhUwHXG6No/sOyOJ6PXATvj3nntW4UKvECCP/zfMRqdhgAF1i5KRtf2Bb99E
	v88ePJhbL7HN/REFq3/tNsO9Q+wCR+nWPvYwvqUxrZNQmsi9V+s7724x+Gj7DHs6MEi1eB
	olL4g4DCh08xw9duJQnswpSTPcXuTSGHKnRNpM5ndfOAD0VB7RLI5BBoMSf5Gt+3GLwMwE
	VktiZZ6f65gC6H2Pqs2j+86T7XOuMrsgMCEQPUugkASxraCGbiGP24r+RySO3tSu8KRWSL
	aeoBGZiHBK9lm5tsOZe3A+oV0CgoWbd2jdZs5yDIFjt54GVC6oOqkv78Mz4S8Q==
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 00/10] boot: revert boot related globalvars after booting
Date: Fri, 30 Oct 2026 11:53:58 +0100
Message-Id: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEZ35GoC/x3MQQqAIBBA0avErBsYi6S6SrRQm2ooMlQiiO6et
 HyL/x+IHIQj9MUDgS+J4o8MVRbgVnMsjDJlQ0WVVlQTWu8TLru3Zr9MwJiM27BzutHU2aYlBTk
 9A89y/9thfN8PLywvVmYAAAA=
X-Change-ID: 20261030-boot-globalvar-stack-9c65609b5801
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793357640; l=2905;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=VgGzmgMN74CG+uJ/Zaw5i4elPplnPmtr9K2jGwfvX2s=;
 b=T4MDqKW2AERufJaNO9S4UjMZwN9igekADS/Lzu52DV0c+hzCWvPvgfkXmCdnm+zfp5IG+CT6N
 OwzJvqCfNLzCVhtBhWwissVh5PalUyEuSCc6xOLHWp8KsXqbx8Xcl8q
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_035403_584707_BF6B4C56 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Boot entries configure booting through globalvars like global.bootm.*,
    global.linux.bootargs.* or global.of.overlay.*. So far only some of these
    were restored after a boot entry returned, by saving a [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 7br6rtwnc8jhfodyq55yw4cz9sojqcn6
X-Rspamd-Queue-Id: 8319C200AD1

Boot entries configure booting through globalvars like global.bootm.*,
global.linux.bootargs.* or global.of.overlay.*. So far only some of these
were restored after a boot entry returned, by saving a fixed set of
variables and by clearing the global.linux.bootargs.dyn.* namespace.

This series adds globalvar scopes, which snapshot all globalvars with
given prefixes and restore them later, and uses them around each boot
entry, bootm and bootchooser boot attempts. With that the .dyn infix is
no longer needed, so it is dropped from the boot entries barebox ships.

The series is based on the "boot: UAF and double free fixes" series.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (10):
      globalvar: add scopes to snapshot and restore globalvars
      bootm: revert globalvar changes in bootm_boot_cleanup()
      boot: revert globalvar changes after each boot entry
      bootchooser: use a globalvar scope for its bootargs
      test: py: add test for reverting globalvars after boot
      bootargs: remove unused linux_bootargs_overwrite()
      of: add watchdog bootarg directly instead of via a globalvar
      boot: drop the dyn infix from the bootentries bootargs variable
      defaultenv: don't use global.linux.bootargs.dyn.* in boot entries
      Documentation: migration-guides: describe reverting boot globalvars

 .../migration-master/boot-globalvar-scope.rst      |  13 ++
 Documentation/user/booting-linux.rst               |  27 ++--
 Documentation/user/devboot.rst                     |   4 +-
 common/Kconfig                                     |   6 +-
 common/blspec.c                                    |   2 +-
 common/boot.c                                      |  35 ++---
 common/bootargs.c                                  |  17 ---
 common/bootchooser.c                               |   6 +-
 common/bootm.c                                     |  27 +---
 common/extlinux.c                                  |   2 +-
 common/globalvar.c                                 | 142 +++++++++++++++++++++
 common/oftree.c                                    |  41 +++---
 defaultenv/defaultenv-2-base/boot/net              |   5 +-
 defaultenv/defaultenv-2-base/data/boot-template    |   2 +-
 defaultenv/defaultenv-2-dfu/boot/dfu               |   4 +-
 include/boot.h                                     |  16 +++
 include/bootargs.h                                 |   5 -
 include/bootm.h                                    |   9 +-
 include/globalvar.h                                |  29 +++++
 test/py/test_boot_globalvar_scope.py               | 117 +++++++++++++++++
 20 files changed, 396 insertions(+), 113 deletions(-)
---
base-commit: 9ae453b11d9e222b33247c95405f6a74ee845fa0
change-id: 20261030-boot-globalvar-stack-9c65609b5801

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



