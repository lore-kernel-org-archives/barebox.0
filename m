Delivery-date: Tue, 19 May 2026 15:14:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPKHY-001VUV-1M
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 15:14:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPKHX-0003j8-Q9
	for lore@pengutronix.de; Tue, 19 May 2026 15:14:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=dqe6aC8syJx1eoSOA0SLoAApyvx2xShRj9Oi0t5kz5c=; b=vM+5/cPUDzBfCRjvXHljMkj9u3
	Q1l7oJi6Yf4KMvJYWcLKjVku3+2e9plg4Rc67gg/lX7QUHfNewHh3qcuSuS2g8lAZK32/3wuT17wj
	bWA/ai3VuhbyKpmO+0Xi/Ygu8+Z2tVA3VFzJcN4XLIe2uhRt5MDdc118DbK42ksZim38ezjad+wmX
	MKQz8Eax5ks8ICAJAeOAToX4IVRm7Fzp17x2ZO3mmA5z1P3eXuf+V3l0OWRoRBMkxLnYnjiL/Lh2O
	f/47qx2fzIjegtDD0W9alYGX6KOPcOMOQG1pKkWCPXLcgOVEkpw32+GTPzOz3rCmH5fWAvPeDd/VH
	oopxk/Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPKHE-00000001bQQ-2DE3;
	Tue, 19 May 2026 13:14:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPKHC-00000001bPh-0Mhc
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 13:14:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wPKH9-0003e1-Gl; Tue, 19 May 2026 15:14:23 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wPKH8-000lqt-2t;
	Tue, 19 May 2026 15:14:23 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wPKH9-0000000HJbn-1VAn;
	Tue, 19 May 2026 15:14:23 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <bc215e77-5721-4bc3-a7e4-b1f77781f529@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 13:14:22 +0000
Message-Id: <E1wPKH9-0000000HJbn-1VAn@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_061426_126697_2181D536 
X-CRM114-Status: GOOD (  25.74  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fs: ubifs: zero initialize allocated inode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-19 15:03, Ahmad Fatoum wrote:
> Hi,
>=20
> On 5/19/26 2:44 PM, Sascha Hauer wrote:
> > UBIFS uses kmem_cache_alloc() to allocate an ubifs_inode. The memory
> > returned from kmem_cache_alloc() is not zeroed. ubifs_alloc_inode()
> > zeroes all fields in the ubifs_inode except the embedded struct inode.
> > In Linux this is done in the kmem_cache constructor function which calls
> > inode_init_once(). In barebox we have the constructor function as well,
> > but we don't have an equivalent of inode_init_once(), so the constructor
> > is empty.  zero the inode in the constructor instead so that barebox
> > gets a zeroed inode.
> >=20
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  fs/ubifs/super.c | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
> > index 45037b42ea..4022270d4c 100644
> > --- a/fs/ubifs/super.c
> > +++ b/fs/ubifs/super.c
> > @@ -1128,6 +1128,7 @@ static void kill_ubifs_super(struct super_block *=
s)
> >   */
> >  static void inode_slab_ctor(void *obj)
> >  {
> > +	memset(obj, 0, sizeof(struct inode));
>=20
> This works because inode is the first member of struct ubifs_inode, but
> I would prefer to avoid depending on that as it might change with a
> future update.
>=20
> Can't we just zero all of struct ubifs_inode here to be on the safe side?

That was my first approach as well, but I was afraid this could be lost
on an UBIFS update.

I could treat obj as a struct ubifs_inode and zero the inode member
instead.

That would have prevented the bug I introduced with the JFFS2 patch as
well.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


