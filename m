Delivery-date: Fri, 13 Nov 2026 11:00:55 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRo5X-00ANfo-0E
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 11:00:55 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A9C96202266
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 11:00:54 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nfxo4eRy;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=CKUYll31;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794564055;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ka+2j08Rv/SnJV4jb4EA4Fq3tQ+mvdMWzrnyh4f8Dwo=;
	b=UvtDd4zHRT+7XdpXqa53pBh2tEK7gVzAr6g/KMfeLiMDLtVXwL+6+xLswE0RZ+SoLNz5qE
	HMxJoGiAerR8CjeanMtAH60WKXe9qH0WOln/dvzGrtFgf3ytK/JPTCnSZMx9qs2OpiKMn7
	W5tSRgSYLjuoM5eqQetjxtBtyQk/Bi2IoaXjbDMZt2TREelNY31JaQ30WKp8MBC8Dxe1+3
	FVwpp15HgE9NijrT0R/QvRjUAOQDAFsObV4a0NSVt+4v/j/9Jue8ifomHn1D/SKQdlNeCo
	6hdNSeDCv6sN5WEVHUKVGMKdLzlR/dtq/ndtTWFZqvwW5pU0vgau7X7aUXXLvw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794564055; a=rsa-sha256;
	cv=fail;
	b=PbHkyOw9fDCnRQf6/Azn8/giVkIm8OEKbDLICZleH3bKj3ZihpVs6LIXPxFwE7smFAp0jd
	xpfkvqXhtq3evd8jGKCQ5AJu8xqt8871wSRm7aN/2yWjuIxnxLpNp3KjUZi3+rlyongeTq
	X9PVBJsQ00SWqVLudM9rlR+QRufz4MEbMOaFfq6fl2UkRvYonostFUj03eOI+8QS8ua9Hm
	KwP45snAomCQjCQJMhmyiXTA++1h4kYS/6b9Aam2Jr3eBE/Re8+bH/Zw0dDMlhEPKacJTO
	YkLHU+ZsPtIW6sv+WhBnZ5tSoKGGC1LuPa4YtL3XseFF0zh6ZBZFJfSjdjgQVQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nfxo4eRy;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=CKUYll31;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=ka+2j08Rv/SnJV4jb4EA4Fq3tQ+mvdMWzrnyh4f8Dwo=; b=nfxo4eRyD/EmoQ4OHJLVfCpilc
	KTfca8tiQNIo7EXMY0cK36DuJErc3qA3tO/Lbh24liHc1kcbcPuNPPALUDK4Mi9RYVuNhSqQsIxIW
	0JPsB+sJfKqhOilugYx1jL2DGxrr1MJZnodmvamgSOAj81PRkQ2FysjgqsYvIa6P2ecjXK4Kh+4g7
	vN+8itRlxYkOTZyfc9UDzMFxhkhGXaPS+JvTpzLUiZCp0PmrkI1Mpsu1ikOy+phEazF2ISVTNPKoF
	aieeTVjCO1rQVXITxko2/RuWhniy+b2A0NdJ2in6Cf9ykDhMIzw1v3gPeGUDaB6vWd+eYXmdFnykK
	IXF42eXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3G-0000000CHQf-1HTX;
	Fri, 13 Nov 2026 09:58:34 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3C-0000000CHNx-2o9s
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 09:58:32 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BA1B02020ED;
	Fri, 13 Nov 2026 10:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563908;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ka+2j08Rv/SnJV4jb4EA4Fq3tQ+mvdMWzrnyh4f8Dwo=;
	b=CKUYll31DyDFOqVF1QBNZTC2rveDLSI9rmnm2Xo7Vo8Q2UWM67w0apImi5nYOciex3tNqe
	LrR9diWjXRMeapptamJV8lsUHRxhqCJm06VAIQi3CEfNRAPevH365c3p8fMq7P/EQKWgk/
	GrCU9Afix7jMe2LQ01m/LZAfWvie7jblBzXUBnsO8E5FB6lggEJD5G573jTN5+al8izqWq
	n33uzHWDsqAwRnHG3XD8vF0HOfrW9BtejJ1tD65z1z1pdY/bNsw1/J+ZhoIuiDuhXYsaZ8
	I1Ra/liFX8zb4yhwv21SP3cvAHoz7Qz8oKpcqwDSZMxerme3SK5OM7m8GVkiEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563908;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ka+2j08Rv/SnJV4jb4EA4Fq3tQ+mvdMWzrnyh4f8Dwo=;
	b=Qd6GOo7ECCucJlo1FOuUb36HCctF76ytNPBxY/SMyOM45ZAWF0KxZm8mzod39zkdH0pYuO
	99rGJ/sKth/QvkUwIm8mao5UAo+hXtcMiwaki7NFEMTQQX56q/awbimAnjtvBkcpcV9QSi
	XZ97iyys/h+h1iHPnERJihIw+joY1RxtPrnhfahgbUPmjD62QL8rZzHJqYGrDgfTT6GiAC
	U/oW6yox0rJPt3ebKOcAmk4eNtzlVHZ3V526H6iK5gPHkT+q81phWAE77VHeUXsL/5X9sK
	DmoGrYuW1Xluvm3xvgBsnaNn/Fsof/EnRI2oIXtGVyXVG7RosgyAwe5BwOTO0A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794563908; a=rsa-sha256;
	cv=none;
	b=GXG9fYkK6y2EnsUrmrcKUplCvaQ4pasXxJmRqAhcHJjcWopnrMpodsWrUPkmvlVjcBHX3B
	AeBeocv8phhXt24XBTnnPPb40YKiaLuHg7KJ3fLOtCQHw+73XUpEc/vFeJnfiT/97xqIcM
	70ei5001QCdyRO3bsfkKNuPxFEUauyw7RfDev4CQ1kdU3uqhvZxC3G3HR7EYpWUXC4Q7e6
	CEDK7JLdbFxiZcc5sf/8Aq3AkuuDtJmcTVHjPqurjjvOz3ETaw4Blk1qYjQCllmQ+bp7yI
	phYSwplTKZ0RAqtfR6BulxIgJ+JIH75G5lt7ZCYHHhYytDAiUxpo33pe+9qUXw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 0/6] boot: implement devboot in C
Date: Fri, 13 Nov 2026 10:58:23 +0100
Message-Id: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD/f9moC/22MQQ6DIBQFr2JYlwZQUVz1Ho0LlK/+DRigxMZ49
 6LLtst5eTM7CeARAumKnXhIGNDZDOJWkHHRdgaKJjMRTEjOSkYNpMG5SPVUqaqWDLiSJL9XDxN
 uV+nZZ14wROffVzjxc/1tJE4ZVQ2TbQvNWNXtYwU7v6J3Fre7gbP7X9KDMqbUSoxSfkv9cRwf+
 MwxGtgAAAA=
X-Change-ID: 20261030-devboot-af494560e196
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794563908; l=3669;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=F2jz8RtsJvrUvukibuBaWOaTpfz9/ljqUMb4u2htnGQ=;
 b=L5qAXGVHlxnf/8sq7FPhMpoT0gIraqInYnuJHI1KruuTIpwEKV/OCGyc738ZQ13iaflranRe+
 uNsiLmhyBrXCoLxkSAlBq1qS3rOOEdjbnfug4GyDo8LnZ8/XUFPx6B3
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_015830_863997_780C3D9A 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  devboot is a script on top of the boot command, and the devboot
    boot target needed to boot with it by default is another one on top of that.
    Booting with devboot thus means nested boot commands, and b [...] 
 
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A9C96202266
X-Stat-Signature: z33uj5bmdtizeriz9stsj47g6xbafijm
X-Rspamd-Action: no action

devboot is a script on top of the boot command, and the devboot boot
target needed to boot with it by default is another one on top of that.
Booting with devboot thus means nested boot commands, and booting with it
by default means rewriting global.boot.default as devboot@<target>.
Also, boot overrides get lost when a boot script calls boot or bootm
itself, and the boot menu ignores them altogether.

This series hands overrides on to whatever a boot entry boots, applies
them to entries booted from the menu, and turns devboot into what it
really is, an option to the boot command: boot -D, or
global.boot.devboot=1 to enable it independently of the boot targets.
The devboot command remains as a shorthand for boot -D. The devboot boot
target is removed, see the migration guide entry for how to replace it.

The series is based on the "Add and use file_exists() helper" and "boot:
revert boot related globalvars after booting" series.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- New patch "commands: boot: apply -o overrides to boot entries in the
  menu"
- "boot: implement devboot in C":
  - devboot also applies to the boot menu
  - depend on BOOTM_OPTIONAL_SIGNED_IMAGES and refuse devboot when signed
    images are forced at runtime
  - use globalvar_get() and pushd()/popd()
  - add a migration guide entry for the removed devboot boot target
  - rework commit message
- Rebase onto the current "boot: revert boot related globalvars after
  booting" series
- Collect tags
- Link to v1: https://lore.barebox.org/20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de

---
Sascha Hauer (6):
      boot: report the exit status of failing boot scripts
      hush: export source_script()
      boot: hand overrides on to nested boots and the bootm command
      commands: boot: apply -o overrides to boot entries in the menu
      boot: implement devboot in C
      sandbox: defconfig: enable boot overrides and devboot

 .../migration-master/devboot-boot-option.rst       |  22 +++
 Documentation/user/devboot.rst                     |  81 ++++----
 arch/sandbox/configs/sandbox_defconfig             |   2 +
 commands/boot.c                                    |  30 ++-
 commands/bootm.c                                   |   3 +-
 common/Kconfig                                     |  12 +-
 common/Makefile                                    |   1 +
 common/boot.c                                      |  63 ++++---
 common/bootchooser.c                               |  13 +-
 common/bootm.c                                     |  22 ++-
 common/devboot.c                                   | 206 +++++++++++++++++++++
 common/hush.c                                      |  17 +-
 defaultenv/defaultenv-2-base/bin/devboot           |  52 +-----
 defaultenv/defaultenv-2-base/boot/devboot          |   8 -
 include/boot.h                                     |   9 +
 include/bootchooser.h                              |   2 +-
 include/bootm.h                                    |   3 +
 include/devboot.h                                  |  31 ++++
 include/shell.h                                    |   8 +
 test/py/test_boot_overrides.py                     |  92 +++++++++
 test/py/test_boot_script.py                        |  13 ++
 test/py/test_devboot.py                            | 131 +++++++++++++
 22 files changed, 691 insertions(+), 130 deletions(-)
---
base-commit: 8df700d8f4fc86df09dca13e53fb7c1d64cc9680
change-id: 20261030-devboot-af494560e196

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



