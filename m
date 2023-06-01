Delivery-date: Thu, 01 Jun 2023 09:33:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4coD-005UE0-Be
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 09:33:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4coA-0002eg-Ou
	for lore@pengutronix.de; Thu, 01 Jun 2023 09:33:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=glPKtuDZbSzOPkDPdcgCsB6+WaZ7yBQZiJstaHOcbSs=; b=uatkxX680ovOy4DJsyJ5/dwgNa
	lpDF5HPCn3Jsrbof3nNZEtaYb8JKeYT2xT8gBqvjsWav3CWgIT7WFEtsBKlSTRO65h4F1JhidyRJo
	LxUzQAmiAFRJuDsAA4QUAOt9gxjI6gjcP2JEuwMd1nXJKcBh/xjrXoHIz/H2DMcPIxLcWsrMFFlvY
	g5KcBXy/rjSG3O3ULNDyOHy02b/bvOYdlj0ziN98xKBVtkKV/yn9dDqjIPEG1eYYPthRYAdRe/W8U
	ErKMlBEM7o7FD1JUsslTKpV2LTHP8p+61knILi1hnLULe3JcHH/yfAhtN2C5YoFUU1+7GsNW+Qng5
	D83uaJcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cn6-002N2u-1H;
	Thu, 01 Jun 2023 07:32:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cn2-002N1Z-25
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 07:32:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4cmz-0002ZD-Mx; Thu, 01 Jun 2023 09:32:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4cmz-00024s-Fs; Thu, 01 Jun 2023 09:32:05 +0200
Date: Thu, 1 Jun 2023 09:32:05 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230601073205.GG18491@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-11-a.fatoum@pengutronix.de>
 <20230531172305.cgcargl7mcpevmv3@pengutronix.de>
 <21481bc5-e36f-2bd3-e932-1eb0af71b176@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <21481bc5-e36f-2bd3-e932-1eb0af71b176@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_003208_687506_79FBF0D6 
X-CRM114-Status: GOOD (  33.19  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/18] cdev: have devfs_add_partition return existing
 identical partition, not NULL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 01, 2023 at 06:56:47AM +0200, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 31.05.23 19:23, Marco Felsch wrote:
> > Hi Ahmad,
> > 
> > On 23-05-31, Ahmad Fatoum wrote:
> >> Starting with commit 7f9f45b9bfef ("devfs: Do not create overlapping
> >> partitions"), any overlapping is disallowed. Overlapping can be useful
> >> though to bridge the gap between partition described in DT and via
> >> on-disk partition tables. Let's handle the case of identical partitions
> >> specially and have it neither be an error or a duplicate partition, but
> >> instead just return the existing partition. This existing partition will
> >> be given a device tree node and thus enabling schemes like:
> >>
> >>   &{/state} {
> >>   	backend = <&state_part>;
> >>   };
> >>
> >>   &mmc1 {
> >>          partitions {
> >>                  compatible = "fixed-partitions";
> >>                  #address-cells = <2>;
> >>                  #size-cells = <2>;
> >>
> >>                  state_part: partition@5300000 {
> >>                          label = "barebox-state";
> >> 			 /* will be folded with overlapping GPT partition if found */
> >>                          reg = <0x0 0x5300000 0x0 0x100000>;
> >>                  };
> >>          };
> >>   };
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  fs/devfs-core.c | 50 ++++++++++++++++++++++++++++++++++++++-----------
> >>  1 file changed, 39 insertions(+), 11 deletions(-)
> >>
> >> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> >> index a0732dafca42..b3a274d01ee0 100644
> >> --- a/fs/devfs-core.c
> >> +++ b/fs/devfs-core.c
> >> @@ -402,6 +402,12 @@ int devfs_remove(struct cdev *cdev)
> >>  	return 0;
> >>  }
> >>  
> >> +static bool region_identical(loff_t starta, loff_t lena,
> >> +			     loff_t startb, loff_t lenb)
> >> +{
> >> +	return starta == startb && lena == lenb;
> >> +}
> >> +
> >>  static bool region_overlap(loff_t starta, loff_t lena,
> >>  			   loff_t startb, loff_t lenb)
> >>  {
> >> @@ -412,10 +418,22 @@ static bool region_overlap(loff_t starta, loff_t lena,
> >>  	return 1;
> >>  }
> >>  
> >> -static int check_overlap(struct cdev *cdev, const char *name, loff_t offset, loff_t size)
> >> +/**
> >> + * check_overlap() - check overlap with existing partitions
> >> + * @cdev: parent cdev
> >> + * @name: partition name for informational purposes on conflict
> >> + * @offset: offset of new partition to be added
> >> + * @size: size of new partition to be added
> >> + *
> >> + * Return: NULL if no overlapping partition found or overlapping
> >> + *         partition if and only if it's identical in offset and size
> >> + *         to an existing partition. Otherwise, PTR_ERR(-EINVAL).
> >> + */
> >> +static struct cdev *check_overlap(struct cdev *cdev, const char *name, loff_t offset, loff_t size)
> >>  {
> >>  	struct cdev *cpart;
> >>  	loff_t cpart_offset;
> >> +	int ret;
> >>  
> >>  	list_for_each_entry(cpart, &cdev->partitions, partition_entry) {
> >>  		cpart_offset = cpart->offset;
> >> @@ -428,20 +446,28 @@ static int check_overlap(struct cdev *cdev, const char *name, loff_t offset, lof
> >>  		if (cpart->mtd)
> >>  			cpart_offset = cpart->mtd->master_offset;
> >>  
> >> -		if (region_overlap(cpart_offset, cpart->size,
> >> -				   offset, size))
> >> +		if (region_identical(cpart_offset, cpart->size, offset, size)) {
> >> +			ret = 0;
> >>  			goto conflict;
> >> +		}
> > 
> > The 'goto conflict' is a bit misleading here since this is no conflict
> > as you described within the commit message.
> 
> It's still a conflict, but one that can be resolved by returning the existing
> partition.

As a compromise you could use a 'conflict' and 'identical' label and
place them directly under each other. No functional change, but makes
the intention clearer.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


