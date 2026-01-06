Delivery-date: Tue, 06 Jan 2026 10:29:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd3NN-001qNo-00
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 10:29:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd3NM-000261-FD
	for lore@pengutronix.de; Tue, 06 Jan 2026 10:29:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GjnxNq9+eD2xkudqOaejd1e2KXwbDw/6JpO+FucbMyI=; b=mk0W1WbFuA69dRskyWwpf0oO20
	e2O9aQ5hlLbtCftThrOCt4cn+ntl35k8Adgd4a4W5RRiz8bt3uPeIofP77QDCC6GJq+n4zJNiy/b1
	1Ey6Auc4RI3NcgvqdQeutnHCJRLQDIzNAB3qD/l5rNcz7Oig1XUn5k2bj3Hu0D6sP/FrWMIp6qQGi
	r+o2jUy4VSyh2zl9IsTjrzBBXhSkB75CfHYJh7Qe4+1td23bt6oT3izdATu6Ix/04wT+T2CJxofJM
	v8U1gyqu9SluhkykdloU/XYNLWMTVJDbR3PsZcQYbF+MFH/tq+l38Tq7SbxU2O+HuKIQU638G2Fq3
	8H6hVOvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd3Ms-0000000Cip1-28V8;
	Tue, 06 Jan 2026 09:28:46 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd3Mp-0000000CioI-2Myk
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 09:28:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1767691721;
	bh=/q2y6UCP3eyt7M6ChAuIkJZjGJuAPZAGRprurf58AX8=;
	h=Date:From:To:Subject:From;
	b=TIprc4gJGY7EIE5SWLJSn5Y9BlGRFn5Mx8X/z1hp9NPObH1lrclzqiPXrZmvguY6e
	 IKWU8WUH33j4NZI/aKojTRabYck6brYjwIbVSC8R7+O+W8CU5ubb3y7K+egjISN25k
	 uo1fb630aSR8ZnOH3qujxiANof3v3sPdgLrxdDga+zzqgnmQduYwRwAKODAVi92sUn
	 eQDow8nuoTml88jCeMsY82hB5i0TrV8S7cx5wLedcK+xx4Nghca3rOeuEAO5BOBx+R
	 +/Mvnm5laidgDqsUaRhX24gDJFC+fBjRi46AVNPlW4HZUZegt3qo7Uslxf2pLo7Y00
	 bq3/OdTIY4Zxg==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 6D13440236
	for <barebox@lists.infradead.org>; Tue, 06 Jan 2026 10:28:41 +0100 (CET)
Date: Tue, 6 Jan 2026 10:28:40 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: barebox@lists.infradead.org
Message-ID: <aVzVyOKQ-mc4LLBd@hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_012843_745757_93111854 
X-CRM114-Status: UNSURE (   5.46  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Yocto migration meta-barebox -> walnascar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Dear barebox people,
Happy New Year everybody :-)

I used up until scarthgap https://github.com/menschel-d/meta-barebox

In our meta layer we have config in distro conf like this:

ABREBOX_CONFIG:beaglebone-yocto = "omap_defconfig"
BAREBOX_CONFIG:pn-barebox-pbl:beaglebone-yocto = "am335x_mlo_defconfig"
BAREBOX_IMAGE_SRC:beaglebone-yocto = "images/barebox-am33xx-beaglebone.img"
BAREBOX_IMAGE_SRC:pn-barebox-pbl:beaglebone-yocto = "images/barebox-am33xx-beaglebone-mlo.img"
RDEPENDS:barebox:beaglebone-yocto += "barebox-pbl"
COMPATIBLE_MACHINE:pn-barebox:beaglebone-yocto = "beaglebone-yocto"
COMPATIBLE_MACHINE:pn-barebox-pbl:beaglebone-yocto = "beaglebone-yocto"
PREFERRED_PROVIDER_virtual/bootloader = "barebox"

And a append recipe mainly with patches creating our custom
configuration.

Now I learned, barebox went into openembedded-core, this is great news!

I ditched the meta-barebox, tried my best, needed to remove alle configs
regarding "-pbl" and compiled:
ERROR: Nothing RPROVIDES 'barebox-pbl'
 (but /home/konsti/Melitta/scarthgap/meta/recipes-bsp/barebox/barebox.bb
 RDEPENDS on or otherwise requires it)



Now I get several ~580kB img files in the deployment images directory,
"ours" seems to be barebox-am33xx-beaglebone.img. File size is plausible
for the ex barebox.bin and strings suggest our insidem2m stuff to
boot/tftp/nfs landed up in it.

Where is the MLO part? Is barebox-am33xx-beaglebone.img the 1:1
barebox.bin equivalent?

We are used to create a partition table, first partition is vfat type
0x0c, MLO and barebox.bin are put there, works.

Kind Regards
Konstantin Kletschke


-- 
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Straße 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de 

Geschäftsführung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover



