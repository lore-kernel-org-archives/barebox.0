Delivery-date: Thu, 12 Jun 2025 10:10:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPd0m-006RPB-1l
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 10:10:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPd0l-0008E4-Rj
	for lore@pengutronix.de; Thu, 12 Jun 2025 10:10:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gVYUtNfTWZnNtlO3m7cHebGF6JbkFyhtNBHBIfwJ//M=; b=J9RrGAPKI9etQZNJfsLUwcYs5J
	2x60OqNu2UK7lApvau7E3MJ1O5ym26S9L/enHINqMfDDs8XX7dM1PCYl5pwvPkAq+Plp8vMxyXi+u
	WTL9POM9yYnw76hP93nc8bX9WPUj+MbCV+uCZ53SaLjtddoZ/iYZudiWitdBU3CEwXEiR+PbxHZb2
	B6FzthL7SIUCLsbGKoJ+zVeB4ouqfCSc+Dg76Jm3rbnoyhPRScT5OOf6AmFWXhwtRW61n20aqE85h
	4jQgEh9YaGlZjD95KZRXfd0C0VulEyfgfPVHUov87JMPQEIhReh2x2GA/zjtODI/Ltq+6WQ24Lx5r
	di/f7p9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPd0J-0000000CYoT-1bJG;
	Thu, 12 Jun 2025 08:09:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPcXB-0000000CTSY-3NoM
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 07:39:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPcXA-0004nj-Lj; Thu, 12 Jun 2025 09:39:36 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPcXA-0035H8-1a;
	Thu, 12 Jun 2025 09:39:36 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPcXA-000H5z-1O;
	Thu, 12 Jun 2025 09:39:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250611115635.3341350-1-s.hauer@pengutronix.de>
References: <20250611115635.3341350-1-s.hauer@pengutronix.de>
Message-Id: <174971397642.65590.7073719085618714602.b4-ty@pengutronix.de>
Date: Thu, 12 Jun 2025 09:39:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_003937_846489_AE19D667 
X-CRM114-Status: UNSURE (   6.74  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fs: unreference path on file close
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Jun 2025 13:56:34 +0200, Sascha Hauer wrote:
> Since commit 83ffe89840e8 ("fs: use filename_create/filename_lookup
> instead of open-coding") we no longer open-code the file lookup during
> openat(). Unlike the open-coded variant filename_lookup() keeps a
> reference to the file which is now leaked and the filesystem cannot be
> unmounted anymore:
> 
> umount: Device or resource busy
> 
> [...]

Applied, thanks!

[1/2] fs: unreference path on file close
      https://git.pengutronix.de/cgit/barebox/commit/?id=a3ef153fdf26 (link may not be stable)
[2/2] fs: unreference path in canonicalize_path()
      https://git.pengutronix.de/cgit/barebox/commit/?id=aef3b0134519 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



