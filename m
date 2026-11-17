Delivery-date: Tue, 17 Nov 2026 14:13:47 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTJ0M-000Qe3-37
	for lore@lore.pengutronix.de;
	Tue, 17 Nov 2026 14:13:47 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 78E71205A24
	for <lore@pengutronix.de>; Tue, 17 Nov 2026 14:13:47 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nVgPQ0PJ;
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=gXaow4vp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794921227;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=iVPfnNMpu/XxWuv9vOrREPOhFBT5axrzV1070kgd/Ts=;
	b=Pu4DLLujsXhWgBHKDndBhpnWQPHqYkAZZma09ZALXmZ6YcVHsaVgod0fHz+uyQn1LwU7G+
	0lDQVSei7wrFFmA+NKse/+mkyNUTOkjgshWXEQ/0C6Ofvdsfm+D6N0p1p9WFZ+b2Q4w8zK
	fOxh6EyaW8L8WSIFNxtj0Ihc1vvCMJqFdACSHE8tteTliwrP8ArlhL+z6DPoTQOfuRqvsr
	Ny3xqn3HqDj4l3tWEbskuxui/YS3Y/CYIBZXfH+D0wtgR+LdkQX0FG8s3OgebXkku+zCNS
	GwYLuL4F4syGJUrCKTN3Bj/LVjA7H/gmhrJyC3CwDVYZXrGw+Qq/tv08+x4JpA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794921227; a=rsa-sha256;
	cv=none;
	b=YJUwXDpzL60aRvZCui9uIq+UrJjBecrWoV+M1zCEllVJwOJDECN1v5gfYwzY0PvVKSB/Gh
	pIGf8b1k5eftjqfAgWI0ZQpU76sHND9WEvOQvQWqaADhKOHfsf1SDZEfZ5rpDuhirdesuD
	4KKOk+Bmzz5lCE2ayq5CB1Lqy0OY6g7QSnQrL34yYOHKOzKyVCD52l7l9klPkFxmidWmJR
	/apTews0+OaqrdaMXP3WotJHvrSicVdUrMahlJ5LZJm/kY7CZYS8RHlVkpecWy9QV+O/ik
	HjRRkHEhJRXwwXNkgukr+9CLKfXRsCzWm0MkJKjSfyhG3HtyZrbBEyi8uwxpgQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nVgPQ0PJ;
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=gXaow4vp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=iVPfnNMpu/XxWuv9vOrREPOhFBT5axrzV1070kgd/Ts=; b=nVgPQ0PJa+pY1U
	1YnIKGgMLmkSkx/fdhYj69z5yL6SvtHCy8QGUu5vFhYWHSJOrmTZz0utCt4EAGPv2L8Y1Kvg6/a6F
	DpQZRKjXTjfpEyv/FhCiPcjkdtJlqQafBRhfVFQe07LlY5QEd4k6MGtXKtzeCAlaZMeFKu5+sBcoE
	6+sn7bmedBc0px16m2XWzNBw7D5P3tl3Y0l32IF2XHwuhaGWdT+R/Ld7bZfeWGCmM7AZQ3Pryh4O+
	AjuQfcWie316b2es3EOj0QOPo9H9jO+sSBrnn7j+RqOYy9tCeOBFBXNMBE7ZTD5QMJ7NAQMwpLhal
	rjMrvzYCNBuQMhcyfCUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTIz8-00000005rtx-1k8N;
	Tue, 17 Nov 2026 13:12:30 +0000
Received: from www153.your-server.de ([213.133.104.153])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTIz2-00000005roe-3hpY
	for barebox@lists.infradead.org;
	Tue, 17 Nov 2026 13:12:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=amelchem.com; s=default2004; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:Reply-To:From:Subject:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=iVPfnNMpu/XxWuv9vOrREPOhFBT5axrzV1070kgd/Ts=; b=gXaow4vphfmrwPT4Q1cb1H6M0n
	9JCjEPQuYu/sGqWuP7So0X/tspT+vf87GoirOZ2D5UppDB0yJoF/X3FryTz5FyexQw8C+8OhU6QNu
	y4f24pKLoFRh/zp5pHejlIfVaYI/ggJJUYJIQJoZgIZUSseswrkquIMEXMFHEk4ionpBPExjxoVEk
	eWdSk+omzgEBIzMjK/83t2rHTn39A1k5LOwavNb1rDLHH2tz43eealxQlFE0QBxKj07kt4pK7c3nV
	mycVHC3KPXzvutGmzMvvFgRDYtFCnqtkrlsn5cFLLOBrnwkDbnfi/8oIU10urtCAuH3uC2mm31gHW
	XPojXHTw==;
Received: from sslproxy04.your-server.de ([78.46.152.42])
	by www153.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <rossi@amelchem.com>)
	id 1xTIyu-00051s-0l;
	Tue, 17 Nov 2026 14:12:16 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy04.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rossi@amelchem.com>)
	id 1xTIyn-0001yZ-0N;
	Tue, 17 Nov 2026 14:12:09 +0100
Message-ID: <2a55ec2381ab6e98a49627647adb5dde066fd696.camel@amelchem.com>
Subject: Re: [PATCH 4/4] commands: stusb4500: add USB-C PD control command
From: Giandomenico Rossi <rossi@amelchem.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Nicola Fontana <ntd@entidi.it>
Date: Tue, 17 Nov 2026 14:12:15 +0100
In-Reply-To: <19f0a52f-ad0f-44fd-b97d-644b925eff29@pengutronix.de>
References: <20261114161953.1457428-1-rossi@amelchem.com>
	 <20261114161953.1457428-5-rossi@amelchem.com>
	 <19f0a52f-ad0f-44fd-b97d-644b925eff29@pengutronix.de>
Organization: Amel s.r.l.
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2.1 
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.6/28186/Tue Nov 17 07:30:05 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_051225_240764_873A72B5 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 2026-11-17 at 11:46 +0000, Sascha Hauer wrote: > If
    I understand correctly then > that should already give you the base case
   supported with the PDOs > being > configured through device tree, r [...] 
 
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
Reply-To: rossi@amelchem.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-7.29 / 15.00];
	BAYES_HAM(-2.98)[99.92%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[amelchem.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[rossi@amelchem.com,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[amelchem.com:s=default2004];
	DKIM_TRACE(0.00)[lists.infradead.org:+,amelchem.com:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DNSWL_BLOCKED(0.00)[78.46.152.42:received];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rossi@amelchem.com,barebox-bounces@lists.infradead.org];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_REPLYTO(0.00)[rossi@amelchem.com]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 78E71205A24
X-Rspamd-Server: mx1
X-Stat-Signature: 56xsm4y4zkru81i9xm8u33539gmwk86n

On Tue, 2026-11-17 at 11:46 +0000, Sascha Hauer wrote:
> If I understand correctly then
> that should already give you the base case supported with the PDOs
> being
> configured through device tree, right?

Hi Sascha,
yes, that=E2=80=99s correct.=20

Stripping the exported functions and the helpers
that only backed them (the RDO/contract decode and the negotiated-
voltage read) leaves exactly the base case: the driver parses=20
sink-pdos from the device tree, programs them into registers and sets
the active PDO count at probe. From there the STUSB4500 negotiates the
contract autonomously in hardware, as it=E2=80=99s designed to.=20
No board-facing API, nothing exported - everything static. That=E2=80=99s a
self-contained, useful driver on its own, and I=E2=80=99m happy to send it =
as=20
v2 that way.

I=E2=80=99ll drop the stusb4500 command from this series entirely.=20
I agree it shouldn=E2=80=99t be chip-specific.

Maybe I=E2=80=99ll revisit that as a separate RFC on top, which is also whe=
re
renegotiation and contract reporting would come back (I=E2=80=99ll leave
st,renegotiate-on-probe out of the base).

Thanks,
Giandomenico


