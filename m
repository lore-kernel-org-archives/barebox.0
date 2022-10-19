Delivery-date: Wed, 19 Oct 2022 10:20:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol4JX-000Qnn-Kk
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 10:20:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol4JU-0002Zn-MT
	for lore@pengutronix.de; Wed, 19 Oct 2022 10:20:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hFRcifHmA9W0oFj3g8x+1NWO/xO/1aHYCD1AurT13Z0=; b=uQV8OfMpIlwb4kZeVle+bavfO3
	wrZlzOmhRKVZY3NhyACrPxKIU7tJHd4GgzfCYd6ZzP5TYmVZ1lXDfbj1i2UlHjOLdBVnlvjXEU10g
	qAdlD5nYZvhYS85UFnhe2X2PqvIKDRjNAaOUCL+WSSfn+JzELHVHVa6PGP4kXvJrV2rfUb6yXNKXA
	8f0ZvSQIFOq+g605HTBA8uEwq56OAGMeu16qM0veo4bwfv/Y4SrDmi5njcBkSfOmeFlw1lYsMw8eA
	XY1ngPWkPtOt/g7sOWTU4HDb3h1C6dQctkjVzXzY+3C2hPtm7tWdzeb2DATbbYQvb68xKUej2ipDb
	WO7BNVEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol4I5-00GTqa-V6; Wed, 19 Oct 2022 08:19:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol4Hw-00GTpK-0W
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 08:18:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ol4Hu-0002Ib-Nx; Wed, 19 Oct 2022 10:18:54 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ol4Hu-0004Oa-H1; Wed, 19 Oct 2022 10:18:54 +0200
Date: Wed, 19 Oct 2022 10:18:54 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221019081854.4euxyxz67fmjxmny@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
 <20221014163534.3812272-5-m.felsch@pengutronix.de>
 <20221019075506.GV6702@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221019075506.GV6702@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_011856_071246_A6D50C56 
X-CRM114-Status: GOOD (  14.75  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/8] state: cosmetic fix reverse christmas tree order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-10-19, Sascha Hauer wrote:
> On Fri, Oct 14, 2022 at 06:35:30PM +0200, Marco Felsch wrote:
> > No functional change, just apply the common code standards.
> 
> I didn't know these are common code standards for barebox ;)

I thought that we are following the Linux way. At least there it is
common to follow this.

> Also I really don't like such things very much. The following forces you
> to violate this rule:
> 
> 	struct priv *priv = to_priv(common_type);
> 	struct myfoo = &priv->some_special_thingy_inside_priv;

Of course, in such cases we can't follow them.

> >  		return 0;
> > @@ -212,13 +212,13 @@ static int state_convert_node_variable(struct state *state,
> >  				       const char *parent_name,
> >  				       enum state_convert conv)
> >  {
> > +	struct device_node *new_node = NULL;
> >  	const struct variable_type *vtype;
> > +	char *short_name, *name, *indexs;
> 
> If you add another char * type variable or remove one of those you
> either violate the ordering or introduce another useless churn.

Got it, I will drop it if you don't like it.

Regards,
  Marco


