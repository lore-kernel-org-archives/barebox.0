Delivery-date: Mon, 17 Mar 2025 08:46:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu5BD-000Wn9-32
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 08:46:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu5BC-0003zJ-Qi
	for lore@pengutronix.de; Mon, 17 Mar 2025 08:46:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6bo/lDAOvCV+2oTB2LiCUOYJlb200hyvizbxgo95hsc=; b=NeKLDDNpdo0FRZrbYsEI/c9e5f
	9XlgDYZQPJKbzFS8OHb71Ze9lI+WHmquCJng8wuuBi4EyRmarUW18JJ62oCVGCFjFvgnEXF0p2iwT
	f1am6OfTeeeRtyLgoYyOevdiTH1946SD085+e/5Q5ssMx+wA+1J4GFImSkXNJE8BMQhXP6a/RlqjM
	NvxE8DoXYVrVxiRNMQuB8lMYD+I7Lm+osg3ZLtEWRWlYAw4N28mQnJdi/W6I8gySZMjir1DGKtmAS
	eJjcVJUzVxAlH8axbB/OkeCxQvErFYZchN5A8Baqg8esEFkXPCVyZRgpB3iqRGd5DDyF25FjAaXv8
	tq74ZWwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu5AX-00000001czf-3iF5;
	Mon, 17 Mar 2025 07:45:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu59O-00000001cpD-0rdw
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 07:44:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tu59K-0003X4-0R; Mon, 17 Mar 2025 08:44:38 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tu59J-000Cv3-0x;
	Mon, 17 Mar 2025 08:44:37 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tu59J-0014SS-1v;
	Mon, 17 Mar 2025 08:44:37 +0100
Date: Mon, 17 Mar 2025 08:44:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Adrian Negreanu <adrian.negreanu@nxp.com>
Message-ID: <Z9fS5ZZzEDheZMJh@pengutronix.de>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
 <20250313101728.3546902-12-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250313101728.3546902-12-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_004442_244408_060688C8 
X-CRM114-Status: GOOD (  18.82  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/11] fs: qemu_fw_cfg: support populating environment
 via QEMU fw_cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Thu, Mar 13, 2025 at 11:17:28AM +0100, Ahmad Fatoum wrote:
> diff --git a/fs/qemu_fw_cfg.c b/fs/qemu_fw_cfg.c
> index 7f7350e67e64..ef2a1008ee5d 100644
> --- a/fs/qemu_fw_cfg.c
> +++ b/fs/qemu_fw_cfg.c
> @@ -13,6 +13,7 @@
>  #include <errno.h>
>  #include <linux/stat.h>
>  #include <xfuncs.h>
> +#include <envfs.h>
>  #include <fcntl.h>
>  #include <linux/qemu_fw_cfg.h>
>  #include <wchar.h>
> @@ -363,7 +364,13 @@ static int fw_cfg_fs_probe(struct device *dev)
>  	 */
>  	fsdev->cdev = cdev_by_name(devpath_to_name(fsdev->backingstore));
>  
> -	return fw_cfg_fs_parse(sb);
> +	ret = fw_cfg_fs_parse(sb);
> +	if (ret)
> +		goto free_data;
> +
> +	defaultenv_append_runtime_directory("/mnt/fw_cfg/by_name/opt/org.barebox.env");

I see the variables show up in /mnt/fw_cfg/by_name/opt/org.barebox.env/,
but not in the environment.

I wonder how this is supposed to work. The fw_cfg fs is mounted when I
first access /mnt/fw_cfg on the barebox command line, but at that time
defaultenv_append_runtime_directory() has no effect anymore as
defaultenv_load() is executed during startup.

Should defaultenv_append_runtime_directory() be called in
qemu_fw_cfg_fs_init() instead?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


