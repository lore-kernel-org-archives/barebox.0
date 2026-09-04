Delivery-date: Fri, 04 Sep 2026 11:21:30 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2Q6z-00Afwm-1T
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 11:21:30 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lfyIYc3P;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CCD7620248F
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 11:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mi3gM6V9McA49HxG9YpUNZEsdri3rr3PX7DXUam3sBE=; b=lfyIYc3PEpMTXUAkLUVJSvDSl4
	nIENv4ouB6aFB8d+hqfj+oBHw7lbHoG69rpuGb5LylrhPfeFtbNn1eSMd4B8Rasx2gddOKqJc/fYy
	gygQSCm8gdSeUm5oZ0QA17apGG9E9Skvi867FEFRug+NIweA6DgyK8eEBl4RCcLOlqaL6SH5TpyL7
	HzCCsnK3YIJwVwVLTTvIkC/k+mKsyqTWyhZkJF438GCOW+ZDHOldDPhQhJ4oyb84/towzQqBso+fu
	7lhojXKPW/bhsbFZXihJpNF/7MVISgQphukqAZQT4x0KCZjvAsyv29nILq9iaPO8zViuSJd7MNSph
	Thdd2bnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Q5j-00000001Vfo-2JRJ;
	Fri, 04 Sep 2026 09:20:11 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Q5g-00000001Vec-3WBw
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 09:20:11 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1B477202483;
	Fri, 04 Sep 2026 11:20:07 +0200 (CEST)
Message-ID: <d8368237-5d77-41db-8eb7-534e60f5d9f1@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 1/2] fs: __read: fix EOF count clamping for negative
 file sizes
To: "Stefan Kerkmann" <s.kerkmann@pengutronix.de>
In-Reply-To: <20260903-fix-fs_read_write_eof_checks-v1-1-7afd44db1793@pengutronix.de>
References: <20260903-fix-fs_read_write_eof_checks-v1-0-7afd44db1793@pengutronix.de>
 <20260903-fix-fs_read_write_eof_checks-v1-1-7afd44db1793@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 04 Sep 2026 09:20:06 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_022009_033722_4F033B38 
X-CRM114-Status: GOOD (  24.13  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Stefan, On 2026-09-03 18:29, Stefan Kerkmann wrote: > __read()
    clamps count to the bytes remaining until EOF, but compared > the signed
   64-bit f->f_pos/f->f_size (loff_t) against count (size_t), > which is 32 [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Stefan Kerkmann <s.kerkmann@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: shopajbj5kmnk7rxa6ip5wkmx8imk1uo
X-Rspamd-Queue-Id: CCD7620248F
X-Spamd-Result: default: False [-53.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]

Hi Stefan,

On 2026-09-03 18:29, Stefan Kerkmann wrote:
> __read() clamps count to the bytes remaining until EOF, but compared
> the signed 64-bit f->f_pos/f->f_size (loff_t) against count (size_t),
> which is 32-bit on 32-bit arches and 64-bit on 64-bit arches.
>=20
> This made the comparison type targent dependent, breaking it for
> negative file sizes except for the FILE_SIZE_STREAM sentinel.
>=20
> - On 32-bit arches count is converted to the signed 64-bit type of
>   f->f_pos, so for e.g. f->f_size =3D -512 the comparison f->f_pos + count
>   > f->f_size evaluated true. The clamp then assigned the negative
>   difference of f->f_size - f->f_pos to the unsigned count, wrapping it
>   to a value near 2^32 and turning a small read into a huge out of
>   bounds read request.
>=20
> - On 64-bit arches size_t cannot be represented by signed 64-bit, so the
>   arithmetic C conversions turned the whole comparison unsigned:
>   f->f_size =3D -512 was reinterpreted as a value near 2^64, the
>   comparison stayed false and the clamp never ran, leaving count
>   unclamped and the bogus size undetected.
>=20
> __read() now rejects negative file sizes (except for the
> FILE_SIZE_STREAM sentinel) with -EINVAL. Reads at or past the end of the
> file (reachable via pread() with an offset beyond EOF) now return 0.
> Remaining reads are clamped to the bytes left until EOF.
>=20
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  fs/fs.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
>=20
> diff --git a/fs/fs.c b/fs/fs.c
> index dc6c30802d..a8f2b78294 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -427,8 +427,16 @@ static ssize_t __read(struct file *f, void *buf, siz=
e_t count)
>  	if (fsdrv !=3D ramfs_driver)
>  		assert_command_context();
> =20
> -	if (f->f_size !=3D FILE_SIZE_STREAM && f->f_pos + count > f->f_size)
> -		count =3D f->f_size - f->f_pos;
> +	if (f->f_size !=3D FILE_SIZE_STREAM) {
> +		if (f->f_size < 0) {
> +			ret =3D -EINVAL;
> +			goto out;
> +		}

I think we should start by rejecting negative file sizes at open time as
done in the patch I just sent. This is likely not the full solution to
the problem as f_pos + count could still become negative, but we
shouldn't allow to even open a file with negative file size.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



