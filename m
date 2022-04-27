Delivery-date: Wed, 27 Apr 2022 11:52:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njeLq-00GsXd-VM
	for lore@lore.pengutronix.de; Wed, 27 Apr 2022 11:52:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njeLo-0006fC-A6
	for lore@pengutronix.de; Wed, 27 Apr 2022 11:52:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QfA37d6kfqE+70psDggJ7O8G5T4swtMxS9WiRVS9WIY=; b=TeTR0w+gcZVRlV
	1qM+Ef3wGPrMxX+mjClmP6rNFRp7/cJA73AJvCmMlEU1UHxCrQ/uZUvMa/mO723Kv5A4J/2tK5wOf
	U3cEiokPTDkhy+xYt0Zvw92Wc2EUXclov6lRHHu6o+0ZV4lWEF0W7nimxODlH2XaTrYV02DXRgHBW
	R6HJHmIa06qAq+ZbKlhA91fL3tNSwpOaUnjkz+nCimWyC/epZadG967Dz1ICpjktDRoFadcamhZff
	8zkfpdd7XCrIUu67kRxWzdGn4dEc2d3pJ/OHd02tzcH5MEUXo0t/PZFY2fTizX4wmbu/kZMd0XczL
	fyKvExtKCsFJGVtjNZ7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njeKa-000qjI-Pf; Wed, 27 Apr 2022 09:51:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njeKW-000qig-7j
 for barebox@lists.infradead.org; Wed, 27 Apr 2022 09:51:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1njeKU-0006TO-Ix; Wed, 27 Apr 2022 11:51:26 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1njeKU-0005eM-AC; Wed, 27 Apr 2022 11:51:26 +0200
Date: Wed, 27 Apr 2022 11:51:26 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20220427095126.GB17577@pengutronix.de>
References: <20220427093752.1746932-1-o.rempel@pengutronix.de>
 <20220427093752.1746932-4-o.rempel@pengutronix.de>
 <746c795d-852b-d664-ac1e-361dc21bad15@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <746c795d-852b-d664-ac1e-361dc21bad15@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:50:12 up 27 days, 22:19, 82 users,  load average: 0.48, 0.18, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_025128_314566_9479C052 
X-CRM114-Status: GOOD (  18.32  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/4] of: add generic of_fixup_machine_compatible()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 27, 2022 at 11:46:20AM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 27.04.22 11:37, Oleksij Rempel wrote:
> >  
> > +	if (IS_ENABLED(CONFIG_MACHINE_FIXUP)) {
> > +		const char *compat;
> > +
> > +		compat = getenv("global.of_machine_compatible");
> > +		if (compat)
> > +			of_fixup_machine_compatible(root, compat);
> 
> That's not what I had in mind. I meant for the variable to affect bootspec
> use, i.e. fixup barebox device tree. This here just adds an extra compatible
> to the kernel device tree.

This is what is needed for my use case/customer. As soon as other use
case will be needed, we can extend it.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

