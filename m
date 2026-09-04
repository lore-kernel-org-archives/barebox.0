Delivery-date: Fri, 04 Sep 2026 13:14:49 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2Rse-00AiGA-2r
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 13:14:49 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ysxKFXbx;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6418F205858
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 13:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7/80/ash5WyQ6eEsBJUrM6GSITl7TUhNwlCSLJ38WRY=; b=ysxKFXbx7HN0+OfVfnOBoVDLhv
	z9SmdV0vlamm8QRLODJqWqMkV81mmXFRyttWei+iDH2o4I2IOQaX7OyP8wR0iad0MbhSAhEp60p7e
	ekdh29T6Rm6hMziNAJANCNMY4KkZ7NwY3YSRilmRyQKDz8AViq14XRtSoMLcWgP17+QMh8BhRIaC7
	hGPiqqtQxPW6z4FGmXsz8bHJFFXjivUh7HRFCdRJyLUH5maCJT+kUVd+hSs1HvOuXtGdlVGjpl6KT
	R/Rb8Yr9PgmKuz0HecZYsbip0HD84iwOnFGXrSxzfw06rZuOUyxJ0krmG9YPECLUrzbBASnJMQFoS
	TIarNbVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2RrD-00000001n79-0Koi;
	Fri, 04 Sep 2026 11:13:19 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Rr8-00000001n6S-3QRE
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 11:13:17 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EB540202487;
	Fri, 04 Sep 2026 13:13:08 +0200 (CEST)
Message-ID: <94032e43-342e-4bff-86d8-8294242760c1@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] fs: reject inodes whose size the superblock cannot
 address
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <d7196138-b6c4-47ec-b405-bd5e2160c6e3@pengutronix.de>
References: <20260904091551.3713729-1-s.hauer@pengutronix.de>
 <d7196138-b6c4-47ec-b405-bd5e2160c6e3@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 04 Sep 2026 11:13:08 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_041315_206963_49D2F2D7 
X-CRM114-Status: GOOD (  28.42  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-09-04 13:05, Ahmad Fatoum wrote: > > > On 9/4/26 11:15
    AM, Sascha Hauer wrote: > > f_size is an alias for the inode's i_size, and
    filesystems read that > > size straight from untrusted media. [...] 
 
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
Cc: Barebox List <barebox@lists.infradead.org>, Stefan
 Kerkmann <s.kerkmann@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: owfgy6jektph3p4rtmqgs767mmr75zej
X-Rspamd-Queue-Id: 6418F205858
X-Spamd-Result: default: False [-55.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]

On 2026-09-04 13:05, Ahmad Fatoum wrote:
>=20
>=20
> On 9/4/26 11:15 AM, Sascha Hauer wrote:
> > f_size is an alias for the inode's i_size, and filesystems read that
> > size straight from untrusted media. ext4's ext4_isize() builds it as
> > ((loff_t)size_high << 32) | size, so bit 31 of size_high lands in the
> > sign bit; squashfs takes an unchecked le64 for LREG inodes. A negative
> > i_size then feeds the offset arithmetic in __read(), __write() and
> > friends, where it either wraps a size_t count to something huge or --
> > depending on whether size_t is 32 or 64 bit -- turns the comparison
> > unsigned and skips the EOF clamp altogether.
> >=20
> > Catch this the way Linux does: give the superblock a ceiling and refuse
> > sizes beyond it, instead of hardening every arithmetic site. Default
> > s_maxbytes to MAX_LFS_FILESIZE in init_super(), which runs before the
> > driver probe, so the filesystems that already lower it (jffs2, ubifs,
> > squashfs, 9p) keep doing so and everyone else stops sitting at zero.
> >=20
> > The check goes into do_dentry_open() rather than into iget: ten drivers
> > only learn the size in their ->open() callback and write it to the
> > inode through file->f_size, so a lookup time check would miss them.
> > Casting to u64 makes a negative size exceed any sane s_maxbytes, so the
> > sign is covered too; FILE_SIZE_STREAM is negative on purpose and has to
> > be excluded.
> >=20
> > Assisted-by: Claude:claude-opus-5
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  fs/fs.c | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >=20
> > diff --git a/fs/fs.c b/fs/fs.c
> > index ce41f23f88..9518f28539 100644
> > --- a/fs/fs.c
> > +++ b/fs/fs.c
> > @@ -986,6 +986,7 @@ int fsdev_open_cdev(struct fs_device *fsdev)
> >  static void init_super(struct super_block *sb)
> >  {
> >  	INIT_LIST_HEAD(&sb->s_inodes);
> > +	sb->s_maxbytes =3D MAX_LFS_FILESIZE;
> >  }
> > =20
> >  static int fsdev_umount(struct fs_device *fsdev)
> > @@ -2613,6 +2614,14 @@ static int rmdirat(int dirfd, const char *pathna=
me)
> >  	return errno_set(error);
> >  }
> > =20
> > +static bool i_size_valid(struct inode *inode)
> > +{
> > +	if (inode->i_size =3D=3D FILE_SIZE_STREAM)
> > +		return true;
>=20
> Is FILE_SIZE_STREAM not a barebox convention? Couldn't a file system
> have on disk FILE_SIZE_STREAM and trigger misbehavior this way?

Hm, right. At this point we cannot distinguish between a valid
FILE_SIZE_STREAM and a value from a corrupted filesystem. Maybe we
should make this an extra field in struct inode rather than overloading
i_size with this information.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



