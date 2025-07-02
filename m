Delivery-date: Wed, 02 Jul 2025 08:15:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWqkV-00DD7j-1x
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 08:15:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWqkV-0005xj-31
	for lore@pengutronix.de; Wed, 02 Jul 2025 08:15:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QIW7zBEBPBBLOfO9GiloNqozkfav1Q2S/Rbk+nxJ4eg=; b=XDXIOSL25TNj9uTsn+UXpjJUK5
	O+4MmkuHzp1w6Iq8x+vLLRmBhuIqNrtvsiSdzldr324rUT00Mvk27CT44XysdGECrRHSdVqmEtYvp
	g3BUgz7j0hS64KfRzSqe65ht70QsQ1bkEt71snNTFSFEOxhr7L5o/pMTTmIgXSi6tQpoeRfY0jfrh
	vtJD7WwvFGbCHrQt+slQn5ErmjY4x5l5/7DHUhXEplUlMMSwbgRCP7Gs7OcNRWxVoQlNJsfC9ap2Q
	UgA7WelPuEXD4r7ZPLqSEfI3tb3+rWubfEnT8pFsjyPk2NnH/SZ3dexu+VNAroQ9mXNtOu6/vgQH/
	GZEJsmJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWqk5-00000007NeT-0jeI;
	Wed, 02 Jul 2025 06:14:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWqk4-00000007NeB-0r9B
	for barebox@bombadil.infradead.org;
	Wed, 02 Jul 2025 06:14:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=QIW7zBEBPBBLOfO9GiloNqozkfav1Q2S/Rbk+nxJ4eg=; b=qAMgNAhOdmtU1+nLZJBHfp9xZf
	I5gZr3siKkvaSev9riF7H6AMZQ5uH2q+DSOc3jRgqfD9XpmwgFIkH6OxOEGhzvKh4Dcd7yj4J4Hjb
	whTCEdEsBjaxtnFcu1OzP2SV6GBBDbBppKJjr/PwQtSRIsC8qY+/RMVe3Go3PS24YDOB7ktnGsFMO
	kVqLAXO/PBhRtynksSIwNsXL7c7/N1qIxyxM5TfncIMdfaE/kzyrRDkO6lbbVTRJvOFp/0ul5uO0a
	2d60EKDbOfIrsEQslC9bCEaKSAlZwe60Vwpyv8g0hpXKti6GZoqz5+mFLTN4zQm9GM3c4AoO0ngAg
	clFs4Grw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWqk1-00000007GtP-043V
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 06:14:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqjy-0005XQ-5Q; Wed, 02 Jul 2025 08:14:42 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqjx-006OJd-38;
	Wed, 02 Jul 2025 08:14:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqjx-00Fzkv-2w;
	Wed, 02 Jul 2025 08:14:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 =?utf-8?q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
In-Reply-To: <20250701101201.502762-1-u.oelmann@pengutronix.de>
References: <20250701101201.502762-1-u.oelmann@pengutronix.de>
Message-Id: <175143688190.3812290.4028131150896525281.b4-ty@pengutronix.de>
Date: Wed, 02 Jul 2025 08:14:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_071445_163343_54C19DEB 
X-CRM114-Status: UNSURE (   4.92  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: Kconfig: fix location of FILETYPE_STRINGS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Jul 2025 12:12:01 +0200, Ulrich Ölmann wrote:
> It erroneously slipped into menu "OP-TEE loading".
> 
> 

Applied, thanks!

[1/1] common: Kconfig: fix location of FILETYPE_STRINGS
      https://git.pengutronix.de/cgit/barebox/commit/?id=0c542daae80e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



