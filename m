Delivery-date: Mon, 11 Mar 2024 09:18:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjarA-000m2s-0s
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 09:18:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjar9-0001RQ-Ln
	for lore@pengutronix.de; Mon, 11 Mar 2024 09:18:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l/s3x6XLX4izWzoiJl5fS0MhhQT3/bZw8zcNrmO429g=; b=gyGL0dtvHkekRgLb7S63qd16s4
	j9xAPlKbc0xfFTEYuS4hVvZDRa2AP/QsarC7TK9VC18McuF84VGfqA+AE383Q0yH7fsYuF6PzD5yv
	rGgmEP3VydAExlgL1QkA6nMf8bW1T2VQN730S0ShDqHghEobLuc9XLeBCtpmh7mt1tZLXLvWXWsgB
	hGg8TXF83RtluNUywCJMshz75jNnc/sqJoHUeBv41v0bek7INKhQYNrGeUGMUOkwwKobLeDtXcE/v
	3LouR9ZPqNj2qOIiY78EUB4mQP8LaqPbD8+Qd2fNSsxW8hjagG0idoTKGgg+kTp+tcfHQ4FxrFjuW
	++BJ5IWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjaqg-00000000bGW-0ROn;
	Mon, 11 Mar 2024 08:17:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjaqc-00000000bFZ-27w5
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 08:17:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rjaqb-0000Tb-5s; Mon, 11 Mar 2024 09:17:25 +0100
Message-ID: <88fe3f64-f210-4e9a-a379-b31aad56a66e@pengutronix.de>
Date: Mon, 11 Mar 2024 09:17:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
 <20240308-v2024-02-0-topic-arasan-hs200-support-v1-7-6d50c90485f3@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-7-6d50c90485f3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_011726_580379_DC4C2DB2 
X-CRM114-Status: GOOD (  14.88  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 07/12] include: mci: add more EXT_CSD_CARD_TYPE_*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.03.24 12:17, Steffen Trumtrar wrote:
> Import missing EXT_CSD_CARD_TYPE_ defines from linux v6.7.
> 
> EXT_CSD_CARD_TYPE_SDR_1_8V/1_2V is unused in barebox. Replace with the
> defines from linux.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/mci.h | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/include/mci.h b/include/mci.h
> index 91460b7ef6..9a52e3f360 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -293,13 +293,24 @@
>  #define EXT_CSD_CARD_TYPE_MASK		0x3f
>  #define EXT_CSD_CARD_TYPE_26		(1<<0)	/* Card can run at 26MHz */
>  #define EXT_CSD_CARD_TYPE_52		(1<<1)	/* Card can run at 52MHz */
> +#define EXT_CSD_CARD_TYPE_HS		(EXT_CSD_CARD_TYPE_HS_26 |	\
> +					 EXT_CSD_CARD_TYPE_HS_52)
>  #define EXT_CSD_CARD_TYPE_DDR_1_8V	(1<<2)	/* Card can run at 52MHz */
>  						/* DDR mode @1.8V or 3V I/O */
>  #define EXT_CSD_CARD_TYPE_DDR_1_2V	(1<<3)	/* Card can run at 52MHz */
>  						/* DDR mode @1.2V I/O */
> -#define EXT_CSD_CARD_TYPE_SDR_1_8V	(1<<4)	/* Card can run at 200MHz */
> -#define EXT_CSD_CARD_TYPE_SDR_1_2V	(1<<5)	/* Card can run at 200MHz */
> +#define EXT_CSD_CARD_TYPE_DDR_52	(EXT_CSD_CARD_TYPE_DDR_1_8V  \
> +					 | EXT_CSD_CARD_TYPE_DDR_1_2V)
> +#define EXT_CSD_CARD_TYPE_HS200_1_8V	(1<<4)	/* Card can run at 200MHz */
> +#define EXT_CSD_CARD_TYPE_HS200_1_2V	(1<<5)	/* Card can run at 200MHz */
>  						/* SDR mode @1.2V I/O */
> +#define EXT_CSD_CARD_TYPE_HS200		(EXT_CSD_CARD_TYPE_HS200_1_8V | \
> +					 EXT_CSD_CARD_TYPE_HS200_1_2V)
> +#define EXT_CSD_CARD_TYPE_HS400_1_8V	(1<<6)	/* Card can run at 200MHz DDR, 1.8V */
> +#define EXT_CSD_CARD_TYPE_HS400_1_2V	(1<<7)	/* Card can run at 200MHz DDR, 1.2V */
> +#define EXT_CSD_CARD_TYPE_HS400		(EXT_CSD_CARD_TYPE_HS400_1_8V | \
> +					 EXT_CSD_CARD_TYPE_HS400_1_2V)
> +#define EXT_CSD_CARD_TYPE_HS400ES	(1<<8)	/* Card can run at HS400ES */
>  
>  /* register PARTITIONS_ATTRIBUTE [156] */
>  #define EXT_CSD_ENH_USR_MASK		(1 << 0)
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



