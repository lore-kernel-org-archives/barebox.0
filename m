Delivery-date: Mon, 21 Jun 2021 10:03:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvEtq-0007uB-LG
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 10:03:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvEtp-0005Bk-Oo
	for lore@pengutronix.de; Mon, 21 Jun 2021 10:03:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+f2YdxX8HQAszTvtrAmNnOUKGUgNZgye6LAE78s0P4o=; b=u/crivyC3rGmBNP/hlOyGy8Fb5
	qWf20pezOf6E8Eqoaxe5vxRLJVWBSrDVBAWNrWfca2sZVnTsco2f3ebwVWcpVyxHOEE5qZ9ZNdIgy
	qQPn8LuWbJRt9/JNl1AWGyXd9YeL32FnzBA83pH7ddjIt7pkfKJrb0MiJ1JdVLcfckay84WwWNEG6
	+d+6686XdeQ95vZDhsfOj3L0NoUWaW/TlviPI3pJbxWUn07EZoH/yQTCT2vr7z7sEX+C0rSF+1/5e
	U3/RCfKJSsaq/+CyR5NquX5QqCIAKUrYm1mYWrPQEYUTxgXiYdFnOEQ9uTMXpI/Q0SJ1DBsKFLkeM
	UEtU6JXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvEsg-002cuH-DV; Mon, 21 Jun 2021 08:02:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvEsb-002ctg-HN
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 08:02:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvEsZ-00055U-TW; Mon, 21 Jun 2021 10:01:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvEsZ-0003XJ-JZ; Mon, 21 Jun 2021 10:01:59 +0200
Date: Mon, 21 Jun 2021 10:01:59 +0200
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210621080159.GQ9782@pengutronix.de>
References: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
 <20210616063246.14900-7-s.trumtrar@pengutronix.de>
 <87pmwjy3lx.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pmwjy3lx.fsf@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:01:44 up 123 days, 11:25, 121 users,  load average: 0.54, 0.36,
 0.28
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_010201_620763_B054B6D1 
X-CRM114-Status: GOOD (  17.67  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 07/10] of: of_firmware: add support for fpga bridges
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 18, 2021 at 10:32:58AM +0200, Steffen Trumtrar wrote:
> 
> Steffen Trumtrar <s.trumtrar@pengutronix.de> writes:
> > diff --git a/include/of.h b/include/of.h
> > index 645f429bdeed..3c922bdb1414 100644
> > --- a/include/of.h
> > +++ b/include/of.h
> > +int of_firmware_load_overlay(struct device_node *overlay, const char *path);
> > +#else
> > +static inline int of_firmware_load_overlay(const char *path)
> 
> Meh, don't know how that happend, but this is obviously wrong :(
> Will resend.

Fixed while applying.

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

