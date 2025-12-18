Delivery-date: Thu, 18 Dec 2025 10:30:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWALB-00CmMZ-1d
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 10:30:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWALA-0003G0-TF
	for lore@pengutronix.de; Thu, 18 Dec 2025 10:30:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BJ7QxJV7/0ms9LDXWGbWjZhFXA9nwwPqPqliGsn4oTg=; b=Q4GBgLRk/zgaQ0tmUn3J7fuojX
	P7ob+4FOWUHIuiMijpAD9ToTr8HEsQdgrSZNQbIrqEX1aGs4OMKAwOC/5biVceUJORUQUZfKSEYQ1
	B437waTrmxEnf15sG2uI+W8nRnebak0WNiFNUiZ1g3dhyJ1QOIC9TQEj9t2wD2KFx9sjNLAsQrjiu
	E1/Vh8SgTpWTLkrVW6bC7XnEjNe1FOVnT9MIMVLDiJZx7YTuDQaNFYtCLHS3fMCM6W4qJMw1Ntj3/
	j6uJ+ABieP6TS89HN5uxmuhZ1pnIfhv3bgu7ksrwULTo3FjoiVLZ48JEDrZjAQ09HeciXkBrnBHY9
	iKlBg2Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWAKd-0000000896U-1jAi;
	Thu, 18 Dec 2025 09:29:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWAKa-00000008967-2h6y
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 09:29:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vWAKY-0003BK-Ov; Thu, 18 Dec 2025 10:29:54 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vWAKY-006FqB-1t;
	Thu, 18 Dec 2025 10:29:54 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vWAKY-00EXl4-1S;
	Thu, 18 Dec 2025 10:29:54 +0100
Date: Thu, 18 Dec 2025 10:29:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aUPJkljlXW4EOHJ_@pengutronix.de>
References: <20251218091945.3461410-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218091945.3461410-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_012956_682322_432EFD45 
X-CRM114-Status: GOOD (  28.61  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] cdev: maintain partition index in struct cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Dec 18, 2025 at 10:19:45AM +0100, Ahmad Fatoum wrote:
> For use by the EFI loader, we will need to know a partition's number
> within the partition table on disk, so have the devfs-core keep track
> of that.
> 
> Mere iteration over the cdev list doesn't work for thus purpose as there
> may be invalid PTEs, which cause e.g. the first on-disk partition to
> have a higher number.
> 
> See 9dfffaf2ef47 ("partitions: efi: Continue partition enumeration on
> invalid pte") for more info. A real world example is the current
> debian-13-nocloud-arm64.raw image, which has two partitions:
> 0 and 14 (or 1 and 15 in barebox).

Should have mentioned this in my last mail, but isn't this the other way
round?

Sascja

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v2 -> v3:
>   - fix comment to mention that index is 0-based (Sascha)j
> v1 -> v2:
>   - record actual partition number from the table.
>     I compared against EDK-II and Linux and both take the actual
>     number, which may not be either the number in our cdev list
>     or the location on disk.
> ---
>  common/partitions.c | 1 +
>  include/driver.h    | 3 +++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/common/partitions.c b/common/partitions.c
> index 1a4e046c5f55..40f4c629e1ac 100644
> --- a/common/partitions.c
> +++ b/common/partitions.c
> @@ -52,6 +52,7 @@ static int register_one_partition(struct block_device *blk, struct partition *pa
>  		goto out;
>  	}
>  
> +	cdev->partition_table_index = part->num;
>  	cdev->flags |= DEVFS_PARTITION_FROM_TABLE | part->flags;
>  	cdev->typeflags |= part->typeflags;
>  	cdev->typeuuid = part->typeuuid;
> diff --git a/include/driver.h b/include/driver.h
> index 14d1731fd976..77b9b876955a 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -436,6 +436,9 @@ struct cdev {
>  	loff_t size;
>  	unsigned int flags;
>  	u16 typeflags; /* GPT type-specific attributes */
> +	s8 partition_table_index;    /* For GPT/MBR-formatted disks only:
> +				      * 0-based index of partition on disk
> +				      */
>  	int open;
>  	struct mtd_info *mtd;
>  	struct list_head aliases;
> -- 
> 2.47.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


