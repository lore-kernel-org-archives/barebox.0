Delivery-date: Fri, 24 Mar 2023 13:23:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfgSO-00DCEU-3U
	for lore@lore.pengutronix.de; Fri, 24 Mar 2023 13:23:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfgSN-0004RC-Qu
	for lore@pengutronix.de; Fri, 24 Mar 2023 13:23:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5+LVULa03ihE7ne4v2/3U8L0zoakJPmLp7eVXGEECX8=; b=mUUSqDpQMQ5NtEnrNFopFB1kbR
	GxESlI1c4RkyTVO5b8w1ue9anxbJvrigbF4m2CN0lI1lzEFnBrfS3VF5jsJb/ijub6CMVrfqf5nFB
	1Cz4e66zMF3ib4MjF7LxijrOglMfdujgiHZvePnN0ceLfAV3XOnG1U5cpE7jqWwWO0i+r5kSu5vv3
	+f1sK/7G4ye3ACUGUq1fYR+wtLR6wmH9vFOlnhi7geMh7Fd6/kx5w5ab3ZPoiNKQe1G2qs5xFrp4G
	mtUwmB5TNng5JUUHJ0tPprzW5fVEJxWRdOuPBrTACEcUvgLpGPO7/OXqAuqvkulnH2gLzdiCkO/6J
	KVr9dxlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgQg-004LCv-19;
	Fri, 24 Mar 2023 12:21:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgQd-004LCT-0n
	for barebox@lists.infradead.org;
	Fri, 24 Mar 2023 12:21:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgQb-000425-Uz; Fri, 24 Mar 2023 13:21:53 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pfgQb-0000AM-Fr; Fri, 24 Mar 2023 13:21:53 +0100
Date: Fri, 24 Mar 2023 13:21:53 +0100
To: "Schoyswohl, Roland" <Roland.Schoyswohl@ife-doors.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20230324122153.GD19113@pengutronix.de>
References: <AM6PR04MB472829B69D627CA15218927EA2879@AM6PR04MB4728.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM6PR04MB472829B69D627CA15218927EA2879@AM6PR04MB4728.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_052155_285772_63F8E4B9 
X-CRM114-Status: GOOD (  21.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mmc: fix calculation of Max Enhanced Area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Roland,

On Thu, Mar 23, 2023 at 01:42:46PM +0000, Schoyswohl, Roland wrote:
> According extcsd documentation, the HC_ERASE_GRP_SIZE must be multiplied by
> HC_ERASE_GRP_SIZE and not added.
> 
> Signed-off-by: Roland Schoyswohl roland.schoyswohl@ife-doors.com
> ---
> commands/mmc_extcsd.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Your patch has tabs converted to whitespaces so doesn't apply. I fixed
this up manually this time.

Sascha

> 
> diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
> index 7ae068348d..f67c48404a 100644
> --- a/commands/mmc_extcsd.c
> +++ b/commands/mmc_extcsd.c
> @@ -1427,7 +1427,7 @@ static int print_field(u8 *reg, int index)
> 
>             case EXT_CSD_MAX_ENH_SIZE_MULT:
>                        tmp = get_field_val(EXT_CSD_HC_WP_GRP_SIZE, 0, 0xFF);
> -                      tmp = tmp + get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
> +                      tmp = tmp * get_field_val(EXT_CSD_HC_ERASE_GRP_SIZE, 0, 0xFF);
>                        tmp64 *= tmp;
>                        tmp64 *= SZ_512K;
>                        printf("\tMax Enhanced Area: %llu B\n", tmp64);
> --
> 2.25.1
> 
> 
> Knorr-Bremse GmbH
> FN 38565p, LG Wr. Neustadt
> 
> This transmission is intended solely for the addressee and contains confidential information.
> If you are not the intended recipient, please immediately inform the sender and delete the message and any attachments from your system.
> Furthermore, please do not copy the message or disclose the contents to anyone unless agreed otherwise. To the extent permitted by law we shall in no way be liable for any damages, whatever their nature, arising out of transmission failures, viruses, external influence, delays and the like.
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


