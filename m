Delivery-date: Mon, 23 Feb 2026 12:28:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuU6p-004oYF-2r
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:28:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuU6q-0007pX-91
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:28:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dvgu24stmEQq6KZQcnMKAUZYqvuMcLcEdc/Gtnkf4fQ=; b=lCsELWVCvWz8xvPesn+4FEV25S
	xwno/Q6lTbepKY9LarfBZ0d0Fo/8vdO6ATNqn7oq4d0h5G/hOBg3QQ8QptybtBtXLhzm5Mgy/OngQ
	xEfQwpgozLTYfQ2h+vJ78sQAz5vQnotgVmigB03l+bx0UU4V4oSr2BMKF++lz/1aNaMgI9EbXoxo4
	lKq7sL8xvShjlu1IpA+h7N58PZPlTcHOtEHHjBmnIsT2qWLrfJXc7M2VLmjT3us2TeK1vfRn7hmQN
	lIHX+jtZFTGFP+E/FskGRpngsorM2TT5feH8dQKNom77d8l9SiMHpj1kbzQuD/cBDwyNZd1olqi0X
	yaqu90vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuU6U-00000000BAU-0BSu;
	Mon, 23 Feb 2026 11:27:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuU6O-00000000B9q-21AV
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:27:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuU6M-0007jp-S8; Mon, 23 Feb 2026 12:27:46 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuU6L-002Dkw-15;
	Mon, 23 Feb 2026 12:27:46 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuU6M-00000000wmL-2cT8;
	Mon, 23 Feb 2026 12:27:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260105151328.87837-1-a.fatoum@pengutronix.de>
References: <20260105151328.87837-1-a.fatoum@pengutronix.de>
Message-Id: <177184606661.225830.16795649507181098033.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 12:27:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_032748_550287_08A997EC 
X-CRM114-Status: UNSURE (   7.61  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: container.sh: explicitly pass build dir as
 volume
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 16:13:14 +0100, Ahmad Fatoum wrote:
> For cases, where KBUILD_OUTPUT/LG_BUILDDIR may be a symlink, processes
> running inside the container may not have the necessary permissions to
> follow it.
> 
> Fix this by calling realpath on it and explicitly registering it as
> volume.
> 
> [...]

Applied, thanks!

[1/1] scripts: container.sh: explicitly pass build dir as volume
      https://git.pengutronix.de/cgit/barebox/commit/?id=c2c4023b9849 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



