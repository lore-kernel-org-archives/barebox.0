Delivery-date: Thu, 12 Nov 2026 10:55:24 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRRWd-00A0Ll-2J
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 10:55:24 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6084D2016F4
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 10:55:23 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=K5h2lQGa;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gADxdC6w;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794477323;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=meoWkJ0D9hfBVb7/nhKWU/0YOEoERzjL1joX2gbtlkQ=;
	b=Zcu0LwHD9QcBc6O5KU7hYx6dlOpOZpxA+vV5FJrS6htjCaKt/rbdMpOXv6wMorSBnM/uE+
	OfsbVUneODh0B5c/yVeE4WwvvrspVSDs0v65mwlepbxVDc44IGFeqDV925+2nsNTTXTvR+
	Xg3ZLUbV5oQoFloCqyhpHGS2nDDOIjK152xlnpw6nkHDzfkYx8P2q28ooBlfaOG6cOEZl2
	cGA0HzAR3T+8PWs67ziBMVOAMRj5r0SgPahinpZHldxVTPEyOT4VyrLBUUkl00IhDiJS+A
	n9S347+0bdlXL5apxaijdHun83PFyM0zlcfSFTv0gOghjCq7LAmrY4BY8CGjlw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794477323; a=rsa-sha256;
	cv=pass;
	b=cqG21yR5JyMZa66XzulsrQxv622nT1dElzWmsqaIbPzUK1rNMXnWXTGby5GKuQQq1Ii6CU
	UzsV0GRC6uKuZFzGmuY9Awro5AcdFPeMDnJKpG557MnQe2oCFwNK9Szzf/g+1pIaiRBiq2
	U8kI772dsPZRLWmQBhRCokB1g2zr40dSjOZMpnSHRH+4sVn/Bn/B/kFvJNX1UOPa/4X5Ks
	U3tE8SPlKZBWp1kVFhCTrwYzB+uqM5j7pQ3+32mmn6TXM9EyMivLoVTB4pUe61VR/YMIo4
	dk79bZNDmofn45wtp5fEcsssFzD1iA+N6F1MIu+VgEutqqmXnfHsvacvyfDvZg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=K5h2lQGa;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gADxdC6w;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=meoWkJ0D9hfBVb7/nhKWU/0YOEoERzjL1joX2gbtlkQ=; b=K5h2lQGaPTRfWP
	iuNHn0wpa2hE3QQTp0UhCX4VCxKRwVhv4iWH2/4DkLKQ6lCcDKYF+BRiPwOaKqhqRWV+10HKY1ce1
	ibNE+Bycef3ZgkPnMmlbGu+C08z/ZybQQeQPQxPDpHXY+/UctIi7Mn19iboshQeuB6FbP+p23CUuq
	Yu3/l5FVJJItUfBpoIOIUa5r9csLbeSzXPkHUwE3WZGrU8KJeIC/+Wj83IoIcj4H6bNEe+0IgtOCf
	Jyf0SoHepgD0mDvoTX+semgXa+vtLUCr9encg32m030txihfVHZTXgU9TT4KpCZFxNQufi2oDAAz4
	KopoYsxctNI/xFp+Qt/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQ4M-000000094si-1LRI;
	Thu, 12 Nov 2026 08:22:06 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQ3p-000000094gY-1pW5
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 08:21:47 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A35822016F4;
	Thu, 12 Nov 2026 09:21:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794471691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=meoWkJ0D9hfBVb7/nhKWU/0YOEoERzjL1joX2gbtlkQ=;
	b=gADxdC6w7KWo42jVWe6/3eSYMvBjpIkKYwgL+pzF9ZepRsjxuoIq/Mqe3g+REhNj8DQAI6
	bMsioo4jfJfdZm78IfXsqilurvYdtW3Hy0pzjsmZjiHf7+k99wXsF0orWNg0ArGMm+8VYs
	dSu/HnNVCBGKXZUewUQC+Oa/fFYaOox/JF7W+CXmDcKB2MIgzONPRJ33agT0EFs3QXIzyY
	1WCVd4F5nLJ7lYG9GVEzKB+ygaL05qNqg/3oUIBSecm+3Hf14Yn/o/R/adC1NK+VV/I0Od
	C3F31D/LK538sipcdj9X2DHydt4NlETCIgKvG5AmZfQcCa2f/hoSuBcgNl7pGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794471691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=meoWkJ0D9hfBVb7/nhKWU/0YOEoERzjL1joX2gbtlkQ=;
	b=Tp2uHhcJnV5nz+Uun1bFetxUmWy3xJcUAYsx72DnpH0rKpbQ2WlyYsOojE2wAlWABgoOzS
	VM+fHtUSC0PYPdtgk3EaaWXWXj04enLZWW65XUAKXNTofgZQSsGcnajuOlu6BqcHcrcpBI
	aSRbgfcd28hPvHbPIYT8W2pGyeiLjwd+vgc1z0WN6mgAghwA2x0n1gwW5lofw8LbPhYrME
	WNggCwZPOj5MeOeGlXGEZfIQ3kEVxWwyHrq3V7QRqlsvTubkMrlGHUdqcqIFlN///YCEYO
	1F8XyFmEr3yD2mYfxw3dQs7VgXm0FMkCay0e1JDOoLvo4Ibm3zBcTJURPO9oOQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794471691; a=rsa-sha256;
	cv=none;
	b=OVqFgdClopgPeCqfGXJcwtnfS3hv5rQJfr4DWQsM70oLXyovVP4/Giz0/1YIs/I1Ko0Xeg
	DYeASUaROWV/jJPSNW88EOV1KJNssbp8DeVv8M22epitMFacRPWC1NppvSyB/j9YVXWqw+
	uOD6OXqCcJJPIz5WBH2wqbMFCN8nyNLmCm6ChJR3JQOVj7N8uE/Ry+qljPPYbVdiR2aMyF
	fPPHIyKwoMGx++jgebVCjVBoIWggzwoS5Xww8TOZCPDJ/yf4GKSaBfFfzLXleS5k8iYy8Q
	0w0CscLgWvfeQUM1d2sbOMiZ3shGuVWuYFQnCxrP8CghxJufcTLutJs6avJ5tA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <51129b92-06ff-4de9-89b6-5503e1cf33e8@pengutronix.de>
Date: Thu, 12 Nov 2026 09:21:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/10] Documentation: migration-guides: describe reverting
 boot globalvars
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
 <20261030-boot-globalvar-stack-v1-10-a03803e1100c@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-10-a03803e1100c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_002135_347548_273CED82 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 11:54, Sascha Hauer wrote: > Describe that the
    boot related globalvars are now reverted after > booting, that the .dyn infix
    is no longer necessary and that the order > of the Kernel comma [...] 
 
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 6084D2016F4
X-Stat-Signature: iykpdjcbh1j5h36p3gjwkdd63eotmeih
X-Rspamd-Action: no action

On 10/30/26 11:54, Sascha Hauer wrote:
> Describe that the boot related globalvars are now reverted after
> booting, that the .dyn infix is no longer necessary and that the order
> of the Kernel command line options may change.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Got a comment below, but otherwise:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  .../migration-master/boot-globalvar-scope.rst               | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/migration-guides/migration-master/boot-globalvar-scope.rst b/Documentation/migration-guides/migration-master/boot-globalvar-scope.rst
> new file mode 100644
> index 0000000000..d7e322ca0b
> --- /dev/null
> +++ b/Documentation/migration-guides/migration-master/boot-globalvar-scope.rst
> @@ -0,0 +1,13 @@
> +Boot related globalvars are reverted after booting
> +--------------------------------------------------
> +
> +``global.bootm.*``, ``global.linux.*``, ``global.of.*`` and
> +``global.boot.watchdog_timeout`` are now snapshotted before each boot
> +entry and each bootm and restored afterwards, so changes made while
> +booting no longer leak into subsequent boot attempts.
> +
> +Boot entries therefore no longer need to put Kernel command line options
> +into ``global.linux.bootargs.dyn.*``. The boot entries shipped with
> +barebox have dropped the ``.dyn`` infix. As the bootargs variables are
> +concatenated in lexicographical order, the order of the Kernel command
> +line options may change.

As mentioned I'd leave it for blspec/extlinux. I am fine with the rename
for the net boot scripts as these aren't used for regular boot anyway.

> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


