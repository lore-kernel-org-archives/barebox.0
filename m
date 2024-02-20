Delivery-date: Tue, 20 Feb 2024 11:53:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNkW-00Fw2p-0C
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 11:53:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNkV-0001Ky-C2
	for lore@pengutronix.de; Tue, 20 Feb 2024 11:53:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RRJT2VP0uocwh9f7BCeKmMICQwUcrHo/f2FVLFJztGs=; b=zx3LRUtoUpma7FJBMTdXueVsCl
	VP3aycXkTb1fqOtPsI44J2jVK2HStATt8QckWQF+wBPIHMFuvdWDhYG5PVYGNQl/mXvsw4ElwkgG0
	oNw4nMUodr6f5xjZQwe8UoLkzJ0SxXqc62tKzlVxCvN2Qhn3VKBG674Ul4xQFagG3GFAZKmkaUQk3
	/j5M2pvjMTRFjjqg6kIQWO4BSLtGxRhFbXcKQ/+P4zrI6dlqEsw9exQwGuRIGrMAm5l2S24bg82XN
	TF6vB3orC2PjWqmUujHCwWSMmu960KDnbY9DzXxJ1D8vfjDBXXSfydDWkD2SzUGKFkSjN0BJEcYPd
	9+QlQh3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNk4-0000000EL7O-273A;
	Tue, 20 Feb 2024 10:52:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNk1-0000000EL6q-20iC
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 10:52:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rcNk0-0001DE-9T; Tue, 20 Feb 2024 11:52:48 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rcNjz-001pJg-TM; Tue, 20 Feb 2024 11:52:47 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rcNjz-00HOFd-2g;
	Tue, 20 Feb 2024 11:52:47 +0100
Date: Tue, 20 Feb 2024 11:52:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZdSEf03rWFiuk3ZF@pengutronix.de>
References: <20240219145159.1962618-1-s.hauer@pengutronix.de>
 <20240219145159.1962618-2-s.hauer@pengutronix.de>
 <2c5de6e3-aba4-46ad-aae3-04a134b07cc2@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2c5de6e3-aba4-46ad-aae3-04a134b07cc2@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_025249_537118_486696F5 
X-CRM114-Status: GOOD (  22.76  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] partitions: efi: Allow to create barebox environment
 partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 19, 2024 at 04:20:55PM +0100, Ahmad Fatoum wrote:
> On 19.02.24 15:51, Sascha Hauer wrote:
> > We have a GUID for partitions to use for barebox environment. Add an
> > option for parted to create these.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  commands/parted.c       | 2 +-
> >  common/partitions/efi.c | 3 +++
> >  include/efi/partition.h | 3 +++
> >  3 files changed, 7 insertions(+), 1 deletion(-)
> > 
> > diff --git a/commands/parted.c b/commands/parted.c
> > index 02bb1cff0c..6af18cdc57 100644
> > --- a/commands/parted.c
> > +++ b/commands/parted.c
> > @@ -360,7 +360,7 @@ BAREBOX_CMD_HELP_TEXT("")
> >  BAREBOX_CMD_HELP_TEXT("<unit> can be one of \"s\" (sectors), \"B\" (bytes), \"kB\", \"MB\", \"GB\", \"TB\",")
> >  BAREBOX_CMD_HELP_TEXT("\"KiB\", \"MiB\", \"GiB\" or \"TiB\"")
> >  BAREBOX_CMD_HELP_TEXT("<type> must be \"gpt\"")
> > -BAREBOX_CMD_HELP_TEXT("<fstype> can be one of  \"ext2\", \"ext3\", \"ext4\", \"fat16\" or \"fat32\"")
> > +BAREBOX_CMD_HELP_TEXT("<fstype> can be one of  \"ext2\", \"ext3\", \"ext4\", \"fat16\", \"fat32\" or \"bbenv\"")
> >  BAREBOX_CMD_HELP_TEXT("<name> for MBR partition tables can be one of \"primary\", \"extended\" or")
> >  BAREBOX_CMD_HELP_TEXT("\"logical\". For GPT this is a name string.")
> >  BAREBOX_CMD_HELP_END
> > diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> > index 67d4978244..d102370b24 100644
> > --- a/common/partitions/efi.c
> > +++ b/common/partitions/efi.c
> > @@ -559,6 +559,7 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
> >  
> >  static guid_t partition_linux_data_guid = PARTITION_LINUX_DATA_GUID;
> >  static guid_t partition_basic_data_guid = PARTITION_BASIC_DATA_GUID;
> > +static guid_t partition_barebox_env_gui = PARTITION_BAREBOX_ENVIRONMENT_GUID;
> >  
> >  static const guid_t *fs_type_to_guid(const char *fstype)
> >  {
> > @@ -572,6 +573,8 @@ static const guid_t *fs_type_to_guid(const char *fstype)
> >  		return &partition_basic_data_guid;
> >  	if (!strcmp(fstype, "fat32"))
> >  		return &partition_basic_data_guid;
> > +	if (!strcmp(fstype, "bbenv"))
> > +		return &partition_barebox_env_gui;
> 
> guid*

Fixes, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


