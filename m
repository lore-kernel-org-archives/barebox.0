Delivery-date: Fri, 06 Dec 2024 10:57:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJV5A-004gtm-2z
	for lore@lore.pengutronix.de;
	Fri, 06 Dec 2024 10:57:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJV5A-0006eT-Re
	for lore@pengutronix.de; Fri, 06 Dec 2024 10:57:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u+WaRewBeq0L436ori2dekhnJpF6CdPms0SLy1LJHcs=; b=phoUXRZLO9pM6DXWig8nEJsc/7
	WteBedsip6LEo66YSHwR8PkdyeM36Yo44PS0GMSCrWGHvyQRLMpxb5dvG+3Ap0UvH5AIJVLp7j7ao
	G+v/3uCNR26WSL11j1YAXYZm+5vPHn8KyNLnG3z+wTkjkRJYBRF2TL4TXy9eeXOUyNGfkVdHUIiUC
	6cGVEc1y8eXFWKbUjsxmX6rVfTBZthS9QNmoaZ4aJXtdrOWGVHd6bgytMbGq5yhL7e+dTOcAwVDdN
	0IhebmyoSSKpATPL8LKD7t71NrseJS6pO8MZckDRg2lH9j027tbj/WYdjU7llTGsIjglfeSJ49CQZ
	gZGs2sRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJV4l-00000001ANC-2C5Z;
	Fri, 06 Dec 2024 09:56:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJV4P-00000001AI5-0U4p
	for barebox@lists.infradead.org;
	Fri, 06 Dec 2024 09:56:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tJV4M-0006Rh-4e; Fri, 06 Dec 2024 10:56:18 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tJV4L-001yYa-0a;
	Fri, 06 Dec 2024 10:56:17 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tJV4L-000lbh-2m;
	Fri, 06 Dec 2024 10:56:17 +0100
Date: Fri, 6 Dec 2024 10:56:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>,
	barebox@lists.infradead.org
Message-ID: <Z1LKQd-Yrg2YX7Ry@pengutronix.de>
References: <20241204152625.17529-1-abdelrahmanyossef12@gmail.com>
 <CAP1tNvTf-pKpnO9S_Lo512WscXSVTeA+vxED9eQEtWo0Dof7zg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvTf-pKpnO9S_Lo512WscXSVTeA+vxED9eQEtWo0Dof7zg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_015621_155351_15179040 
X-CRM114-Status: GOOD (  22.21  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] partitions: efi: Check GPT header size against minimum
 limit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Dec 04, 2024 at 09:18:58PM +0300, Alexander Shiyan wrote:
> Hello.
> 
> Maybe it's better to use sizeof(struct _gpt_header) ?

Changed to use sizeof while applying

Sascha

> 
> Thanks!
> 
> ср, 4 дек. 2024 г. в 18:30, Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>:
> >
> > In https://git.pengutronix.de/cgit/barebox/commit/?id=a9c6ad764144, we were
> > checking if the GPT header size is exceeding the maximum limit.
> >
> > This is a follow-up patch to check if the header size is less than
> > the minimum limit which is 92 as per this documentation
> > https://uefi.org/specs/UEFI/2.10/05_GUID_Partition_Table_Format.html#id14
> >
> > Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> > ---
> >  common/partitions/efi.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> > index 8014579b67..a4e60c3c98 100644
> > --- a/common/partitions/efi.c
> > +++ b/common/partitions/efi.c
> > @@ -190,7 +190,8 @@ static int is_gpt_valid(struct block_device *blk, u64 lba,
> >                 goto fail;
> >         }
> >
> > -       if (le32_to_cpu((*gpt)->header_size) > bdev_logical_block_size(blk))
> > +       if (le32_to_cpu((*gpt)->header_size) < 92 ||
> > +        le32_to_cpu((*gpt)->header_size) > bdev_logical_block_size(blk))
> >                 goto fail;
> >
> >         /* Check the GUID Partition Table CRC */
> > --
> > 2.43.0
> >
> >
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


