Delivery-date: Tue, 09 Aug 2022 12:08:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLM9c-00HFqH-5P
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 12:08:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLM9d-00032h-50
	for lore@pengutronix.de; Tue, 09 Aug 2022 12:08:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5dZmFgE5O8K7Ix67kGE247Dh5tCI86jPK+GahosUF2M=; b=E8iT9pHoODdPpZbcblEki1rn7T
	yMY5TxpiHFQPIAewBD+KNzUGgCMx5ZGNljpRZQYWJ0Yc2EVgepPp+fj3k++G5I3+ZJ5Xa/QquATcl
	p5CZpGI5I5vUG/7k+tEaH7jCp5ekpgL+3AvzBHVC1K6YU4ux4aOHvYmx1X0lmf/9dcYh1Ln3Xai+m
	xD96ctifEF7kgBcXWPo3fQ82AUX1LrmrQZ94BW8grhsRQOBN4Yja5V5ztODovkPo90XEc5+F6rpqL
	LhnCJPjH3V/yIvmO2+KwxfLvdt0pv656nQAyAGhjSdTZBKSagYuVoEZhXowv/Swwbw5ca/Y4RBVit
	X3A45lvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLM8L-003CDG-9p; Tue, 09 Aug 2022 10:06:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLM8G-003CCR-N2
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 10:06:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLM8E-0002xK-V1; Tue, 09 Aug 2022 12:06:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLM8E-00051S-MV; Tue, 09 Aug 2022 12:06:38 +0200
Date: Tue, 9 Aug 2022 12:06:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220809100638.GR31528@pengutronix.de>
References: <20220714193509.2134503-1-s.hauer@pengutronix.de>
 <20220714211238.pedcpd47vx5gisum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220714211238.pedcpd47vx5gisum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_030640_768870_A783AF9E 
X-CRM114-Status: GOOD (  20.81  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fs: Check if automount actually mounts something
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jul 14, 2022 at 11:12:38PM +0200, Uwe Kleine-König wrote:
> On Thu, Jul 14, 2022 at 09:35:09PM +0200, Sascha Hauer wrote:
> > An automount command that returns successfully but doesn't mount
> > anything makes barebox hang as can be reproduced with:
> > 
> > automount -d /mnt/foo true
> > ls /mnt/foo
> > 
> > Check if the current dentry is a mountpoint after running the automount
> > command, otherwise return with an error from automount_mount().
> 
> While I think the intention of this patch is fine, I have little doubts
> if that breaks some workflows, e.g. something like:
> 
> 	automount -d /mnt/tralala 'for p in 0 1 2; do mkdir ${automount_path}/${p} && mount /dev/disk0.${p} ${automount_path}/${p} || break; done'

You would create 3 automountpoints for that.

> 
> I admit it's a bit constructed, but maybe that's only because I'm not
> creative enough?

Yes, it is constructed ;)

I can't think of a better example, but I'm not sure we should support
such cases.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


