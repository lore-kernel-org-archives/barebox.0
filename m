Delivery-date: Sat, 14 Nov 2026 17:23:37 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xSGXQ-00AplK-2k
	for lore@lore.pengutronix.de;
	Sat, 14 Nov 2026 17:23:37 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CEA6D2020B9
	for <lore@pengutronix.de>; Sat, 14 Nov 2026 17:23:36 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WKHV6cIg;
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=TMlKa+FL;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794673416;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ubfWuLF0F/S6eWQuJ+pDCy4SqtQCHPWv3nDcrcm8MJM=;
	b=KRkYuqfUfdGLvIy5qwK4BgChKGV1+va4zA8XP72tqEURNid8qHUKl86DMFvhgKCpxYT4al
	xfxsBDwOBVX4E13GSvlKPhKc0WsgDRLrL1gjbM9e5nXrtIL+bSW/dxMubSdH0T9i7ovg14
	9BPKj0NWFA7T0nAkEo0bZTF+PnUdeVEdOYwjZM8zeOW3ZywdmZsjGsqrJg7bc5BvKfxQ/5
	fXJGZiwG07PFaDHuqJBhnBhNCPkBOIWc4P2Rfykw6a9RkX+iy+Qub7bVgpyQfyK5GtmG0g
	pbMzRMviI9zBZ61b5dBuXGVlozso4FjLvTWX4nQEVl/+YjOHN4alSozaKaMJ8w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794673416; a=rsa-sha256;
	cv=none;
	b=C3vgi92+hy2YSCi/Agw+UpOqZ+jBG0ZcEKslM9BnhCQxUlXmEx7Ky2U9rpsWTAboZHdB1F
	hsx8FMijhcyu5lfWAlRUvIau0lPw8apAtpM/rsaVSnJIJPv8ENWPCL4XoG/zEBi+8jAbt6
	KYW5XBTLAIpusfFy8rNL9lmXHqYI1OA7sBy3pGzA6WzueRHhCHXVx6vX8efoZmoZqfzeUy
	UqNJX660D3XuVQxhcd+oh1H4irl75M7x1wD4mb964GWu4Hw3N5Jg1ZlbVlWEY5PzvQqOAn
	A/r7I98h98KgIa9pRhc+UnS8NYPlT4b70ociUoaawB1qMWNHOaQYKMKYar+6Kw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WKHV6cIg;
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=TMlKa+FL;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=ubfWuLF0F/S6eWQuJ+pDCy4SqtQCHPWv3nDcrcm8MJM=; b=WKHV6cIgdIaE3w0m918aqu51gq
	yYGP2tw7b3epzRqlyMriA9XLFIofco8f60PF75ds4mHU1FmH4wmXoxA8S+e9UpG6aXtF+58CRWvgm
	A9PPE1pG9u6i3DnubeV7M9xb964q3RQEs8YYu2oVQk3JitsuE/rRzgR4s7UVJ+vj0cYgCzCxUyriE
	W2oPZnIkulC0MA5xtxJeJw/jkan682URRaCGiz4eHcaxt5t/LxCN3HE9yeum61Ax5K+cqgYV5SvnF
	yQE6QvsoifOKv2qEGFlC2GKsyWDFqnwcVrJly4x/JY08myWhTnjNKKz341nkNSSNp1lQhHrb+4D+i
	Ek73gsCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSGUF-0000000GRpN-16ii;
	Sat, 14 Nov 2026 16:20:19 +0000
Received: from www153.your-server.de ([213.133.104.153])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSGUA-0000000GRoc-0pGR
	for barebox@lists.infradead.org;
	Sat, 14 Nov 2026 16:20:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=amelchem.com; s=default2004; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=ubfWuLF0F/S6eWQuJ+pDCy4SqtQCHPWv3nDcrcm8MJM=; b=TMlKa+FL0jVnVuE9o6FxpL90UK
	6YmMK+KRriF8EBeCzXVNommt/e1eY3QLyEuMNiaep0C4doueFM1O4Id0FpB/y3Nc97XFnOIxMZIJc
	dgaXM/vG9bfqqMxgbC/KM5rwhLPsr+m5fmeW48MhJi0T5l9ziYbK/OpI46LB5lcSfJdYvJAkI/fzi
	hQi6xPGcGdeOy7g16UjgC+5Zh3xhQQ940ZDMmNHRRTv0oO2xBO6rD+l8QqqSAcoZbWOIrU26STlhj
	Ss//UG0EDYvOSYESWvTh7TWo7DE5MgregZm6jgcuPBwvUDBf2oFqGBSvVcgoFfdcw7xzMNFhWYeFx
	LO1CMfeg==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www153.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <rossi@amelchem.com>)
	id 1xSGU1-0009lM-3A;
	Sat, 14 Nov 2026 17:20:06 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rossi@amelchem.com>)
	id 1xSGU1-000MCb-2I;
	Sat, 14 Nov 2026 17:20:05 +0100
From: Giandomenico Rossi <rossi@amelchem.com>
To: barebox@lists.infradead.org
Cc: Giandomenico Rossi <rossi@amelchem.com>
Subject: [PATCH 0/4] usb: typec: add STUSB4500 USB-C PD sink support
Date: Sat, 14 Nov 2026 17:19:49 +0100
Message-Id: <20261114161953.1457428-1-rossi@amelchem.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.6/28183/Sat Nov 14 07:24:17 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_082014_610971_83EFA39E 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello, this series adds support for the STMicroelectronics
    STUSB4500 autonomous USB-C Power Delivery sink controller. The STUSB4500
   negotiates a PD contract in hardware from a set of sink PDOs configured via
    the Device Tree, without host firmware involvement after probe. The series
    adds: 
 
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
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: amelchem.com]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-5.81 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[amelchem.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DNSWL_BLOCKED(0.00)[78.47.199.104:received];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[amelchem.com:s=default2004];
	DKIM_TRACE(0.00)[lists.infradead.org:+,amelchem.com:-];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[rossi@amelchem.com,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: CEA6D2020B9
X-Rspamd-Server: mx1
X-Stat-Signature: dstr3j87kuri6yt8k9i9ubz3mtw41xn6

Hello,
this series adds support for the STMicroelectronics STUSB4500
autonomous USB-C Power Delivery sink controller.

The STUSB4500 negotiates a PD contract in hardware from a set of
sink PDOs configured via the Device Tree, without host firmware
involvement after probe. The series adds:

 - a small addition to the typec core (typec_port_from_device())
   needed to look up a registered port from its struct device
 - the driver itself: configuring sink PDOs from the "connector"
   sub-node and exposing voltage/current as read-only parameters
 - the Device Tree binding for the controller
 - an optional shell command ('stusb4500') for bring-up: dumping
   sink/source PDOs, editing sink PDOs, forcing renegotiation and
   reading back the negotiated contract

Tested on an STM32MP151A-based board against multiple USB-C PD
chargers: an XP Power PGD100PS20C2-8, a Lenovo ADLX65YLC3D (65W)
and an EDACPOWER EUM110A2A, verifying contract negotiation,
PDO updates and renegotiation.

This series has been reviewed internally by Nicola Fontana.


Giandomenico Rossi (4):
  usb: typec: add typec_port_from_device()
  usb: typec: stusb4500: add USB PD fixed supply driver
  dt-bindings: usb: add STUSB4500 USB PD sink controller binding
  commands: stusb4500: add USB-C PD control command

 .../bindings/misc/st,stusb4500.yaml           |  102 ++
 commands/Kconfig                              |   23 +
 commands/Makefile                             |    1 +
 commands/stusb4500.c                          |  274 +++++
 drivers/usb/typec/Kconfig                     |   11 +
 drivers/usb/typec/Makefile                    |    1 +
 drivers/usb/typec/class.c                     |   21 +
 drivers/usb/typec/stusb4500.c                 | 1040 +++++++++++++++++
 include/linux/usb/typec.h                     |    2 +
 include/usb/stusb4500.h                       |   59 +
 10 files changed, 1534 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/st,stusb4500.yaml
 create mode 100644 commands/stusb4500.c
 create mode 100644 drivers/usb/typec/stusb4500.c
 create mode 100644 include/usb/stusb4500.h

-- 
2.34.1



