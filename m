Delivery-date: Tue, 25 Aug 2026 11:39:37 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wynd3-0071ZZ-09
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 11:39:37 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9DA572016A0
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 11:39:37 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Gddvw40B;
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=muahgOOW;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none);
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Date:To:From:Subject:Message-ID:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3haw428Uf7hhPWu2Lx4KpBTGgsOS9pDU6H9fCpjN4s8=; b=Gddvw40BtiiXWJhp2TLMJgjIzu
	uNmaxD3uiaaRUChzmIqAkv3XCWRrAuX2fPTB5a6zeb5fAVIX0HyKB0qVfXrys29dZfZbHYp23gGqY
	X19hsRHPjYL7W/OstIIUoU4FSI6K2Vugq/MbhGj3FqDkUHZJBmZExkv/vj1anpVrYli5ziK/O1WtI
	4RW7QEUmFQX5en1UjnmpobQv4jcJHsr9jMruL3+gmnIQ4+02pmEfG10CpKjtwtdAtG3/dDuusRoGQ
	OGyMtQe10Qzhzg7jkpi0OBZNkUu9ZlKGW8wsdsAN03AJhvpJkHwjD9TR0o+XM4Gp0AaULIB/+DjgB
	rI9wXGuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wynbs-00000000Vo5-2MIB;
	Tue, 25 Aug 2026 09:38:24 +0000
Received: from www153.your-server.de ([213.133.104.153])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wynbp-00000000VnH-2Os5
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 09:38:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=amelchem.com; s=default2004; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:Date:To:Reply-To:From:Subject:Message-ID:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=3haw428Uf7hhPWu2Lx4KpBTGgsOS9pDU6H9fCpjN4s8=; b=muahgOOWeOlI5SXQlHcIX637vw
	IcVQzhYd11MHT7Malrbj/0E06w1Jo4svIW3ure8aqUeVghQ/JBrn7tsn4nr2O2+s4Kb3uqT3fYCnc
	nvt61xKfROW13NzEP8wryuMKT6d0vQWGIaw+83iG1cEZ071vi9RsCpHqWnBizepMyeTZl/a6uGufC
	+CbJP31m4UU1yKKgq+fNOVMMweEearvJB9eJKBpJ+j2G8/SjZYzx6C2PSTPY0xU0hqg8KvN2Pgrke
	pUuL8hiSSNRqtv5EAyQ7OrRCu4gXCCqDmAHfbhLKAbzgusr7zDXnwNWquNSKDrGct+HRRufDj8X1d
	CcPS1VdQ==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www153.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <rossi@amelchem.com>)
	id 1wynbi-0009JQ-1n
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 11:38:14 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy06.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rossi@amelchem.com>)
	id 1wynbi-0001Na-0z
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 11:38:14 +0200
Message-ID: <561b94b11b45ec960fbbc060d8db8f292e2446e4.camel@amelchem.com>
Subject: Driver placement for a new STUSB4500 USB-C PD sink controller
From: Giandomenico Rossi <rossi@amelchem.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Aug 2026 11:38:13 +0200
Organization: Amel s.r.l.
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2.1 
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/28103/Tue Aug 25 08:27:08 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_023821_935608_CBCC649A 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, I'm writing a Barebox driver for the STMicroelectronics
    STUSB4500, an autonomous USB Type-C Power Delivery sink controller (I2C).
    It can trigger a renegotiation, and reports the resulting contract. Ta [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [213.133.104.153 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
Reply-To: rossi@amelchem.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: zqyrffnfgesozd9apum5uagcijaue8gw
X-Spamd-Result: default: False [-7.04 / 15.00];
	BAYES_HAM(-2.73)[98.82%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[amelchem.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[amelchem.com:s=default2004];
	DKIM_TRACE(0.00)[lists.infradead.org:+,amelchem.com:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rossi@amelchem.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[rossi@amelchem.com]
X-Rspamd-Queue-Id: 9DA572016A0

Hi,

I'm writing a Barebox driver for the STMicroelectronics STUSB4500, an
autonomous USB Type-C Power Delivery sink controller (I2C).=C2=A0
It can trigger a renegotiation, and reports the resulting contract.
Target platform is an STM32MP151-based board.

I'd like to agree on where the files should live, so I don't have to
reshuffle everything later.

Driver source:=C2=A0at the moment I have the driver under drivers/usb/misc/=
,
but since it's a USB Type-C PD sink controller it might fit better
under drivers/usb/typec/ (which Barebox doesn't have yet, so it would
mean creating it). Would you prefer that, or somewhere else?

DT binding: I've written the binding as a YAML schema
(st,stusb4500.yaml), matching the Linux dt-schema format and reusing
the common usb-connector.yaml for the connector sub-node.=C2=A0
Where should it go in the Barebox tree?

Regards,
Giandomenico Rossi
Amel s.r.l.


