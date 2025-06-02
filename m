Delivery-date: Mon, 02 Jun 2025 12:14:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM2Bk-002vLI-16
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 12:14:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM2Bj-0001mt-OI
	for lore@pengutronix.de; Mon, 02 Jun 2025 12:14:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x9r/brGVdbwhvda2Gu9T3g/0o0rUV0eeTE0xkpnPdVg=; b=YgXi9QC9Yhc+F4PfTPbHhWc7uo
	gcvQw0cEKzZErrBtYz3E9g8QqKphzZShSYlTwnhAgMmKT1LNkc9ucrT83VAe86Eu+abDbJJo6DXhu
	OAPuKBObkkHVoAsFJLUUafQh3S3UVHyjNN6zT+025s2ZaNA0f1ENHxQli8zI5dbEf/NJQjpCyVl/n
	MkjW6mO64DJyDLqwjZWiVGHuLfIRX/BnUnCAsoHDY5jAQITfbIMbzcdCW6Lpfhp1hzhdkscczg2rK
	sTLF/f+ojxFykWWQfqx1S9wLGbcCAYDFn1wQdUt9r06Zxe3GEbIWkyR0Agfa2xOIOi8JAXKcVTOIS
	AYYxad1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM2BK-00000007APY-0eeR;
	Mon, 02 Jun 2025 10:14:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM29b-00000007AJY-052m
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 10:12:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uM29Z-0000xt-ER; Mon, 02 Jun 2025 12:12:25 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM29Z-001RBI-0q;
	Mon, 02 Jun 2025 12:12:25 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM29Z-006bjo-0B;
	Mon, 02 Jun 2025 12:12:25 +0200
Date: Mon, 2 Jun 2025 12:12:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aD15Cc9vcj73bvW_@pengutronix.de>
References: <20250602-cdev-part-fixes-v1-0-814d9aa195ed@pengutronix.de>
 <20250602-cdev-part-fixes-v1-1-814d9aa195ed@pengutronix.de>
 <52114d62-823e-4fef-8fa1-d4f55c35f371@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <52114d62-823e-4fef-8fa1-d4f55c35f371@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_031227_057776_DE195A65 
X-CRM114-Status: GOOD (  29.61  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] cdev: pass master cdev to cdev ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jun 02, 2025 at 11:03:56AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 6/2/25 10:51, Sascha Hauer wrote:
> > cdev partitions are cdevs themselves, but they are handled internally in
> > the devfs-core. cdev partitions should not be passed as context pointers
> > to the cdev ops though, because the drivers might do a container_of() on
> > them to retrieve their driver data. Pass the original cdev the driver
> > has registered as context to the ops. With this we can drop some quirks
> > in the nvmem core in the next step.
> 
> Given that read/write and so on take absolute offsets, I agree that this
> is a sensible change.
> 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> With below nit addressed:
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> > ---
> >  fs/devfs-core.c | 53 +++++++++++++++++++++++++++++++++++++++++------------
> >  1 file changed, 41 insertions(+), 12 deletions(-)
> > 
> > diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> > index 5fafcaecc70d63287e0b716cc0133198c28e79e9..73a13be7336df1eb4e24e8a936986b6069f3783c 100644
> > --- a/fs/devfs-core.c
> > +++ b/fs/devfs-core.c
> > @@ -224,12 +224,21 @@ int cdev_find_free_index(const char *basename)
> >  	return -EBUSY;	/* all indexes are used */
> >  }
> >  
> > +static struct cdev *cdev_get_master(struct cdev *cdev)
> > +{
> > +	while (cdev && cdev_is_partition(cdev))
> > +		cdev = cdev->master;
> 
> This can be made into a simple if condition as we do not support links
> to links, see cdev_readlink.

This patch is not about links, it's about partitions and we can indeed
partitiion a partition.

You can try with

addpart /dev/imx-ocotp 128@0x10(foo)
addpart /dev/imx-ocotp.foo 64@0x10(foo1)

reading from the latter fails with a core dump without this patch.

As far as I can tell links are not affected by this problem as we always
resolve links by doing a cdev = cdev_readlink(cdev), so the link cdevs
are never passed down to drivers.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


