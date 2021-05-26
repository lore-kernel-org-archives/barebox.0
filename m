Delivery-date: Wed, 26 May 2021 07:44:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llmLM-0003n5-27
	for lore@lore.pengutronix.de; Wed, 26 May 2021 07:44:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llmLK-00081T-W1
	for lore@pengutronix.de; Wed, 26 May 2021 07:44:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DB+6iyd2l/e6EEfXvxMB5RklpD8qmcnkMUr1w/r9bc0=; b=OyInH1gpVqKDSvhu8Iu5hP/3t+
	VAXtENwc7K/niYObUjNnM2Jq4HMi8tpst3oYws08b7pJhLVlpqmGSptZJXPtXjTiRQS6dZFsq2lM6
	kZhENHuQUYTrUoJ2V+LRhf8PsfbpeoTu4AZsVwhZt7cRJ86wNCyHRJI2v1OdzsmUp0SWwjGkezPdQ
	hLQzmnOVJxs5lnHzkaog4c9VYCICgdT4lytit8y//jctH4OKO7PS69w/iq9F900c/nPHeW4kEpH2h
	XCI5kGyE7j+YbHYfC5+/+VaBfLN7G6Ic5+B9X3hnmsld9/zAsqBG5bAHpDaoJIMejycQ3r+/QMvZw
	lWN9kBuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llmJl-00BGph-Op; Wed, 26 May 2021 05:42:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llmJf-00BGmO-AZ
 for barebox@lists.infradead.org; Wed, 26 May 2021 05:42:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llmJb-0007te-Sw; Wed, 26 May 2021 07:42:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llmJb-0008Io-JR; Wed, 26 May 2021 07:42:47 +0200
Date: Wed, 26 May 2021 07:42:47 +0200
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210526054247.GS19819@pengutronix.de>
References: <20210525183733.3345497-1-l.stach@pengutronix.de>
 <20210525183733.3345497-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210525183733.3345497-2-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:35:51 up 97 days,  8:59, 94 users,  load average: 0.36, 0.26, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_224251_410954_78061D01 
X-CRM114-Status: GOOD (  29.50  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] bootm: add support for booting compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Lucas,

On Tue, May 25, 2021 at 08:37:33PM +0200, Lucas Stach wrote:
> ARM64 does not have a self extracting image format, but relies on the image
> being externally compressed with one of the standard compression algorithms.
> 
> Add support for decompressing the bootm OS image. It is added in common
> code as it may also be useful for other images/architectures.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  common/bootm.c | 92 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 92 insertions(+)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 092116beb94a..2bfb5cb01593 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -12,6 +12,7 @@
>  #include <environment.h>
>  #include <linux/stat.h>
>  #include <magicvar.h>
> +#include <uncompress.h>
>  
>  static LIST_HEAD(handler_list);
>  
> @@ -808,6 +809,85 @@ err_out:
>  	return ret;
>  }
>  
> +static int do_bootm_compressed(struct image_data *img_data)
> +{
> +	struct bootm_data bootm_data = {
> +		.oftree_file = img_data->oftree_file,
> +		.initrd_file = img_data->initrd_file,
> +		.tee_file = img_data->tee_file,
> +		.verbose = img_data->verbose,
> +		.verify = img_data->verify,
> +		.force = img_data->force,
> +		.dryrun = img_data->dryrun,
> +		.initrd_address = img_data->initrd_address,
> +		.os_address = img_data->os_address,
> +		.os_entry = img_data->os_entry,
> +	};
> +	int from, to, ret;
> +	char *dstpath;
> +
> +	from = open(img_data->os_file, O_RDONLY);
> +	if (from < 0)
> +		return -ENODEV;
> +
> +	dstpath = make_temp("bootm-compressed");
> +	if (!dstpath) {
> +		ret = -ENOMEM;
> +		goto fail_from;
> +	}
> +
> +	to = open(dstpath, O_CREAT | O_WRONLY);
> +	if (to < 0) {
> +		ret = -ENODEV;
> +		goto fail_make_temp;
> +	}
> +
> +	ret = uncompress_fd_to_fd(from, to, uncompress_err_stdout);
> +	if (ret)
> +		goto fail_to;
> +
> +	bootm_data.os_file = dstpath;
> +	return bootm_boot(&bootm_data);

	ret = bootm_boot();

and fall through to free the resources please. Also an unlink(dtspath)
is missing.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

