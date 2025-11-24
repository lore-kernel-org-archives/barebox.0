Delivery-date: Mon, 24 Nov 2025 11:36:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNTvm-004MJS-2m
	for lore@lore.pengutronix.de;
	Mon, 24 Nov 2025 11:36:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNTvm-0003lh-8G
	for lore@pengutronix.de; Mon, 24 Nov 2025 11:36:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PVgfjvxupfxQe5xQg2sZCX/pJwYwQRnUetoMLluTYlY=; b=vUOSvP8dfUwFU1p/msclCD04Fg
	eGGxqEqNTnIlCShWNz7LJliJkNQP/UmKrR2aiNIi5R8OkRJrTeBUqnyq1Ry65V8xXWxlXQ3/nUFKu
	kJW8JfPVeX4ZykniLxbH+zhlTAJYAs8bWtU0wSRzH6ceBIm7Hj5rxHfkZN+zugnRAag972xUUw4Z5
	h0tDDM0SRxKMNKU6CLy88mAv4kJ4eXiNRtiYo+Lc9rc5gaKcjE3VLGnHkpFF2HCqCpLbygoHwnR6n
	5tvVgdE5C3SMAT9+D//jVL5xsxoV7d5PqCwQQg3/VUER30iMLVQzQudoM67pGuR/mvos2VzEbw96+
	7+NgqzFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTvE-0000000BQzn-0Gj7;
	Mon, 24 Nov 2025 10:35:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTvB-0000000BQxS-0IUn
	for barebox@lists.infradead.org;
	Mon, 24 Nov 2025 10:35:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vNTv7-0003bf-Jn; Mon, 24 Nov 2025 11:35:45 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vNTv7-0029aG-1L;
	Mon, 24 Nov 2025 11:35:45 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vNTv7-003veb-0w;
	Mon, 24 Nov 2025 11:35:45 +0100
Date: Mon, 24 Nov 2025 11:35:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jan =?iso-8859-15?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <aSQ1AWPxHw4knocf@pengutronix.de>
References: <20251117-tlv_bind_serial-v2-1-60c7b1e3e81b@pengutronix.de>
 <aRww5p7AxPtgEmgm@pengutronix.de>
 <539763d8-582a-4ec0-90b3-bdd265a493d9@pengutronix.de>
 <e630c09b-8eba-48aa-8f10-0d17a4d9df60@pengutronix.de>
 <11773b48d0ce0781f1ec24e3a98e81137f913de1.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <11773b48d0ce0781f1ec24e3a98e81137f913de1.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_023549_118042_FEF6CBB9 
X-CRM114-Status: GOOD (  30.48  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] tlv: Add tlv_bind_soc_uid mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 19, 2025 at 04:15:40PM +0100, Jan Lübbe wrote:
> On Tue, 2025-11-18 at 10:57 +0100, Jonas Rebmann wrote:
> > Hi again, tiny addition:
> > 
> > On 2025-11-18 10:49, Jonas Rebmann wrote:
> > > On 2025-11-18 09:40, Sascha Hauer wrote:
> > > To me the big question is: What is a SoC UID?
> > > 
> > > Is it an arbitrary string that happens to be, for many SoCs composed of
> > > [0-9A-F] and efficiently represented in binary in the efuses? Then it
> > > feels a bit surprising to me to compare this 'arbitrary vendor-provided
> > > string' case-insensitively.
> > > 
> > > But if we consider this an arbitrary block of binary data, typically
> > > looked at in hexadecimal then I suggest we use the raw "bytes"-format I
> > > sent an RFC patch for on Nov 12, and compare to
> > > barebox_get_soc_uid_bin(). I originally wrote that RFC patch for storing
> > > SoC UIDs but had a conversation with Ahmad that led me to view the SoC
> > > UID as an arbitrary string. However now that we have
> > > barebox_get_soc_uid_bin(), I'm tempted to change my mind.
> > 
> > I did consider changing this for v2 however in your [PATCH v2 1/9]
> > "introduce SoC UID" you mentioned that "Others even print the binary
> > data as decimal (qcom).". If we where to use 'raw "bytes"-format' as in
> > my RFC, the data YAMLs would have hexadecimal representation and I'm not
> > sure if that could get too confusing. At least we could consider to add
> > a (mandatory?) YAML-field that specifies the number system.
> 
> As the UID is normally read from registers or messages exchanged with a security
> enclave, each SOC vendor has already defined a binary format. We should just
> store that unmodified in the TLV value instead of inventing a custom format.

The format is not custom, it's the format Linux provides in sysfs.

It might be confusing if the SOC UID we use has a different format.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


