Delivery-date: Wed, 03 Jul 2024 10:54:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOvlF-0017gI-2n
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 10:54:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOvlF-0007zY-BD
	for lore@pengutronix.de; Wed, 03 Jul 2024 10:54:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yXodZVb8LBAnj1Dl4WI7PTask44+mJAAghoKbQVdCUI=; b=1irJLPpTx1n6kW5+VT3u/YwUWl
	wJnQDbbDSseXTf6SS5YM2RmDAfOIzgRF8f0uDekb5IGAPOz2GUVf2rnIeOTMiPtQterZDXNmW0Q9I
	Gnuefe3m8kKl5/vnn/MtnOtfB3aSW2kPoPRGVUZvC6CByAH4F2UUPdTvKqzUNLCvqfpjZO6TrK1gO
	U9CpMs91wo3WzNJIBtNGps9EUw/YpFV+pij8lBwwEb6HWlA/KuNJ1wyYOqL0tCUtb0c6ZOiASO4Mu
	SyIXsm1vhusVmAyGlrJWo/szOj3ds8fpibI7563xxEfEnsLEXAlO1MHn8CQZE04owJ1lz/NtEIuRT
	T56VjDlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOvkX-00000009UIe-3zte;
	Wed, 03 Jul 2024 08:54:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOvkU-00000009UHY-3YGt
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 08:54:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOvkS-0007rU-8p; Wed, 03 Jul 2024 10:53:56 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOvkR-006oJI-SL; Wed, 03 Jul 2024 10:53:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOvkR-002nIU-2d;
	Wed, 03 Jul 2024 10:53:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240702084522.705903-1-s.hauer@pengutronix.de>
References: <20240702084522.705903-1-s.hauer@pengutronix.de>
Message-Id: <171999683581.666015.16123183402079285808.b4-ty@pengutronix.de>
Date: Wed, 03 Jul 2024 10:53:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_015358_914304_5881CE5F 
X-CRM114-Status: UNSURE (   7.09  )
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
Subject: Re: [PATCH] mtd: nand: mxc_nand: always copy_spare() for page
 write
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Jul 2024 10:45:22 +0200, Sascha Hauer wrote:
> When doing a page write we always have to copy the OOB data in place,
> as the controller will always write it. Not copying it means we write
> random data to the OOB area.
> 
> 

Applied, thanks!

[1/1] mtd: nand: mxc_nand: always copy_spare() for page write
      https://git.pengutronix.de/cgit/barebox/commit/?id=d74c84582591 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



