Delivery-date: Sun, 23 Aug 2026 00:36:17 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxuK0-0068BF-1q
	for lore@lore.pengutronix.de;
	Sun, 23 Aug 2026 00:36:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CA56220128F
	for <lore@pengutronix.de>; Sun, 23 Aug 2026 00:36:16 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1zkkR6vx;
	dkim=none ("invalid DKIM record") header.d=cetola.net header.s=default header.b=AiwDd01o;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c22YReZGBHzz6cU/vcDPVfyBeNb4TI9fAEHSIcKUMJA=; b=1zkkR6vxN5IDFSONpYh3D8Ab+X
	/jK8DcwFkZgc2DeauIdAd2w82d1uu8hXqSaCwFgiN0F283w8yRAgNkAldTXaoiHC7m7Df5i8fThAo
	cP+X8VAb9tK0yLqVabSkA/zuceHQmaDRkpWt2HbBT5c44FuT2v23FY+TKkFvzGoRnIsZMCHMZbk5c
	CJegVsnMX2xaMpgyoIwVHu84MmBRE6n3Y88bf2wOdaG7IKbhOR3NegGWldajDvTFu3F1lpQRsKZoS
	8pstftH8paKMs2IdGcgg8TrRWvybbYrcWY9FDwGTT4bv4idkG7tMI1tMOQVRWKckRQMb8jEhheDu3
	3WoRYXew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxuI1-0000000EqrP-23xM;
	Sat, 22 Aug 2026 22:34:13 +0000
Received: from omta36.uswest2.a.cloudfilter.net ([35.89.44.35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxuHy-0000000Eqpk-03fw
	for barebox@lists.infradead.org;
	Sat, 22 Aug 2026 22:34:12 +0000
Received: from eig-obgw-5002b.ext.cloudfilter.net ([10.0.29.226])
	by cmsmtp with ESMTPS
	id xthmwPUAeusRSxuHwwQRJ7; Sat, 22 Aug 2026 22:34:08 +0000
Received: from box2192.bluehost.com ([50.87.253.143])
	by cmsmtp with ESMTPS
	id xuHvwmQ7WkXDHxuHvw5oeM; Sat, 22 Aug 2026 22:34:07 +0000
X-Authority-Analysis: v=2.4 cv=PLwP+eqC c=1 sm=1 tr=0 ts=6a8a23df
 a=j14/dPpTP3/5aO8YB4ELDw==:117 a=j14/dPpTP3/5aO8YB4ELDw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=jNmq5YGq058A:10 a=wTo936TsAAAA:8
 a=vtBetu63MlOKlbV_NHAA:9 a=QEXdDO2ut3YA:10 a=J3I8QpufI4RFOXkfet32:22
 a=dWMlSAZEh1Dptg_Be0X5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cetola.net;
	s=default; h=To:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-Id:Date:Subject:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=c22YReZGBHzz6cU/vcDPVfyBeNb4TI9fAEHSIcKUMJA=; b=AiwDd01oxHrDopaRWwhPXKxuov
	le+IG2mwy+ktAPwFxVhb5c5+9jrSddOd/NWS+dlmG7NzHuj/5A2S7PiB6Awy2MMrEhZcZZy7retnd
	Gqm/DOFY545eZfrNm1XJqhj8oTLGLmO5ZcxvgMVyQXh1tbeITf8zVGScn9YkcDUjftm4=;
Received: from [71.238.14.13] (port=59294 helo=ishmael.local)
	by box2192.bluehost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <stephano@cetola.net>)
	id 1wxuHv-00000003pp0-0Hvu;
	Sat, 22 Aug 2026 16:34:07 -0600
From: Stephano Cetola <stephano@cetola.net>
Subject: [PATCH 0/5] usb: xhci: fix endpoint halt and stall recovery
Date: Sat, 22 Aug 2026 15:33:59 -0700
Message-Id: <20260822-send-xhci-fixes-v1-0-22e1de3be715@cetola.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMwQqDQAyE4VeRnBtwc1DpqxQPGkeNh23ZaBHEd
 3dbjx/DPwc5ksHpWRyU8DW3d8wIj4J07uIEtiGbpJSqbETYEQfeZzUebYdzP4YmiFYqNShXn4T
 /kKNXe9u3foGuvxs6zws326+7cwAAAA==
X-Change-ID: 20260822-send-xhci-fixes-bf1812c6c27e
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
X-Exim-ID: 1wxuHv-00000003pp0-0Hvu
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (ishmael.local) [71.238.14.13]:59294
X-Source-Auth: stephano@cetola.net
X-Email-Count: 7
X-Org: HG=bhshared;ORG=bluehost;
X-Source-Cap: Y2V0b2xhbmU7Y2V0b2xhbmU7Ym94MjE5Mi5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfJfWYgx52VpqACxbz+0ThmFy4BpmDMiNmbKR1xbVFx9LVnvgofppjbM4JAQMTClMTpRzf4HmWNOXfDfIf0fVVFJbo72Rmsktrwh0sIkta5Z1KbCK45YS
 MsRC7bRr31PKIGJq9VBfENTuLmNzw394ywPY4o/orXqHUSFkEt1b8aCW0vgxySEvNb5tLxwKGWUiGLw2Nbeti+/mTWGYFnKgrcw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_153410_247526_DE278579 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Recovering from a halted or stalled USB endpoint is broken
    in the XHCI driver in several independent ways. An interrupt endpoint transfer
    never gets a real chance to complete. Its own timeout always d [...] 
 
 Content analysis details:   (-1.7 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [35.89.44.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: ci43rdw9x659ym3khgxy9xw5h1mb5asz
X-Spamd-Result: default: False [-7.40 / 15.00];
	BAYES_HAM(-2.99)[99.95%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[cetola.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	R_DKIM_PERMFAIL(0.00)[cetola.net:s=default];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_PBL(0.00)[71.238.14.13:received];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_X_SOURCE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[35.89.44.35:received];
	HAS_X_ANTIABUSE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,cetola.net:~]
X-Rspamd-Queue-Id: CA56220128F

Recovering from a halted or stalled USB endpoint is broken in the
XHCI driver in several independent ways. An interrupt endpoint
transfer never gets a real chance to complete. Its own timeout
always defeats the hardware's autonomous polling before it can
succeed. When that or any other transfer times out, the resulting
cleanup can hit a BUG_ON in the wrong completion state, corrupt a
pointer used in the recovery command, or leave the endpoint looking
halted even after recovery actually succeeded.

In practice this shows up two ways. Most keypresses still get
through by racing the cleanup against the hardware's real response,
so it looks like occasional dropped keystrokes rather than a dead
keyboard. When the rarer failure paths trigger instead, the keyboard
stops responding entirely until reboot.

This series fixes each of those problems in the order they are
actually hit during recovery. Patch order matters.

reset_ep()'s timeout_ms parameter was inherited from an unrelated
feature (b310b08f087e, "usb: xhci: Honor transfer timeouts") meant
to let data polls like network RX return quickly, not to describe
how long a hardware recovery command needs. Recovery should always
run to completion regardless of the original transfer's timeout, so
this series gives it a fixed one instead.

Found and fixed during USB bring-up on the MNT Pocket Reform
(RK3588S), which appears to be the first board in this tree to
combine an XHCI controller with a polled USB keyboard. Testers on
the official RCORE RK3588 module independently report the same
symptom. USB polling errors appear on screen, and only a reboot
recovers the keyboard.

Signed-off-by: Stephano Cetola <stephano@cetola.net>
---
Stephano Cetola (5):
      usb: xhci: tolerate COMP_CTX_STATE in abort_td's final completion check
      usb: xhci: reset_ep: wait for real completion, not the caller's timeout
      usb: xhci: reset_ep: fix misaligned pointer in Set TR Dequeue Pointer
      usb: xhci: xhci_bulk_tx: re-fetch ep_ctx after resetting a halted endpoint
      usb: xhci: wait a real interval for interrupt endpoint transfers

 drivers/usb/host/xhci-ring.c | 29 +++++++++++++++++++----------
 drivers/usb/host/xhci.c      |  2 +-
 2 files changed, 20 insertions(+), 11 deletions(-)
---
base-commit: 9bc1a26592a59919d2ee8c60c273d87d3d9f2e81
change-id: 20260822-send-xhci-fixes-bf1812c6c27e



