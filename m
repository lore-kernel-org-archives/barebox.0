Delivery-date: Wed, 25 Sep 2024 10:54:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stNmc-002Wqz-2F
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 10:54:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stNmd-0007Sw-70
	for lore@pengutronix.de; Wed, 25 Sep 2024 10:54:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jY4UG/prqRb8O8YhkPBRw+hunRbAqz7R7Ac5QLrihLU=; b=UPf27OylBsdj5GCoQknwHI3ixX
	901CRpekhFTEBhL+HBrgI9rBLg4R7X6PIvrCvi0//ahvFiV7L2asNkmAHBs+y6TOM9zOt0LmsAslp
	09uvLPW6NYg/KgWqOB64al7dWDCnNCYTegc3vYEyGadCobmmIWkppYRxUOOmvaEoCrQxFD04VhuYF
	l9ya/fzi9djjwkvglNuc6wG51mpZrF6bj3APfvBsgBSzdelRfEqJ2XhdOS8U2oIKbC1pae7+9IFFm
	yWnCx1Gete3ZHFtqh67hWIVauNl67rcVtcjUcvLc7LYKvxvo3OAVqKY0v9cGZb/ABsXUHnt2QMHOV
	A7M+8BsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stNmC-00000004Y6Z-43DM;
	Wed, 25 Sep 2024 08:53:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stNmA-00000004Y4o-013R
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 08:53:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1stNm8-0007LJ-L5; Wed, 25 Sep 2024 10:53:32 +0200
Message-ID: <37072dbc-8ea7-410c-914b-877306e3fd51@pengutronix.de>
Date: Wed, 25 Sep 2024 10:53:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-3-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240913075924.1652866-3-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_015334_174407_DDE34D33 
X-CRM114-Status: GOOD (  16.33  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 02/16] keytoc: fail in case gen_key() fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.09.24 09:59, Sascha Hauer wrote:
> In case of an error in gen_key() return an error code so that the keytoc
> tool returns an error.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/keytoc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index 3ac42bc6d0..7e73c786a3 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -597,7 +597,7 @@ static int gen_key(const char *keyname, const char *path)
>  	if (ret)
>  		ret = gen_key_rsa(key, keyname, key_name_c);
>  
> -	return 0;
> +	return ret;
>  }
>  
>  int main(int argc, char *argv[])


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


