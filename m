Delivery-date: Tue, 20 Sep 2022 09:38:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaXpt-00AId8-Uw
	for lore@lore.pengutronix.de; Tue, 20 Sep 2022 09:38:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaXps-0003nD-Jg
	for lore@pengutronix.de; Tue, 20 Sep 2022 09:38:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WjigGTXJwkzBYodiwl8xFNNRwKDktTVLJs+mg4jq6pM=; b=0ExJc/r5z0aYt9FnAVaHP8WUXR
	3Kq0aXVEvBia5vA5cDABryCWp02HhutdnpAP3vmpNHbFX7Zr4IPQa6+3xm0IT6p4sbicUoflmjXMy
	EgURelWAzUlRReNkmaNG+TI8qF611kPOhZaDwp9U8Zbumu2BIt9+a70ERviRvilOyjk8LHoOOmy/7
	FQeWCp4sCet/UfsmSJD3RtbVhxFME1n2GW5VgzviPByD12AyZ9b02X4ZY+1fF2B1L+4aen9R3wKXI
	bXZCgONOogOwsYqFgMrDFKDly/Bt8hKqUr/z7PxH+MnXjPUISyTukF7naZN5lESP5B0pITFvAxN3r
	IiGVDxTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXo6-001PIo-HR; Tue, 20 Sep 2022 07:36:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXnx-001PEm-1e
	for barebox@lists.infradead.org; Tue, 20 Sep 2022 07:36:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaXnr-0003Zy-Lr; Tue, 20 Sep 2022 09:36:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaXnq-0006GQ-R2; Tue, 20 Sep 2022 09:36:22 +0200
Date: Tue, 20 Sep 2022 09:36:22 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220920073622.GE6477@pengutronix.de>
References: <ly7d1z1qvs.fsf@ensc-pc.intern.sigma-chemnitz.de>
 <20220919135751.GD6477@pengutronix.de>
 <ly35cn1lyk.fsf@ensc-pc.intern.sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ly35cn1lyk.fsf@ensc-pc.intern.sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003629_111705_B0213190 
X-CRM114-Status: GOOD (  23.64  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: malloc() alignment on 32 bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 19, 2022 at 04:24:19PM +0200, Enrico Scholz wrote:
> Sascha Hauer <sha@pengutronix.de> writes:
> 
> >> | zstd_decomp_init:536 workspace=8ff1a004+161320
> >> | ERROR: initcall ubifs_init+0x1/0xc4 failed: Invalid argument
> >> 
> > If you had asked me which alignment we have then I would have said it's
> > bigger. OTOH I never received any reports about insufficient alignment
> > on ARM or any other 32bit architecture.
> 
> The code which failed for me was added 3 months ago
> 
> | commit b4a9782d4f56333e897dccc35c2c27e2605f6b93
> | Author: Ahmad Fatoum <a.fatoum@pengutronix.de>
> | Date:   Wed Jul 13 12:09:18 2022 +0200
> | 
> |     lib: zstd: sync with Linux
> 
> and the Kconfig options (FS_UBIFS_COMPRESSION_ZSTD) are set to "off"...

When I said I received no reports about insufficient malloc alignment I
meant reports about erroneous accesses, like wrong data read/writes or data
aborts.

> 
> 
> > I suspect we could just drop the check without any harm, but that's just
> > a gut feeling because we never had any alignment issues.
> >
> > BTW are you sure ldrd/strd need 8 byte alignment?
> 
> Their EX variants (LDREXD + STREXD; see [1]).  Unaligned access on
> plain LDRD/STRD is allowed on ARMv7-A.  But not on ARMv7-M or ARMv6 and
> earlier.

Ok, I found this for the LDRD instruction:

| Prior to ARMv6, if the memory address is not 64-bit aligned, the data read from memory is
| UNPREDICTABLE. Alignment checking (taking a data abort), and support for a big-endian
| (BE-32) data format are implementation options.

So it seems it's really a good idea to increase malloc alignment
accordingly.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


