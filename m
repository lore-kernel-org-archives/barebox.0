Delivery-date: Wed, 19 Apr 2023 10:58:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pp3eG-008hAu-TD
	for lore@lore.pengutronix.de; Wed, 19 Apr 2023 10:58:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pp3eG-00050e-PJ
	for lore@pengutronix.de; Wed, 19 Apr 2023 10:58:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:From:To:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+Pq5YAy8cFNK48+NGo1PDaIPo+jxw9zhCNpV0dPKJnU=; b=Ego2oPgeSHzHdQJHVi3ITJKxh3
	v3PPtrZPsJtBPCzmWt6lY1XohmU0PxmiN1S/yspGQqs/GYoIUIs2B7wCBcTg8hesBy2fzuBZaWQmC
	eO4W+o22lIXBXtZVfXcuaAMDhMBMRV3YWt+NUyW7D4C3TWLl3dntDC8f1OmySVrNTJkJEHNFnLqpR
	nw9qesjvCHR+a10syWbmpJaJ030NXvpdasvbEkry8Tvagqg/xDMYqfH4WiPN2MkeFcUojLoNvg+P3
	/TofqLqjH4THW66iHSqMAKqsd16r7ZPeuTjafBUbmeMsFxr9WNO24mW9ZU9kIbqi1swCsOiba6ErA
	z1hG9gOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pp3cp-004fgQ-0m;
	Wed, 19 Apr 2023 08:57:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pp3cl-004fcT-2S
	for barebox@lists.infradead.org;
	Wed, 19 Apr 2023 08:57:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pp3cf-0004hd-O0
	for barebox@lists.infradead.org; Wed, 19 Apr 2023 10:57:05 +0200
Message-ID: <55246453-c5ad-5499-bb6b-c652c7330bc9@pengutronix.de>
Date: Wed, 19 Apr 2023 10:57:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_015711_792990_F4C5D911 
X-CRM114-Status: GOOD (  10.38  )
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
Subject: SHA256 API in RK3568 rkimage deprecated since OpenSSL 3.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

Just a heads up:

Building barebox rockchip_v8_defconfig on a system with openssl-3.0.8 emits
a couple of deprecation warnings:

  scripts/rkimage.c: In function ‘sha256’:
  rkimage.c:27:9: warning: ‘SHA256_Init’ is deprecated: Since OpenSSL 3.0 [-Wdeprecated-declarations]
     27 |         SHA256_Init(&sha256);
        |         ^~~~~~~~~~~

I think that this would be a good occasion to get rid of the OpenSSL dependency
here. We have a simplified SHA256 API already usable in PBL, so it should be
doable to make this accessible to host tool build like we already do for CRC32.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


