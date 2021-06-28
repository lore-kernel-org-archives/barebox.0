Delivery-date: Mon, 28 Jun 2021 22:14:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxxed-0006az-Qw
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 22:14:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxxec-0003q4-Ve
	for lore@pengutronix.de; Mon, 28 Jun 2021 22:14:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMjk+jB2vWCwuHU2EYKCDESt1EEd7xWYRCojaesmcxc=; b=jVrmjvLvVael5H
	wbqIvAd/y4I1fSbo8KgvnNKbNZe0d8WpWpQfQsBBJnnriBUl/42crBI2Wzzs1dckH91JIwBvaN3og
	/pQ6nak7A30JQhKo1cLSOiBRBtuXSxM9maa7DEpOBwxc3YAKotnT2pVrfvNNDMQW9tsD2rqvcX9wY
	k2EjZBJZOkg7B8RDqRzgZzAdJ3+XJlp+eZAbIWJxt7a/3BYVZUF/oAEhRi/3ZMnuTtHR8T8806iC0
	Diwwsg2esTWS49eKzdxBn2PmpzN+5OFSceO2O8blN0HZT+ST8oEIVwLFBlaWJGelVopDx/cr+ekqF
	9M56FGb1zpkXIuRCRHHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxxdA-0096XH-Ic; Mon, 28 Jun 2021 20:13:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxxd4-0096Wu-Mi
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 20:13:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxxcz-0003lq-KQ; Mon, 28 Jun 2021 22:13:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lxxcy-0004g7-P9; Mon, 28 Jun 2021 22:13:08 +0200
Date: Mon, 28 Jun 2021 22:13:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210628201308.GO9782@pengutronix.de>
References: <20210624085223.14616-1-s.hauer@pengutronix.de>
 <20210624085223.14616-15-s.hauer@pengutronix.de>
 <a8d6812c-9bfa-e629-ecae-0005bb12d3fd@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a8d6812c-9bfa-e629-ecae-0005bb12d3fd@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 22:09:27 up 130 days, 23:33, 116 users,  load average: 0.03, 0.14,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_131314_782662_B1FF8E42 
X-CRM114-Status: GOOD (  20.29  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 14/18] overlay: Add filters to choose which overlays to
 apply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Michael,

On Mon, Jun 28, 2021 at 08:58:45PM +0200, Michael Riesch wrote:
> Hello Sascha,
> 
> On 6/24/21 10:52 AM, Sascha Hauer wrote:
> > [...]
> > +
> > +static int of_overlay_global_fixup(struct device_node *root, void *data)
> > +{
> > +	char *dir;
> > +	int ret;
> > +
> > +	if (*of_overlay_dir == '/')
> > +		return of_overlay_apply_dir(root, of_overlay_dir, true);
> > +
> > +	dir = concat_path_file(of_overlay_basedir, of_overlay_dir);
> > +
> > +	ret = of_overlay_apply_dir(root, of_overlay_dir, true);
> 
> shouldn't this be
> 
> 	ret = of_overlay_apply_dir(root, dir, true);
> 
> in order to use the concatenated path?

Yes. I fixed it up like that.

Regards,
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

