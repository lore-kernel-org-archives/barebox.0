Delivery-date: Mon, 22 Mar 2021 12:50:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOJ4U-0003P4-Uw
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 12:50:10 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOJ4U-0001Ed-3t
	for lore@pengutronix.de; Mon, 22 Mar 2021 12:50:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gZjuPDD7xwHo0UA9kiyGWDxJqBUTF8x1M1ZYfaKm/r8=; b=L0kFsy1PSiiB5O9X7OYu16vJO
	kSrr3uovPI8QwaTXwr8foewY07LIxIGk8G6YeM+poD3sjTeDb+C4KmAjWptkm9jUe77dQmEZh06+S
	tq2YED5yC0ZYvFpJichO8Cfczmc3cMF6juIrCY4EeEIRo4HCQ3UhSvJwtGwOPou586XGJJMdZiZuQ
	KCEwgC7bbr2nXMA6h6IXuGz3CWkRrVvGm2wa3Iz+nnp4BMguIjafUCHMsg2CJjjeK4kQ7PESbgIqS
	tA0omulNVmYl701T5pzj5ptipISTSBV/ytEYUIDifs0S3/aLkh7SBOZPeihzv2x5Iv3QxocKZklLA
	ynEkQYxAg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOJ3T-00BVPq-8z; Mon, 22 Mar 2021 11:49:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOJ3L-00BVOv-Bp
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 11:49:01 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lOJ3K-00018L-PZ; Mon, 22 Mar 2021 12:48:58 +0100
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210322112412.4232-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b6340cb4-0112-d64b-2ec4-a4eb9b22e381@pengutronix.de>
Date: Mon, 22 Mar 2021 12:48:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210322112412.4232-1-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_114859_553614_043EB82E 
X-CRM114-Status: GOOD (  21.73  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] of: Return copy of live tree as fixed tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 22.03.21 12:24, Sascha Hauer wrote:
> the of fixups modify the the tree passed to them. It is undesired that
> these modify the live tree, so when we are requested to return the fixed
> live tree then make a copy first.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/oftree.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/common/oftree.c b/common/oftree.c
> index 075b9d6b8b..4868d8812e 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -325,6 +325,9 @@ struct fdt_header *of_get_fixed_tree(struct device_node *node)
>  		node = of_get_root_node();
>  		if (!node)
>  			return NULL;
> +		node = of_copy_node(NULL, node);
> +		if (!node)
> +			return NULL;

Shouldn't this be freed somewhere?

>  	}
>  
>  	ret = of_fix_tree(node);
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

