Delivery-date: Tue, 18 Nov 2025 14:57:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLMDL-002Kxu-1C
	for lore@lore.pengutronix.de;
	Tue, 18 Nov 2025 14:57:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLMDK-00067g-NR
	for lore@pengutronix.de; Tue, 18 Nov 2025 14:57:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ttg86Mvyy081jRUYCHtbSibThRa/X0c6LbEt99u+ZGY=; b=03Ofvau154J0rSTsVmpGAKLVZK
	ht46TCutsP+6VXoSljzlkzTaY2iKrCqDQF0WJfzZEmiQNY9NPcUxAn0sv20vblVTtU7eppQ0h8cTp
	0HSZ6WOIg7Jlurzw24j4Nm57PZ9frwWRG3Mn5WD54Z9H7BQ+kOoSMDJ9T64Zm36qJcsFgdguJ/Cpj
	74GaqUjgjR71ZGkwGnMUWuEa+bfhFNI6IYs7zrl4PW5zp1lzfaKp1aL4+5sWM/22qRaZ7jmMkjpmu
	06xZkBX+tp9bNjT2/L3AsPT7XZl/tTept4YxGBS0ktvRgPItZea9ELOVqCmpL9Uh4l74bWaAI1qK2
	m54TkLSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLMCd-00000000VhS-35H9;
	Tue, 18 Nov 2025 13:57:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLMCY-00000000VZo-4Bdl
	for barebox@lists.infradead.org;
	Tue, 18 Nov 2025 13:57:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vLMCV-0005qf-Ds; Tue, 18 Nov 2025 14:56:55 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vLMCV-0015fm-0k;
	Tue, 18 Nov 2025 14:56:55 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vLMCV-00ADqD-0R;
	Tue, 18 Nov 2025 14:56:55 +0100
Date: Tue, 18 Nov 2025 14:56:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aRx7J0Tr0qcN4PWa@pengutronix.de>
References: <20251117-tlv_bind_serial-v2-1-60c7b1e3e81b@pengutronix.de>
 <aRww5p7AxPtgEmgm@pengutronix.de>
 <539763d8-582a-4ec0-90b3-bdd265a493d9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <539763d8-582a-4ec0-90b3-bdd265a493d9@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_055659_098033_F0273B94 
X-CRM114-Status: GOOD (  37.37  )
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

On Tue, Nov 18, 2025 at 10:49:32AM +0100, Jonas Rebmann wrote:
> Hi Sascha,
> 
> On 2025-11-18 09:40, Sascha Hauer wrote:
> > On Mon, Nov 17, 2025 at 06:14:06PM +0100, Jonas Rebmann wrote:
> > > Particularly when using secure boot with signed TLVs, it may be required
> > > to issue and sign TLVs for specific units. As typically all units of a
> > > board are compiled to validate TLVs against the same key, a "binding"
> > > mechanism is needed if interchange of TLVs across those units must be
> > > prevented. This mapping binds against the UID of the SoC, rendering a
> > > signed TLV with such a field invalid for all but the one unit.
> > > 
> > > When generating TLVs that use this mapping, the exact case-sensitive
> > > string representation of the SoC UID must be taken into account.
> > 
> > Do we really want to have this case-sensitive? I am not sure we're not
> > creating problems with this once somebody changes the case for
> > compatibility with the kernel, it was accidently wrong etc.
> 
> To me the big question is: What is a SoC UID?
> 
> Is it an arbitrary string that happens to be, for many SoCs composed of
> [0-9A-F] and efficiently represented in binary in the efuses? Then it
> feels a bit surprising to me to compare this 'arbitrary vendor-provided
> string' case-insensitively.
> 
> But if we consider this an arbitrary block of binary data, typically
> looked at in hexadecimal then I suggest we use the raw "bytes"-format I
> sent an RFC patch for on Nov 12, and compare to
> barebox_get_soc_uid_bin(). I originally wrote that RFC patch for storing
> SoC UIDs but had a conversation with Ahmad that led me to view the SoC
> UID as an arbitrary string. However now that we have
> barebox_get_soc_uid_bin(), I'm tempted to change my mind.

At least all drivers in the Kernel use either [0-9A-F] or [0-9].

> > > +	char *tlv_serial = basprintf("%.*s", len, val);
> > 
> > tlv_serial is not freed.
> 
> I'm just doing the same here as all other handlers ("handle"s?) in
> common/tlv/barebox.c do. The string representation of the TLV field is
> consumed by __tlv_format eventually:
> 
>   param->value = buf; /* pass ownership */
> 
> So not freeing seems correct here.

The string you are referring here is allocated in __tlv_format_str():

const char * __tlv_format_str(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
{
	return __tlv_format(dev, map, basprintf("%.*s", len, val));
}

tlv_serial is another string. It's not freed and not even passes to tlv
functions.

> 
> > > +
> > > +	if (streq_ptr(tlv_serial, barebox_get_soc_uid()))
> > > +		return __tlv_format_str(dev, map, len, val) ? 0 : -ENOMEM;
> > 
> > Why not simply forward the return value __tlv_format_str() instead?
> > (which is 0 or -ENOMEM anyway).
> 
> Here too I'm doing the same as the other handlers do. __tlv_format with
> the underscores returns buf upon success, NULL on error and it seems
> right that this is probably (yet not guaranteed to be) ENOMEM then.
> Anyway all the handlers return ENOMEM if there's an error in
> __tlv_format either because they call via the macro

Ok, I wrongly looked at tlv_format_str() which returns an int. So I
rephrase my question: Why not use tlv_format_str() instead?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


