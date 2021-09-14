Delivery-date: Tue, 14 Sep 2021 10:57:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ4G6-0003Sr-Bb
	for lore@lore.pengutronix.de; Tue, 14 Sep 2021 10:57:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ4G5-00081g-D5
	for lore@pengutronix.de; Tue, 14 Sep 2021 10:57:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGXhn4pvVjXDXGwBszePsbPogpYdfpZVz2ruPaEUfEw=; b=dZ9R5RcFZGVMpY
	fXPgiZtjDlCF9bBshHaICJz7e8oBM2kIiFhBr4WbArpugTM+gt1vu+1A2rouO8JnpGRnPKnbjLhiu
	7Gr+8ngwPgWYyF5cpxmtk+w/fVrS8dzMCS0VozaGarIKE9yJa22Y0ivtNkkyP1gds8H9uJ9ATRr+j
	sndBPDTpJhn4X5BxWHKJnl//S8/rDWsp+1p9Nc2o3jCRSyx/jqn+AdNHdV99OdBdoSpK2H2imTTAr
	gbRSpWyLJloHFyocEKWjp1eGbCkS/084tP7nAjQWZ3KtFs4bld2DyGg2n7RIfgtVtktqmExIAtzu5
	GxU540lmoS07kccoHjtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ4EU-004ndO-3z; Tue, 14 Sep 2021 08:56:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ4EP-004nbv-2E
 for barebox@lists.infradead.org; Tue, 14 Sep 2021 08:55:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mQ4EM-0007lq-5L; Tue, 14 Sep 2021 10:55:54 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mQ4EL-0002Jv-Ae; Tue, 14 Sep 2021 10:55:53 +0200
Date: Tue, 14 Sep 2021 10:55:53 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210914085553.ggnadiwz3ldjvr2o@pengutronix.de>
References: <20210913083019.364599-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210913083019.364599-1-ahmad@a3f.at>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_015557_147975_2C4E6EED 
X-CRM114-Status: GOOD (  19.64  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: remove unused struct fs_device_d::parent_device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 13, 2021 at 10:30:19AM +0200, Ahmad Fatoum wrote:
> The parent_device member is unused anywhere, so drop it.

s/is/isn't/?

> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  fs/fs.c      | 1 -
>  include/fs.h | 1 -
>  2 files changed, 2 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index b6431227d60c..e6fd57b8ac97 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -813,7 +813,6 @@ int fsdev_open_cdev(struct fs_device_d *fsdev)
>  	}
>  
>  	fsdev->dev.parent = fsdev->cdev->dev;
> -	fsdev->parent_device = fsdev->cdev->dev;
>  
>  	return 0;
>  }
> diff --git a/include/fs.h b/include/fs.h
> index 5811199c0161..cd5eb571e08e 100644
> --- a/include/fs.h
> +++ b/include/fs.h
> @@ -101,7 +101,6 @@ struct fs_device_d {
>  	struct cdev *cdev;
>  	bool loop;
>  	char *path;
> -	struct device_d *parent_device;
>  	struct list_head list;
>  	char *options;
>  	char *linux_rootarg;
> -- 
> 2.33.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

