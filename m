Delivery-date: Fri, 27 Sep 2024 09:09:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su56a-003JNg-04
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 09:09:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su56a-00041l-EJ
	for lore@pengutronix.de; Fri, 27 Sep 2024 09:09:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/fI+krf1DZB8g/5M6UBEMueTz7kYENGuu6rejwJ3Blk=; b=fy6APboZ5t1+uiTbf5ZMQrW0ok
	f2w0BC35TVzZcKKdzh5OCVkA4e8RnT8EfsgKKLK0km9Y2ITyTHcCKVZFsiOr5TWWWYLuvQd+ze3Y8
	P6UELBRuaYnnDgRSb0qX6b3sDDrpIT9V9XN+NUoQF4o8K5CWhPm+mhvNeZ4g4Oy4HVUro4cUNoDt4
	RGXW18NCDcsCXVwvKr6yiz+qpeylnYLh3ZxEeB/+Ewn/EfkYyPl2+jsvEmtZAQCcfTsjr0pefIUzm
	60vW2y7PtutYr3K9VgsqQ/iL29Ek9ozXzU9BqxP6R7iBiGl8tnQyFOjKuU8o7k5NcCsk2aD9or5Xg
	NDvWG7Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su562-0000000AIn6-2iwE;
	Fri, 27 Sep 2024 07:08:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su4wt-0000000AHBX-2K4l
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 06:59:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1su4ws-0008EJ-9p; Fri, 27 Sep 2024 08:59:30 +0200
Message-ID: <954bb35c-6561-401e-aae5-d4d1f0c1b44c@pengutronix.de>
Date: Fri, 27 Sep 2024 08:59:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-5-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240913075924.1652866-5-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_235931_634702_D8AEFBBE 
X-CRM114-Status: GOOD (  14.52  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 04/16] keytoc: remove duplicate __ENV__ check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.09.24 09:59, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/keytoc.c | 11 -----------
>  1 file changed, 11 deletions(-)
> 
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index b140160688..ecb33cbe47 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -664,17 +664,6 @@ int main(int argc, char *argv[])
>  		*path = 0;
>  		path++;
>  
> -		if (!strncmp(path, "__ENV__", 7)) {
> -			const char *orig_path = path;
> -
> -			path = getenv(orig_path + 7);
> -			if (!path) {
> -				fprintf(stderr, "%s doesn't contain a path\n",
> -					orig_path + 7);
> -				exit(1);
> -			}
> -		}
> -
>  		ret = gen_key(keyname, path);
>  		if (ret)
>  			exit(1);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


