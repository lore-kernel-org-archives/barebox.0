Delivery-date: Thu, 28 Nov 2024 10:52:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGbCa-001P5q-0P
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 10:52:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGbCZ-0002HX-W7
	for lore@pengutronix.de; Thu, 28 Nov 2024 10:52:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LirQZDu2lYvorrgJUUf6N1ei35hI+hWMoiCg7fAnWus=; b=MGbahoRXSaD58SbHIJWxfPcyc6
	U0bMBjxLq9zFcVCbeq9VE8k2fIG3XauPNNs4vIK2FStHL+eZRxPGBb61PxP0dCvxm2fIArHSr7ukP
	P+zxwVrVvPGUKISR4v1tmcBdsbJGlryBszNMdZHcCcHcaaMqOzWxr9I5g7j6n3vEszee2S5ln6yOD
	4Yltk+Er+P0cgBGUuQWKCcJOmkzpIYugkLmaPCjzjWesOQo5O8xloWRFp3bBf1zY+SwjaDFtA9FLI
	R05mT8MivJZ1ujXqW4wx4QP2+Ls7mNdjCBcV7tCAoyD3XlIoTYOY2MgMyqDNiAwLJg9QScvfJkmYJ
	2V1EzIwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGbC9-0000000FBqW-0KEl;
	Thu, 28 Nov 2024 09:52:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGbC6-0000000FBpT-1L2V
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 09:52:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tGbC4-00027V-R1; Thu, 28 Nov 2024 10:52:16 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tGbC3-000ahA-2q;
	Thu, 28 Nov 2024 10:52:16 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tGbC4-002rS9-1n;
	Thu, 28 Nov 2024 10:52:16 +0100
Date: Thu, 28 Nov 2024 10:52:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z0g9UBF-Z1_yxXBX@pengutronix.de>
References: <20241125151228.341441-1-a.fatoum@pengutronix.de>
 <20241125151228.341441-9-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241125151228.341441-9-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_015218_358710_AC361907 
X-CRM114-Status: GOOD (  23.51  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 08/16] cdev: stub out cdev_read/write for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 25, 2024 at 04:12:20PM +0100, Ahmad Fatoum wrote:
> To optimize out calls to undefined functions in PBL at compile-time
> instead of link time, let's define stubs for the functions that
> are referenced in obj-pbl-y files, but inside function sections
> that are ultimately unreferenced.
> 
> We don't use IS_PROPER here as cdev support is always available
> in barebox proper.

Again, drop this sentence?

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/driver.h | 24 ++++++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/include/driver.h b/include/driver.h
> index c4067d531cc7..3aef385bc837 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -14,6 +14,7 @@
>  #include <device.h>
>  #include <of.h>
>  #include <init.h>
> +#include <errno.h>
>  #include <filetype.h>
>  
>  #define FORMAT_DRIVER_NAME_ID	"%s%d"
> @@ -514,21 +515,40 @@ int devfs_create_link(struct cdev *, const char *name);
>  int devfs_remove(struct cdev *);
>  int cdev_find_free_index(const char *);
>  struct cdev *device_find_partition(struct device *dev, const char *name);
> -struct cdev *cdev_by_name(const char *filename);
>  struct cdev *lcdev_by_name(const char *filename);
>  struct cdev *cdev_readlink(struct cdev *cdev);
>  struct cdev *cdev_by_device_node(struct device_node *node);
>  struct cdev *cdev_by_partuuid(const char *partuuid);
>  struct cdev *cdev_by_diskuuid(const char *partuuid);
> -struct cdev *cdev_open_by_name(const char *name, unsigned long flags);
>  struct cdev *cdev_create_loop(const char *path, ulong flags, loff_t offset);
>  void cdev_remove_loop(struct cdev *cdev);
>  int cdev_open(struct cdev *, unsigned long flags);
>  int cdev_fdopen(struct cdev *cdev, unsigned long flags);
>  int cdev_close(struct cdev *cdev);
>  int cdev_flush(struct cdev *cdev);
> +#if IN_PROPER
>  ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
>  ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
> +struct cdev *cdev_by_name(const char *filename);
> +struct cdev *cdev_open_by_name(const char *name, unsigned long flags);
> +#else
> +static inline ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
> +{
> +	return -ENOSYS;
> +}
> +static inline ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
> +{
> +	return -ENOSYS;
> +}
> +static inline struct cdev *cdev_by_name(const char *filename)
> +{
> +	return NULL;
> +}
> +static inline struct cdev *cdev_open_by_name(const char *name, unsigned long flags)
> +{
> +	return NULL;
> +}
> +#endif
>  int cdev_ioctl(struct cdev *cdev, unsigned int cmd, void *buf);
>  int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
>  int cdev_lseek(struct cdev*, loff_t);
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


