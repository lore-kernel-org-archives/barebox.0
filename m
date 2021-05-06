Delivery-date: Thu, 06 May 2021 15:09:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ledlB-00027U-0t
	for lore@lore.pengutronix.de; Thu, 06 May 2021 15:09:45 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ledlA-0002JU-7f
	for lore@pengutronix.de; Thu, 06 May 2021 15:09:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e3fQaQDQWFWiX1wr/w7KI4vfRiVIetCBcNWdxQmJ390=; b=ed0F2Zz4/YDYmhaDqNewTT3E8
	lTGle/3jkexxJr6zn1iIvtZefK5FJOzhzPnqdN/OVWSF59HtrPGNsKy9Sk9PBba+/G4B8cI7zsqPw
	ptYO+D+WourambauoOsABHrqLlR/Vyv6oZCh3GFhVbv1Qh3mg1zWPgyg8MkwzLhpeBvu5ChwSHC3t
	tB/0fJdHbezrb02pH9PGH0VKNGLsS1uUj0aiT2lQGP5+OOQJGYzVtzD7gSXEkbV7j59jgIJ9YH3zE
	SOv7cI7TiE6XFdMUBj5wuZuaCod0w/JR5D13kNC5XtRoqR/ZSBpjm/luiTYKbKXILtrq1Bu4iDdO1
	QAp5+XeXQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ledkN-004HPt-FS; Thu, 06 May 2021 13:08:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledkI-004HPg-UY
 for barebox@desiato.infradead.org; Thu, 06 May 2021 13:08:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/PHRqYP4XmcdKVWr1XoS3hpP53vli1s6HmhqzcwaS1o=; b=zCupkdwIsm6LyN5h4PM/T4kmxo
 b0k4cQ/Va65STjCt+MtIhpzW9O4IiuRgSF5/KWBTdQ/1EcJcsPVgKNEFitqEHXXjanVsp8EfdWX1k
 o2+UZcT19Bh4wbWcDELngJoT/criHKp0GYeiG7g1uhHUS3hnr3Wd9QHoJ+6ExRD1xd5OlJWfnOHDe
 CQvVQb6/7I6ZRSvLjltoLbQF8VVqnysb2+7v9iNMwSQ6LXO+JI6aSvtLMWoS+I0dr3GuwiQx7Eoqu
 xYgLskrE2xAr+DKAtzAbKUIQa0bCzlg0Fyd44r0kDBCn9oXrHtAaO1lfP9MeHXLgsGFz0dJqoBSFC
 Zz9Mc7wQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledkG-0062z6-52
 for barebox@lists.infradead.org; Thu, 06 May 2021 13:08:49 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ledkE-0002Cm-VI; Thu, 06 May 2021 15:08:46 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1ledkE-0003zd-Lo; Thu, 06 May 2021 15:08:46 +0200
Date: Thu, 6 May 2021 15:08:46 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210506130846.u3h6gjlugmmasoev@pengutronix.de>
References: <20210506112219.27114-1-m.felsch@pengutronix.de>
 <c15d0311-c878-29be-2d64-e68ca7535131@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c15d0311-c878-29be-2d64-e68ca7535131@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:08:15 up 155 days,  3:14, 49 users,  load average: 0.13, 0.09,
 0.04
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_060848_213585_9E1E57B7 
X-CRM114-Status: GOOD (  25.39  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] driver: add flag to check if cdev is an mci device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21-05-06 13:59, Ahmad Fatoum wrote:
> 
> 
> On 06.05.21 13:22, Marco Felsch wrote:
> > We need this during mount() to check if the cdev is an mmc/mci device.
> > Later on we add the feature to pass "root=/dev/mmcblk*" as kernel
> > command line.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  include/driver.h | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/include/driver.h b/include/driver.h
> > index 0d43b36148..d381aaf78d 100644
> > --- a/include/driver.h
> > +++ b/include/driver.h
> > @@ -496,6 +496,7 @@ int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
> >  #define DEVFS_PARTITION_READONLY	(1U << 1)
> >  #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
> >  #define DEVFS_PARTITION_FROM_TABLE	(1U << 4)
> > +#define DEVFS_IS_MCI_DEV		(1U << 5)
> >  
> >  struct cdev *devfs_add_partition(const char *devname, loff_t offset,
> >  		loff_t size, unsigned int flags, const char *name);
> > @@ -509,6 +510,11 @@ static inline void cdev_create_default_automount(struct cdev *cdev)
> >  }
> >  #endif
> >  
> > +static inline bool cdev_is_mci_dev(struct cdev *cdev)
> > +{
> > +	return !!(cdev->flags & DEVFS_IS_MCI_DEV);
> > +}
> 
> Nitpick: cast to bool makes !! superfluous.

Right. I will drop it and add you tag.

> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> 
> > +
> >  #define DEVFS_PARTITION_APPEND		0
> >  
> >  /**
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

