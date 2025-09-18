Delivery-date: Thu, 18 Sep 2025 16:09:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFK6-004UmG-0e
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 16:09:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFK4-0006U5-JT
	for lore@pengutronix.de; Thu, 18 Sep 2025 16:09:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W88Xlln8pJHmnkonx7J57Fr/TqgZrJ+2zkBgmVDolrY=; b=TI+4Ny/VZ5Q7lfjV1ILDquMPpq
	Vxvo88cbrWttGiUG1ytEVB3nE+aTcpUWvdZuAILCsYPM/IB43u5wutsd4mTC1Zbx0PA4dTUgYKMJS
	cWCDiX5xqzsarB1/PV4wXx2hIx45AW50fzGv/ZYgTx64QIZUbbQ2NtYXWs8GYX9zN9AnhiwlInNMu
	T0nv93kZxgdSSul1gYehyar2TQft8sa9680Vb66cSghKQTwqfUJiWrpA3MgTg0W2j1iL9gfdRfMhH
	umhNGlFdtcWeZZG4KsX9pAXIuwL3nhdtheWOh2QFUpqsiqwtS4gCTVWy3qhB7l2KrkFh7ABJ/g+7M
	eVz7x1yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFJQ-0000000031W-0tEV;
	Thu, 18 Sep 2025 14:08:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFJM-00000000309-1Il1
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 14:08:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uzFJJ-0006L7-CL; Thu, 18 Sep 2025 16:08:33 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uzFJJ-001xCC-00;
	Thu, 18 Sep 2025 16:08:33 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uzFJI-00FsXZ-2u;
	Thu, 18 Sep 2025 16:08:32 +0200
Date: Thu, 18 Sep 2025 16:08:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Tobias Waldekranz <tobias@waldekranz.com>
Cc: barebox@lists.infradead.org
Message-ID: <aMwSYBocZu-g4faR@pengutronix.de>
References: <20250918074455.891780-1-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_070836_353315_3921B147 
X-CRM114-Status: GOOD (  40.54  )
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
X-Spam-Status: No, score=-1.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/11] dm: verity: Add transparent integrity checking
 target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Tobias,

On Thu, Sep 18, 2025 at 09:43:10AM +0200, Tobias Waldekranz wrote:
> This series adds initial support for dm-verity. Notably, it does not
> include any support for validation of any root hash signature. As
> such, practical use in a production setting is still limited, unless
> you have some other way of securely determining that the root hash is
> valid.
> 
> 3/11 is where the action is.

I gave this series a try and it indeed works like a charm. Great :)

I used a verity rootfs I had lying around which has data and hash tree
on the same partition, but even that worked out of the box.

I did some performance measurements just to get an idea how much penalty
we have to pay for dm-verity. Here are the times to read a 1 MiB file
from ext4, from ext4 on dm-verity and from a raw device:

raw device read:         24.28 ms
dm-verity raw read:	 33.90 ms
ext4 on raw device:      24.55 ms
ext4 on dm-verity:       34.93 ms
sha256 of 1 MiB:          3.30 ms

(done on eMMC on a TI-AM62L EVM board)

Ideally the difference between raw read and dm-verity read should be
roughly the time we need for hashing, so it seems there's still some
performance to squeeze out. Nothing to worry about now, I was just
curious.

> 
> TL;DR: What follows is just a discussion about the future - it has
>        nothing to do with the contents of this series.
> 
> 
> Once this is in place, signature validation is next on my TODO. The
> kernel accepts a PKCS7 signature for this purpose. This is therefore
> also what Discoverable Partitions Specification (DPS) provides in its
> <arch>-<part>-verity-sig partitions, which contain a NUL-padded JSON
> document like this:
> 
> {
> 	"roothash": "0123456789abcdef...",
> 	"certificateFingerprint": "0123456789abcdef..",
> 	"signature": "MIIINQYJKo..."
> }
> 
> To avoid having to integrate full ASN.1 + X509 parsing in Barebox, my
> plan is:
> 
> 1. Add support for (optionally) storing a certificate fingerprint
>    along with a `struct public_key`. So at build time, we can note the
>    fingerprint of keys that we include in the builtin keystore.

Something like
https://lore.barebox.org/barebox/20250821-keynames-v1-3-8144af76d0ab@pengutronix.de/
?

I don't know if that fingerprint is in the format you need it though.

> 
>    We could also support parsing fingerprints from a DT. Not sure if
>    this is needed.
> 
> 2. Add a simplified PKCS7 validation function that relies on:
>    a. Knowing which public key to use in advance, rather than
>       determining it by walking the ASN.1 data.
>    b. The last $KEY_LEN_BYTES of the PKCS7 blob holds the raw
>       RFC4880§5.2.2 signature bytes that Barebox already knows how to
>       verify.
> 
> 3. Add a "dps-open" subcommand to veritysetup that only requires the
>    partition to open and a name for the dm-verity device:
> 
>    veritysetup dps-open /dev/disk0.root os
> 
>    Based on the partition type UUID, we would then locate the
>    corresponding -verity and -verity-sig partitions, parse the verity
>    superblock, validate the signature and then create the dm-verity
>    device.
> 
> Some other thoughts for the future (I have done no research here, so
> some of this might already exist in Barebox and I just haven't
> stumbled across it):
> 
> - Similar to the automounter, it would be good to have an
>   "auto-dps-verityer" that will do the equivalent of `veritysetup
>   dps-open` on the DPS partitions matching the current architecture.

Once you have the dps-open subcommand you might be able to use the
autmount mechanism as-is. Something like:

autmount -d /mnt/mmc0.os "veritysetup dps-open /dev/disk0.root os && mount /dev/os /mnt/mmc0.os"

Maybe we can automatically create these automountpoints once we find
suitable GUIDs on a device.

> 
> - Having the ability to tag a partition as trusted, which could then
>   be used to tag filesystems as such.
> 
> - Having a build-time option that limits booting to only be allowed
>   from trusted filesystems.

Yes, there's still some work to do in this area. Right now our secure
boot approach only allows signed FIT images. Now with dm-verity not the
Kernel image itself becomes trusted, but the underlying filesystem. We
are not really prepared for that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


