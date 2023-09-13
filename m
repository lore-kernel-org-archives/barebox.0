Delivery-date: Wed, 13 Sep 2023 14:41:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPBs-00DlaN-WF
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 14:41:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPBq-00052g-NI
	for lore@pengutronix.de; Wed, 13 Sep 2023 14:41:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ytvhm1sYmYlB9R5cX4G23xpobp9a3D96Dsw5NyUGbVA=; b=IFxXX+C7AGKnPkRpEzw18Q7lRy
	FEzkJyQ5XZxqy7KNr8oNHXS0SF+cP2McAVZ6kn8EF7JHQekpnc7sqGqhszT/A2EFrlFYVsAshU9iI
	jiEa80iipZdktmISYnQQVdhZDo0FKfI5L4FliG6mPuS72gZ+DdIVZNhh4Oc02QcbmXxKucHFA19QM
	W25Ig8eBWYTPqVcHOxrH78OGnn9H8ajyz15ISI2zprvdqqVNnQ9kBM6zSvmnQI3bhDjbOjtKYiPUA
	aIqGK/X/cjua95dr09sYt8iFNbN/u3qjfjXm6rQwT6seJgvK7f6MhuwS8ScwGvhEtIWk9D1Qm15Gp
	TjYK85gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPAq-005szd-33;
	Wed, 13 Sep 2023 12:40:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPAn-005syS-3C
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 12:40:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qgPAl-0004qz-I6
	for barebox@lists.infradead.org; Wed, 13 Sep 2023 14:40:47 +0200
Message-ID: <fdec0228-4b04-daff-54cd-f917165b5b06@pengutronix.de>
Date: Wed, 13 Sep 2023 14:40:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20230913123936.1892645-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230913123936.1892645-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_054050_070589_DBEE842F 
X-CRM114-Status: GOOD (  17.87  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: drop unreferenced left-over lib/Makefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.09.23 14:39, Ahmad Fatoum wrote:
> There used to be implementations of boot commands in arch/arm/lib, but
> this has been moved to either arch/arm/lib32 or lib64 for since.
> 
> The Makefile still bears witness to that past, but it's unreferenced, so
> have it it too retire to git history.
> 
> Fixes: 79e3038089f5 ("ARM: aarch64: disable 32bit boot commands")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Please dismiss, sent out twice by mistake.

> ---
>  arch/arm/lib/Makefile | 4 ----
>  1 file changed, 4 deletions(-)
>  delete mode 100644 arch/arm/lib/Makefile
> 
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> deleted file mode 100644
> index 1a8144f6c64a..000000000000
> --- a/arch/arm/lib/Makefile
> +++ /dev/null
> @@ -1,4 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> -
> -obj-$(CONFIG_BOOTM)	+= bootm.o
> -obj-$(CONFIG_CMD_BOOTU)	+= bootu.o

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



