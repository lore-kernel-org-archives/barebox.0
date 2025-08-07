Delivery-date: Thu, 07 Aug 2025 07:14:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujsxY-007snu-06
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 07:14:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujsxX-0004kv-HE
	for lore@pengutronix.de; Thu, 07 Aug 2025 07:14:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y2Ygk/fOg8IkDORhrTLYsQvdJO5iAWJY6qvmMjGeuAM=; b=BvV4UdB2cZAk/RAaBMuuiLVSkm
	gmhziDMlNzfuq6v4SusFZUVE0PyT4jdlM2vnDA6oxOoDdCNGH8j9tkMTMyB6SQn5pyr3Q3ULnWpNr
	ysMruAp4rFSUlLcpxcyHFpL1arBsYwRa5nNHDzR7rXK//NO1Kc4VhLgdUY6jf7nD2FpN7kISX2glc
	8XrnrcoLxdVvbZt6ENPlJ5ILGJ+J5A5IdX37wl9dbnwbbZaiiJCt/ONtPZWrwI1XUGmxDaOaJo5a8
	MUJrDc+EKpHIMa8YCBIGHiIiD2VFqnwQycz0zJIYtMdG2qR48FcskQUnTdolCkxog6j5CciZe8uaz
	w+p+nqbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujsx5-0000000HI8z-0kbI;
	Thu, 07 Aug 2025 05:14:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujswz-0000000HI8C-48op
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 05:14:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujswy-0004gC-O5; Thu, 07 Aug 2025 07:14:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujswy-00CK6n-1o;
	Thu, 07 Aug 2025 07:14:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujswy-006Xe2-1b;
	Thu, 07 Aug 2025 07:14:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250806135642.2864366-1-a.fatoum@barebox.org>
References: <20250806135642.2864366-1-a.fatoum@barebox.org>
Message-Id: <175454364049.1559227.10807005788172327001.b4-ty@pengutronix.de>
Date: Thu, 07 Aug 2025 07:14:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_221402_027788_B425B348 
X-CRM114-Status: UNSURE (   6.15  )
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
Subject: Re: [PATCH master] bootm: ignore global.bootm.initrd if
 unavailable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Aug 2025 15:56:42 +0200, Ahmad Fatoum wrote:
> The bootm.initrd* variables are only available if CONFIG_BOOTM_INITRD is
> enabled, but we were saving and attempting to restore them
> unconditionally.
> 
> Fix that to avoid confusing warnings on systems without initrd support
> compiled in.
> 
> [...]

Applied, thanks!

[1/1] bootm: ignore global.bootm.initrd if unavailable
      https://git.pengutronix.de/cgit/barebox/commit/?id=a353f75968e0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



