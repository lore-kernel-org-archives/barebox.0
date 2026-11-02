Delivery-date: Mon, 02 Nov 2026 11:23:02 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNpBu-006L0b-0h
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 11:23:02 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1B71220177D
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 11:23:02 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Zhn7WQQC;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BeCbxgEk;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793614982;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=DuoqVQDVDj6XXOdCS8LQXR005Sxwi4akqA9Wj6cZCHo=;
	b=ZQ1KasZd0XeRzhYPg8ucKMp59lpgMJJf+gi7NL563pqRcIgLLGy99CoInYZS86SgDIuIbT
	XfA/Kjgh0Ga3BCJqDEuzvmuqb1kesc2QrllrQxSoPI1Qa4RXxedukPqt5ZlQsfvl8KtkJL
	gxf4xNA8bQAPN537anbI7/ynH0Jkw0PyjJApvt9IrH5Pz9we1OsmKd52/uY11+/S0YalVy
	bVLDPWaIs5P6qwbMwn2/iRkl9QVQmq+Gb2iDLohgemOeCgaDU1srCGuVp4e5RmPCUzk8YB
	xsUD7/rdtpNzWKu8cL/kaXerRcnF9qoiggHSziNqiwQLZJhfLhkvRiGsVo8+Gg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Zhn7WQQC;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BeCbxgEk;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793614982; a=rsa-sha256;
	cv=pass;
	b=XzYKH2aWutWlAhLJKt7pwGjEcZtegRvZicP+g++7qwCrb7TrJAszN1FtVXUgR9oxAx2vtL
	3mngk6vK3AtiLcxGyTn4qEri7VlC7GmuzUEpwKgvl8AU0KpSIRqoEvUZdC03bjTPOVejVz
	0v7il15VCqQaC+u1pRKeBkSID0V6wQG/c3+jSBsmn+DAsxv2zTHNhUT4MH0wVgHmrKz2er
	RmlGnkNv3ISBSzgC/6OI2ejAyEhUoMOlOllKrcw+tsl+qpYtA6FRNyvcg+CmMC1TqP9apw
	yiY231HsdPKRX9JMcA0CvW21sC5wHvEcRUMavG21JnA/khvv2EovS9M2aJtGLw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=DuoqVQDVDj6XXOdCS8LQXR005Sxwi4akqA9Wj6cZCHo=; b=Zhn7WQQCh/Ez2b
	0CSZCbZuWST894n3n7Y2g6zHx4AAhF+/z/A+3XL1j1buKxB+QtTMQh54/GomltP8YOO4Itul+U68+
	rL18Ds2QH2/nBQW0hWSgcogXI2GqNu/+0Wc4s1HBhY+3/OqNW/UYoR6ztYrORhr0zGH5d7j//P9Oo
	GukeL3d/WN+72PBKb1RnPRuC+La61z1qP51V0otgNl3Anj2j/gmQrQRebf8d0UwhLbj17ryJ+koxi
	g1YnlikU4HPK8EgYgUOgJ6uWTbTYDwkh6dyX/fby3x6q4m4XY/2QJKbkTuTG4yuAYD3F/GQz77Hz9
	4hZTJpGa57qJTP4JFKgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpAs-0000000G9WW-1mwc;
	Mon, 02 Nov 2026 10:21:58 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpAp-0000000G9VC-12Rf
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 10:21:57 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E5C7E20177D;
	Mon, 02 Nov 2026 11:21:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793614912;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DuoqVQDVDj6XXOdCS8LQXR005Sxwi4akqA9Wj6cZCHo=;
	b=BeCbxgEkpeD728NDVMEJdf/zdCZHGF4/1MxqxFemzBon1xL2ZxYYN9sHaRBil5EWmG8RlA
	E7A47WPu06WvNVAdX4pUOenstGi3bp/v4Au8q6x5LtfgWx9kzJ5+dYczOoPBp2GJHnqosW
	0xVBtK0aOlTyv4NriPXxGxFn1bjtZkDlMEcImhiyBfYW+YKj7wAVuK5O81vrMowp6JaKIk
	FsPA8LycXHyU2seK9yFTPmtbLRCd+OXsL+JC+BwQ1JybXJRX6XJJ7Zn6YtKkXF16FF2egB
	PXqTZwIXHuj9SWOHvXY9fKFhc8F20t7S7hZh29CRoMJCl99QARue1UEc6e5qLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793614912;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DuoqVQDVDj6XXOdCS8LQXR005Sxwi4akqA9Wj6cZCHo=;
	b=HwBiXajxvD/wOut26z2fXM0ZnDZrMI04u0A94KfOne+9pAOborTFfsRoU5KYiyf+GAGDv0
	x6CMAUmqeeYXpsZk5MrVn2onbLVNMQt/fCptmqFznl9YlGgcEuy5VcjHXxHGZVbSO2Wxxs
	A/wEigx6+SNHqS1jloB4IHYWJoBdNLxoGSflnZjoMMqlfvZbvHRWwcsZOGEUg5y78pBI0Y
	vW6r/P0MTj+5tja+mawqixTIGYNfV+VCjS/uzlUeoqoo72CceYIcbMcW1XeXMzCnR61/xc
	XxxumbwZa8VQY52uhT/iHVKxB64/weey8ZHTHoJ70QRk/I7H/erUTSN4W5fygA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793614912; a=rsa-sha256;
	cv=none;
	b=cRLGZfM+X2cxUBcH5KaBKjbhvAPl3xZXEU9CElnLf6ODXxo4PUW/iPWpsnw7EKGQ8f+0qY
	AYLDN+EcEgChdzJsfZIGMvy2JYG9uhXQnhTNp38uhQ91avu/DLMzNJAt7OTStg1NH+qXE/
	7DXbqKhC9oINIgGFKqysn59y06QvrBHnec/gspJvARbbtezVeuGCJkLsAemDfv9pr9X1ax
	u4a+KcrGGwn89TqdAzoAMIWIKRLtpKmGc1sy12qt5is4GQ8PGW+geD98FnNPCi/ivJ222e
	qsQn0251duw08iemwycdUIwaNfrm4OUxLcqgk0c8YZT/VOp0w6djoHC0B96FuQ==
Message-ID: <8953d8c7-38ef-44a0-b0aa-4cf8e5d609ad@pengutronix.de>
Date: Mon, 2 Nov 2026 11:21:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] fs: return error pointers from ->get_link() on
 failure
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261102-fs-getlink-fixes-v1-0-c2816b3f5ca8@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20261102-fs-getlink-fixes-v1-0-c2816b3f5ca8@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_022155_448224_6AC2C55F 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Sascha, On 11/2/26 10:08 AM, Sascha Hauer wrote: > Like
    in Linux, the callers of ->get_link() expect an error pointer when > the
   link can't be read: readlinkat() checks the result only with > IS_ERR() before
    [...] 
 
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
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: gpgtk7kiw1c6saa16xbryncqpebqwxiu
X-Rspamd-Queue-Id: 1B71220177D

Hello Sascha,

On 11/2/26 10:08 AM, Sascha Hauer wrote:
> Like in Linux, the callers of ->get_link() expect an error pointer when
> the link can't be read: readlinkat() checks the result only with
> IS_ERR() before copying from it, and path lookup takes NULL to mean that
> the link has already been followed and continues from the directory
> containing the link. barebox has no nd_jump_link(), so a NULL from
> ->get_link() is never legitimate there.
> 
> 9p and nfs already return error pointers, and the squashfs series posted
> separately converts squashfs_get_link(). This series converts the
> remaining file systems:
> 
> - legacy returned NULL when the driver's readlink failed.

What do you think, is it time we (meaning you, because you said the
l-word) do something about the legacy file systems? :D

Cheers,
Ahmad

> - cramfs and ext4 checked their read helpers for return values these
>   never produce, so a link that couldn't be read was returned as a valid,
>   partly zeroed link and stayed cached in inode->i_link.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Sascha Hauer (3):
>       fs: cramfs: return an error pointer from cramfs_get_link()
>       fs: ext4: return an error pointer from ext_get_link()
>       fs: legacy: return an error pointer from legacy_get_link()
> 
>  fs/cramfs/cramfs.c    | 7 +++++--
>  fs/ext4/ext_barebox.c | 3 ++-
>  fs/legacy.c           | 2 +-
>  3 files changed, 8 insertions(+), 4 deletions(-)
> ---
> base-commit: f2e574b9c63c6da07a06179a868cae8a471ec176
> change-id: 20261102-fs-getlink-fixes-d634fd50d1f9
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



