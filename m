Delivery-date: Mon, 02 Dec 2024 10:50:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI34W-0032Id-02
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 10:50:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI34V-0000XG-P4
	for lore@pengutronix.de; Mon, 02 Dec 2024 10:50:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MQktG9PE7Q6TBACcOxdKuEk8SAiGYjCak3yHpJkEu70=; b=LK6MCxc2r6K+fxCAkrEu8NblKW
	dhGKsJun1CfA+5ZGklJffePmaA1zll6G+orHAD+k2H1PLMrjqCdUUO8FYAhBuMAQ4nx/m7AG5C5yW
	ry/CxojZozf7TMmBY49NQYPqjbDsc+nJi4Mg/aWaV3zMMBEVT03UwHrFnno5d60p5f56KnKpkFMaT
	vBe87GEcPBIpH9VO//gyWXaVeQEZueZK63GtoRJfFfodAwNBiXG3Js6tbyNy6uTC6rgbuH/H+oCTG
	b+nYGTzxtafisLe7GO2Ud9BmqXkgGL3QzCQuIhM9IDAq7sERGRlRoQfmrOXAAGpc/8C+9GpA5PLxl
	Z8vBSS8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI33w-00000005ca1-1AZm;
	Mon, 02 Dec 2024 09:49:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI33t-00000005cYM-02YW
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 09:49:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tI33r-0000MG-Ek; Mon, 02 Dec 2024 10:49:47 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tI33q-001H5D-1b;
	Mon, 02 Dec 2024 10:49:47 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tI33r-00AXUW-0Z;
	Mon, 02 Dec 2024 10:49:47 +0100
Date: Mon, 2 Dec 2024 10:49:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, h.assmann@pengutronix.de
Message-ID: <Z02Cu7KiqjqNiTgp@pengutronix.de>
References: <20241115121602.3999375-1-a.fatoum@pengutronix.de>
 <20241115121602.3999375-2-a.fatoum@pengutronix.de>
 <970fb560-b4f5-4c3b-9d5e-cd7b243707c3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <970fb560-b4f5-4c3b-9d5e-cd7b243707c3@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_014949_049961_53449355 
X-CRM114-Status: GOOD (  29.74  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/4] environment: implement of_env_get_alias_by_path
 helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Nov 15, 2024 at 01:38:03PM +0100, Ahmad Fatoum wrote:
> On 15.11.24 13:16, Ahmad Fatoum wrote:
> > For use by board-code that wants to get the alias pointing at the
> > backing device of an environment node add a simple
> > of_env_get_alias_by_path() helper, so board code doesn't need to worry
> > about property name and whether the binding uses a phandle or string path.
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Thinking about it, of_env_get_device_alias_by_path may be a bit verbose,
> but is a better name.
> 
> I'll wait for more feedback before sending v3 though.

LGTM otherwise.

Sascha

> 
> Cheers,
> Ahmad
> 
> > ---
> > v1 -> v2:
> >   - no change
> > ---
> >  drivers/of/barebox.c |  5 +++++
> >  include/envfs.h      | 10 ++++++++++
> >  2 files changed, 15 insertions(+)
> > 
> > diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
> > index ed5d171e43a8..7d433e280ba5 100644
> > --- a/drivers/of/barebox.c
> > +++ b/drivers/of/barebox.c
> > @@ -15,6 +15,11 @@
> >  
> >  #define ENV_MNT_DIR "/boot"	/* If env on filesystem, where to mount */
> >  
> > +const char *of_env_get_alias_by_path(const char *of_path)
> > +{
> > +	return of_property_get_alias(of_path, "device-path");
> > +}
> > +
> >  /* If dev describes a file on a fs, mount the fs and return a pointer
> >   * to the file's path.  Otherwise return an error code or NULL if the
> >   * device path should be used.
> > diff --git a/include/envfs.h b/include/envfs.h
> > index 767b34c943de..8bfc83b6b008 100644
> > --- a/include/envfs.h
> > +++ b/include/envfs.h
> > @@ -118,6 +118,16 @@ static inline const char *default_environment_path_get(void)
> >  }
> >  #endif
> >  
> > +#ifdef CONFIG_OF_BAREBOX_DRIVERS
> > +const char *of_env_get_alias_by_path(const char *of_path);
> > +#else
> > +static inline const char *of_env_get_alias_by_path(const char *of_path)
> > +{
> > +	return NULL;
> > +}
> > +#endif
> > +
> > +
> >  #ifdef CONFIG_DEFAULT_ENVIRONMENT
> >  void defaultenv_append(void *buf, unsigned int size, const char *name);
> >  int defaultenv_load(const char *dir, unsigned flags);
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


