Delivery-date: Mon, 22 Mar 2021 13:33:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOJk6-0003dZ-Pv
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 13:33:10 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOJk5-0006ho-GE
	for lore@pengutronix.de; Mon, 22 Mar 2021 13:33:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4FMLPVaSNpMxZxBa45Z3XAq7QiRJotMQfs8G5HejvQc=; b=PibOE1f1v+3Xy+eaG5/pBNzCG
	ZNOg6kWZV0F541XXJmnL8FmziECKYCDp3iZR6PL+NkkOukYRc9faq36tvWs02H3x4ex+IlxCnxrxj
	wpuvHxpUbSsvzASifiQUQk9EHZ9DKmPsiejljledLcl1k/k3yjMSrw4JqiRI8vPeL34QAB5MBgrvN
	9fpQP7UqIPCqCWTiTjP3TBHOBS1RVrgZVqbGjKxpBkqISTSgexgtn3t4h+qP8R1gIHqWRLPn+MwaU
	Nb5uGpSfhWLaEMTbOCzm8cXTZpmHen5x/g3kuVexSPrthXOLBo6AxLncyKuutg/kycIhJbs2fwRMJ
	ONX2FeqsQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOJir-00BadP-Dw; Mon, 22 Mar 2021 12:31:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOJig-00Bac8-VG
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 12:31:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOJig-0006UF-BQ; Mon, 22 Mar 2021 13:31:42 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOJig-0006j8-0l; Mon, 22 Mar 2021 13:31:42 +0100
Date: Mon, 22 Mar 2021 13:31:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210322123141.GR23724@pengutronix.de>
References: <20210322112412.4232-1-s.hauer@pengutronix.de>
 <b6340cb4-0112-d64b-2ec4-a4eb9b22e381@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b6340cb4-0112-d64b-2ec4-a4eb9b22e381@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:30:27 up 32 days, 15:54, 86 users,  load average: 1.06, 0.58, 0.50
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_123143_154986_DB34A622 
X-CRM114-Status: GOOD (  33.57  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] of: Return copy of live tree as fixed tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 22, 2021 at 12:48:58PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 22.03.21 12:24, Sascha Hauer wrote:
> > the of fixups modify the the tree passed to them. It is undesired that
> > these modify the live tree, so when we are requested to return the fixed
> > live tree then make a copy first.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  common/oftree.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/common/oftree.c b/common/oftree.c
> > index 075b9d6b8b..4868d8812e 100644
> > --- a/common/oftree.c
> > +++ b/common/oftree.c
> > @@ -325,6 +325,9 @@ struct fdt_header *of_get_fixed_tree(struct device_node *node)
> >  		node = of_get_root_node();
> >  		if (!node)
> >  			return NULL;
> > +		node = of_copy_node(NULL, node);
> > +		if (!node)
> > +			return NULL;
> 
> Shouldn't this be freed somewhere?

Hm, you're right. Somehow I had the assumption this is freed by the
caller, but it's not the device_node * that is returned here.

-------------------------------8<------------------------------------

>From 9408403cac204ffd46742f665b97de381eec3b99 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Mar 2021 12:20:26 +0100
Subject: [PATCH 1/2] of: Return copy of live tree as fixed tree

the of fixups modify the the tree passed to them. It is undesired that
these modify the live tree, so when we are requested to return the fixed
live tree then make a copy first.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/common/oftree.c b/common/oftree.c
index 075b9d6b8b..60d4327155 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -319,21 +319,27 @@ int of_fix_tree(struct device_node *node)
 struct fdt_header *of_get_fixed_tree(struct device_node *node)
 {
 	int ret;
-	struct fdt_header *fdt;
+	struct fdt_header *fdt = NULL;
+	struct device_node *freenp = NULL;
 
 	if (!node) {
 		node = of_get_root_node();
 		if (!node)
 			return NULL;
+
+		freenp = node = of_copy_node(NULL, node);
+		if (!node)
+			return NULL;
 	}
 
 	ret = of_fix_tree(node);
 	if (ret)
-		return NULL;
+		goto out;
 
 	fdt = of_flatten_dtb(node);
-	if (!fdt)
-		return NULL;
+
+out:
+	of_delete_node(freenp);
 
 	return fdt;
 }
-- 
2.29.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

