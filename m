Delivery-date: Mon, 05 Jan 2026 13:30:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjij-001WHM-1s
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 13:30:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjij-0006EV-0O
	for lore@pengutronix.de; Mon, 05 Jan 2026 13:30:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=65DWNmPumLPUhzoQ+9RTVWoCAjcPkD30A3hQ5hSjxvo=; b=b9bIUlvQj7m0Qagcb06bJgbbD5
	cBY+Vw/SOLQZ0sK2SEP4AdAeWUBxc//PH8uqYBVcyzU3goXR10okc1tlPBb+ROpJwgX5Yp6t+boUe
	NGJYufx0ez3OkmNNr2WE7357roFUrP6kDtWsdVJTaTDXRQCBnmbwg+h0Tur2pA/Fdt+F7uUFV1JnF
	FtHs38kRyjTuJPcIBAen4FCAMocDFpSKiBi0TMI3h/yYn8kz53CVwrzN9Led2RhS/i6OPGFrgQbUE
	0Pk5Xq625RaE1sBxt3QiEeIGWiLloHviW0/LcN5DVtVXJExiQixTQcaZedHpEOhp3plAs76RpP6X2
	ZWNTekfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjiL-0000000BIF6-2C08;
	Mon, 05 Jan 2026 12:29:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjiH-0000000BIBL-0nMc
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 12:29:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vcjiE-00068f-2m; Mon, 05 Jan 2026 13:29:30 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vcjiD-009ARf-2r;
	Mon, 05 Jan 2026 13:29:29 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vcjiD-00CSCD-2U;
	Mon, 05 Jan 2026 13:29:29 +0100
Date: Mon, 5 Jan 2026 13:29:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Message-ID: <aVuuqRv4ADtomk8J@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-12-e97853f98232@pengutronix.de>
 <d35060ed-79ba-4bc8-9237-8be49eb395a5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d35060ed-79ba-4bc8-9237-8be49eb395a5@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_042933_242161_6DEC3E63 
X-CRM114-Status: GOOD (  19.25  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 12/19] ARM: use relative jumps in exception table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 05, 2026 at 12:44:13PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 1/5/26 12:26 PM, Sascha Hauer wrote:
> > Create position-independent exception vectors using relative branches
> > instead of absolute addresses. This works on ARMv7 onwards which
> > supports setting the address of the exception vectors.
> > 
> > New .text_inplace_exceptions section contains PC-relative branches,
> > enabling barebox proper to start with MMU already configured using
> > ELF segment addresses.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Why do we even need arm_fixup_vectors? There should already be
> relocation entries emitted for .word symbol lines, so given that we only
> install the vector table after relocation, it should be possible to
> simply drop arm_fixup_vectors?

No, just verified that there are no relocation entries. I don't know if
there's some other trick to get them relocated.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


