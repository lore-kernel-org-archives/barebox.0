Delivery-date: Thu, 13 Oct 2022 10:18:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oitQg-0079Pd-J6
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 10:18:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oitQe-0005G1-B8
	for lore@pengutronix.de; Thu, 13 Oct 2022 10:18:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mq/bWFV+jab++FD6bjOwxamF9CzsX7Ok2OCjUm7UImA=; b=gl8iNIFwqdY9Efu5X6naH93KI6
	YuBE7ms8ZxvLpfkbi8HV7avi0n8E8A05aZ3+Gpeo3z2L/oGd3UXfOxPJuNf2za65oMrLSP7TyoSUu
	ga1NCwekUmKDzUYFVgVfHMiaA0Cd7HjLhX3ycPUwQOOIP5bhZQW+d8gw3HzIjUtzP9k1RibfXhgNP
	huyUzDRltXMzAlu17qZv6SbL6PTbw/Ipdd4qGLyRe47X3IMino4+5ZxUL1xaZ3i7Xa+A1RHa64NoP
	9UBAQlVr+BebeHFr1x1kcQh/CSzH5h3OBMfhE+cOdtoyDP1k/5pMbvidS2CA/KIM9PHizpWpYjH+Y
	E9SPodIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oitPG-00B365-JW; Thu, 13 Oct 2022 08:17:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oitPC-00B35K-8S
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 08:17:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oitPA-000566-JJ; Thu, 13 Oct 2022 10:17:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oitPA-0008QO-A2; Thu, 13 Oct 2022 10:17:24 +0200
Date: Thu, 13 Oct 2022 10:17:24 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: BAUER Bernd <bernd.bauer@ses-imagotag.com>
Cc: Barebox Mailingliste <barebox@lists.infradead.org>
Message-ID: <20221013081724.GG6702@pengutronix.de>
References: <PR0P264MB328928CED65F8A4275814502D2259@PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM>
 <20221013073204.GE6702@pengutronix.de>
 <PR0P264MB3289835436E9D3C600F7FD3CD2259@PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PR0P264MB3289835436E9D3C600F7FD3CD2259@PR0P264MB3289.FRAP264.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_011726_314085_34EFBD3B 
X-CRM114-Status: GOOD (  12.49  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: HAB/SecureBoot on IMX8MN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Oct 13, 2022 at 07:34:36AM +0000, BAUER Bernd wrote:
> Hi Sasha!
> 
> Thank you! I'll try it.

HAB support is a bit tricky. Don't hesitate to ask if you have
questions.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


