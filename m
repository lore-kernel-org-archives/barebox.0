Delivery-date: Fri, 16 Oct 2026 09:38:26 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHcWI-00EGc2-24
	for lore@lore.pengutronix.de;
	Fri, 16 Oct 2026 09:38:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E6D31201F04
	for <lore@pengutronix.de>; Fri, 16 Oct 2026 09:38:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=cCxO301C;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="Ps/smuHZ";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=R4Zboo3p;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792136306; a=rsa-sha256;
	cv=fail;
	b=IMbCgTkdq7MesSqTaqDX9ezlJDfTxlI2T9Uw2bdsaByi6K3IVqgSYiuAzPjB2FFsdoEhou
	yrSOhlHU4ypsZz+zuVOzdO+cuZ/eP503CnH26qXGBg2DRPsjwYuvdRf0tWfjneajXBgTH1
	nh0oC8QgetSPgfxYaWRj99CXZHu71NRnsTK9VJ9LmDXUa0Nlhi9SgiQ4ILjteTqr7a51La
	Y+QF7NOpDdt/nsWzi+Fxnee9RjZt9ZJLoxVIRYK/snZOXRXZwDc/6nLWgEVOGQr9+OQMNr
	KCjKXj5ls9XaqR8pkihScMB2QH//p33N8/eno1/rYAD2ocL0EIY2BO7uZXWHHg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=cCxO301C;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="Ps/smuHZ";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=R4Zboo3p;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792136306;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=vYYIvdAtE6OZOvxcJDPZ9D9aIluSwQN28PRFWDBx2SE=;
	b=TYz7SJqfbqPGuyQN4LsnA/p1/UL9UXxL+4wfbrWy3Qw5AfdgvK97s8tuwB3IILxWivDGMJ
	6RQj2noAvuAgxsGGhdWjqdZTwdLI1V9NxdYdfe7IvUta0cb54Nd+XK9luIsBdlIjl2kBhB
	edwoMkeH9zIBfuBbHoJ3v/6IaINarQ4r3AOXhgjckyRa233T2Yb3vBP412hV90n+U5FEFB
	L0S8EAQ5Xx4/8NawJtmOm0Zow/ffQaA9Kd5mqRYnljgJ4VB7Ng3VTUjSpk47kQjzqW+5rC
	5L/7p/cfFZ7WiI4Lt7q4sUOFDQlC+wxhyUcHG6uS8uBzSv5cFs7E/8OTVwSX5g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vYYIvdAtE6OZOvxcJDPZ9D9aIluSwQN28PRFWDBx2SE=; b=cCxO301CH0qvg06cA9Ki6aJnmk
	2TRCLteUpVQYHNhdgJITgpYyJaKYgVjBO7m7FeNUlxxbCP+Er5Zs0nHiIHnBl73ThMxJhdlW6gsMy
	ITEMzM1xXS4AdA2yJ5YkM+j3aSP4g8KQ+DL1IpVUO3uzMH9eZ5Kug26iydYLZDx5jhvFl5VQKto3E
	jBcFOQzibKxwJi74KDbKuTyZIrwUvUjvUQ1lNxnfeuCgvG8H5yd5MWtEBURHTPmzR/7nwGDRAu2qU
	jDLIqvkpyubd1Knl+ykiRpneuHGttoLAp0buf7j8jo34r8uX34KXJpW7DHpZ9O3MdH7uClmmvUDfB
	J1GYrU9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHcUy-00000002F2o-2vvm;
	Fri, 16 Oct 2026 07:37:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHcUy-00000002F2C-058O
	for barebox@bombadil.infradead.org;
	Fri, 16 Oct 2026 07:37:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=vYYIvdAtE6OZOvxcJDPZ9D9aIluSwQN28PRFWDBx2SE=; b=Ps/smuHZnbA28L+PXee566GbMx
	aOmeXL350943roJrKZCTcYOK8LzNPzycJb69kP6zVMXuvL4HOzJ9/HoAqjUMzJrkWnHMuqPWRPWWR
	p0+ArtPaeghFOvcKi5fvGtlNGWbw69XrPiGjKdX6+dTZBPXZFm3CqZP4+Xnr6QylneCnzDs+g4MYm
	cWDdlmB/G7lePAZHJPbUu68O/Mq8Zve3lxdHspq9t4UTrrWXRuM1WvbElJNy5Sl8KdagxmJxyOfsc
	OOKRrYE8PlT3GYl+9l9rm1jJm1ivIr8TTHZGn0kO5guy6GORqclXT/aSr329dklRhVV5c/dBnwOrT
	5fjUwa5g==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHcUs-00000001DpZ-1NtS
	for barebox@lists.infradead.org;
	Fri, 16 Oct 2026 07:37:02 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E81DA201765;
	Fri, 16 Oct 2026 09:36:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792136215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vYYIvdAtE6OZOvxcJDPZ9D9aIluSwQN28PRFWDBx2SE=;
	b=R4Zboo3pwRBrfheryGGsxpW2ip4t9E6FNDDgkjyWC5Rxyfi/YvrhIK4tTbowH17RcfRSsu
	l8KCVTIJfSy6up/l6phqD1ZXZ98bPy6jGRFB2qgYbM8NAxB2DDkLLCODvjeCg/Dd8+xP62
	R/W9hh2K/5qBTRgH5C40OIClr7VD6gbGtt7FQWotn/tp1dACRrBf7w7mFwHZu3lqZfkXV+
	MZ6nvUFXPyt+gesmdt+tSrWeC3K0M4+moeTkcfzRFmm4SKkcQcwZ2Zji4785s/pIYwxfNX
	o17Tfz4RbL8VZTyhJNw0t32Chfy6sK0SvNySojkongOftBIcWFzRKgZBSmuNMQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792136215; a=rsa-sha256;
	cv=none;
	b=ITFguGv9rIfljoADXDOagAg3RFCQLbpa2FVN2fhL9ARK9ON1lZ7hYbtz8MJ87BwvdQI6/d
	RCNy+A6syxLgujNvW9O14kYTfK3QA9hrOZpv2hIDbhcBG46dA2Scr5fwD86KKOYglGikJd
	jzmuT26WZPK+P0gJcw/WDv7dHNxz61kpgQZjk1FV+nsqIBGiIfbmxUmWYoQ44x4xXxjwGg
	yJbmTn/+aC6oAhM1uk6dNgNZWo8PCqmbVtp1Rz+IkDgDJuRsbAtVNbg6wFDtK8u+kSNEL1
	guxH5EWD4AIYj/Tjak1HPUf/m4Qm1Ofh/43vaiTmw6DLcAVmHPok2YkSAl8rRA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792136215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vYYIvdAtE6OZOvxcJDPZ9D9aIluSwQN28PRFWDBx2SE=;
	b=CgneTR5lC23aE7+qW3/ntR7e7dOPko7z6CAUztzjgqqUP8znQm/yA6SLTSl2Ix3nhw2afQ
	JE4XHqPMec2vCiXvSiI5gC9V+OtMubTjA+bhmxhto0KALWpCcLp/B0lG7V1/cBt8N/vT2O
	CEIy6TuMCIeyNlf0PwpWXAG4XW++SRpEtE8zEdVMkihPtSNz+uVRJOwaUGXju3W9Y6OcbV
	ooJlK9vYzbOZbSx09kOaPEIB+xm5P3sYMXpXZJHJ6RPH5qrubVSXnjwz/iZkr2GjVmjXdy
	c76B4rVHwMaD9xn19LZc4q8by6byMOQSICOyZNh2QkYwhgCgf+9HaH/SL5njCw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/3] dma: make dma_alloc() and dma_zalloc() fallible
Date: Fri, 16 Oct 2026 09:36:52 +0200
Message-Id: <20261016-dma-alloc-v1-0-31fc7afe3954@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABTU0WoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzNDA0Mz3ZTcRN3EnJz8ZN0Uc0tTY6Nk42QDSzMloPqCotS0zAqwWdGxtbU
 AuFPOHVsAAAA=
X-Change-ID: 20261016-dma-alloc-d79532c3c096
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792136215; l=2372;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=H9LxX6RwTBVlIKkmjhfCUVg2FyPf+Sd8PfpN/vfAzrE=;
 b=n5qnU7dMEzB3i25RL6QvAgjXAisawxXTHysBepu98jVfc3swzlZtx4cM767wELqleXEYr54ag
 cO8TQDwaZx3Ch/UiQQMH0slC9b+q+UZzI1c9VLolyeYEehwK8bvnhud
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_083659_195372_A266133B 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  dma_alloc() and dma_zalloc() are implemented with xmemalign()
    and never return NULL. That's unlike malloc() and calloc(), and many callers
    check for NULL anyway, so they never get to handle an allocat [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
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
X-Spamd-Result: default: False [-56.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,pengutronix.de:s=20260414];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E6D31201F04
X-Stat-Signature: ix3oq8eagcogugkphmu371qttuaoiw4f

dma_alloc() and dma_zalloc() are implemented with xmemalign() and never
return NULL. That's unlike malloc() and calloc(), and many callers check
for NULL anyway, so they never get to handle an allocation failure.

This series adds dma_xalloc() and dma_xzalloc() for callers that rely on
the allocation to always succeed, switches all callers that don't check
the result over to them, and finally lets dma_alloc() return NULL on
allocation failure.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      dma: add dma_xalloc() and dma_xzalloc()
      treewide: use dma_xalloc()/dma_xzalloc() where the result isn't checked
      dma: let dma_alloc() and dma_zalloc() fail

 commands/mmc_extcsd.c                  |  2 +-
 common/block.c                         |  2 +-
 drivers/ata/disk_ata_drive.c           |  2 +-
 drivers/dma/map.c                      | 19 ++++++++++++++++++-
 drivers/input/usb_kbd.c                |  2 +-
 drivers/mci/mci-core.c                 | 10 +++++-----
 drivers/net/bcmgenet.c                 |  2 +-
 drivers/net/designware.c               |  4 ++--
 drivers/net/dsa.c                      |  6 +++---
 drivers/net/e1000/main.c               |  2 +-
 drivers/net/fsl-fman.c                 |  2 +-
 drivers/net/fsl_enetc.c                |  2 +-
 drivers/net/macb.c                     |  2 +-
 drivers/net/orion-gbe.c                |  2 +-
 drivers/net/r8169_main.c               |  4 ++--
 drivers/net/usb/smsc95xx.c             |  2 +-
 drivers/usb/core/usb.c                 |  8 ++++----
 drivers/usb/gadget/function/dfu.c      |  2 +-
 drivers/usb/gadget/function/u_serial.c |  2 +-
 drivers/usb/gadget/udc/fsl_udc.c       |  2 +-
 drivers/usb/storage/transport.c        |  6 +++---
 drivers/usb/storage/usb.c              |  8 ++++----
 drivers/video/mipi_dbi.c               |  4 ++--
 drivers/video/ramfb.c                  |  2 +-
 fs/ext4/ext_barebox.c                  |  4 ++--
 include/dma.h                          | 12 ++++++++++++
 include/linux/slab.h                   |  6 +++---
 include/net.h                          |  2 +-
 28 files changed, 76 insertions(+), 47 deletions(-)
---
base-commit: 7a1f6c08dc94cc8b6a2388d760e9ef793bf64e5b
change-id: 20261016-dma-alloc-d79532c3c096

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



