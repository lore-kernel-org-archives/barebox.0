Delivery-date: Fri, 26 May 2023 12:49:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2V0c-00Ey9S-FE
	for lore@lore.pengutronix.de; Fri, 26 May 2023 12:49:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2V0Z-0001Rk-TU
	for lore@pengutronix.de; Fri, 26 May 2023 12:49:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E7+F/cDQN6nOWPIBoP0Ilw6WHZA505Wmv0NNBqEB0eg=; b=kxrMhxC848faM+
	WNvX/8RuGWAi8Me7AL8En6oVqrspcfD/H405jZ/ah0U3FBMS61X591iUwe9cahG/6qt4K0aGupicj
	9G+fkkIUx03BgW06XBXMD47G1Bfz0LGa6FzCsHNL9lOF+dKy3eit06ItdIEN4NbGswFE4zCRupO22
	X6lA4tEYOcKZhqQNbvQ/V+BwiliP9JDc1yX8yK3jX3QVilUUXS9lcEgYCDYvy0vfat/Xa0U5n60r/
	cRdgW2I98znX4BdCgLU9y87kNOlS4+KKCWj+eCbhf0t8nW0u8y0UgZP2CK04JVikTMFyWH5A0lMeK
	80Wviiq37wNwq2QjtRRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Uz8-0025D6-2X;
	Fri, 26 May 2023 10:47:50 +0000
Received: from vmse04.mailcluster.com.au ([2401:fc00:4:1::6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Uz5-0025BN-0F
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 10:47:48 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse04.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q2Uyn-0000dc-Ou; Fri, 26 May 2023 20:47:36 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=E7+F/cDQN6nOWPIBoP0Ilw6WHZA505Wmv0NNBqEB0eg=; b=AIT4mKxYvp2J8YQM8hSMKcbP55
	3pgTpW2oTVWKqTEaLHNOb3dP5fjlTJG4iIHzpaKXGCAALEXJorkNQX1y4z9Gzlm4LHiTjEBaG1xGa
	u4zDTZ6rU1kcFdzgn8JIVi9GTjcCBtUExELNC7u/RGhruv0aFWSjfOytTY5WOm2wJjq5nyHvqlbdl
	TdAzk5OfkYolWoaJkqn0yB42kE9Af4tUt4qdJ1jRegqzTf5EztbakSdv3y8XYNOy/2Df1VX/yFQcT
	HtyuZ077lTlcHxJo/8Jh7yQ+3b5Mp6w21IH/oP7su+Funlm+meY9N2o8USWNbHQduZFrOdS9pfMwN
	2Z1aWLQA==;
Received: from [125.254.26.114] (port=36944 helo=dev8.localnet)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q2Uy0-00GKsI-1n;
	Fri, 26 May 2023 20:46:40 +1000
From: marc@cpdesign.com.au
To: barebox@lists.infradead.org
Date: Fri, 26 May 2023 20:46:40 +1000
Message-ID: <10297393.nUPlyArG6x@dev8>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.05)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT/312S4gbF1IHJxS5C+1ykgPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5xU2wr8oc+kSjorbvoTXOWnn9x3u48OEqFYZkyf93j/Tvxv
 T8ga9xhohIrnWvJciyArdcQpxrY+LupHZMEATJgD4KN+AsTCbHxVUUZfje10M8YEG2cp1AZJVlEo
 blvD9z9DAvNxHBqnmx/aE8dh3k7itS8JyqRSBX6uu5hHVyhQvC7hKTlEv1Fbdyu2mDknvyMvIKE5
 0j+rkoMjwzNG+n+y/B8/hIN0JouCgH6QZhVGVx+ysAsBM9SRe64PzDlhOOoBXoXqfdxZ6Xsc9abI
 Sq4C3qQunLNBoYqI4BeQVb4Ig8yd7yQQWL3CF2XL3W4+3422Z/tWtoggnTxct1hogZAWXPgQW/lH
 mBQYTwGUOuQtneLwejJoep85cxiiuAjU3RY8kHJPzMPBUSa80CzTeZ8JesZvUUafhLcns8UOFaES
 xH+kGM8D/KGeI+eENfQVNan6Bfy1T3PwsUos1yNYdTOG17NirEYyqwqMBGrw8ELiqIqNP/mE1P5I
 xc0CPo9TQOy4GoW7hSunlIPDAb8vp7vtIK/1NH5THMtlYvyHAYGOGuJw+IsbRAYC1LPVQPP+P/MU
 IKFuyZZpeW4SbXxBSCRrOs7vsAFzVd1v1GhPoE7QP9WObiF5HtHLA13E+zSeW8yyPA2Rf2cMOwEZ
 9NXG2W3rTMWIOpre/nZHhi60dtLDWGLd2oovRiUq5MVCzVMhgrk1ybuxObl5Ahw2v+ZvJgiQLypP
 fi/26oO2cauHDD/6kY8aC83qbLT/K1kXiZHNZ58TjZCHa7SYHAqkaPoNDPsTjV9FGdT+iwHmbcik
 OnvI8xuhWtAbiqQtZGuna56P+bNTLecqPFBfD3XNbj1aLn5mQa+DJelgV85WMiMFWKhfKrIucAVu
 QFyPsXiG9zxTA6R+pvlHhV6a5QjptwQBGybQtxyQ3oN2D6gZHaJUwSTBQTLWEPfmzwYu7mwnjKQz
 zRqUkxE+SK4CkqqQuY/ADtB7uFLX2886rlwU91BGF/+su0Yfl00XU0weOTegbVNJ8cTeNc8dl1pm
 DnP3+GHmbGtM1OGMrcn4QNqBtDS5lGxoeVZEhf7ni/JzoBrs+9v/N8Nai21OO0sCX7LKxbYOjL7U
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_034747_136653_69DF746B 
X-CRM114-Status: UNSURE (   8.79  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Troubles booting kernel with new imx8 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all, 

I'm trying to get barebox going for a new imx8mp based board. I can 
successfully power on and get to a barebox prompt etc and fiddle with gpios, 
files on sd, memtest etc, but when booting to kernel it will hang. Note though 
that the board boots ok with u-boot (using exact same kernel image).

I'm trying to figure out what is different between booting via uboot and 
barebox, I'm new to imx8 so have been going down a few rabbit holes...

Disabling various drivers (eg imx-cpufreq-dt) in the kernel will get past the 
hang, but result in a crash later on in the boot sequence. Disabling that may 
get further but will result in a crash somewhere else.
My instinct is that its something to do with sdma, but a lot of this is still 
a black box to me.

Any hints or suggestions are very welcome! (I can give more info but didn't 
want to dump everything straight away)

- board is based on an imx8mp module from solidrun
- boots kernel ok using u-boot (u-boot version provided by solidrun, based on 
NXP versions)
- I used the same ddr timings from u-boot
- also using same versions of firmware-imx (8.16) and ATF (2.8)

Cheers
Marc







