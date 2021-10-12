Delivery-date: Tue, 12 Oct 2021 10:32:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maDDF-00046x-2r
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 10:32:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maDDD-0005Ya-OU
	for lore@pengutronix.de; Tue, 12 Oct 2021 10:32:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hi4PD59kQ+ERl3ADX+WVgthjvSP337dOlzl5uWOEY+o=; b=xkh0N24NibOVmE
	eFxCl2G23m15VP1k4008cP9sBlLMfNutbSmWvCzmmkoaOCj+b4K8C+RHAK65C2K6ai+gPY6ZuRHWo
	Fkmd1NLhw9aKBhIdNXc9nj7O8h0A9PUtegkJlSI7lafRptS/GzWUDNpSNxaXDHWbjxrLU5rT/h6Ct
	X/NVvpSEO5MbUrsS9PdWNVhWwuSVmTuUBXv5Qd63SrHedBgjmxTKf/jIs4MNRv1lVIj6ACYJvs7fN
	PWRDc0lYLMXX1gBFV/KlJW0v1+gtsgH2d7JTkG1NQyOcp1Cs4ml1as1btKBWY+OtSWGHdgDwAl90L
	8AS1Fi+zPPvmbHBXzTBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maDBo-00C13W-Io; Tue, 12 Oct 2021 08:31:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maDBf-00C119-VU
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 08:31:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maDBe-0005Gs-Jt; Tue, 12 Oct 2021 10:31:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maDBe-0004d9-AU; Tue, 12 Oct 2021 10:31:02 +0200
Date: Tue, 12 Oct 2021 10:31:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211012083102.GO28453@pengutronix.de>
References: <20211012073352.4071559-1-s.hauer@pengutronix.de>
 <20211012073352.4071559-8-s.hauer@pengutronix.de>
 <05f86cbe-ad12-f957-8e51-58e7d9b3b830@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <05f86cbe-ad12-f957-8e51-58e7d9b3b830@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:28:45 up 236 days, 11:52, 141 users,  load average: 0.20, 0.24,
 0.31
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_013104_109928_B76E2D27 
X-CRM114-Status: GOOD (  36.55  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 7/8] cdev: Add function to get unallocated start of device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Oct 12, 2021 at 09:52:51AM +0200, Ahmad Fatoum wrote:
> On 12.10.21 09:33, Sascha Hauer wrote:
> > On several SoCs barebox is written to the raw device in front of the
> > first partition. So far we blindly trust that there is enough space
> > available for the barebox image. Start changing this by adding a
> > function that retrieves the available space.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  common/partitions.c | 28 ++++++++++++++++++++++++++++
> >  include/driver.h    |  1 +
> >  2 files changed, 29 insertions(+)
> > 
> > diff --git a/common/partitions.c b/common/partitions.c
> > index d80878e065..e36341fc1e 100644
> > --- a/common/partitions.c
> > +++ b/common/partitions.c
> > @@ -156,3 +156,31 @@ int partition_parser_register(struct partition_parser *p)
> >  
> >  	return 0;
> >  }
> > +
> > +/**
> > + * cdev_unallocated_start - return unallocated space
> > + * @name: The cdev name
> > + *
> > + * This function returns the space that is not allocated by any partition
> > + * at the start of a device.
> > + *
> > + * Return: The unallocated space at the start of the device in bytes
> > + */
> > +loff_t cdev_unallocated_start(const char *name)
> 
> That name is a bit misleading. It's either cdev_allocated_start
> or cdev_unallocated_space. Also cdev_ for a function not taking a cdev
> is unexpected. Perhaps define devpath_to_cdev(s) as
> cdev_by_name(devpath_to_name(s)) and have the caller pass in the cdev?

That's a case of "wow, what a horrible name, let's write the function
first and rethink the name later". That rethinking didn't happen on my
side, thanks for doing this ;)

Sascha

-----------------------------8<-------------------------------

>From 839d934c79aee95a7d67d2f8dceacbfd0e5ea848 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Oct 2021 09:33:51 +0200
Subject: [PATCH] cdev: Add function to get unallocated space at start of
 device

On several SoCs barebox is written to the raw device in front of the
first partition. So far we blindly trust that there is enough space
available for the barebox image. Start changing this by adding a
function that retrieves the available space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Link: https://lore.barebox.org/20211012073352.4071559-8-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c | 27 +++++++++++++++++++++++++++
 include/driver.h    |  1 +
 2 files changed, 28 insertions(+)

diff --git a/common/partitions.c b/common/partitions.c
index d80878e065..b579559672 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -156,3 +156,30 @@ int partition_parser_register(struct partition_parser *p)
 
 	return 0;
 }
+
+/**
+ * cdev_unallocated_space - return unallocated space
+ * cdev: The cdev
+ *
+ * This function returns the space that is not allocated by any partition
+ * at the start of a device.
+ *
+ * Return: The unallocated space at the start of the device in bytes
+ */
+loff_t cdev_unallocated_space(struct cdev *cdev)
+{
+	struct cdev *partcdev;
+	loff_t start;
+
+	if (!cdev)
+		return 0;
+
+	start = cdev->size;
+
+	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
+		if (partcdev->offset < start)
+			start = partcdev->offset;
+	}
+
+	return start;
+}
diff --git a/include/driver.h b/include/driver.h
index c7f5903fce..4f6d40e17c 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -494,6 +494,7 @@ ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulo
 ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
 int cdev_ioctl(struct cdev *cdev, int cmd, void *buf);
 int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
+loff_t cdev_unallocated_space(struct cdev *cdev);
 
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
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

