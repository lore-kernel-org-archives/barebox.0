Delivery-date: Fri, 30 Oct 2026 08:17:45 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMgrw-0053hJ-1A
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 08:17:45 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 30A1E202961
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 08:17:44 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yYzCYO5U;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=ZZhkdHz8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793344664;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=8H/qH3HwnwI9Y0KAHwy5T0qBA9bj/jH6KRQ4WIdneFc=;
	b=AV6Sc7EP3JslFqGsfO8AHRa8piHb94XTybza4glteExpCWVQyb3N4KbgTok43BqLPpLTM6
	6qsoS6+QyuDyGzvvm8/B+meGvDBjXRtazmhXlov5WLrYzj4Xvq50X23uANfqCcf+EI5G1V
	dLx9FLVIzDOpW5qCDsmNjaYChSHb9BehjMBBo2NJdh4paCcZz3Qf3oB6T0IxGHDPlgRATM
	sEs0gTc0ZzXGVmN4h41OelnKQ7KKIYJXHp+a/0Y/StZFxVP2EcHmohfJX6jrcrJI/tM1fW
	MxOJ3NGe/CL5iqib3PMjNLuK2SdydYNOr3zxZt8zAbb86y6Dq/xoeYNyMwEyRw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yYzCYO5U;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=ZZhkdHz8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793344664; a=rsa-sha256;
	cv=fail;
	b=aAZhvk7mxTZxRUMtOYzGcID+Hm3RzNJ824jsYEHG4T3jVA24pf20w6RhVht1jOAJ7+n4F3
	kD+FJcTD2BukOIeUASyTKgRoEkP8Fdihck8AEXbtNIyaaM8h7V2pePqhdeCG0p8doYGLSW
	dHf9/yK8OMsXLPplKQPmH8cOkAwcNr7ekv5s3JTpjLuMf82y6QnJM6DNypErG9e4C5Id7Y
	o7tlzjWTwsWVT00Wddyz+lB2w9Ldg5lOgbFZoftdt/50cTBRznd8btFAM6tp+YH5xGc0YO
	F3/+i9pthEQPnqhRDOB08fnjbS6Yf9Hyq43YpdMecvrndEZXdPe4PwjEX4SqVw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=8H/qH3HwnwI9Y0KAHwy5T0qBA9bj/jH6KRQ4WIdneFc=; b=yYzCYO5U2Uygbni8JQHvlb43Jy
	r39eZ77pn1IPOxTkGVJUHDavdvIjo2+dliJQnGDXWV5mY6/cN+1mp5qEBvHL6k8ioP9aqbwZTmSd5
	OsOPPW98DdLP7fHLop1OgzHkSo2Dy9Tjl2rJtSGxX6mqGMorwvgzRsqMGE2mDFp+oq/Xn0ryqXsEa
	hqpD6Ffg+azRjGnYpCwXYpOz4Shrn2j47IiHBnRoArt0S6w3ENj4gaw920m/LJY70XQdds4H1X/rD
	UrqYEZ+Mwvhlq2DLjYr9AyAqIKmHMsFR+wmomIHRfkMnqd9MfZaz2iSPNG/HnoN5UwRDrEAhU6QWR
	Odvu2eqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMgql-0000000Az05-41Fc;
	Fri, 30 Oct 2026 07:16:31 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMgqi-0000000Ayz9-2wtr
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 07:16:30 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2CA62202095;
	Fri, 30 Oct 2026 08:16:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793344584;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8H/qH3HwnwI9Y0KAHwy5T0qBA9bj/jH6KRQ4WIdneFc=;
	b=ZZhkdHz8tEznOmJu0VC06cy/C/np4cNwFrNfigkjqBb/Q/rdlEOmrKvm4FbnzJYknef5y1
	HL4D4LSCOJ98y8tGSgwzEfueopSdDANttER/UUAjNLijNA5oqQgi4n9A0QggNGxE2IU27w
	PMADMHdlITWGUtgvUjV3ov5NjPdrafAAL8ifkeAoQU88jxn7WCLJqYA+O8g8A08GTHoTS/
	FZjWpto03d03RSWjTMwV8ilVA63cPP4TTiyw/8MriCGg0q7gRefVNSiL9R6AvSdfMGTEvw
	mSMIBLADwchL1C4aBtJ7N2gyqnL00WJ8rQW+OLdajsV8yfglwx64GJNtrbAeLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793344584;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8H/qH3HwnwI9Y0KAHwy5T0qBA9bj/jH6KRQ4WIdneFc=;
	b=Sh5klYZ3CldWLS/SoKoTuZsM/8OdnMEmchkLPPu0Cn0+pi5XZxdbx80DBLiB07SDq6zPST
	6rju2jY5CFV5f0irIthWAwrKSGihKKCU9GxDa+PlLRXac3rCKPh22AZHrYpne3SadJnB9f
	1H3rSJEXw8TPMvF9EeR/NcMluIkq2eVcZlKbjRefN5RBC/VMxvefvHQyCpyOLiX99SOi73
	KDyf/C14cWFiwgXMFlNKZWY5cfahn/0whH8ZfYLQNDVhYbYFT4eLiJIpumjOU34M4MEW7z
	OWOkRBRnzPAtVXGs3SoclaiGqfri2H3b/fr1sG70IVyEHriwF3rDRtB0KYKgHg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793344584; a=rsa-sha256;
	cv=none;
	b=bvi71Bs68Gm/gouQb2OrwbmLVM0vpbXg4FxVh+/udYim2PiPFfmZZx7fdr+22/YIiZjENR
	vPvvXy1I9z0WuSmFPYXTDEDAcEZwz9buTzm0vQDY5E+YXx4wWv63ipBqBLabxzv4c1Rde6
	6disdUTosHVJoxsxcC+OTLzY3WFmNFyU+kyn2RbsHkPXVErv0X1uPwvkXwws3D1kZr+hGk
	3kDtcdmsHL2c1Io8C3DcgvXJ3iFqIqXfxmIr+pbhnMZNdA+jMZCn2HfgzeALt6Iiqn+xNY
	2BE+cVET07o0zBFGehwR5bYvEQiGZi+QyBp6uaBrwy5UdpkbPcHbHweBqDTntQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/2] Add and use file_exists() helper
Date: Fri, 30 Oct 2026 08:16:20 +0100
Message-Id: <20261030-file-exists-v1-0-34035d7392e5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAERE5GoC/x3MQQqAIBBA0avIrBPUQqirRIvImRoICydCEO+et
 HyL/wsIJkaBSRVI+LLwFRtsp2A71rij5tAMzjhvTW808YkaM8sjekDnKZAnGj204k5InP/bvNT
 6AeH7GtRdAAAA
X-Change-ID: 20261030-file-exists-4e26fdf6ff96
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793344584; l=1830;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=KuNZXl5WxLnRsu1e8LUfIErfyAtjXw3X0RA8UGK3UME=;
 b=SxJ6p+VAdTOuWj10QGEiwcKUnahNOoMjStCwM291xRamVT29P2ba78b0Z7zSyrtv9YLn3K2Q/
 juBUvi7yJ6WDjDWOH7p8EKWbLXkcBu78XOATG8sCTcDwNm6UK5sKaxK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_001628_899497_989F6005 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Many places use stat() only to test for existence of a file
    without being interested in the struct stat returned. Add a convenience helper
    for that and convert users throughout the tree. Signed-off-by: Sascha Hauer
    <s.hauer@pengutronix.de> --- Sascha Hauer (2): libfile: add file_exists()
    helper treewise: use file_exists() 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Stat-Signature: tnk1h7a41g45r1nh8f4ux4ssacajxstb
X-Rspamd-Queue-Id: 30A1E202961

Many places use stat() only to test for existence of a file without being
interested in the struct stat returned. Add a convenience helper for that
and convert users throughout the tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      libfile: add file_exists() helper
      treewise: use file_exists()

 arch/arm/boards/raspberry-pi/rpi-common.c |  7 ++-----
 arch/arm/mach-k3/r5.c                     |  4 +---
 commands/bfetch.c                         |  6 +++---
 commands/cp.c                             |  7 ++-----
 commands/edit.c                           |  3 +--
 commands/fiptool.c                        |  7 -------
 commands/readlink.c                       |  4 ++--
 common/bbu.c                              |  3 +--
 common/blspec.c                           |  4 +---
 common/boot.c                             |  3 +--
 common/complete.c                         |  5 ++---
 common/environment.c                      |  5 +----
 common/file-list.c                        |  4 ++--
 common/firmware.c                         |  8 +++-----
 common/menutree.c                         |  3 +--
 common/startup.c                          | 21 +++++++-------------
 drivers/usb/gadget/function/dfu.c         |  4 +---
 include/libfile.h                         | 13 ++++++++++++
 lib/glob.c                                |  5 ++---
 lib/libbb.c                               |  4 ++--
 lib/libfile.c                             | 33 +++++++++++++++++++++++++++----
 net/ifup.c                                | 13 ++++--------
 22 files changed, 81 insertions(+), 85 deletions(-)
---
base-commit: df53c88dfd4ad18837d25b5b07555fa65873cba8
change-id: 20261030-file-exists-4e26fdf6ff96

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



