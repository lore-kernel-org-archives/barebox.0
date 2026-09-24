Delivery-date: Thu, 24 Sep 2026 16:54:49 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9kqX-005ok7-2Z
	for lore@lore.pengutronix.de;
	Thu, 24 Sep 2026 16:54:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9ADED20026F
	for <lore@pengutronix.de>; Thu, 24 Sep 2026 16:54:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Rtic/luK";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=RQsjzVpT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790261689;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=/9rXRpcT0ir7HOuCKx6YTEtkouYzW/a3zTW4CSG7XG4=;
	b=LxFObpYbr1Z4zIE+HihEkaBbXZgRrqnisIotfvZHW9CyjBsCttEif7eNO1aQ9yD3hjO5su
	3wqMijVnsQzCNd/Ye4r6dI0bcyeiHkvo5kZ6+l9lTKGtfLVt2kX1Umex6DaIF7BJfAXI+s
	5kMuqBXWecN8XM2K8Mm69qr9PLnb6+DZFr+UwOpuxv1F+34WIdokTxgn33p8iq86SpDwpO
	z8HgPqqwviHKnM8vL9/iHDziVy2a2CYYd8u8UQ/qqBkfXNKkx+fM+2xeUEZ3NWJkCZcDBT
	2FO6iQ6pfXGfNIjhIhj8px52R653jb5S+Bf9Q5a7xwpIsFbmiVIWD9orcKj3zw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790261689; a=rsa-sha256;
	cv=pass;
	b=KftDLqKTOQXdA/Xo0swhJt3VfFzlDjcEvr2PMK4ZJIPz92Qjm1SfocrnT+jJPREieVX1dD
	GWjRtBekEtyQKo6Uj3EzqLqPwp+cW7p7rGNDAjfCXtsuO7gtq8u3pN9E948PC0GtE93GCE
	F+jat/e77P4wzgYheu3TWcc6H60qvqizXNGPCVSb57rSyPRhO6kAWJPqaxmel2wMv5+9bb
	Fha+gAd4xXy63a9Gw1QCaEHIlGKxlPhqbiqDWZWoS9YOeaAS5dt/KX7mzQUYOoi/SKy3Dx
	3hxonFYaFj4sNmvIKiG8lQ0IRDdl9gMqEeh1hCFSaAjwXt6hbDHlAwQK5E/3qQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Rtic/luK";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=RQsjzVpT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/9rXRpcT0ir7HOuCKx6YTEtkouYzW/a3zTW4CSG7XG4=; b=Rtic/luKemvgfax+i1GHaFS8Fz
	HgieQRVfhp7l1xf0XYFSftMMvxjawSr3V/Dd22kdf82P5uvmADfls7TqZCVs06dD/rMH7+4jcL2AQ
	bjoUmJuTp20tUfd9Y8/xOA+Elu9EBdzT4H6R812jdipu3HPcTlS37jFer4lH77R5ePOqUyxgI8jtZ
	RxDNZDrgukyXASZ72c/fJH2xXlfa6iDg+deQ4lsFtifsbZIkRiIg6QMhHe35dxZocFFwSkO1/35SW
	bMGIu5DOaleQ7IKKhC3yobecRGAfyLJ2meVwpgLdg/t7GzJWCcOCtmC0vlPF5mfGhl0AltdcMeVuQ
	DsLWl9qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9kpQ-0000000BJLm-39Wf;
	Thu, 24 Sep 2026 14:53:40 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9kpN-0000000BJJx-2T0R
	for barebox@lists.infradead.org;
	Thu, 24 Sep 2026 14:53:39 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6379F2010E2;
	Thu, 24 Sep 2026 16:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790261613;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/9rXRpcT0ir7HOuCKx6YTEtkouYzW/a3zTW4CSG7XG4=;
	b=RQsjzVpToAqFEzoKDyZ0bwlqf/ye/T2iKeW/7ZgKbvgqg9de/pyPEqSSTVNv+hz8AemfIp
	2TEyrF9NiXmMBndV6FJVcyVJnbA7ergqJPlRfHSjMKTb3dbaujye6t/c2DvFPhZixY+Crs
	35TXINIV/tlQUL2P4QxWWFUW1kBXqZh4VCTVpUYHs6hE+ZOYh7f+Ql0OT+vOKhh/Mnk5vm
	fno5mYckKdE7E898zDTB5+FFuBjt+gVmZ3hvX+agwbzVf+eNkZ/KIBK1QUevUw4a1YGDnK
	Jr0FRPm8Bg2OxulevX5WVLTbfjSFwwGdfCfpIJzO9gQUP5tXMekG652Tch9MXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790261613;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/9rXRpcT0ir7HOuCKx6YTEtkouYzW/a3zTW4CSG7XG4=;
	b=BS6gZrlJWrfpN2n78m2e7xib7wBoMCsOLBClsHhE2TgpMKUV71sASnnps2T04g+MxyfuAE
	1KFqv9GjUVKUbxej4OZR0TL033yGBzBseE2/HNy8TgAYPlbyBz2hh20HfGImGw1jrmRo34
	8wHzrPrMZLWOaHoX9q36T5E2DrCRQNHeXFOLIMtPuiC4QFxrenBv8zA3szOiQswsrkG2Lu
	Du5kcIRZDQxgqaXviOLHmXAaaCdS7RtVU/Tqj3+dSGfU1UfgZc9wZy40sGrecqSIA5WQC9
	kmyNXmAhpUrpnE3yCsBi69VrbBFUn0MpYzkNj85q2AoacK1izhVHdkWy9UhbrQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790261613; a=rsa-sha256;
	cv=none;
	b=M7JE5QKbc8Cv+kGkZmWuxkIx/pMW2pLzZl6NBUiCwML7Dnu/4ik1CsgbAn5Al/F+oOSe/B
	GqwGoyfeCq9WmvQI2LhWVCSO0qEfpKLSAvUmvFhd/GNeQkEj73Hoo/UzIcnjjmd+TTzSp7
	O3oV+JyCYzm3+Ohe9xykSVqqRg+Z98AJibd3G5Zs3hQBmZ755IkkNs6mzYkccuo+XlMUmt
	1kmkQmprku78SpPAG6/sy8S4cK4KAbHngM5cQZRNfhyY4u2yT/iUWZmJDCJEdvU+50sWpy
	VPM0NbMEkpgyXzGanXVMC7d4NQr5ZEQTOGSTopPo6GOQM5kKDK3INNE3yPxdLQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 3D018741AE6;
	Thu, 24 Sep 2026 16:53:33 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 2/2] Documentation: troubleshooting: add debugging via built-in init scripts
Date: Thu, 24 Sep 2026 16:53:29 +0200
Message-ID: <20260924145332.2712276-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260924145332.2712276-1-a.fatoum@pengutronix.de>
References: <20260924145332.2712276-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_075337_776700_FB7B9380 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Trick is useful on occasion and might no be immediately obvious
    to users, so mention it. Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
    --- Documentation/devel/troubleshooting.rst | 13 +++++++++++++ 1 file changed,
    13 insertions(+) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
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
X-Rspamd-Queue-Id: 9ADED20026F
X-Stat-Signature: 66srrfhawf7gxr4pzwdhe8q4fx51pn6x

Trick is useful on occasion and might no be immediately obvious to
users, so mention it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/troubleshooting.rst | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devel/troubleshooting.rst b/Documentation/devel/troubleshooting.rst
index 796f5eef4f13..aed9870d6e46 100644
--- a/Documentation/devel/troubleshooting.rst
+++ b/Documentation/devel/troubleshooting.rst
@@ -363,6 +363,19 @@ Interactive Console
   This should make it easier to debug similar issues in future should you
   run into them.
 
+- Collect some more information
+
+  Even if you can't interactively type commands into the shell to introspect
+  the system, you can add an init script into the built-in environment to
+  run some commands. To do that, just place your shell script into
+  ``defaultenv/defaultenv-2-base/init/`` and rebuild.
+  Some useful commands to run:
+  - :ref:`command_dmesg` to replay the log, potentially with different log level
+  - :ref:`command_of_dump` if device tree description may be erroneous
+  - :ref:`command_clk_dump` if serial is missing due to clock issues
+  - :ref:`command_devinfo` to list the devices barebox knows about
+  - :ref:`command_iomem` to display the I/O memory map from barebox's point of view
+
 Kernel Hang
 ===========
 
-- 
2.47.3



