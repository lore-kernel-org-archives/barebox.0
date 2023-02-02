Delivery-date: Thu, 02 Feb 2023 10:21:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNVmb-00BD6q-Lo
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 10:21:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNVmZ-0006GS-4U
	for lore@pengutronix.de; Thu, 02 Feb 2023 10:21:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mtxkxT/Z495C9fTug6IngJEU6zt5H/6ZVRDEgRuYn1M=; b=u0QwNG2Oz4vpjfM2P2sQQ8ridO
	3+NQw/VyadjKLu50y3s7CnMhjsxyAtMmWIw/5RDKX7vWmeyf8EYBSSyWR7r3KdbjZRoLWlzt9bVW/
	SXaBHKYtuQTvNTVc8HVjREN1H90Pbiq0Aivxec1ryAXB89GxSFtw55TarIY0j2hw+TG4Nj36FlZKs
	wIEnIXpsK2LdoupjnOIccyFTciz7yZ2uOsrXUD2Fz4HYBJvC7JuDdxBFO1flmS2czdLBlm+W3zhRZ
	7HdxBb82zGrXXA1HtD+ZpAQXWxe2Ym/UCdp4umkf22pPpODp/Giqi+lOGa7KZLgsTPd2DNNrCcZ3N
	N6dEoggw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNVkx-00F8NJ-Nl; Thu, 02 Feb 2023 09:19:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNVkt-00F8Mg-7Z
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 09:19:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pNVkq-0005yv-QS; Thu, 02 Feb 2023 10:19:40 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pNVkp-0001EB-WD; Thu, 02 Feb 2023 10:19:40 +0100
Date: Thu, 2 Feb 2023 10:19:39 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230202091939.76462zu5g3auk6j7@pengutronix.de>
References: <20230202075741.2350028-1-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230202075741.2350028-1-contact@jookia.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_011943_285866_2F035737 
X-CRM114-Status: GOOD (  10.68  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 0/5] Add support for the Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi John,

On 23-02-02, John Watts wrote:
> This patch series introduces support for the Novena board.
> This support is basic but enough to boot Barebox.
> 
> The EEPROM code here is included in anticipation for reading the features
> flag in the future when more board features are supported.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


