Delivery-date: Wed, 26 Aug 2026 02:40:17 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wz1gd-007Fh1-2f
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 02:40:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2F894200988
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 02:40:16 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wuzgzXGW;
	dkim=none ("invalid DKIM record") header.d=cetola.net header.s=default header.b=ksG5Vuun;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=31w0wx6i3547KP/zjO/2TX0XGOhb+cbuA28laEc04II=; b=wuzgzXGWaVkKOO
	260NYg+Leio33zalJT9Fe7Wd5cNv3yB4/OYmemu7JF+Zb7gnPzLbhu1tESF1IODhK8liRqBbApl1D
	qk+p1DjReopoP035SNWbtl8TMC/lStZtcbpVOI64xObogHImCi4gGYcosFEZmZNInsn6OJz2BF2z1
	TD3Vy/aumROKGFrwj3BRR8HcGBzLRoK5FLeVenZ7G8SumD4bVaZs9QfZdm3nxp063KYnEzxDIuaff
	JYweSUmB4TlAmdtbrnQHMnx/ukT76qncXThWJBxQKjcDrXrAD7raI1J0dQO+xeI/1nkSxMhPYlDiz
	NBwHY4DAIzAK/6sUQHnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz1fN-00000001ixs-2OC2;
	Wed, 26 Aug 2026 00:38:57 +0000
Received: from omta038.useast.a.cloudfilter.net ([44.202.169.37])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz1fK-00000001ixJ-3jNJ
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 00:38:56 +0000
Received: from eig-obgw-6004b.ext.cloudfilter.net ([10.0.30.210])
	by cmsmtp with ESMTPS
	id ywY2w4YfyJFmFz1f8w7oBx; Wed, 26 Aug 2026 00:38:42 +0000
Received: from box2192.bluehost.com ([50.87.253.143])
	by cmsmtp with ESMTPS
	id z1f7wl40Nn6N5z1f7wRIl2; Wed, 26 Aug 2026 00:38:41 +0000
X-Authority-Analysis: v=2.4 cv=LJJmQIW9 c=1 sm=1 tr=0 ts=6a8e3591
 a=j14/dPpTP3/5aO8YB4ELDw==:117 a=j14/dPpTP3/5aO8YB4ELDw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=jNmq5YGq058A:10 a=wTo936TsAAAA:8
 a=9-Nt069PgkYrsK9NpUsA:9 a=QEXdDO2ut3YA:10 a=J3I8QpufI4RFOXkfet32:22
 a=dWMlSAZEh1Dptg_Be0X5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cetola.net;
	s=default; h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=31w0wx6i3547KP/zjO/2TX0XGOhb+cbuA28laEc04II=; b=ksG5Vuunoa6rehe9EHdjnXS0PH
	zFQJbHPunKCaIEDktphTh6qVwG9Wk1BONwQGfV0d5oa31QDTnKbFSzM91hsMPpEcdY3YmNxtwzrPc
	9iY7k/xaNRmUKnICtd2TBgusL6l/ocdkcaIxEdjlVNEtM9imVj8q2FForN32kl4HREho=;
Received: from [71.238.14.13] (port=60594 helo=ishmael.local)
	by box2192.bluehost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <stephano@cetola.net>)
	id 1wz1f7-00000000sdr-05Yx;
	Tue, 25 Aug 2026 18:38:41 -0600
From: Stephano Cetola <stephano@cetola.net>
Date: Tue, 25 Aug 2026 17:38:33 -0700
Subject: [PATCH] extlinux: recognize LINUX as an alias for KERNEL
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260825-send-extlinux-linux-keyword-v1-1-e2d0b9f291d4@cetola.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQrCMBBG4auUWTuQjijqVcRFTX51bEkl09ZI6
 d2NdvPg27yZDElhdKpmSpjUtI8F9aYi/2jiHayhmMTJ3h1E2BADIw+dxjHz2hafd58Ce+wEOLq
 wlZrK4ZVw0/y/ny+rbbw+4YffkpblCzyY1s5/AAAA
X-Change-ID: 20260822-send-extlinux-linux-keyword-ce52ee90d321
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.15.2
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2192.bluehost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cetola.net
X-BWhitelist: no
X-Source-IP: 71.238.14.13
X-Source-L: No
X-Exim-ID: 1wz1f7-00000000sdr-05Yx
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (ishmael.local) [71.238.14.13]:60594
X-Source-Auth: stephano@cetola.net
X-Email-Count: 3
X-Org: HG=bhshared;ORG=bluehost;
X-Source-Cap: Y2V0b2xhbmU7Y2V0b2xhbmU7Ym94MjE5Mi5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfDaUQ2zia4UPeAWuWqFz6maUBDxVchE0kujGupGmqbWPkrZcpnXBvmzV2dy1oJ6xF6pRIyZu9BjDlZ/rwzRE+dpw5sW1/EIGlxGGpbvnv+QNdBgMlssm
 Huz3+2HeDG63LkV8IvJpOr7hVO7C6vo0//YNce867j2cMAZ9a8WN+KPAk27Kp0/JTK040rCg2Xsc7zkbR8P3psPJhz2q6AZrGmw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_173855_085434_1122961A 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Syslinux configs commonly use LINUX instead of KERNEL to name
    the kernel image. parse_extlinux_conf() only checked for KERNEL, so a LABEL
    block using LINUX left entry->kernel unset. parse_extlinux_con [...] 
 
 Content analysis details:   (-1.7 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [44.202.169.37 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[cetola.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	R_DKIM_PERMFAIL(0.00)[cetola.net:s=default];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_PBL(0.00)[71.238.14.13:received];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_X_SOURCE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,cetola.net:~]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: gscqkghw6ync58wf9ksw7sii618go7kb
X-Rspamd-Queue-Id: 2F894200988

Syslinux configs commonly use LINUX instead of KERNEL to name the
kernel image. parse_extlinux_conf() only checked for KERNEL, so a
LABEL block using LINUX left entry->kernel unset. parse_extlinux_conf()
requires a kernel path to accept an entry, so the whole extlinux.conf
was rejected instead of just the one line being ignored.

Fixes: b912fa9fc3ca ("Add support for extlinux.conf")
Signed-off-by: Stephano Cetola <stephano@cetola.net>
---
 common/extlinux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/extlinux.c b/common/extlinux.c
index caa62923da..92c49ebbce 100644
--- a/common/extlinux.c
+++ b/common/extlinux.c
@@ -132,7 +132,7 @@ static struct extlinux_entry *parse_extlinux_conf(const char *abspath,
 		}
 
 		if (entry) {
-			if (!strcasecmp(key, "KERNEL"))
+			if (!strcasecmp(key, "KERNEL") || !strcasecmp(key, "LINUX"))
 				entry->kernel = xstrdup(val);
 			else if (!strcasecmp(key, "INITRD"))
 				entry->initrd = xstrdup(val);

---
base-commit: 9bc1a26592a59919d2ee8c60c273d87d3d9f2e81
change-id: 20260822-send-extlinux-linux-keyword-ce52ee90d321



