Delivery-date: Tue, 25 Aug 2026 14:16:20 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyq4h-0074Bh-2b
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 14:16:20 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0EBA1200740
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 14:16:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hLDyp9D1;
	dkim=fail ("headers rsa verify failed") header.d=amelchem.com header.s=default2004 header.b=DkqX6j+L;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=amelchem.com (policy=none);
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0yWgiNJi6oFrn5UyhwLE7LrghlPaWVJ7D162mePZQo0=; b=hLDyp9D1vJzGCLCQx0h1sSl7CN
	TQrQ3/DkMZrOG2S72Lt+FvmabnnnD3g9n87ZM4sD3FmSqf5vjq7Oo2FTXZG1rBveonSJc1J8fHSQ8
	aizBm5IpWWr9dOlWdEXUFpwWpPSiILc84OMw2rEG7Yq6u8IgwhQR752/DTdoABMMbdGy8/ioOS1vJ
	23CG6w6J1QxqNJ6S56r7BIZCWZAuFadyYi+meS7ar56HeArdwZ35JhBEwPT9N46XrS0V4Js5fVMEA
	GsBjbhrAsjV785EAujv3Cw9LxPvRMrVmBWGe7LETlG/dCmvWNobzCJSUfcNw6qsFLEV55yhaCX9cU
	/DDNUTXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyq3C-00000000k6T-2sSA;
	Tue, 25 Aug 2026 12:14:46 +0000
Received: from www153.your-server.de ([213.133.104.153])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyq39-00000000k5U-2VHm
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 12:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=amelchem.com; s=default2004; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:To:Reply-To:From:Subject:Message-ID:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=0yWgiNJi6oFrn5UyhwLE7LrghlPaWVJ7D162mePZQo0=; b=DkqX6j+LCpBTCkBJEXj9QuTUY3
	x+hrYXqA/3PAB8aG2pQaATEzvsIPWNpSxG3Ieus5Vcwk21EXnF2aiCBV0LWCAWyAGQbl7GloirxFb
	mug9Gq1SxU5JCfIcSGcBKhp7UJSmM/t08HWfYNrlHO1gEKWxhZz5C3mhvI+jXFA0qaCoxrPhXr3rn
	UH9iYpx/X22wkHaXq05K7g0a3tkbryFNXYlp6370oX4eKiyBZngynoB7GSKDc9adkYNsVrFSYxC86
	40jhJa0DpYmFX7m4Aqql+WNSesAARJNEZQVicRjhjOHndcUaoMrSy0j3yugNftcj75b+nDCAFQ2Qx
	daac3Fig==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www153.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <rossi@amelchem.com>)
	id 1wyq35-000IVC-1J
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 14:14:39 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rossi@amelchem.com>)
	id 1wyq35-0009eU-0Q
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 14:14:39 +0200
Message-ID: <010a0855cdd5268ab8e47ed5b5e43a7bbfc539f6.camel@amelchem.com>
Subject: Re: Driver placement for a new STUSB4500 USB-C PD sink controller
From: Giandomenico Rossi <rossi@amelchem.com>
To: barebox <barebox@lists.infradead.org>
Date: Tue, 25 Aug 2026 14:14:38 +0200
In-Reply-To: <2d747fac-3c27-45d1-9f6c-95e8579c75a2@pengutronix.de>
References: <561b94b11b45ec960fbbc060d8db8f292e2446e4.camel@amelchem.com>
	 <2d747fac-3c27-45d1-9f6c-95e8579c75a2@pengutronix.de>
Organization: Amel s.r.l.
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2.1 
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/28103/Tue Aug 25 08:27:08 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_051443_938730_78578047 
X-CRM114-Status: GOOD (  28.19  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 2026-08-25 at 12:08 +0200, Ahmad Fatoum wrote: > Hello
    Giandomenico, > > On 8/25/26 11:38 AM, Giandomenico Rossi wrote: > > Hi,
   > > > > I'm writing a Barebox driver for the STMicroelectronics [...] 
 
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
X-Stat-Signature: hjpd151nybwaz7s48jkc6cdrc9r68ab9
X-Spamd-Result: default: False [-7.31 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[amelchem.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_MIXED(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rossi@amelchem.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[amelchem.com:s=default2004];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,amelchem.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_REPLYTO(0.00)[rossi@amelchem.com]
X-Rspamd-Queue-Id: 0EBA1200740

On Tue, 2026-08-25 at 12:08 +0200, Ahmad Fatoum wrote:
> Hello Giandomenico,
>=20
> On 8/25/26 11:38 AM, Giandomenico Rossi wrote:
> > Hi,
> >=20
> > I'm writing a Barebox driver for the STMicroelectronics STUSB4500,
> > an
> > autonomous USB Type-C Power Delivery sink controller (I2C).=C2=A0
> > It can trigger a renegotiation, and reports the resulting contract.
> > Target platform is an STM32MP151-based board.
>=20
> Cool. What information should this driver make available?
1. it configures the sink PDOs defined in the device tree ("sink-
pdos").

2. It also provides a small C API for board code to:
=C2=A0=C2=A0 2.a. read the current contract;
=C2=A0=C2=A0 2.b. force a renegotiation;
=C2=A0=C2=A0 2.c. see the negotiated voltage and current, and separately
=C2=A0=C2=A0 whether the source flagged a capability mismatch.

Points (2.c) covers two distinct things.
The capability-mismatch flag which is a PD-protocol flag the chip
reports (the source couldn't fully satisfy the request) and whether the
voltage/current are the ones the board actually wants.
For example, our board requires 20 V, so it isn't enough to know that
"a contract was accepted", since a fallback to 5 V is also a valid,
contract. The board has to look at the actual negotiated voltage.=C2=A0
The API therefore returns the values and the flag, and leaves the
policy to the board.

On top of this, the binding defines an optional boolean property,
st,renegotiate-on-probe. It's meant for users who want to set their
PDOs from the device tree but have no board-specific C file, and would
rather let the driver do the renegotiation itself at probe.
It can be dropped if it doesn't fit barebox's philosophy.

>=20
> > I'd like to agree on where the files should live, so I don't have
> > to
> > reshuffle everything later.
> >=20
> > Driver source:=C2=A0at the moment I have the driver under
> > drivers/usb/misc/,
> > but since it's a USB Type-C PD sink controller it might fit better
> > under drivers/usb/typec/ (which Barebox doesn't have yet, so it
> > would
> > mean creating it). Would you prefer that, or somewhere else?
>=20
> We have had a drivers/usb/typec directory since v2023.07.0.
> If you missed it you may also want to check the basic USB Type-C
> framework that was added there and see how well it fits your driver.
I need holidays!!

Thanks, I'll go through it.=20
My initial question is whether it fits a part like this: the
STUSB4500 runs the whole PD negotiation autonomously in hardware, but=20
I'll check how it's structured and follow up.


>=20
> > DT binding: I've written the binding as a YAML schema
> > (st,stusb4500.yaml), matching the Linux dt-schema format and
> > reusing
> > the common usb-connector.yaml for the connector sub-node.=C2=A0
> > Where should it go in the Barebox tree?
>=20
> I am unsure why you need a custom schema if there's already one
> upstream? Anyways, barebox-specific schemas are collected in
> Documentation/devicetree/bindings/. Upstream bindings are imported to
> dts/Bindings/

Sorry, I was unclear, by "matching the Linux dt-schema" I meant I
followed the dt-schema format (the YAML meta-schema style), not that
I'm copying an existing upstream schema. There's no STUSB4500 binding
upstream (remember I need holidays, but I am quite sure!), so this is a
new one.
Thanks for the pointer on placement, I'll put it in
Documentation/devicetree/bindings/ since it's barebox-specific.

Regards,
Giandomenico





