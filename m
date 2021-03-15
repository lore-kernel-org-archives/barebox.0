Delivery-date: Mon, 15 Mar 2021 11:27:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLkRU-0000jX-Lb
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 11:27:20 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLkRT-000194-P1
	for lore@pengutronix.de; Mon, 15 Mar 2021 11:27:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CvBfkJvIcQB2wePbdtRR70zw509MyuOFxQ/xucCtQK8=; b=PxWpZilZL43J9v5oS0q3VnfkU
	rg9v9KjFIc43aLtX4fuN3X5nZeWVKMrcdeMPtl7qXUqJSIrfY168IWa8qhrZILAZPMpGvLxcUwLlA
	0ia6GIDXxU2SMl1Go3ff2+c+wk0weSXxPBvDxJVS1v7HQQrw1F3vFJwdGLv2/h6K8vbANPS43i0cF
	0NtObZBwPtV1fd92lIHmFld3U0vvCjJ/nJCQRHm51nI/heKhbqUyrozP1XJ5qKfyzvrKVshOza3I1
	pYmgztuYRXjC2xp7yDLugtDWe02jc57gGp17Ul4IXIM9GwAsPPlg4CDv1WTmUzMpAa4Qrg2E163sI
	UW4G5Xn3A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLkQD-00FWK4-VF; Mon, 15 Mar 2021 10:26:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLkQ4-00FWIz-Aj
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 10:25:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLkQ3-0000oZ-NU; Mon, 15 Mar 2021 11:25:51 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLkQ3-0007Uo-EG; Mon, 15 Mar 2021 11:25:51 +0100
Date: Mon, 15 Mar 2021 11:25:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210315102551.GS23724@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
 <20210310132829.7662-13-s.hauer@pengutronix.de>
 <20210312111505.GN12621@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210312111505.GN12621@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:49:45 up 25 days, 13:13, 86 users,  load average: 0.18, 0.17, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_102552_717064_1E9256EE 
X-CRM114-Status: GOOD (  37.15  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 12/17] blspec: Rework firmware load
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 12, 2021 at 12:15:05PM +0100, Michael Tretter wrote:
> On Wed, 10 Mar 2021 14:28:24 +0100, Sascha Hauer wrote:
> > Applying overlays in blspec currently works in two steps. First
> > of_firmware_load_overlay() is called which doesn't load an overlay,
> > but instead loads firmware when one is needed by the overlay. This
> > is done on the live tree, because that was needed to find the firmware
> > manager. The second step is to call of_register_overlay() to apply
> > the overlay to the kernel device tree when the fixups are executed.
> > 
> > Instead of using a separate step to load the firmware, load the firmware
> > as part of the of_fixups.
> 
> Wouldn't this result in the firmware being loaded whenever of_fix_tree is
> called? Then, every use of the of_dump or of_diff commands would result in a
> reload of the firmware.

You are right, that is undesired. Ahmad just suggested a dryrun
parameter to the of_fixup callbacks. That could be useful elsewhere. A
dryrun would mean "Do the device tree fixups, but don't change anything
else".

> > -int of_firmware_load_overlay(struct device_node *overlay)
> > +int of_overlay_load_firmware(struct device_node *root, struct device_node *overlay)
> >  {
> > -	int err;
> > -	struct device_node *root;
> > -	struct device_node *resolved;
> > -	struct device_node *ovl;
> > -
> > -	root = of_get_root_node();
> > -	resolved = of_resolve_phandles(root, overlay);
> > -	/*
> > -	 * If the overlay cannot be resolved, use the load_firmware callback
> > -	 * with the unresolved overlay to verify that the overlay does not
> > -	 * depend on a firmware to be loaded. If a required firmware cannot be
> > -	 * loaded, the overlay must not be applied.
> > -	 */
> > -	ovl = resolved ? resolved : overlay;
> > -
> > -	err = of_process_overlay(root, ovl, load_firmware, NULL);
> > -
> > -	if (resolved)
> > -		of_delete_node(resolved);
> > -
> > -	return err;
> > +	return of_process_overlay(root, overlay, load_firmware, NULL);
> 
> This drops the check, if the overlay depends on firmware, which cannot be
> loaded, because Barebox could not resolve the overlay. This might be OK,
> because in this case, we also don't know if the target is an fpga-region.
> Looks fragile to me, anyway.
> 
> >  }
> > diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> > index c9ede614a6..d42e15ed1c 100644
> > --- a/drivers/of/overlay.c
> > +++ b/drivers/of/overlay.c
> > @@ -221,6 +221,8 @@ int of_overlay_apply_tree(struct device_node *root,
> >  			pr_warn("failed to apply %s\n", fragment->name);
> >  	}
> >  
> > +	err = of_overlay_load_firmware(root, resolved);
> 
> The firmware must be loaded before the overlay is applied. If the firmware
> cannot be loaded, the device tree must not be modified.

OK, I will load the firmware before applying the overlay.

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

