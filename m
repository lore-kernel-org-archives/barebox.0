Delivery-date: Mon, 03 Apr 2023 09:05:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjEFY-008G2n-Rv
	for lore@lore.pengutronix.de; Mon, 03 Apr 2023 09:05:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjEFY-0001gZ-9i
	for lore@pengutronix.de; Mon, 03 Apr 2023 09:05:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rq9kmhvYtxzSKTiVWMfipnMEOMTr5jySuLOu6qBWCU8=; b=cm1Rm9RpUm2eAsHQbmtWiGzfS+
	TlYwq39f/dfpgTQXPQ32Eog2QNPghtgW46K0RhJyDIfHq7uClBSRZrLI3bA1kHW7jOjB+2v8qNi9s
	RHb3IdD9G7bTC9i7ogQrUFcjJU8NchMFK3K9s1nOukBq8ascq8DBY2iaVBMFNLPELKAS5hMp1O//5
	ODd+8+lNgcpkcVCF4xRy6PtE4eqFf5kdiS5ihkjxRGso0VeE5Ncl3V3I86hVesORVSVywzN0HTVIk
	Noqk9+iTB8vAISAVA1+D+X5kuQvwIO3W/LhWqUHXo51ZzQSQ8dCaFYwGPiVxfBqFEGA21E4dkbz7A
	8Xfu3xJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjEE8-00EJyN-1z;
	Mon, 03 Apr 2023 07:03:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjEE4-00EJxN-1y
	for barebox@lists.infradead.org;
	Mon, 03 Apr 2023 07:03:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjEDx-0001Tr-P1; Mon, 03 Apr 2023 09:03:29 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjEDx-0007qn-Hl; Mon, 03 Apr 2023 09:03:29 +0200
Date: Mon, 3 Apr 2023 09:03:29 +0200
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230403070329.GM19113@pengutronix.de>
References: <20230330124643.3562397-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230330124643.3562397-1-p.zabel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_000336_649128_B5B45450 
X-CRM114-Status: GOOD (  28.55  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/4] firmware: Add request/release_firmware() calls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 30, 2023 at 02:46:40PM +0200, Philipp Zabel wrote:
> Add request_firmware() and release_firmware() calls that allow drivers
> to load a firmware file. Also move the struct firmware definition from
> remoteproc.h into firmware.h.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v2:
> - let request_firmware() stub return -EINVAL instead of -EOPNOTSUPP
> - drop spurious #include <unistd.h>
> ---
>  common/firmware.c          | 32 ++++++++++++++++++++++++++++++++
>  include/firmware.h         | 16 ++++++++++++++++
>  include/linux/remoteproc.h |  5 -----
>  3 files changed, 48 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/firmware.c b/common/firmware.c
> index e4ad6ac867b0..6dc621d3081d 100644
> --- a/common/firmware.c
> +++ b/common/firmware.c
> @@ -304,6 +304,38 @@ out:
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
> index 05433f2f7858..93c800e11bfd 100644
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
> +	return -EINVAL;
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
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


