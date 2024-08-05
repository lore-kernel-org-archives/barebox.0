Delivery-date: Mon, 05 Aug 2024 12:33:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sav1b-006Sfm-0N
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 12:33:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sav1a-0002D1-Hu
	for lore@pengutronix.de; Mon, 05 Aug 2024 12:33:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M4g/iVLtAHlXUz8lXeBWzxmNwreUUdswNp5Nx7TelN4=; b=Z0n4f5KhqO9QdZ0uSY+6H0Ws4e
	viDXCKCc7uZdTsoT1bWzhllQbrfphcmwSMuITGtb2dm72lwp12K7JuMVPVAwTmtkKIYFs+Ye/jtSL
	dvKTK5ufSmx076RrJRlkVMQC/sKM2muTQuBjqag7T4RTnpjU33RCrHKkuSR4zmlyAU0xxEmrL04TD
	o2ErvWkM9IJV1JQtw6OGdoR31iirtLvfY+0GTxEzthQiBioNdWo3zO00/+0W0MtglclSvnOFcDCLO
	ajPOwzYAe9mBBzwbnECZFXKNi5v44obkCEGUHgVel18PEML+bKkOtuuLVkMYu3efLNo5sX96LqtR3
	u9QApl/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sav13-0000000FXcZ-2Hiy;
	Mon, 05 Aug 2024 10:32:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauxh-0000000FWUw-07VL
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 10:29:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sauxf-0001Zq-II; Mon, 05 Aug 2024 12:29:07 +0200
Message-ID: <6c920e3b-cde0-4fce-847c-56768793e1bc@pengutronix.de>
Date: Mon, 5 Aug 2024 12:29:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-10-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-10-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_032909_122407_B4E01E3D 
X-CRM114-Status: GOOD (  13.83  )
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
Subject: Re: [PATCH v2 09/19] rsatoc: use non deprecated openssl functions to
 retrieve RSA params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> EVP_PKEY_get1_RSA() and RSA_get0_key() are deprecated. Use
> EVP_PKEY_get_bn_param() instead.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  scripts/rsatoc.c | 29 +++++++++++++++--------------
>  1 file changed, 15 insertions(+), 14 deletions(-)
> 
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> index afef6212d0..c7bc4ba843 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/rsatoc.c
> @@ -18,6 +18,8 @@
>  #include <openssl/ssl.h>
>  #include <openssl/evp.h>
>  #include <openssl/engine.h>
> +#include <openssl/provider.h>

This is unused and might break compatibility with older OpenSSL versions?
Please drop, until we add provider support for real.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



