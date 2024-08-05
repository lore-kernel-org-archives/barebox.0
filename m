Delivery-date: Mon, 05 Aug 2024 12:03:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sauZ9-006S6g-19
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 12:03:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sauZ8-0005t7-Os
	for lore@pengutronix.de; Mon, 05 Aug 2024 12:03:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ltyl/k8p6SLuM8DQFSZT0IFoivc8OHTuH91p2Et+XlE=; b=QQ50/nkiPAFpof7o6iEZfCnsk9
	VkJrpWdRLd7L+fdjTzUBPpNM4xfr71hpzgHhFsM/n1WqAkBlrKIx37Vs7y9IpAAbDr2eYLhnCy3IO
	ESY9XtFecBf/+foprk5rQA26PpY3eR2lDD9Z8I7Aw7KvaFKKHtNboRot9YVsRo5ewLSNPQijN0KXQ
	kACZx4gNIZinOp9aoUXFS1G+nOLn/DhHO3qcgIl+mpT8zO2On068/2k4pUJ6T78rIcLYfzYrDAwNs
	4H+EHR5s73fkGb4/b9HwdxamPUcFN8fy9Ke+DPuuEU9DyByVP740m4zxMc52LA6OWjIxeMjInCv0Q
	S1vTNImQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauYj-0000000FQOn-0diE;
	Mon, 05 Aug 2024 10:03:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauYg-0000000FQO8-4AYE
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 10:03:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sauYf-0005kK-PW; Mon, 05 Aug 2024 12:03:17 +0200
Message-ID: <f181d471-6831-4645-a7a0-47f455e1896a@pengutronix.de>
Date: Mon, 5 Aug 2024 12:03:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-11-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-11-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_030319_069168_A1A24481 
X-CRM114-Status: GOOD (  16.11  )
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
Subject: Re: [PATCH v2 10/19] rsatoc: check error value of gen_key()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> exit with an error in case gen_key() fails, otherwise errors go through
> unnoticed.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Ah, nice that you caught this.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


> ---
>  scripts/rsatoc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> index c7bc4ba843..27f0afe61f 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/rsatoc.c
> @@ -471,7 +471,7 @@ static int gen_key(const char *keyname, const char *path)
>  int main(int argc, char *argv[])
>  {
>  	char *path, *keyname;
> -	int i, opt;
> +	int i, opt, ret;
>  	char *outfile = NULL;
>  
>  	outfilep = stdout;
> @@ -542,7 +542,9 @@ int main(int argc, char *argv[])
>  			}
>  		}
>  
> -		gen_key(keyname, path);
> +		ret = gen_key(keyname, path);
> +		if (ret)
> +			exit(1);
>  	}
>  
>  	if (dts) {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



