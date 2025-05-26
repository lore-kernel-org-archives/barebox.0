Delivery-date: Mon, 26 May 2025 15:49:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYD4-000XMm-04
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 15:49:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYD3-0007s9-EB
	for lore@pengutronix.de; Mon, 26 May 2025 15:49:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KmfzyoVIs74zJv/7qPBBS8YBdUe5D776+Z1QvqV99ls=; b=b+v9+tRP6GLOphhtLVsdqtdlXt
	J5qrjJ68dZVY9B4U4eTX6Eq0os2cmtiCxMbEallM9HTvVdv8luSycFPlOKg/vB0Q9qO9NFGrRoq/x
	tZgTjCh/Q3OeCRUYE+8msCbV8EEutjWzPG9pdz3yjxoukEA+q+SRNsUNb5YAR2JGd+fwQEJlBeIlO
	lgTMBC56FJ1NscLbOK/7I6X0C7CWKIlO1XCxPOA7dAjf6ZbIn7+Ql79VrPLijHLDX6tAXul5tB5TQ
	or+Rc3oYeU2evBLBiS1JEu/byxGKCHPMyXde8GolMQCdTf2pD0MZSPSsAJDFhgkEMtyF7M0MzzbQT
	nl8Pdf2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYCf-00000008vkl-30ms;
	Mon, 26 May 2025 13:49:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYCD-00000008vjX-3uTS
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 13:48:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYCC-0007X7-OD; Mon, 26 May 2025 15:48:52 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYCC-000G8p-1o;
	Mon, 26 May 2025 15:48:52 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYCC-0030TX-1b;
	Mon, 26 May 2025 15:48:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250522-parted-size-v1-0-369d146aa100@pengutronix.de>
References: <20250522-parted-size-v1-0-369d146aa100@pengutronix.de>
Message-Id: <174826733249.716764.6068653611786386788.b4-ty@pengutronix.de>
Date: Mon, 26 May 2025 15:48:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_064853_973318_E6C19286 
X-CRM114-Status: UNSURE (   7.31  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] parted: add command to create partitions
 specifying the size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 22 May 2025 15:40:21 +0200, Sascha Hauer wrote:
> So far to create partitions we have to specify both start and end of a
> partition. Create a mkpart_size command to conveniently create a
> partition by specifying only the size.
> 
> 

Applied, thanks!

[1/3] partitions: add function to find free space on partition table
      https://git.pengutronix.de/cgit/barebox/commit/?id=f19d76f0dad8 (link may not be stable)
[2/3] parted: align partitions to 1MiB
      https://git.pengutronix.de/cgit/barebox/commit/?id=541a8f5c5e43 (link may not be stable)
[3/3] parted: implement mkpart_size command
      https://git.pengutronix.de/cgit/barebox/commit/?id=be5e1d5106a0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



