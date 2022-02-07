Delivery-date: Mon, 07 Feb 2022 10:01:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGztX-0086Qn-B4
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 10:01:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGztV-0003hG-N2
	for lore@pengutronix.de; Mon, 07 Feb 2022 10:01:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HiWmHGKriPhjn8ry5kXjIzanFmuriZLcooObrp6th2Q=; b=Qj8iOUnzJ5FyedQIRjb4iqjKTj
	KB+8NNcfkSaXOEEIKSHDUcXV2ek4kvxmYm6kKAHGkH9weDSUok1o8RTZswQD/dNPb+d3f1eZL7Qa1
	Np0dS0WlduhrSNOKmdN628d7VSS7c0OUboFVYMDWpkhjEE7tLPeuOS9Om323J24ppDfvR/t+tVA0e
	ouTWlmnUSIoxbbxGvrIudmFd5b9DX7Ru5TtmKaw6iEcnKDfz+Zlo2XZNuBxgiVbiCeDetdU7UXy80
	m5f+ZauOGo/hd7iSNvvKbapAWJmQ/DUvwraQ1xYsYxcTZYJO2EG9xGJNafPY+foLGRpVwpRN3Fsls
	c3KmL6PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGzs2-009Se5-3n; Mon, 07 Feb 2022 08:59:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGzrw-009ScY-NF
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 08:59:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGzru-0003C6-Pd; Mon, 07 Feb 2022 09:59:30 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGzru-0000nu-7U; Mon, 07 Feb 2022 09:59:30 +0100
Date: Mon, 7 Feb 2022 09:59:30 +0100
To: Frank Wunderlich <frank-w@public-files.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220207085930.GF18637@pengutronix.de>
References: <trinity-36c99dd7-0b16-47b1-b6c1-0e86097fcc99-1644073134441@3c-app-gmx-bs06>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-36c99dd7-0b16-47b1-b6c1-0e86097fcc99-1644073134441@3c-app-gmx-bs06>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:48:50 up 58 days, 17:34, 81 users,  load average: 0.16, 0.77, 0.63
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_005932_783515_97C860CD 
X-CRM114-Status: GOOD (  28.66  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: blspec - autoboot + timeout/default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Feb 05, 2022 at 03:58:54PM +0100, Frank Wunderlich wrote:
> Hi,
> 
> can i boot directly to blspec-menu (boot -m sd.1) with setting in
> default env and boot a specific entry (by title/filename) after some
> time (e.g.3-5 sec)?

There is a -t <secs> option to the boot command. It seems however that
there is no possibility to select a specfic entry beforehand. The first
one would be booted.

> 
> i have defined some blspec files in /mnt/sd.1/loader/entries/ and i
> want to show the menu by default and after some time the entry from
> specific file should be booted. this gives user the possibility to
> modify this conf to define his kernel for autoboot in headless mode.
> 
> i tried to modify defaultenv/nv/boot.default, but this needs filenames
> in /env/boot, no commands and if i use a script, it cannot start the
> "boot -m sd.1" because the /env/boot scripts run bootm (tried loading
> barebox with such script - ended with putting a separate script in
> /env/bin/)

It should work by setting:

nv boot.default=myboot

With /env/boot/myboot:

#!/bin/sh

boot -m sd.1 -t 3

> 
> btw. is there a way to load environment from a txt file from a
> specific partition (similar to uboots uEnv.txt)?

The barebox environment is a directory tree rather than a list of
variables, so there is no way to load a text file as environment.
There is the loadenv command which takes the path to an environment
image as argument. You can generate such an image on the host
with the bareboxenv tool and then load it under barebox with loadenv.

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

