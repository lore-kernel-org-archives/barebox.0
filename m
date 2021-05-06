Delivery-date: Thu, 06 May 2021 15:31:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lee6I-00029W-5k
	for lore@lore.pengutronix.de; Thu, 06 May 2021 15:31:34 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lee6G-0005yF-VV
	for lore@pengutronix.de; Thu, 06 May 2021 15:31:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q0RY1YfIy5Q0AqaZ2VXiq2vStbCrkDETFOxB82HndJs=; b=f6dyrJj/x9qZm/sGDAISH4Z2d
	qoNj63gY/1M05Jhb6OxkKkGFtpI68ocE9X1oTasFGwpQmK965GLGv7Ov1JnNcn1uxJtPWYhVTGnJr
	X8FBGEtTJ94UiiibBEL0qAaGzG1WAphN5Asi+Sr/WELsSqy+qzw9o7GRTgJaNxmz/IK18bsPu7aXQ
	DFCBdZgP2mCUlJ3iBG+IPIujQ5Qp/ZicLugAfMVjxZe+maSGzHz/Ef96VSM3S7jcnu/AcotPZWATK
	4z3vhN4PhlMuCrSoLyiGMm6aogJIEzhiboHFICc2IVfTHEJA3kd/hlb9QlYer167ZyfV8qgljXNs0
	KKRu2jHHg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lee5H-004Kgv-UQ; Thu, 06 May 2021 13:30:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lee5D-004Kgd-Qu
 for barebox@desiato.infradead.org; Thu, 06 May 2021 13:30:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=F3i2sfImZ0499TVZq4XM/fMNhvaN8Ma1HkPpeQjt+e4=; b=U2YPaEGJI2ixDk+l35tbgquEF+
 nH61pXEhCsgsIwBvz9+qwzKTdt0GUao8cB/UWSRYDxSHyjs/TyHn5SOBXCGi5/WHL4Pu0zWyqo1SL
 ZntU+r5AYvS2RWu075VrTe5tLbiEq+hjAE9pBkuaYgfkAJ5USDUafDoupOE3VQjSg/1K9Pusji/ii
 Hcf+dcV8b2UeubsYV0Sh1nyU5EADWUB96xodB4Rt1CU8aobI4i1bjVNpgWSIwiNe4HMDGl5FvsyYV
 q1OS+6S2MOnBn+KCompv6wnyelwiG6MTlX0I92VlUaCNMF3+a6datbvUsY+oE0rnbUd8Olwh9DyWT
 NkI1uXcg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lee5B-0063nB-2z
 for barebox@lists.infradead.org; Thu, 06 May 2021 13:30:26 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1lee59-0005by-HZ; Thu, 06 May 2021 15:30:23 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1lee59-0005k6-8f; Thu, 06 May 2021 15:30:23 +0200
Date: Thu, 6 May 2021 15:30:23 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210506133023.fytvm65bkqg4zz7j@pengutronix.de>
References: <20210506112219.27114-1-m.felsch@pengutronix.de>
 <20210506112219.27114-3-m.felsch@pengutronix.de>
 <a948f7d9-8ec3-8467-88af-08138319f89d@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a948f7d9-8ec3-8467-88af-08138319f89d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:08:52 up 155 days,  3:15, 49 users,  load average: 0.07, 0.08,
 0.03
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_063025_157345_3A610534 
X-CRM114-Status: GOOD (  48.94  )
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
Subject: Re: [PATCH 3/3] fs: add linux_rootarg 'root=mmcblkXpN' support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 21-05-06 14:19, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 06.05.21 13:22, Marco Felsch wrote:
> > Since commit fa2d0aa96941 ("mmc: core: Allow setting slot index via
> > device tree alias") the kernel supports stable mmc device names. Since
> > the barebox mmc device names matches the one from the kernel we can pass
> > the 'root=mmcblkXpN' argument on commandline to refer to the correct
> > boot medium.
> > 
> > This patch adds the support to store the above commandline as
> > linux_rootarg if enabled. Use the partuuid as fallback since it is not
> > as unique as the mmcblkXpN scheme. Add a own build option since the
> > system integrator needs to check if the used kernel contains the above
> > commit.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> > Hi all,
> > 
> > I know that:
> > 8<-----------------
> > +		if (!str && fsdev->cdev->partuuid[0] != 0)
> > +			str = basprintf("root=PARTUUID=%s", fsdev->cdev->partuuid);
> > 8<-----------------
> > is longer than 80char but for the sake of readability I kept that
> > oneliner. Should we update checkpatch accordingly to match the new linux
> > rule?
> 
> Yes, I already adhere to the new Linux convention in my barebox code.
> 
> > 
> > Regards,
> >   Marco
> > 
> > 
> >  common/Kconfig | 15 +++++++++++++++
> >  fs/fs.c        | 48 ++++++++++++++++++++++++++++++++++++++++++++----
> >  2 files changed, 59 insertions(+), 4 deletions(-)
> > 
> > diff --git a/common/Kconfig b/common/Kconfig
> > index 6b3c1701be..a09a1d9456 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -700,6 +700,21 @@ config FLEXIBLE_BOOTARGS
> >  	  to replace parts of the bootargs string without reconstructing it
> >  	  completely.
> >  
> > +config MMCBLKDEV_ROOTARG
> > +	bool
> > +	prompt "Support 'root=mmcblkXpN' cmdline appending"
> > +	help
> > +	  Enable this option to append 'root=mmcblkXpN' to the kernel cmdline
> > +	  instead of 'root=PARTUUID=XYZ'. Don't enale this option if your used
> > +	  kernel don't contain commit [1].
> 
> Could you add the first mainline Linux release that includes the commit?

Yep, will add it.

> > +
> > +	  The appending only happen if barebox 'linux.bootargs.bootm.appendroot'
> > +	  variable is set or the used blspec entry contains 'linux-appendroot'.
> > +
> > +	  [1] fa2d0aa96941 ("mmc: core: Allow setting slot index via device tree
> > +	      alias")
> > +
> > +
> >  config BAREBOX_UPDATE
> >  	bool "In-system barebox update infrastructure"
> >  
> > diff --git a/fs/fs.c b/fs/fs.c
> > index 881dc2fca0..8ee1e7febe 100644
> > --- a/fs/fs.c
> > +++ b/fs/fs.c
> > @@ -2831,6 +2831,39 @@ out:
> >  }
> >  EXPORT_SYMBOL(chdir);
> >  
> > +static char *get_linux_mmcblkdev(struct fs_device_d *fsdev)
> > +{
> > +	struct cdev *cdevm, *cdev;
> > +	int id, partnum;
> > +	bool found = false;
> > +
> > +	cdevm = fsdev->cdev->master;
> > +	id = of_alias_get_id(cdevm->device_node, "mmc");
> > +	if (id < 0)
> > +		return NULL;
> > +
> > +	partnum = 1; /* linux partitions are 1 based */
> > +	list_for_each_entry(cdev, &cdevm->partitions, partition_entry) {
> > +
> > +		/*
> > +		 * Partname is not guaranteed but this partition cdev is listed
> > +		 * in the partitions list so we need to count it instead of
> > +		 * skipping it.
> > +		 */
> > +		if (cdev->partname &&
> > +		    !strcmp(cdev->partname, fsdev->cdev->partname)) {
> > +			found = true;
> 
> You can return the basprintf() here directly

You're right.

> > +			break;
> > +		}
> > +		partnum++;
> > +	}
> > +
> > +	if (!found)
> > +		return NULL;
> > +
> > +	return basprintf("root=/dev/mmcblk%dp%d", id, partnum);
> 
> Then you can return NULL here and drop found.
> 
> > +}
> > +
> >  /*
> >   * Mount a device to a directory.
> >   * We do this by registering a new device on which the filesystem
> > @@ -2919,11 +2952,18 @@ int mount(const char *device, const char *fsname, const char *pathname,
> >  
> >  	fsdev->vfsmount.mnt_root = fsdev->sb.s_root;
> >  
> > -	if (!fsdev->linux_rootarg && fsdev->cdev && fsdev->cdev->partuuid[0] != 0) {
> > -		char *str = basprintf("root=PARTUUID=%s",
> > -					fsdev->cdev->partuuid);
> > +	if (!fsdev->linux_rootarg && fsdev->cdev) {
> > +		char *str = NULL;
> > +
> > +		if (IS_ENABLED(CONFIG_MMCBLKDEV_ROOTARG) &&
> > +		    cdev_is_mci_dev(fsdev->cdev->master))
> > +			str = get_linux_mmcblkdev(fsdev);
> > +
> > +		if (!str && fsdev->cdev->partuuid[0] != 0)
> > +			str = basprintf("root=PARTUUID=%s", fsdev->cdev->partuuid);
> >  
> > -		fsdev_set_linux_rootarg(fsdev, str);
> > +		if (str)
> > +			fsdev_set_linux_rootarg(fsdev, str);
> 
> This assumes that barebox aliases align with those of the kernel. I think this
> is at least worth a mention in the Kconfig text.

IMHO mention it within the Kconfig should be enough, since in an ideal
world the barebox-dt should be used by kernel as well.

> For an alternative, see f382be77f8c0 ("boot: introduce option to pass
> barebox-enabled watchdog to systemd"), which parses the aliases out of the
> kernel device tree without depending on the barebox ones.

That's interessint as well, but spreads the logic around. Therefore I
would keep my solution an add a note within the Kconfig. Is that OK for
you?

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

