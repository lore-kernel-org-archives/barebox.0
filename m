Delivery-date: Thu, 24 Apr 2025 22:39:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u83M9-0050Fz-2C
	for lore@lore.pengutronix.de;
	Thu, 24 Apr 2025 22:39:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u83M9-0004h7-3C
	for lore@pengutronix.de; Thu, 24 Apr 2025 22:39:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GdYOUfBCLq9fOjmJ9m10VpcPBdKTiExf4fEqaKobcdU=; b=0CfyuEBqrpRznoXQDHgXkPVrRy
	Z4LdTSdNrpFoBM13Bx2ME8v+JBkEoCm2RqKx6SrOC4RS/DVI7ETlfcfmu7AZpjqds3r3B4p8eKLF7
	niv46AzgPKcOBGNc265lkkQAg+n8fqeuvv7QUk1djZ+BOOwxQNvBc1yGsRbT14/iJ41mpZTyvlEu7
	mygw6fWbmnbEpXlpKlPKF7Bt//zymCYtDJriulUYfA+gRLrsfW4y3cYZ0VZOSP+BvtbPR24UN2cbD
	Bw5tpXgFrzWHj8r2lOHb7j6+4OburCNjy4+MFjqH4jBFMCS1Sh5XlHpxvRwqPRFTSfJKzWnGUzaNZ
	x0Scb/CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u83LW-0000000FM58-3Sct;
	Thu, 24 Apr 2025 20:38:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u83HI-0000000FLle-0PdR
	for barebox@bombadil.infradead.org;
	Thu, 24 Apr 2025 20:34:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=GdYOUfBCLq9fOjmJ9m10VpcPBdKTiExf4fEqaKobcdU=; b=hFjR2dvvfoQX7AEYsX8sAIOTm+
	vCwgrEV0yl+en9g6+7dMCEmhMYvPVqJTK6J5NEoSaNWT8SY//l9qKWCJ3sEf1qZXcLhRUeHPR/g7w
	DTKCeNjMcr1H+RyHdHly7S3rHVRL6tuG3M5VkOeaIE+cuRr80YcwZG6wgqfiaP0f+A8A41wLvfqT0
	qTt0Y10HN99FHX/tt6+Z4TXAfWv+gmrjxc5eVrcaW1COid1cCC+disRSIiQOiP/A/rCS9jhrDueAq
	qJ+MwuWGJoeLSStoO2OWFMaA9uhX6/IcPC//HyZGBQ8vVz0gUUmpmE2klZ16XKN1RHj5yOuiF90fK
	RiXBfTIw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u83HE-0000000Bw4l-3Ze1
	for barebox@lists.infradead.org;
	Thu, 24 Apr 2025 20:34:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1u83HC-00022W-AQ; Thu, 24 Apr 2025 22:34:30 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u83HC-001w9h-0R;
	Thu, 24 Apr 2025 22:34:30 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1u83HC-001SBK-04;
	Thu, 24 Apr 2025 22:34:30 +0200
Date: Thu, 24 Apr 2025 22:34:29 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250424203429.yfdk36fphj4j5ffq@pengutronix.de>
References: <20250423140913.1530237-1-m.felsch@pengutronix.de>
 <20250423140913.1530237-2-m.felsch@pengutronix.de>
 <aAon8N28ujN0YTaL@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aAon8N28ujN0YTaL@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_213433_157813_91776438 
X-CRM114-Status: GOOD (  21.20  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/4] parted: add support for gpt-location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-04-24, Sascha Hauer wrote:
> On Wed, Apr 23, 2025 at 04:09:11PM +0200, Marco Felsch wrote:
> > Add support to place the GPT partition entries to random places instead
> > of LBA2.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> > v2:
> > - new
> > 
> >  commands/parted.c | 29 +++++++++++++++++++++++++++--
> >  1 file changed, 27 insertions(+), 2 deletions(-)
> > 
> > diff --git a/commands/parted.c b/commands/parted.c
> > index 90cee1ede10e..895c06524d4c 100644
> > --- a/commands/parted.c
> > +++ b/commands/parted.c
> > @@ -224,6 +224,30 @@ static int do_mklabel(struct block_device *blk, int argc, char *argv[])
> >  		return -EINVAL;
> >  	}
> >  
> > +	if (argc == 3) {
> > +		uint64_t mult;
> > +		int ret;
> > +
> > +		if (!strcmp(argv[1], "msdos")) {
> > +			printf("gpt-location not supported for msdos partitions\n");
> > +			return -EINVAL;
> > +		}
> > +
> > +		ret = parted_strtoull(argv[2], &gpt_location, &mult);
> > +		if (ret)
> > +			return ret;
> > +
> > +		if (!mult)
> > +			mult = gunit;
> > +
> > +		gpt_location *= mult;
> > +
> > +		/* Ensure alignment */
> > +		gpt_location = ALIGN(gpt_location, SECTOR_SIZE);
> > +		/* convert to LBA */
> > +		gpt_location >>= SECTOR_SHIFT;
> > +	}
> > +
> >  	pdesc = partition_table_new(blk, argv[1], gpt_location);
> >  	if (IS_ERR(pdesc)) {
> >  		printf("Error: Cannot create partition table: %pe\n", pdesc);
> > @@ -236,7 +260,7 @@ static int do_mklabel(struct block_device *blk, int argc, char *argv[])
> >  		partition_table_free(gpdesc);
> >  	gpdesc = pdesc;
> >  
> > -	return 2;
> > +	return argc > 2 ? 3 : 2;
> 
> Optional arguments are not supported by parted. You can pass multiple
> commands to parted, e.g.
> 
> parted /dev/mmc0 mklabel gpt mkpart foo ext4 4MiB 1024MiB
> 
> argc will contain the remaining arguments, when another command follows
> it won't be exactly three and you can't tell if the argument belongs to
> this command or is the start of the next one.

Argh.. damn, I wasn't aware of such use-cases. Thanks for the hint :)

> You could implement it as an option.

Sure.

Regards,
  Marco


