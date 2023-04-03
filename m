Delivery-date: Mon, 03 Apr 2023 09:06:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjEGx-008G7O-VB
	for lore@lore.pengutronix.de; Mon, 03 Apr 2023 09:06:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjEGx-00024Z-GW
	for lore@pengutronix.de; Mon, 03 Apr 2023 09:06:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h2zbdXrA4VmkyDgWL9a4mJOmxa2MyhFsHDWnrKsi+Wo=; b=x9lwC3o1a/oLcMdQhfkqFDzKt1
	T2oz7sOagfg6f5lAUXPuCnm4pwL/7nU4BeWOmpURMJTI/fUsUSyQ6hcpfINsknkZFf98Z6wSL6uUq
	dJobaf48R+dDku+qEJiTEQN5GyZtv1Z31ev/0LZGmI9z1gd+mKbvi/Xd108rIbFLHZVNBdffH4/hw
	9WBPXI/laxmbDOTx4ugRRSi43b39wCVtSTrHeKh7JFRHtEwvLo5+e+cnQ8G9LuevQPLAKuGwI9dd2
	4x2Ev9/i34fQW2LlJEw5C1dNQoZDgX77o9G17JPWuUBsu44odPzsGv6/TnEFeNvI/b1RZxt8XWD+7
	YddJS6xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjEFw-00EKJ4-0A;
	Mon, 03 Apr 2023 07:05:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjEFs-00EKI6-2V
	for barebox@lists.infradead.org;
	Mon, 03 Apr 2023 07:05:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjEFr-0001pU-D0; Mon, 03 Apr 2023 09:05:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjEFr-00080y-74; Mon, 03 Apr 2023 09:05:27 +0200
Date: Mon, 3 Apr 2023 09:05:27 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230403070527.GP19113@pengutronix.de>
References: <20230331090453.1424337-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230331090453.1424337-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_000528_818096_7ADA1708 
X-CRM114-Status: GOOD (  25.68  )
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
Subject: Re: [PATCH] of: implement of_property_present helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 31, 2023 at 11:04:53AM +0200, Ahmad Fatoum wrote:
> We have various code using of_find_property(np, propname, NULL) to
> detect whether propname exists and some more that uses
> of_property_read_bool on non-boolean properties.
> 
> There's work underway in Linux to switch a lot of these instances to
> of_property_present[1]. Let's prepare for porting Linux code that
> uses the property by adding it.
> 
> [1]: https://lore.kernel.org/linux-devicetree/?q=of_property_present
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/of.h | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/of.h b/include/of.h
> index 3fb6ecec8dfe..22358f5579ec 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -1038,8 +1038,10 @@ static inline int of_property_read_string_index(const struct device_node *np,
>   * @np:		device node from which the property value is to be read.
>   * @propname:	name of the property to be searched.
>   *
> - * Search for a property in a device node.
> - * Returns true if the property exist false otherwise.
> + * Search for a boolean property in a device node. Usage on non-boolean
> + * property types is deprecated.
> +
> + * Return: true if the property exist false otherwise.
>   */
>  static inline bool of_property_read_bool(const struct device_node *np,
>  					 const char *propname)
> @@ -1049,6 +1051,20 @@ static inline bool of_property_read_bool(const struct device_node *np,
>  	return prop ? true : false;
>  }
>  
> +/**
> + * of_property_present - Test if a property is present in a node
> + * @np:		device node to search for the property.
> + * @propname:	name of the property to be searched.
> + *
> + * Test for a property present in a device node.
> + *
> + * Return: true if the property exists false otherwise.
> + */
> +static inline bool of_property_present(const struct device_node *np, const char *propname)
> +{
> +	return of_property_read_bool(np, propname);
> +}
> +
>  static inline int of_property_read_u8(const struct device_node *np,
>  				       const char *propname,
>  				       u8 *out_value)
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


