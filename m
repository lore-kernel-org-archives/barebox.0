Delivery-date: Mon, 10 May 2021 09:21:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg0E9-0001hm-8K
	for lore@lore.pengutronix.de; Mon, 10 May 2021 09:21:17 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg0E8-0006wW-Ef
	for lore@pengutronix.de; Mon, 10 May 2021 09:21:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JuGPe6DIE3dgsNIvb4KNRmkMHU/96dHT9TB7sDDxW0Y=; b=aOXVI+AQI5SbiP0VV4Rpz8bxX
	lyQuAERdCKJC3O1Utq0cen0Qbpthl8f/SaK0QgrqTcejiQlKc1aQM6yq1z+t84pIpr3tG8bNYpV08
	l4DHPdj+noFajPrazH2fjRbwOQmWoO1eDfu5Smb+MqXgoFRO+J4caVqzZchKJdGrGMto4q6Dlqz+L
	x0MBhD1Gt2gHEMfGPPZ1cTeV1bxOVlCoEtq3G413nEftAJvfsE8mAF2FP0XQRx9413FSUs+asaZBw
	iKcExaOQ+xJtf6kxMCFyU/ZUmmIikN+7K4PGgqa+yzRZcbwZxqR8v/8t5p28Y3aJUxx33x/TzJhgM
	cPceUn58w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg0DB-00DU4O-RH; Mon, 10 May 2021 07:20:17 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg0D7-00DU3z-5Z
 for barebox@desiato.infradead.org; Mon, 10 May 2021 07:20:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3pO22jOJ9WfELxN5QTfKZO4VUa3ysdz/HP/NHsomQ58=; b=GeoSdGA/5oB218uIPv8qix7paw
 dneMA+cwvZncJBkwIRVgoJTjybw1SRiXbQtjJc6FA5fvKnemj514n6CVoj/mMu+6F/ck05wrTvOvh
 rgDAOQNBET1jR9bxUkCSJ4WP6LMylG/aSuFb0aM/jAjUW6wuuFaRLY9sf64L5X4Jyf9Ad5tlcndV2
 DEFymrijG1xZ5jDbmFeLT1bfpMy6Q58vZr/AxQBqmqDoYrIUo/096Mu6LUdOc8koIGbOSJ+cG+Fvw
 kUBwf6FZCMpsWnEHHNT7oDvLTE6LBnv7qam8/R0Y8frMQ4D5b5LCGNhiFAooaQe7cgcS3oG8cNgEs
 Jtt8K78A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg0D4-008Mxf-DM
 for barebox@lists.infradead.org; Mon, 10 May 2021 07:20:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lg0D3-0006b0-5d; Mon, 10 May 2021 09:20:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lg0D2-0008RZ-Qq; Mon, 10 May 2021 09:20:08 +0200
Date: Mon, 10 May 2021 09:20:08 +0200
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox Mailing List <barebox@lists.infradead.org>
Message-ID: <20210510072008.GY19819@pengutronix.de>
References: <20210507114325.6486-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210507114325.6486-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:20:00 up 81 days, 10:43, 94 users,  load average: 1.11, 1.32, 0.93
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_002010_478171_F6DB1859 
X-CRM114-Status: GOOD (  30.52  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] README: advertise lore.barebox.org instead of
 mail-archive.com
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 07, 2021 at 01:43:25PM +0200, Roland Hieber wrote:
> The archived messages at mail-archive.org only contain a few headers,
> and getting git-am-able patch mails from their HTML pages is quirky at
> best. Replace the link with the new lore instance, which has a number of
> advantages, like raw message contents with full headers, cloneable git
> archives, and interoperability with the b4 command line tool.
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  README | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/README b/README
> index 7c5ef9f8187a..37fd80c10280 100644
> --- a/README
> +++ b/README
> @@ -231,7 +231,7 @@ Contributing
>  For any questions regarding barebox, send a mail to the mailing list at
>  <barebox@lists.infradead.org>. The archives for this list are available
>  publicly at <http://lists.infradead.org/pipermail/barebox/> and
> -<https://www.mail-archive.com/barebox@lists.infradead.org/>.
> +<https://lore.barebox.org/barebox/>.
>  
>  The same list should also be used to send patches. barebox uses a similar
>  process as the Linux kernel, so most of the Linux guide for submitting patches
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

