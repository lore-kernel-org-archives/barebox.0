Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f393.i.mail.ru ([185.5.136.64])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VmTpz-0000l7-OU
 for barebox@lists.infradead.org; Fri, 29 Nov 2013 19:34:52 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 29 Nov 2013 23:34:27 +0400
Message-ID: <1385753667.115679915@f393.i.mail.ru>
In-Reply-To: <1385753349-29390-1-git-send-email-l.stach@pengutronix.de>
References: <1385753349-29390-1-git-send-email-l.stach@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gQVJNOiBpLk1YNjogYWRkIGluaXRpYWwgc3VwcG9ydCBm?=
 =?UTF-8?B?b3IgU29saWRSdW4gQ3Vib3gtaSBDYXJyaWVyLTE=?=
To: =?UTF-8?B?THVjYXMgU3RhY2g=?= <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

> Needs some more work for things like ethernet, right now only
> MMC and USB are tested.
...
> diff --git a/arch/arm/boards/solidrun-carrier-1/board.c b/arch/arm/boards/solidrun-carrier-1/board.c
...
 +	devfs_add_partition(bootsource_name, 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, barebox_name);
> +	devfs_add_partition(bootsource_name, SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, default_environment_name);
> +	default_environment_path = "/dev/mmc1.bareboxenv";

Why partitions cannot be moved into dts?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
