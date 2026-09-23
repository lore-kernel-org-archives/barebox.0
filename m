Delivery-date: Wed, 23 Sep 2026 10:05:45 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9Hz7-005MVe-0F
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 10:05:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1F7212001F2
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 10:05:44 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=knHBZ+UP;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FS3dkO80;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790150744;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=3rbcr9M6WHK0uuyWD2OBE6F1pgnlVhZuMj0IhIxU5qM=;
	b=HolFKhAZ6ome4id9qAinpsRQVrnxbcesQKG4JP47IrgB10J70N1yMvQFnQXjuw9SVMFl1t
	irmOAfkKLoFdM5qSwyibOl6Kt7UpsRPUtDdoxc4pmneWohr/W6ofPFzbrpEoEp+bCxagTu
	M6B6GVh+1pq6k1IrF1lelACX0NzOdSKq3piSbXZnP+aFeEdHNwiuglcjAj+J7UGrXByD7I
	W0xZm9OX57Z3vkjglHU15lBqx4cegjsig+5gqcIIyhsAKBhH8LH77OkOkui0qBZQsHRCac
	heL9dAQicyKA6H/Bae0cxj08mxG49BHcv9cRIoxXEMsMT5acZBQi/qP9/7INew==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790150744; a=rsa-sha256;
	cv=pass;
	b=SvBEVt2iER3S0n65aFjvSdYjfO6gOeavzy9XxUqNLOyCLK641bzQgPxhUmF8qRA0nb3vvb
	DX8rYF5p9+4nTWY8MjYhb9/2B4NoQ0sFsd6O7R8GYRplF/0URpzs7uN6YRKxQ9Zwu28qji
	DhJ4izoabtmgxFpxlqEhGXJK/gp+33ZGr6MrPNnaPWTAPm+KBJHy0nF38OrPnhM3J1wXFW
	jYz2qzSVnkOWtH4nIUvI9ZoaG/YuvfcDL6caseVFMPzgPZjUcbQq3Vab2k97Ymcmri9IfR
	vLao/HdW0eml7jQNJ5VZUcmSdrDBB97z9hhEpceOVvzQ9cSYHoiu4LqZ/3Iq+Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=knHBZ+UP;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FS3dkO80;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:To:Subject:
	From:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3rbcr9M6WHK0uuyWD2OBE6F1pgnlVhZuMj0IhIxU5qM=; b=knHBZ+UPVAc61P
	VCm7Nz52C8nWlOHcjBL1oJQhFfo4lNbbrkdUdbzU0fz0yfg+wW5pxmP22bi8WQYDw4Q7Uyc81R2LD
	h9n6f0XRh1cDWsLUebVb+0NgDIb1t14RnKaenorZQ3WrEQwU99IKjsmonBXVJRoarADJp8CLGgXiF
	YIKHLL2dalj0PF/rU7drTO65RumcrPaYKFVePZgoI1g5TUrhP9pymrmDGJ7l/q0Hjo070pC3JeEJZ
	9vManezxkWBB1mWLBqKhaXSiJwGXqY0AlBgo0bcYLb2P54MP25E/Y/jUaAxIQk2gCfbf2fCai7bKE
	TA5ZYdGZe/p5dHHBT6ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Hxl-00000007Swg-2vko;
	Wed, 23 Sep 2026 08:04:21 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Hxh-00000007SwE-2uZG
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 08:04:19 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0B9F7200153;
	Wed, 23 Sep 2026 10:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790150655;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3rbcr9M6WHK0uuyWD2OBE6F1pgnlVhZuMj0IhIxU5qM=;
	b=FS3dkO80Xl87hLM5ejB8iPvh3OpShvJC474+0SkwOlBPTrzpvcrW1fDJd6i9+KX5gmhTIh
	q/7yB/qltToFniMH/beq5arHbw1qBTSj77rxScd28K0EmUHWsR7GUmdN3R9pApIBh/7J4d
	rwr6nLJ7J01r27aCXmkC6G3TZfl1cO6IEJ3Wdi5lmIBf5eC0qIimARSDKo9Ju5yAjxmUF0
	9frczssePC3dNlS0IOudpO2sY8DYDqvwBgZxZdZ7SG6eAzI6dEzzODOlCYtFzlBOT//OqB
	xe9tsW9Rhmw00eFwovQ/16935o6rEecRYeYI67vFKhKkmRPSbyofrriNjKZFZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790150655;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3rbcr9M6WHK0uuyWD2OBE6F1pgnlVhZuMj0IhIxU5qM=;
	b=bZ1QWXDL8XDJKq70DjJBWDCqBhpU2UnaiRwesFAjaTTqznpS5ATqgThrAvcy/Q9blssXlX
	K1Xsmx2BwPi8zfDYxN//hSrS64n5EWpdusWwer4lpsKWMExiNb8rABno3ML7IqDHj+K/Tv
	wLJFfYJZcLE0BA8qXdIhqY1jlkma+d+kGEYia7YgXM4Z1fOpAj7oZ90lOji4IYFlQJMFnI
	VDSnVsUDLfyYQMRh/A0d0NrqW4l5l5cJxfnmaWQVraKoVHQ6mJCAFK65nco6WZv52yGwcM
	IPFFcRYE6g4OxZV8qWKnrLhLmJDnlaMIIQE0GljYxATBadPwmFXktTSyy8e17Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790150655; a=rsa-sha256;
	cv=none;
	b=fPCbGiFO7Nr1wtYYSN11KT3aREdK5KN25QF0ReBfaXkhAoawMaAbMmmvf/E3e7TY7DzEs3
	MzbW6BJWFAEVfsgXSSCPvQe308Z1WOEVmrI0bgG5tAwj5Gv8YXBLdUVJpfM1yeCt9fbG4r
	3YumFPXwjmM8P1AcyvfKzMbrctok6F7EPR3uXGaCmTOzbI/5t2dCtfVBIV2+zvIOpQX2wu
	p6CkofdpkjzrrlZDR58Xzu5IyLyAcnQdr/JlnkHL9X26GvLOwD8g0DuZ1Ufx7MmqZ4Fs4B
	9eITi6W37PoYIVxWOdsjTKaePggG/Pd4hZGrx6Zb7yKygskNMYlamauzyKpy4w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <fe0def8b-1c40-471b-92c3-e0d538ae2a29@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH remotes/origin/next 5/5] test: py: lvm: Add basic LV
 activation test
To: "Tobias Waldekranz" <tobias@waldekranz.com>
Cc: barebox@lists.infradead.org
In-Reply-To: <20260917074202.3851071-6-tobias@waldekranz.com>
References: <20260917074202.3851071-1-tobias@waldekranz.com>
 <20260917074202.3851071-6-tobias@waldekranz.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 23 Sep 2026 08:04:13 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_010417_911952_8BAE987C 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Tobias, Only some nitpicking inside. Otherwise looks fine.
    On 2026-09-17 07:40, Tobias Waldekranz wrote: > diff --git a/scripts/lvm-pvs.guestfish
    b/scripts/lvm-pvs.guestfish > new file mode 100755 > index 0000000000..c8d31385f3
    > --- /dev/null > +++ b/scripts [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-58.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:tobias@waldekranz.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1F7212001F2
X-Stat-Signature: tciu8e3qp56gd3odqqose1k4niyrcu63

Hi Tobias,

Only some nitpicking inside. Otherwise looks fine.

On 2026-09-17 07:40, Tobias Waldekranz wrote:
> diff --git a/scripts/lvm-pvs.guestfish b/scripts/lvm-pvs.guestfish
> new file mode 100755
> index 0000000000..c8d31385f3
> --- /dev/null
> +++ b/scripts/lvm-pvs.guestfish
> @@ -0,0 +1,53 @@
> +#!/usr/bin/guestfish -f
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Create a single disk image that holds two LVM PVs. This is used by
> +# the LVM labgrid tests.
> +
> +alloc lvm-pvs.disk 8M
> +launch
> +
> +part-init /dev/sda gpt
> +part-add /dev/sda p 34 8191
> +part-add /dev/sda p 8192 -34

You could use part-set-name to avoid

  WARNING: pvs: Failed to create link from pvs.primary to pvs.1

> +
> +# Keep sizes reasonably small
> +debug sh "lvm pvcreate --metadatasize 4k /dev/sda1"
> +debug sh "lvm pvcreate --metadatasize 4k --pvmetadatacopies 2 /dev/sda2"
> +debug sh "lvm vgcreate -s 4k testvg /dev/sda1 /dev/sda2"
> +
> +# Create an LV with three segments that span both PVs
> +debug sh "lvm lvcreate -y -n testlv -l 8 testvg /dev/sda1:8-15"
> +debug sh "lvm lvextend -l +8 testvg/testlv /dev/sda2:0-7"
> +debug sh "lvm lvextend -l +8 testvg/testlv /dev/sda1:0-7"
> +
> +debug sh "lvm lvs -o lv_name,seg_le_ranges --segments testvg"
> +
> +mkfs vfat /dev/testvg/testlv
> +mount /dev/testvg/testlv /
> +
> +# Generate a test file that:
> +# 1. Is big enough to be spread over all three segments
> +# 2. Contains data that is sensitvie to reordering

s/sensitvie/sensitive/

> +# 3. Compresses well, since we're checking it in
> +debug sh "printf \'0%*s0\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'1%*s1\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'2%*s2\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'3%*s3\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'4%*s4\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'5%*s5\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'6%*s6\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'7%*s7\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'8%*s8\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'9%*s9\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'a%*sa\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'b%*sb\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'c%*sc\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'d%*sd\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'e%*se\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'f%*sf\' 4094 >>/sysroot/bigfile"
> +debug sh "printf \'g%*sg\' 4094 >>/sysroot/bigfile"
> +debug sh "md5sum </sysroot/bigfile >/sysroot/bigfile.md5sum"
> +
> +umount /
> +
> diff --git a/test/py/test_lvm.py b/test/py/test_lvm.py
> new file mode 100644
> index 0000000000..c148571780
> --- /dev/null
> +++ b/test/py/test_lvm.py
> @@ -0,0 +1,76 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later
> +
> +import hashlib

hashlib seems unused.

Sascha


--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



