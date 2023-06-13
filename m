Delivery-date: Tue, 13 Jun 2023 10:33:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8zT9-004vDK-1s
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 10:33:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8zT6-0003Aj-GE
	for lore@pengutronix.de; Tue, 13 Jun 2023 10:33:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F2I7/CjJBH4NZYNRobfnajCzhSdWLbeg4fExUy93TTo=; b=lw68mCMJPxoVAcrVXjGRKG8O3q
	CQ5la6sN0LK732T9EZZg6VZjHuRF/QyoXd00U7uAH39+vcahJ6sGWKsfgNFQLaChaz0yrT1epJ4Tl
	I11gzKcnwQTupZqB6nZsfni0lCy1MwZB8uXBKQXkirEbSAifvFRUAHKZy1xASwTjYZH4ebsAyu7XV
	9fHgLxfdpCOBKNbl6kOQVMYyAhrowZ2pAagZppwweNsC2tA2fMXAZPkZVKctxAxzLnKfB+cCos0cu
	Fv6XeJfj10I0MEtQACY1V/h9AxEBIrS94EjT/VI2TPByLQ0prplpqtSwgA0g+4z4uLfPyWhTRdCTh
	jOQQJzLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zSA-007NrQ-04;
	Tue, 13 Jun 2023 08:32:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zS7-007Nqh-1B
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 08:32:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8zS6-00033J-3t; Tue, 13 Jun 2023 10:32:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8zS5-00037w-TE; Tue, 13 Jun 2023 10:32:33 +0200
Date: Tue, 13 Jun 2023 10:32:33 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230613083233.GO18491@pengutronix.de>
References: <20230612125104.1082800-1-a.fatoum@pengutronix.de>
 <20230612125104.1082800-6-a.fatoum@pengutronix.de>
 <20230613082721.GN18491@pengutronix.de>
 <19baddaa-8b8c-3d51-1a0f-d93fec484d68@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19baddaa-8b8c-3d51-1a0f-d93fec484d68@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_013235_403246_89B9DAB3 
X-CRM114-Status: GOOD (  28.31  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4 5/6] of: implement of_move_node helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 13, 2023 at 10:30:10AM +0200, Ahmad Fatoum wrote:
> On 13.06.23 10:27, Sascha Hauer wrote:
> > On Mon, Jun 12, 2023 at 02:51:03PM +0200, Ahmad Fatoum wrote:
> >> Reparenting nodes can be a useful thing to do in fixups. Add a helper
> >> for that.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  drivers/of/base.c | 18 ++++++++++++++++++
> >>  include/of.h      |  1 +
> >>  2 files changed, 19 insertions(+)
> >>
> >> diff --git a/drivers/of/base.c b/drivers/of/base.c
> >> index e3416b5b75a7..43a4a923d9c5 100644
> >> --- a/drivers/of/base.c
> >> +++ b/drivers/of/base.c
> >> @@ -2695,6 +2695,24 @@ void of_delete_node(struct device_node *node)
> >>  	free(node);
> >>  }
> >>  
> >> +void of_move_node(struct device_node *parent, struct device_node *node)
> >> +{
> >> +	if (!node)
> >> +		return;
> >> +
> >> +	list_del(&node->list);
> >> +	list_del(&node->parent_list);
> >> +
> >> +	free(node->full_name);
> >> +	node->full_name = basprintf("%s/%s", parent->full_name, node->name);
> >> +
> >> +	if (!node->parent)
> >> +		return;
> > 
> > Why is the old parent relevant here? Even when node didn't have a parent
> > before you should still add it to the children list of the new parent.
> > 
> > Also node->parent should be set to the new parent.
> > 
> > You seem to honour the case that node didn't have a parent previously.
> > Does the list_del(&node->parent_list) work in this case? I can't see any
> > INIT_LIST_HEAD(&node->parent_list) in the code, so I assume running a
> > list_del on it results in a NULL pointer dereference.
> 
> I will revisit this. Can you pick patches 1-4 though, so we can finally
> get this in?

Did that.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


