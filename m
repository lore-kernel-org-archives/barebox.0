Delivery-date: Mon, 31 Jan 2022 10:25:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nESwV-001Wud-OS
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 10:25:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nESwU-0000jU-58
	for lore@pengutronix.de; Mon, 31 Jan 2022 10:25:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WL/A3ONdxLyiW8/pzA/pzaMVDfB2C5v+y01ar3OfWKE=; b=spKtRte/urzr4y75opseOxz0Hj
	apAn065z5CmxAWmyw1tHo/3CeBsOtEAIlRoO1p/wu7OgohuhqMFo7EgxVH1z+lI6tAgA+ebppgShy
	Xze8E3QUUYIe+1CFBmW4ULcdzDeFgclZLD4Uom1gRKmp96m5rXcIAh71Af0EjVchOHsFiaPhxNFDW
	9sPJ5DD/xFg70Mqyr/JnDtQUC4ZTLEUfNusA4H6kwJDouG2LuwLhwH41TOqKQa7fnZ8pihnRPyvj6
	+z/ozC8MIePmDhJsd79UGe65fp5d9ZoSfnFSC8BzCChxFK27xGTUv4xUDbDan4zVoxSLpm8NFoV+M
	2nrnFaJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nESur-008d6D-K8; Mon, 31 Jan 2022 09:24:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nESum-008d5A-Ee
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 09:24:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nESuk-0000RX-RE; Mon, 31 Jan 2022 10:23:58 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nESuk-0004DX-B4; Mon, 31 Jan 2022 10:23:58 +0100
Date: Mon, 31 Jan 2022 10:23:58 +0100
To: Andrej Picej <andrej.picej@norik.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220131092358.GX23490@pengutronix.de>
References: <20220128080033.167251-1-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220128080033.167251-1-andrej.picej@norik.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:06:06 up 51 days, 17:51, 80 users,  load average: 0.19, 0.26, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_012400_548717_D76F62D8 
X-CRM114-Status: GOOD (  37.04  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] scripts/common: fix write_file when opened with mmap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Andrej,

On Fri, Jan 28, 2022 at 09:00:33AM +0100, Andrej Picej wrote:
> Usage of bareboximd with -c option (Create checksum for FILE and write
> it to the crc32 tag) was broken. Possibly by applying 2154de1cf36c
> (bareboximd: Use mmap when possibly). The script fails with:
> 
>     $ ./scripts/bareboximd -c images/<barebox-image.img>
>     Cannot write to images/<barebox-mage.img>: Bad address
>     CRC: write crc token to images/<barebox-image.img> failed: -14
>     Bad address
> 
> This has to do with the usage of "mmap" and "open" with O_TRUNC flag
> which truncates the file length to 0. Writing to files fails with:
> EFAULT (14) buf is outside your accessible address space.
> Remove the truncate flag and truncate manually after writing the data.
> 
> This fixes the bareboximd script, which is now again usable with -c
> option.

That's a very unfortunate bug :(

> 
> Signed-off-by: Anze Lesnik <anze.lesnik@norik.com>
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
>  scripts/common.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/common.c b/scripts/common.c
> index 3f8dcd2d38..331988d593 100644
> --- a/scripts/common.c
> +++ b/scripts/common.c
> @@ -107,7 +107,7 @@ int write_file(const char *filename, const void *buf, size_t size)
>  	int fd, ret = 0;
>  	int now;
>  
> -	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT,

I added a comment above this while applying to prevent people from
"optimizing" this patch away.

> +	fd = open(filename, O_WRONLY | O_CREAT,
>  		  S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
>  	if (fd < 0) {
>  		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
> @@ -126,6 +126,11 @@ int write_file(const char *filename, const void *buf, size_t size)
>  		buf += now;
>  	}
>  
> +	if (ftruncate(fd, now) < 0) {
> +		fprintf(stderr, "Cannot truncate file: %s", strerror(errno));
> +		ret = -errno;
> +	}

truncating to 'now' is only correct when we were able to write all bytes
at once. Otherwise we must truncate to the input size. I fixed this up
to the patch below.

Sascha

-----------------------------8<----------------------------

>From 738601e1258c55953284ee10801b26b9977918c2 Mon Sep 17 00:00:00 2001
From: Andrej Picej <andrej.picej@norik.com>
Date: Fri, 28 Jan 2022 09:00:33 +0100
Subject: [PATCH] scripts/common: fix write_file when opened with mmap

Usage of bareboximd with -c option (Create checksum for FILE and write
it to the crc32 tag) was broken. Possibly by applying 2154de1cf36c
(bareboximd: Use mmap when possibly). The script fails with:

    $ ./scripts/bareboximd -c images/<barebox-image.img>
    Cannot write to images/<barebox-mage.img>: Bad address
    CRC: write crc token to images/<barebox-image.img> failed: -14
    Bad address

This has to do with the usage of "mmap" and "open" with O_TRUNC flag
which truncates the file length to 0. Writing to files fails with:
EFAULT (14) buf is outside your accessible address space.
Remove the truncate flag and truncate manually after writing the data.

This fixes the bareboximd script, which is now again usable with -c
option.

Signed-off-by: Anze Lesnik <anze.lesnik@norik.com>
Signed-off-by: Andrej Picej <andrej.picej@norik.com>
Link: https://lore.barebox.org/20220128080033.167251-1-andrej.picej@norik.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/common.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/scripts/common.c b/scripts/common.c
index b780b09941..154d6dffcb 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -105,26 +105,33 @@ int write_file(const char *filename, const void *buf, size_t size)
 {
 	int fd, ret = 0;
 	int now;
+	size_t left = size;
 
-	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT,
+	/* The same file may be mmapped currently, so can't use O_TRUNC here */
+	fd = open(filename, O_WRONLY | O_CREAT,
 		  S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
 	if (fd < 0) {
 		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
 		return -errno;
 	}
 
-	while (size) {
-		now = write(fd, buf, size);
+	while (left) {
+		now = write(fd, buf, left);
 		if (now < 0) {
 			fprintf(stderr, "Cannot write to %s: %s\n", filename,
 				strerror(errno));
 			ret = -errno;
 			goto out;
 		}
-		size -= now;
+		left -= now;
 		buf += now;
 	}
 
+	if (ftruncate(fd, size) < 0) {
+		fprintf(stderr, "Cannot truncate file: %s", strerror(errno));
+		ret = -errno;
+	}
+
 out:
 	close(fd);
 
-- 
2.30.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

