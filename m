Delivery-date: Fri, 17 Feb 2023 10:47:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxKo-00A21K-SB
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 10:47:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSxKn-0000HV-O2
	for lore@pengutronix.de; Fri, 17 Feb 2023 10:47:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5UVbXfq5QffRQlKxKb5qg6RAj/5wfs6PHBmRBC5EWYg=; b=Ln2Lbv9Q4magLE4lZUvM37PUuW
	u/ITqv+t0NfSF8KX68UxBLSHXkZGDd+0ppf/+SIquiCYaQhsBPTcW5NFf+3UoDiK/0nGq3ZV8FFte
	7IpuWTbG5FnGkpYzvqkuKIdET620lJvg5ljGa2ItuIGuOwt4K8q33mQFoznn8Rys/sDWaYZg0tu3J
	+O10GD+sFbqlb8TWU/kUiouF6+LtwRwiMbZQfieIhokdnZu7RTRiSd1rVuIjCqcJHi0SOuBHDVd2/
	1NZ9uKpZhxfLadxxlWgEti8aNybI/UNasltaGeKBIcEyL6BjjLbTjo5aRxuDysfRMFUqR6bV8gOkA
	vPjX+HnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxK1-00DXdn-0Z; Fri, 17 Feb 2023 09:46:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSxJw-00DXdE-EB
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 09:46:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxJu-0000BI-Re; Fri, 17 Feb 2023 10:46:22 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSxJu-0001nW-KL; Fri, 17 Feb 2023 10:46:22 +0100
Date: Fri, 17 Feb 2023 10:46:22 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230217094622.GQ10447@pengutronix.de>
References: <20230216105722.2865178-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230216105722.2865178-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_014624_497959_4C92C262 
X-CRM114-Status: GOOD (  21.89  )
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
Subject: Re: [PATCH] of: describe third arg of of_property_write_bool in
 kerneldoc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 16, 2023 at 11:57:22AM +0100, Ahmad Fatoum wrote:
> of_property_write_bool takes a third argument describing whether to
> unset (delete) the property or to set it. Describe it in the kerneldoc.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 937847f44ab7..1d8b207b1528 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1130,6 +1130,7 @@ EXPORT_SYMBOL_GPL(of_prop_next_string);
>   *
>   * @np:		device node from which the property is to be set.
>   * @propname:	name of the property to be set.
> + * @value	true to set, false to delete
>   *
>   * Search for a property in a device node and create or delete the property.
>   * If the property already exists and write value is false, the property is
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


