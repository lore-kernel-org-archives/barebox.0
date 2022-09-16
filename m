Delivery-date: Fri, 16 Sep 2022 08:31:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZ4sm-006P8Q-OJ
	for lore@lore.pengutronix.de; Fri, 16 Sep 2022 08:31:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZ4sk-0006RX-VI
	for lore@pengutronix.de; Fri, 16 Sep 2022 08:31:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=miGWGxOY8GV/XcT0QryTqKcWkSEPhbU729Y/nZ6Ux3A=; b=OPTG37ymeczOuRx78ZbDaQZaeS
	gUYNKP5MonrxYvkSlxvvE3WYSOIFfeFA4yx7bc/gg/pi3GEyuhs/GkDI2oZUsLdiW6CrihgLPdPj9
	lRAgKP9tnI9t8hzMhFk7nljkLNd84nd6oldT/8qS5eDhpbTJy+pKPp5Ufi2qZu929fxqAkfMQzVKx
	FToOZrlb0rf0EFAo2rpNf5ub1lj1BwcRNSLAueHUPk1Z4dowPvDgUwQSOCnWrUOCrTjDDre46gxmU
	UXYYvMzuleui0YDCpAXY+qs4USVP6mgm3Edi1FHaQvKL88GaDlOBujkL8Qq3bNDBGFfZCjcG6VbmT
	H/VzBFjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ4qN-009By8-01; Fri, 16 Sep 2022 06:28:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ4qI-009BwX-S7
	for barebox@lists.infradead.org; Fri, 16 Sep 2022 06:28:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oZ4qB-0005yX-F2; Fri, 16 Sep 2022 08:28:43 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oZ4qB-0001Q4-5i; Fri, 16 Sep 2022 08:28:43 +0200
Date: Fri, 16 Sep 2022 08:28:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220916062843.GX6477@pengutronix.de>
References: <20220912084627.84575-1-antonynpavlov@gmail.com>
 <20220915091820.aa57cf6dd4cabd1878e6d849@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220915091820.aa57cf6dd4cabd1878e6d849@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_232850_924600_C93AA9A0 
X-CRM114-Status: GOOD (  17.73  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC] Documentation/conf.py: fix copyright years
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Antony,

On Thu, Sep 15, 2022 at 09:18:20AM +0300, Antony Pavlov wrote:
> On Mon, 12 Sep 2022 11:46:27 +0300
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> Hi Sascha!
> 
> Here is the barebox documentation generated in my gitlab CI/CD system with 'make docs':
>   https://frantony.gitlab.io/-/barebox/-/jobs/3029093142/artifacts/Documentation/html/index.html
> 
> and this is the barebox documentation from barebox.org:
>   https://www.barebox.org/doc/latest/index.html
> 
> The index.html pages look different (different color scheme is used, no barebox logo in the left top
> conner after 'make docs' etc).
> 
> Could you please publish an instruction how to reproduce barebox html documentation from barebox.org?

We have the theme here internally. Sorry, I can't give you any
instructions on how to reproduce the docs as found on the website.
What do you need them for?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


