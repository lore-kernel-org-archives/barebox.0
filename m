Delivery-date: Thu, 09 Jun 2022 09:33:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzCg0-008VxL-1x
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 09:33:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzCfy-00082g-Iu
	for lore@pengutronix.de; Thu, 09 Jun 2022 09:33:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JEzwF+xnWUMg1seouCY7V3dqJwER+GEna1FCF3VHZvU=; b=WvjyrpVHHvjTzQgMSGwuMAw1OR
	V9BVRSZXITYRAELyaDlF5eJCQzLMIlL5Z7Arae0D33zrWL9WGZ83/1SKvqDHsrs22sVBFIGYvg0pQ
	DUylO+LL0R8G1nNK8Z1CJR7Ff8RJXvfXif0rXSivFeAx3f4EBRoeJN8HaeKQdgKR8G0OtYIRWN89y
	sus7h0w47gkO+gG9dHtr0E8cYdwiz+7ndNr1m3YsRaRGm/Pv+wyaKKNXwRJ2nxBEd8aWyir82m1iQ
	US5wWgLu2ogtmW2z3bvov4aCo7cJxUSzvtq+YJuTy7WudPPN0XzYXsNd9brfvKtx2Fa4wCMDf3Wy5
	bJDlN7SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzCeZ-00HR4R-LH; Thu, 09 Jun 2022 07:32:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzCeK-00HQu1-Cq
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 07:32:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzCeI-0007pL-WF; Thu, 09 Jun 2022 09:32:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzCeI-00066O-G6; Thu, 09 Jun 2022 09:32:10 +0200
Date: Thu, 9 Jun 2022 09:32:10 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220609073210.GA1615@pengutronix.de>
References: <20220608051244.2318-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220608051244.2318-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_003212_465049_E8929442 
X-CRM114-Status: GOOD (  18.83  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] common: reset_source: Remove
 of_get_reset_source_priority()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 08, 2022 at 08:12:44AM +0300, Alexander Shiyan wrote:
> of_get_reset_source_priority() has no users,
> so it can be safely removed.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  common/reset_source.c  | 20 +++-----------------
>  include/reset_source.h |  7 -------
>  2 files changed, 3 insertions(+), 24 deletions(-)
> 
> diff --git a/common/reset_source.c b/common/reset_source.c
> index 3554cbd0fb..dccb683231 100644
> --- a/common/reset_source.c
> +++ b/common/reset_source.c
> @@ -76,7 +76,9 @@ EXPORT_SYMBOL(reset_source_set_prinst);
>  
>  void reset_source_set_device(struct device_d *dev, enum reset_src_type st)
>  {
> -	int priority = of_get_reset_source_priority(dev->device_node);
> +	unsigned int priority = RESET_SOURCE_DEFAULT_PRIORITY;

You said of_get_reset_source_priority() has no users, but here you are
removing one.

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

