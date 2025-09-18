Delivery-date: Thu, 18 Sep 2025 17:39:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzGj7-004WGN-0w
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 17:39:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzGj6-0005fK-AM
	for lore@pengutronix.de; Thu, 18 Sep 2025 17:39:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x9yUz3hpES4ep+jX2LebhQkeFffIRxwTWlmgCmcZZzw=; b=IrrL1jT4V42kAf5sZnIIu1PqCP
	JtzoyPczmu59mylD1K+yAAqKEwq4raeG+xxG944gyY6mxbkGVkWsfYGJWy0VStGnILVAOf/Ap9zTV
	jwgVCKJ57H9N0qatO+1Jlcm7WKF5GGMiflpq/eEYO8yzv6iP5d6J1BqxNdBRbBHj3sL4px6nkd1hy
	2M9JnBU0MCPzHcxK+LE6ZguW8jAmiKlZlM+FEvZOHQgOz+jNmrKFe3UVvuZ5d0Cgm0k2cfnBuRvQ4
	1ibykxDr1z2bIXuoJsTOPHC7LVf93iHJVVQwKoJvKCRnuFf1E/qXaz2AKK0byl6Hdze9IhNqeZbtB
	TplHz0zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzGiM-00000000Rmq-0xfz;
	Thu, 18 Sep 2025 15:38:30 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzGiI-00000000Rly-3wRZ
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 15:38:28 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-337e714b3b4so8461861fa.0
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 08:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1758209904; x=1758814704; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x9yUz3hpES4ep+jX2LebhQkeFffIRxwTWlmgCmcZZzw=;
        b=v9o6jKpzbdsjCH79KJERtV2lkTnyFf3huleF7lQ62loVlwv08NVz14DHSGU33v6VB6
         GCfwxdMim9uNzUm35w7de5sxVWQmtj6Q4CLq9L3X7QdYkn8QDoL9r9YFB4Jjzn0OqDbY
         oTiDlLfUjgcfEI5lGoWv2XcOMXSwiRv8gsbZDsCl2Brlcm/SdTkQFLMUiFYVtRjhOlRm
         VkR77btfXZHJMer6GbE/OV9a+xRm7kG8epaJ5ZBFgU1iE4cKydhO04afH0bwNzFjMPKz
         kgMM24ZV2FVJQuJCD3/bZLaxvuH2AVuG+PuhI/1AYhOC7iBB1fs6CY28SbVNQY+Y5hRq
         GrOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758209904; x=1758814704;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x9yUz3hpES4ep+jX2LebhQkeFffIRxwTWlmgCmcZZzw=;
        b=l3jGLsmQLL4Pm+IP8H+8BOIhhu4WRoqR/umEvvLLBlt7N1ld66C/BcrtiyrbSsws79
         cAVHrTon+Y6vbqNRPm9Px83cHA4ZHeWw4esS0H452Z8v3OrPMGUi4KKaFT+L5H3WU3yV
         49OCwbOS0hRK/dRemrXqzKq2ocDYN23ytIwZ+x1r3stjew0ryt0f2s61XaG9aRy6rgJE
         0Vy8vLCws0myl1EqUq6kk0n1dDoeZ9XouqjUGC5BfdNF05vHGNoLjJTJ04MoXo5eKUw1
         2wxE6fdgjJBMge62WiUzucpA3kM/bK5zNEGbgi+zKEfJ7sIgvGTS1mIYmasjKEZEAJIp
         AFDQ==
X-Gm-Message-State: AOJu0Yy7tkmvvMpgkSWHJX8PRfrPSwnNKFdqGM3cppPeLAzTDodssrf6
	8TvcYeZT/KR5sygyGKbyUXLjyHxGvueoYIYSSo2DMMLg/KemHuIS2I+sK/BAtvKzqyLb8f24rTo
	/42jf
X-Gm-Gg: ASbGncsUaMh179XZs+ZwawxVkdy759Brg/xhQkRGhQvWWQ2Vj8iOcS/TwN5WlvJ+9J6
	fpXNDgg4aF50qDll6f36kybc76gHrOaRX+mUJnnW6TnEdyaWoVmriK2jWhtge6Mouu7+7SRLj8o
	8Qz/lGGKXag9m/AzXwgOPdPRXZfyHFJl0Cp+Kf6Ygt9boP7UOR30eQ/bltaMFtHJPjhHwZmWi3E
	YkSAFJ83jbHZsGhEHd8/h5OPE06ipY8UoI+jn2pi6e08AWoqbXyOK+QTV4QhezpPWYOhSm8+1MK
	p0XAMmwtfuXtpMyrJM7vzRehXgn9wGNLSs3A17D1NrYfpazX/mawVXQ0/0oVnw0lAEFFlFCh09g
	MbOIbTvGfus5IfCH/SVhr8qMJJURBu5McTmQpdI1Uue92lc2/E1vt7h3nGslG7D1QWUHZykGAlA
	==
X-Google-Smtp-Source: AGHT+IE1M83jwXleRNLPQLsSqqsxYNdb6LXf56YTWWvSOPfdxDlo0jSVkYq4+hlwRV6lVBAL+Pggow==
X-Received: by 2002:a05:6512:2248:b0:55f:33dd:c220 with SMTP id 2adb3069b0e04-579e129f518mr54706e87.14.1758209903425;
        Thu, 18 Sep 2025 08:38:23 -0700 (PDT)
Received: from wkz-x13 (h-176-10-159-15.NA.cust.bahnhof.se. [176.10.159.15])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a90a2271sm752319e87.80.2025.09.18.08.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 08:38:23 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
In-Reply-To: <aMwSYBocZu-g4faR@pengutronix.de>
References: <20250918074455.891780-1-tobias@waldekranz.com>
 <aMwSYBocZu-g4faR@pengutronix.de>
Date: Thu, 18 Sep 2025 17:38:22 +0200
Message-ID: <874iszzs7l.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_083827_131836_265D3226 
X-CRM114-Status: GOOD (  48.93  )
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
X-Spam-Status: No, score=-1.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/11] dm: verity: Add transparent integrity checking
 target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On tor, sep 18, 2025 at 16:08, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Tobias,
>
> On Thu, Sep 18, 2025 at 09:43:10AM +0200, Tobias Waldekranz wrote:
>> This series adds initial support for dm-verity. Notably, it does not
>> include any support for validation of any root hash signature. As
>> such, practical use in a production setting is still limited, unless
>> you have some other way of securely determining that the root hash is
>> valid.
>>=20
>> 3/11 is where the action is.
>
> I gave this series a try and it indeed works like a charm. Great :)
>
> I used a verity rootfs I had lying around which has data and hash tree
> on the same partition, but even that worked out of the box.

Glad to hear it! :)

> I did some performance measurements just to get an idea how much penalty
> we have to pay for dm-verity. Here are the times to read a 1 MiB file
> from ext4, from ext4 on dm-verity and from a raw device:

Awesome, thanks for looking into this.

> raw device read:         24.28 ms
> dm-verity raw read:	 33.90 ms
> ext4 on raw device:      24.55 ms
> ext4 on dm-verity:       34.93 ms
> sha256 of 1 MiB:          3.30 ms
>
> (done on eMMC on a TI-AM62L EVM board)
>
> Ideally the difference between raw read and dm-verity read should be
> roughly the time we need for hashing, so it seems there's still some
> performance to squeeze out. Nothing to worry about now, I was just
> curious.

Do you have any sense of the time difference between a single digest of
1M compared to 256 4k (the default data block size) digests? I assume
you pay some penalty, but I have no idea if it could explain this
difference.

On that note, one thing that I think can be optimized, though I have no
profiling data to back this up yet, is how the digest object is
reused. Here is the relevant part:

static int dm_verity_set_digest(struct dm_verity *v, const void *buf, size_=
t buflen)
{
	int err;

	err =3D digest_init(v->digest_algo);
	err =3D err ? : digest_update(v->digest_algo, v->salt, v->salt_size);
	err =3D err ? : digest_update(v->digest_algo, buf, buflen);
	err =3D err ? : digest_final(v->digest_algo, v->verify.digest);
	return err;
}

Since the salt is fixed, the state of digest_algo after
init()+update(salt) is also fixed. So if there was a way to capture and
restore the digest to this known state, we could replace
init()+update(salt) with a memcpy(). There was no such API that I could
find (which makes sense, this is not the normal use-case), so I took the
naive approach. But maybe the performance gains would warrant something
a bit more quirky.

What was that saying about premature optimization again? :)

>>=20
>> TL;DR: What follows is just a discussion about the future - it has
>>        nothing to do with the contents of this series.
>>=20
>>=20
>> Once this is in place, signature validation is next on my TODO. The
>> kernel accepts a PKCS7 signature for this purpose. This is therefore
>> also what Discoverable Partitions Specification (DPS) provides in its
>> <arch>-<part>-verity-sig partitions, which contain a NUL-padded JSON
>> document like this:
>>=20
>> {
>> 	"roothash": "0123456789abcdef...",
>> 	"certificateFingerprint": "0123456789abcdef..",
>> 	"signature": "MIIINQYJKo..."
>> }
>>=20
>> To avoid having to integrate full ASN.1 + X509 parsing in Barebox, my
>> plan is:
>>=20
>> 1. Add support for (optionally) storing a certificate fingerprint
>>    along with a `struct public_key`. So at build time, we can note the
>>    fingerprint of keys that we include in the builtin keystore.
>
> Something like
> https://lore.barebox.org/barebox/20250821-keynames-v1-3-8144af76d0ab@peng=
utronix.de/
> ?
>
> I don't know if that fingerprint is in the format you need it though.

Unfortunatly not. The fingerprint produced by systemd-repart (which is
the reference implementation for creating DPS images, AFAIK) is of the
entire X509 cert, e.g.:

  barebox$ openssl x509 -fingerprint -sha256 -in crypto/fit-ecdsa-developme=
nt.crt -noout
  sha256 Fingerprint=3DBA:50:D7:38:EA:68:AE:78:07:DD:C4:2E:5D:D6:26:69:B3:3=
E:0A:85:7D:BE:B0:98:9B:A5:F5:69:7D:A2:F6:A0

I have started to sketch this out:

https://github.com/wkz/barebox/tree/dm-verity-sig

>>=20
>>    We could also support parsing fingerprints from a DT. Not sure if
>>    this is needed.
>>=20
>> 2. Add a simplified PKCS7 validation function that relies on:
>>    a. Knowing which public key to use in advance, rather than
>>       determining it by walking the ASN.1 data.
>>    b. The last $KEY_LEN_BYTES of the PKCS7 blob holds the raw
>>       RFC4880=C2=A75.2.2 signature bytes that Barebox already knows how =
to
>>       verify.
>>=20
>> 3. Add a "dps-open" subcommand to veritysetup that only requires the
>>    partition to open and a name for the dm-verity device:
>>=20
>>    veritysetup dps-open /dev/disk0.root os
>>=20
>>    Based on the partition type UUID, we would then locate the
>>    corresponding -verity and -verity-sig partitions, parse the verity
>>    superblock, validate the signature and then create the dm-verity
>>    device.
>>=20
>> Some other thoughts for the future (I have done no research here, so
>> some of this might already exist in Barebox and I just haven't
>> stumbled across it):
>>=20
>> - Similar to the automounter, it would be good to have an
>>   "auto-dps-verityer" that will do the equivalent of `veritysetup
>>   dps-open` on the DPS partitions matching the current architecture.
>
> Once you have the dps-open subcommand you might be able to use the
> autmount mechanism as-is. Something like:
>
> autmount -d /mnt/mmc0.os "veritysetup dps-open /dev/disk0.root os && moun=
t /dev/os /mnt/mmc0.os"

Interesting, I have to read up on this.

> Maybe we can automatically create these automountpoints once we find
> suitable GUIDs on a device.

I think something like that would be ideal. Then Barebox should more or
less be able to automatically produce a list of all trusted boot sources
(using the existing blspec logic (which I also know too little about :))

>>=20
>> - Having the ability to tag a partition as trusted, which could then
>>   be used to tag filesystems as such.
>>=20
>> - Having a build-time option that limits booting to only be allowed
>>   from trusted filesystems.
>
> Yes, there's still some work to do in this area. Right now our secure
> boot approach only allows signed FIT images. Now with dm-verity not the
> Kernel image itself becomes trusted, but the underlying filesystem. We
> are not really prepared for that.

Right, that is fully understandable.

> Sascha
>
> --=20
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


