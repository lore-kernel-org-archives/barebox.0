Delivery-date: Thu, 30 Mar 2023 10:31:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phnhG-002Z8n-BH
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 10:31:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phnhF-0006oo-U7
	for lore@pengutronix.de; Thu, 30 Mar 2023 10:31:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pHpQrGka6Z7trvp8OYnP+twZY777yz76xRfhARoVU1Q=; b=fWt9C1ev5Nx6S1Lqb0mg9hQr0X
	UA9Cd1bdTWlicEKGrAfF7n4gUtelyfnXZVz0gARaiYl0OUsB9ky4YE+FG5Zs7jWegEdi33uxHG9rd
	2GNNU5ilKAq3JjWqhMO2cOgqXygPBXvNXCp6eMIgVGASA/bQiDA7NPxLxM73XqyQQlE+KFsJQwMp5
	B4XTDoj5nAlovCKp4n9Y2lgSjIECe0Rk2H9teDaO/RL88jGY7XKQvorPuiidfmaTBWVQxo9KMB2s8
	pxZjTPzZus7UxUp9Ha90rYLBuo1j5DkhQ6wuBRMxGyaWwHYEhM+Con2kJ5tGBlVfqbRexea5+Ctnj
	Wx53xLug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phng2-0035Tu-1Y;
	Thu, 30 Mar 2023 08:30:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phnfy-0035SB-27
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 08:30:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1phnfs-0006YN-TS; Thu, 30 Mar 2023 10:30:24 +0200
Message-ID: <637b2c61-2484-9394-58b0-034962889a43@pengutronix.de>
Date: Thu, 30 Mar 2023 10:30:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Philipp Zabel <p.zabel@pengutronix.de>, barebox@lists.infradead.org
References: <20230329105638.1258096-1-p.zabel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230329105638.1258096-1-p.zabel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_013030_697042_02FB3FB3 
X-CRM114-Status: GOOD (  25.45  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/4] firmware: Add request/release_firmware() calls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 29.03.23 12:56, Philipp Zabel wrote:
> Add request_firmware() and release_firmware() calls that allow drivers
> to load a firmware file. Also move the struct firmware definition from
> remoteproc.h into firmware.h.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  common/firmware.c          | 33 +++++++++++++++++++++++++++++++++
>  include/firmware.h         | 16 ++++++++++++++++
>  include/linux/remoteproc.h |  5 -----
>  3 files changed, 49 insertions(+), 5 deletions(-)
> 
> diff --git a/common/firmware.c b/common/firmware.c
> index e4ad6ac867b0..c6668fd528b6 100644
> --- a/common/firmware.c
> +++ b/common/firmware.c
> @@ -17,6 +17,7 @@
>  #include <linux/stat.h>
>  #include <linux/err.h>
>  #include <uncompress.h>
> +#include <unistd.h>
>  #include <filetype.h>
>  
>  #define BUFSIZ 4096
> @@ -304,6 +305,38 @@ out:
>  	return ret;
>  }
>  
> +/*
> + * request_firmware - load a firmware to a device
> + */
> +int request_firmware(const struct firmware **out, const char *fw_name, struct device *dev)
> +{
> +	char fw_path[PATH_MAX + 1];
> +	struct firmware *fw;
> +	int ret;
> +
> +	fw = kzalloc(sizeof(struct firmware), GFP_KERNEL);
> +	if (!fw)
> +		return -ENOMEM;
> +
> +	snprintf(fw_path, sizeof(fw_path), "%s/%s", firmware_path, fw_name);
> +
> +	ret = read_file_2(fw_path, &fw->size, (void *)&fw->data, FILESIZE_MAX);
> +	if (ret) {
> +		kfree(fw);
> +		return ret;
> +	}
> +
> +	*out = fw;
> +
> +	return 0;
> +}
> +
> +void release_firmware(const struct firmware *fw)
> +{
> +	kfree_const(fw->data);
> +	kfree_const(fw);
> +}
> +
>  static int firmware_init(void)
>  {
>  	firmware_path = strdup("/env/firmware");
> diff --git a/include/firmware.h b/include/firmware.h
> index 05433f2f7858..b4fa40a3ab44 100644
> --- a/include/firmware.h
> +++ b/include/firmware.h
> @@ -13,6 +13,11 @@
>  #include <debug_ll.h>
>  #include <linux/kernel.h>
>  
> +struct firmware {
> +	size_t size;
> +	const u8 *data;
> +};
> +
>  struct firmware_handler {
>  	char *id; /* unique identifier for this firmware device */
>  	char *model; /* description for this device */
> @@ -37,6 +42,8 @@ struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np);
>  int firmwaremgr_load_file(struct firmware_mgr *, const char *path);
>  char *firmware_get_searchpath(void);
>  void firmware_set_searchpath(const char *path);
> +int request_firmware(const struct firmware **fw, const char *fw_name, struct device *dev);
> +void release_firmware(const struct firmware *fw);
>  #else
>  static inline struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
>  {
> @@ -57,6 +64,15 @@ static inline void firmware_set_searchpath(const char *path)
>  {
>  }
>  
> +static inline int request_firmware(const struct firmware **fw, const char *fw_name,
> +				   struct device *dev)
> +{
> +	return -EOPNOTSUPP;

Kernel returns -EINVAL here. We should do the same.

With this addressed,

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +}
> +
> +static inline void release_firmware(const struct firmware *fw)
> +{
> +}
>  #endif
>  
>  void firmwaremgr_list_handlers(void);
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 170fff7987fb..33fe2f81b748 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -18,11 +18,6 @@ struct resource_table {
>  	u32 offset[0];
>  } __packed;
>  
> -struct firmware {
> -	size_t size;
> -	const u8 *data;
> -};
> -
>  struct rproc;
>  
>  struct rproc_ops {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



