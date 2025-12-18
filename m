Delivery-date: Thu, 18 Dec 2025 09:25:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW9Jv-00ClPE-2s
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 09:25:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW9Jv-0003pA-9b
	for lore@pengutronix.de; Thu, 18 Dec 2025 09:25:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MKHO/Yo+vQWgEXld+vEOYMn/mGP0DVzv8t4lYXXU3Fs=; b=mlWatpF9ha5/rxeLgLNAeJQJ48
	i8dCH8himfDI9oOmEGXjKgZIHKxE5Iv6oWHYHgwOejYd+rEPQX31rRGphhHG2zN2LyHIwCF4p1Wwo
	lmPJBvr1SPcXPkZeaZ72HSqSAaX9hDrmmaBpkN1TV8rfFTZltkd7CVjfaupmIFH0KaW6CftC9ZtsM
	B5BSge/M6gm3fStAwLSe5cfwR+TMRW+r23dFlxgS8w7rfCKfAHAGKv/hr1LVCrUJN8UT+cgKNVyH+
	i7p5syL3TKkkA7hM++DCtotCH2+dh4XhBrwlgpCS3g3045B/sfCTYlqrQaRa5IafE21R3MiTO64Kv
	dcdMTWig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW9JR-000000083Se-2V2I;
	Thu, 18 Dec 2025 08:24:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW9JP-000000083Rn-28Qj
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 08:24:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vW9JN-0003ke-6g; Thu, 18 Dec 2025 09:24:37 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vW9JN-006FMw-04;
	Thu, 18 Dec 2025 09:24:37 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vW9JM-00EX5S-2t;
	Thu, 18 Dec 2025 09:24:36 +0100
Date: Thu, 18 Dec 2025 09:24:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aUO6RE5vYUDOr994@pengutronix.de>
References: <20251217105552.434834-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251217105552.434834-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_002439_548884_390F555E 
X-CRM114-Status: GOOD (  27.33  )
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
Subject: Re: [PATCH v2] cdev: maintain partition index in struct cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Dec 17, 2025 at 11:55:00AM +0100, Ahmad Fatoum wrote:
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
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
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
> index 14d1731fd976..01e16e7a73ab 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -436,6 +436,9 @@ struct cdev {
>  	loff_t size;
>  	unsigned int flags;
>  	u16 typeflags; /* GPT type-specific attributes */
> +	s8 partition_table_index;    /* For GPT/MBR-formatted disks only:
> +				      * 1-based index of partition on disk
> +				      */

struct partition::num is zero based in barebox.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


