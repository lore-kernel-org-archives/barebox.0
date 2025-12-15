Delivery-date: Mon, 15 Dec 2025 12:15:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6Y2-00Birk-39
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 12:15:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6Y2-00041P-C5
	for lore@pengutronix.de; Mon, 15 Dec 2025 12:15:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U+gShM+XsurAa/1KnRjgIB/0N++2ixurBeb8jyxepRM=; b=Ozyxy/Zb8wL9nGzT5ty+29Vwfx
	gL0e6HXhpuf4H0H4VYEfF3itqp6xcX/LI4GuLSV43P3Q7A3Rp5MgWodvEaPWt0oIZFvU903qvNH1J
	TMEOQF6NiQtVJXb3FFf1iGVKwVu72AtqcHq874oSwQDlhN+dRgR2OcwR5OHjpduSw8PpA5tpYJvF0
	ngS9yz+WTFVOrZmU2Va/CdnUOe/BsAzyhU68aGrerz9nAQYdQD7msD50RVe8Ntj2DWfS1JVQgrQSG
	B9tCisyQYwtFkQBOOIhjcQlD1tgCqoeGlZtKwL92oYDteda4j2ZUy/7YLGNDhczlzzB2rP77B0+Zt
	H00vJi5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6XS-00000003VSj-1LDu;
	Mon, 15 Dec 2025 11:14:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6XP-00000003VSH-1uui
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 11:14:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV6XN-0003qA-So; Mon, 15 Dec 2025 12:14:45 +0100
Message-ID: <e32d9c9a-83e1-4095-aaad-17daf755b60d@pengutronix.de>
Date: Mon, 15 Dec 2025 12:14:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
 <20251209-devfs-v2-1-62ae16698cff@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251209-devfs-v2-1-62ae16698cff@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_031447_496271_739AFE19 
X-CRM114-Status: GOOD (  17.27  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 01/13] fs: devfs-core: add devfs_create_link_node()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/9/25 1:51 PM, Sascha Hauer wrote:
> Allow to create a devfs link that not only has its own name, but also
> its own device_node.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  fs/devfs-core.c  | 8 +++++++-
>  include/driver.h | 2 ++
>  2 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 92e7c5823ed0d3a4c54cc7b2b1c9bf32ac535907..91082265d1aaa965160de5e414364e3fb14824d1 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -476,7 +476,7 @@ int devfs_create(struct cdev *new)
>  	return 0;
>  }
>  
> -int devfs_create_link(struct cdev *cdev, const char *name)
> +int devfs_create_link_node(struct cdev *cdev, const char *name, struct device_node *node)
>  {
>  	struct cdev *new;
>  	int ret;
> @@ -489,6 +489,7 @@ int devfs_create_link(struct cdev *cdev, const char *name)
>  
>  	new = cdev_alloc(name);
>  	new->link = cdev;
> +	new->device_node = node;
>  
>  	ret = devfs_create(new);
>  	if (ret) {
> @@ -512,6 +513,11 @@ int devfs_create_link(struct cdev *cdev, const char *name)
>  	return 0;
>  }
>  
> +int devfs_create_link(struct cdev *cdev, const char *name)
> +{
> +	return devfs_create_link_node(cdev, name, NULL);
> +}
> +
>  int devfs_remove(struct cdev *cdev)
>  {
>  	struct cdev *c, *tmp;
> diff --git a/include/driver.h b/include/driver.h
> index c130a3cd63fd5e6dc365a33c765a22dc4e2ca90a..e0fddecd085c991db4f1fe34c56405d28b6f53ad 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -461,6 +461,8 @@ static inline const char *cdev_name(struct cdev *cdev)
>  
>  int devfs_create(struct cdev *);
>  int devfs_create_link(struct cdev *, const char *name);
> +int devfs_create_link_node(struct cdev *cdev, const char *name,
> +			   struct device_node *node);
>  int devfs_remove(struct cdev *);
>  int cdev_find_free_index(const char *);
>  struct cdev *cdev_find_partition(struct cdev *cdevm, const char *name);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



