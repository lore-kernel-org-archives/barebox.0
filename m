Delivery-date: Tue, 23 Sep 2025 10:12:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0y80-0007t7-1k
	for lore@lore.pengutronix.de;
	Tue, 23 Sep 2025 10:12:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0y7z-00088n-Va
	for lore@pengutronix.de; Tue, 23 Sep 2025 10:12:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8iAXlzQHYk5zlDljC6xJmB29QI7A+6cOFn+H8zgPZ3I=; b=f39SNCVXqCu14ajp2O17UG5R4f
	YVbq0tNJuUCkVpAvR44L2j+YAlfRi0Nlck1w0pzfO8BqWG1Y2OQ8SgjUjBMgAwy5M+lfK4KB6qRu0
	ZYSjpypM/hSlWV4x3/28il8RhuXBFl5D49BUwtNxNmcU7Vfm2NpJFd2hYBKKKaUInvn37RFLdwVfx
	wj425/KCEgXvTn69rdpBy4qUTnv2Ior0QZQXIoCcso0Ru90Mg+OW389JDrY/onu3lWBBsaWwhqMBh
	XdRsXSjgDXekaJ8b621mUZYoTnzPEHWq6yA6Wsf0etqqPp1hN2iqglV5tbwzgv/uldB81xA4kDZr7
	26aDdEkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0y7d-0000000CmMS-1n47;
	Tue, 23 Sep 2025 08:11:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0y7a-0000000CmKP-1T7C
	for barebox@lists.infradead.org;
	Tue, 23 Sep 2025 08:11:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1v0y7Y-0007yj-N4; Tue, 23 Sep 2025 10:11:32 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v0y7Y-0003iQ-1i;
	Tue, 23 Sep 2025 10:11:32 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v0y7Y-008nGB-1O;
	Tue, 23 Sep 2025 10:11:32 +0200
Date: Tue, 23 Sep 2025 10:11:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Message-ID: <aNJWNGRYXeC30ISd@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
 <20250917-security-policies-v2-4-f30769a3ff51@pengutronix.de>
 <3d2f3b6b-ff92-4244-bbb4-15657337f72d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3d2f3b6b-ff92-4244-bbb4-15657337f72d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_011134_392103_23E8E31B 
X-CRM114-Status: GOOD (  21.06  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 04/24] Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 22, 2025 at 06:14:36PM +0200, Ahmad Fatoum wrote:
> On 17.09.25 15:53, Sascha Hauer wrote:
> > +bool is_allowed(const struct security_policy *policy, unsigned option)
> > +{
> > +	policy = policy ?: active_policy;
> > +
> > +	if (WARN(option > SCONFIG_NUM))
> > +		return false;
> > +
> > +	if (!policy && *CONFIG_SECURITY_POLICY_INIT) {
> > +		security_policy_select(CONFIG_SECURITY_POLICY_INIT);
> > +		policy = active_policy;
> > +	}
> > +
> > +	if (policy) {
> > +		bool allow = __is_allowed(policy, option);
> > +
> > +		policy_debug(policy, option, "%s for %pS\n",
> > +			 allow ? "allowed" : "denied", (void *)_RET_IP_);
> > +
> > +		return allow;
> > +	}
> > +
> > +	if (IS_ENABLED(CONFIG_SECURITY_POLICY_DEFAULT_PERMISSIVE))
> > +		pr_warn_once("option %s checked before security policy was set!\n",
> > +			     sconfig_name(option));
> > +	else
> > +		return false;
> 
> Not having a security policy selected outside of permissive mode is a bug, so
> I don't think silent forbidding is a good idea.
> 
> At the very least, we should print the warning outside permissive mode as well,
> if only to tell people if they select the policy too late in their board code.
> 
> What's wrong with a panic though?

The rationale was:

- It's forbidden, so it's safe
- I assumed the caller would print an error
- It might offer a bit more flexibility on when we select the security
  policy

Anyway, we still make this more relaxed in the future should we want to.
For now I have put back the panic() here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


