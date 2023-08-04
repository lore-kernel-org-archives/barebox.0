Delivery-date: Fri, 04 Aug 2023 23:17:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qS2B8-007mtu-FH
	for lore@lore.pengutronix.de; Fri, 04 Aug 2023 23:17:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qS2B6-0003vo-TK
	for lore@pengutronix.de; Fri, 04 Aug 2023 23:17:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:
	Mime-Version:Content-Transfer-Encoding:Content-Type:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5APcVfBS/H4MBvRlAxvdnH0x+AEMgs9GxFkSmuVxxRk=; b=4ld2Rp4BE6L7XxwFLeTL3WfpsI
	BTjuvx7w+uOc9vkMdqSsSHU0fE48j578c8sfVh4Rj+asLsZw7yW8byaBxGRexc2F5zfZjRbbg1dpO
	33lSoaPb4vuooGojqNQDc4BWDO9+icakuauolXxuZTmuD7fS/z7CFGJtgUSjcGcB17bMVFbokHqxp
	eLzTPoK7a+uz2wnAG5e1l88QMfJxkSbQUMv309ZiBQNEM/eJUEI0w1/FiBkkbZ62ZeuBjip1ZY7Ap
	07DHPNcyikLdlHYv+k3l3eAEPBJ4GaT3/vBaWS24r1w5TkHwyDxamd+QpgiYNC8UfBNeunuoQ6wGI
	otgBPKQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qS29e-00DGUM-33;
	Fri, 04 Aug 2023 21:16:14 +0000
Received: from resqmta-a1p-077436.sys.comcast.net ([2001:558:fd01:2bb4::2])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qS29c-00DGU0-09
	for barebox@lists.infradead.org;
	Fri, 04 Aug 2023 21:16:13 +0000
Received: from resomta-a1p-077245.sys.comcast.net ([96.103.145.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
	(Client did not present a certificate)
	by resqmta-a1p-077436.sys.comcast.net with ESMTP
	id S1QyqMOR5SYDwS29WqS5qu; Fri, 04 Aug 2023 21:16:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1691183766;
	bh=5APcVfBS/H4MBvRlAxvdnH0x+AEMgs9GxFkSmuVxxRk=;
	h=Received:Received:From:Content-Type:Mime-Version:Subject:
	 Message-Id:Date:To:Xfinity-Spam-Result;
	b=2IIjvFirrNPbUNpa7yGMyVufXVDSWjfT3sRFyyVqhIzi/NT/7A9czHbERStM0O0Ml
	 /huGGEV0TtjsrSXVF2cTnUratP1QBeXa50PphqK6qpvsdvBv9h8xcMQCLQe8nYn/Cy
	 rC5XQeOBCj87fzDjUuqvrOeAzs7QZcRmTMYbBLItMvH6ysXz7VDd9PgpnzAgBWhyXs
	 JtDXkiAK/lSBqILODQkOrdsHmilpOCtm8ZRRsPS2OOdbB8gwUqETTRwGmbYvi0Fz+Z
	 dcGf6mS1z2R0j3YJKUwfAKy3xCTtUGzsCwNhhfilAJNjP7iGqNwBFQpygrIQbBBuGF
	 gAwAA6ZZkKF/w==
Received: from smtpclient.apple ([173.69.181.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
	(Client did not present a certificate)
	by resomta-a1p-077245.sys.comcast.net with ESMTPSA
	id S29MqcRk4j8wnS29Oq48tf; Fri, 04 Aug 2023 21:16:04 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgedviedrkeeggdduheejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuvehomhgtrghsthdqtfgvshhipdfqfgfvpdfpqffurfetoffkrfenuceurghilhhouhhtmecufedtudenucenucfjughrpefhtgfgggfukfffvffosehtqhhmtdhhtddvnecuhfhrohhmpeflohhhnhcuvehonhhnohhruceojhhttghonhhnohhrgeestghomhgtrghsthdrnhgvtheqnecuggftrfgrthhtvghrnhepgffhhfejveejtddvheeffeeiudeihfeivdeiuefhvdfgudejffdvhfdtieegueehnecukfhppedujeefrdeiledrudekuddrvdefleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopehsmhhtphgtlhhivghnthdrrghpphhlvgdpihhnvghtpedujeefrdeiledrudekuddrvdefledpmhgrihhlfhhrohhmpehjthgtohhnnhhorhegsegtohhmtggrshhtrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsggrrhgvsghogieslhhishhtshdrihhnfhhrrgguvggrugdrohhrgh
X-Xfinity-VMeta: sc=0.00;st=legit
From: John Connor <jtconnor4@comcast.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.4\))
Message-Id: <0E7349F1-0575-4093-A9E0-1F844E7F5922@comcast.net>
Date: Fri, 4 Aug 2023 17:15:47 -0400
To: barebox@lists.infradead.org
X-Mailer: Apple Mail (2.3696.120.41.1.4)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230804_141612_150402_051E11F5 
X-CRM114-Status: UNSURE (   5.70  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: macb_main.c ethernet driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Are there any plans to upgrade barebox to support more modern features =
of the Linux network stack.  i.e. NAPI support, phylink support etc.  =
Newer versions of the macb driver use these features and will not work =
in barebox.

Are there any patches that exist that add support for this?

Thanks
John=


