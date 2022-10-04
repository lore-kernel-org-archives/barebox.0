Delivery-date: Tue, 04 Oct 2022 11:54:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofed9-005OsQ-U4
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 11:54:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofed8-0007Gz-HK
	for lore@pengutronix.de; Tue, 04 Oct 2022 11:54:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y1squP3gnVaOQV/QQUQb8Vi1VoglaJL7Y/prP2ECkxk=; b=TogRBAWrnzrvZiPLbjAo4fCXkC
	17TcnkA4REufxKvK/LN0I0hhIQeT3lHrNb3qAixwifT+Z4BQksBd0nNcExY6RGWcCaW1g5y+eD1g8
	5nY+Lm6lQ0odU4yuBXSbC5eojGnRbUlHV0WVac3s4ycqhbi9yP7/0xdk9a5bO1a00Q6vNfDr421ib
	UwucU3HbMBBixJU9CMXCuQVdxLTRZEm9cD77S6Gq0YGiprWCBRhPfP+1ehWua957OBB0Mj7VSHtW/
	xcCE6Sw9p+M/obV9zhIY9kiVgtklt2Lt3/ecm4fmo1jh1mkju7Gzu14rnsmTGsCG4ClGdePiD5kv9
	x63W6nYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofebN-009E1B-17; Tue, 04 Oct 2022 09:52:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofebI-009E0m-Rs
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 09:52:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofebH-00079p-Dn; Tue, 04 Oct 2022 11:52:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofebH-0006xV-6p; Tue, 04 Oct 2022 11:52:31 +0200
Date: Tue, 4 Oct 2022 11:52:31 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221004095231.GL986@pengutronix.de>
References: <20220930154017.750867-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220930154017.750867-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_025232_937439_67B2E543 
X-CRM114-Status: GOOD (  23.20  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: implement cdev_mount()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 30, 2022 at 05:40:17PM +0200, Ahmad Fatoum wrote:
> EFI loaders provide both block device and file system access to software
> running under it. For file system access, we will just want to get a
> mount if available and mount at a default location if not. Provide a
> helper that does just that.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/fs.c      | 19 +++++++++++++++++++
>  include/fs.h |  1 +
>  2 files changed, 20 insertions(+)

Applied, thanks.

Also added the following.

Sascha

-----------------------------8<------------------------
>From 49c2e4ebe8f4b5f457201385f075fb80476a7977 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 4 Oct 2022 11:02:40 +0200
Subject: [PATCH] blspec: Use cdev_mount()

In blspec we want either get the path where the cdev is mounted or mount
it to the default path. That's what cdev_mount() does for us, so use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index d391f690ad..9ae7b49a77 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -677,9 +677,7 @@ static int blspec_scan_cdev(struct bootentries *bootentries, struct cdev *cdev)
 			found += ret;
 	}
 
-	rootpath = cdev_get_mount_path(cdev);
-	if (!rootpath)
-		rootpath = cdev_mount_default(cdev, NULL);
+	rootpath = cdev_mount(cdev);
 	if (!IS_ERR(rootpath)) {
 		ret = blspec_scan_directory(bootentries, rootpath);
 		if (ret > 0)
-- 
2.30.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


