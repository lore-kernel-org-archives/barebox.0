Delivery-date: Fri, 13 Nov 2026 13:27:00 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRqMu-00APyI-1M
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 13:27:00 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A467D201AC8
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 13:27:00 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="zZ5/JAcg";
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b="ZVSgC5P/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794572820;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=6MpMYrSJwqYIA6LcG3o3XiU26OlF6yReKF6ZktM0kAo=;
	b=VxtWZiRaQhGRrwYpDqiPsBZaNtade+k6s3ik6jsv4Wv36k1j3VD0kgMZM2BjFuFvh6LFOF
	SQQJhOVEAUHhrXAQjy057Qw+XVOEqbrVOiX3t7P0oRuZUlu4Grid6qDjsQ2iboRMililT7
	r+2gemZxiz/55ZR5VPorPvTTVotbLVd80AOq9LPG86pRr3lbKG9QQcRBnlm4HhY7GzPEGB
	ytkBHaXmZhCGmNuxb7/F9mohrS+BhCaMWiFqfQvYR9wGeif+hsuHi3N/iEGYy1G0AFSorf
	YXorvMzD+DicdcVRf9zbnnpP+wGBBJmTEqRIXvN6NegvedQzJjc3dvIOwqXdrw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794572820; a=rsa-sha256;
	cv=none;
	b=ZluoSfLFeahGRvwxifVoVRJ1bMX89f9CdKyydAfI0xlX2HZhJKlJcCSkqmNpoJR6HfeiKX
	bHU4jjYWhn3DwnUwNZhJTBbn1C4C1I4gzidYsIH9Whft1woWQt3umB6YXAxmtYq945b7zn
	g6fm+ZPY+EuUBkKhGEoWwPCHBYiVJ9WDYh+WOI8fHrRw9BVwW5NX5l8G6HQGalrGTaHIP8
	qxbEMG5UPQOwyOm/hZjxulzgUSUPOEIikMksK5YtMR6Sm8FaoOh/B6upBxcIHfy/q40yNg
	ONZ+fmwl6NIoSB6PebfkgvNqVDV6hrUOv4dXKszn1WMZZqq0MMwN3LTaKWFCuw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="zZ5/JAcg";
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b="ZVSgC5P/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=6MpMYrSJwqYIA6LcG3o3XiU26OlF6yReKF6ZktM0kAo=; b=zZ5/JAcg1pq0Hrpzj7Kr9k+yJV
	scI2bxmoFaEkdrt5gC///aonwyUszmHhzN+KgqAHdjG9Fer/wwM2N/pDxu8viJ3JJDn0e5kcueRYg
	zzJWh6GoQRvjmONTviL3fVu0+H0DB97KoKI2wWlSfsYHY2XvmHRQGYP5h9+TeYL3LkI4Rlxd9K3Nl
	6SUinkjUhvRSzz2ktZNGBg36SXsBbJ/T05Vbagcwo5SVf2mwlKMX2nYHxowAxObAEAUaf0JHkv1sj
	aexClZU3j3+TDcW/IkIyy7vmL6VE79VOwrpGB1iRQ664q4Qw4Pblwbj5ooNwrRS8JR1gl3bze33sA
	Gl2J0Ozw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRqJY-0000000Cit3-3uA0;
	Fri, 13 Nov 2026 12:23:32 +0000
Received: from cp2.siel.si ([46.19.12.180])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRqJW-0000000CihU-1YVO
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 12:23:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
	Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Unsubscribe-Post:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6MpMYrSJwqYIA6LcG3o3XiU26OlF6yReKF6ZktM0kAo=; b=ZVSgC5P/Ytuv6YLKvnrRZn7hU5
	s4safr5J0CSbCeSZqHmupF0SWNOfhv24nz+wwwNAWbqbjGK+fVVbxAu5kqKhbw064p+u1NbTw96Tl
	oHOvGRa5Nl9F05Yv7Sm3bbk0nEK4k7RlZMorXULiAVablSvng8JjXja5MG/3nK8yuctOgLh07gOlL
	Q0zO4qjw7LSXX/1Sqq8hj4Uk/F7bfipwOHwkplYpvOoOBwQbmjDeZ+xBmlR40XjsQYIzdYrlfXr4F
	rmfp0XsZtFQhRUwpsefY4gcWeu8Aedw5K/vBKLA1Mw0gCJYF8Dgck4iZYVDtIgAdw//MxqcBTNiBj
	KPvibRhA==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:58694 helo=localhost.localdomain)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.100.1)
	(envelope-from <primoz.fiser@norik.com>)
	id 1xRpsj-00000004eab-2TDf;
	Fri, 13 Nov 2026 12:55:49 +0100
From: Primoz Fiser <primoz.fiser@norik.com>
To: barebox@lists.infradead.org
Subject: [PATCH 0/1] of_property: resolve phandles against the booted device tree
Date: Fri, 13 Nov 2026 12:55:47 +0100
Message-Id: <20261113115548.2224914-1-primoz.fiser@norik.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp2.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cp2.siel.si: authenticated_id: primoz.fiser@norik.com
X-Authenticated-Sender: cp2.siel.si: primoz.fiser@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_042330_892667_9505F6A2 
X-CRM114-Status: UNSURE (   4.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, I ran into this on a phyBOARD-Mira (i.MX6) secure boot
    setup. Two board expansions configure a UART pin group via a fixup along
   these lines: of_property -s -f -e $global.bootm.oftree /soc/.../serial@21ec000
    \ pinctrl-0 </soc/.../pinctrl@20e0000/uart3grp> 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[norik.com];
	HAS_X_AS(0.00)[primoz.fiser@norik.com];
	HAS_X_GMSV(0.00)[primoz.fiser@norik.com];
	DKIM_MIXED(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	MIME_TRACE(0.00)[0:+];
	DNSWL_BLOCKED(0.00)[89.212.21.243:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,norik.com:-];
	FROM_NEQ_ENVFROM(0.00)[primoz.fiser@norik.com,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[norik.com:s=default];
	HAS_X_SOURCE(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A467D201AC8
X-Stat-Signature: kpewshuwnf74c8odafhodjch9irc5uqe
X-Rspamd-Action: no action

Hi,

I ran into this on a phyBOARD-Mira (i.MX6) secure boot setup. Two board
expansions configure a UART pin group via a fixup along these lines:

  of_property -s -f -e $global.bootm.oftree /soc/.../serial@21ec000 \
      pinctrl-0 </soc/.../pinctrl@20e0000/uart3grp>

The node path is resolved to a phandle immediately, against the
external dtb named by -e. With secure boot the kernel device tree is
part of the FIT image, so that file never exists on disk: of_property
fails, the fixup is never registered, and the UART keeps its default
pin group, which conflicts with other pins on the board (user LEDs,
in this case).

The patch defers phandle resolution to the point the fixup is applied,
against the tree that is actually being booted, so -e is no longer
needed for this and is now ignored (rather than required) when
combined with -f. Existing scripts that still pass -e keep working.

With this applied, setups like the one above can drop the
-e $global.bootm.oftree workaround entirely.

Primoz Fiser (1):
  commands: of_property: resolve phandles of fixups in the booted tree

 commands/of_property.c | 75 ++++++++++++++++++++++++++++--------------
 1 file changed, 51 insertions(+), 24 deletions(-)

-- 
2.34.1



