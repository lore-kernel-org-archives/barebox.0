Delivery-date: Mon, 03 Jul 2023 14:50:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGJ0H-00DY7P-PN
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 14:50:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGJ0F-0008Ns-8I
	for lore@pengutronix.de; Mon, 03 Jul 2023 14:50:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MLH0tcZ3oKfhgxjnwXLML91PnZE4HGx/M5xj342t2Oc=; b=pVVysQO37p4Oy5M1QPU4GfE8K/
	D5pKp9FXRGgf5pAyQGaTHytYc19o7yyG6T4D8RGZQ/7yyFgLtmgHYHAP71JrQ2dJKjK6n3Esg+JWK
	O0o0JKixy8urCMUUqIw7+vIYwwxT2FeE99catXwd3X3NNbk0d/PVIf+CjgWWIWA61uoLazaQSWglN
	FQe7ygs4/A76YwlG58JhMxIakiHHyGnaCcAwaLLlHOSS2YVHz2bdpgHuu1ERLmHKuMULjfa1SkQw+
	baGU6yCiEUSN4nF/UajqbyOPOMwZAXzlM1AFSJwG1WL8jwchKaafYB0+qGUO+YdfG1UJv7IGNEfTx
	RP/duSjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGIz0-00AWsN-1v;
	Mon, 03 Jul 2023 12:48:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGIyx-00AWpW-0E
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 12:48:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGIyi-0008Fi-Vx; Mon, 03 Jul 2023 14:48:28 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGIyi-0007yn-Ox; Mon, 03 Jul 2023 14:48:28 +0200
Date: Mon, 3 Jul 2023 14:48:28 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Rouven Czerwinski <r.czerwinski@pengutronix.de>,
	Michael Olbrich <mol@pengutronix.de>,
	Enrico =?iso-8859-15?Q?J=F6rns?= <e.joerns@pengutronix.de>
Message-ID: <20230703124828.GO18491@pengutronix.de>
References: <20230703095608.2188064-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230703095608.2188064-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_054843_101687_D61F9AC8 
X-CRM114-Status: GOOD (  16.22  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] kbuild: delete images with missing firmware
 instead of truncating
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 03, 2023 at 11:56:08AM +0200, Ahmad Fatoum wrote:
> It may be confusing to users to be left with a 0-byte image, so let's
> delete it instead. This means that every build with missing firmware will
> attempt the final make targets, only to delete them at the end.
> 
> At the flip-side, there is no risk of broken images to be used later on.
> 
> Suggested-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> Suggested-by: Michael Olbrich <mol@pengutronix.de>
> Suggested-by: Enrico Jörns <e.joerns@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  images/Makefile      | 4 ++--
>  scripts/Makefile.lib | 3 +++
>  2 files changed, 5 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


