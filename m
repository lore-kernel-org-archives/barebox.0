Delivery-date: Tue, 01 Mar 2022 09:23:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOxn2-00EBFR-Rn
	for lore@lore.pengutronix.de; Tue, 01 Mar 2022 09:23:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOxn1-00046Y-KY
	for lore@pengutronix.de; Tue, 01 Mar 2022 09:23:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XqF7aA/xn6YfHiZvBrND9BtUeFzsa9v2syHyjJNaGFg=; b=B7MyxL6c8UBJEsjaT19YDsZHlX
	IFFzqf7OfwEJV+vWc/uqxKVRwe5PFDDEE4jpiFVwDWTWTGLZQz0ijA8Q5xsSNI0AfWzkFVN1Xhj+n
	Y+TEoHBQl6WhbHIR/8T/sfhiO88M/6AVMJNgY3MSZTjBtOgHcbX75fvaUJyyRAPyPOJC5iw+VWnDr
	8VWvvpuPUG8qC3a71QVk6+Xc6J7zo539vva8l5HSAmCHuebuFcciywZMnfhc6Ee9aZ6MTbSNRLLn5
	+9UYp/ZW0avNW8xN+iyEkZ+Q+lLfJjmTVwXAKb/xLf7mZZvPDpVv293PxEehKTN5wUi7YlKp6sG4/
	BFl1lqNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOxlS-00FZRZ-1X; Tue, 01 Mar 2022 08:21:46 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOxlM-00FZOa-0J
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 08:21:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:To
 :From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sohWdjaw9/n1JgBe6NYStKEvgHnaZXuPqbWDFOdfNBA=; b=Cmrq1hFXSqVFKq1yOfs2Cz//pm
 rrSlfhxiykNuRGCLudd1MKiVI2lQ5XWFgC6h91w67L2BBnKu8dHnMg0ZYpi3oyq6LLDNvjV9dG3o+
 kzBIzmVDXTQ788WjfEK53hz4btSFgk1Xw3pSj6FXw7mRAEKs8y+VhKNvsuCCpTj+aGlZ4lMjFp8Q6
 fiPto/xZF4LEbqs80thlZ36+Yo12hbQpTvuW5hhwO+hcaQcM3ICl36KWr2LFstFaL9r+eUnB9olw3
 djNjeQx3iC72M28NOH9TEEEUUAGf+RrZCx851KxitRIYWhwEkONhOYFDh4vu2hMHL1wA86XP4kU3F
 oi85Pvng==;
Received: from [89.212.21.243] (port=33516 helo=[192.168.69.86])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1nOxl6-008ETX-Mj
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 09:21:32 +0100
Message-ID: <5d436fc3-fc64-1b68-1a72-510462e08686@norik.com>
Date: Tue, 1 Mar 2022 09:21:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
References: <CAMHeXxPD9eOdamfmB84e76YtMrifo663zt7cnDN7Qd=iENQdfA@mail.gmail.com>
 <20211119130623.1948659-1-andrej.picej@norik.com>
In-Reply-To: <20211119130623.1948659-1-andrej.picej@norik.com>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_002140_423045_4B30B184 
X-CRM114-Status: GOOD (  10.64  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] regulator: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Gentle ping. The patch was probably missed as is was send as an reply to 
Trent's memory leak find.

On 19. 11. 21 14:06, Andrej Picej wrote:
> Fix memory leak of propname.
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
>   drivers/regulator/core.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index 097f7d779..c5cb9ee34 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -231,8 +231,10 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
>   	}
>   
>   	ret = of_device_ensure_probed(node);
> -	if (ret)
> -		return ERR_PTR(ret);
> +	if (ret) {
> +		ri = ERR_PTR(ret);
> +		goto out;
> +	}
>   
>   	list_for_each_entry(ri, &regulator_list, list) {
>   		if (ri->node == node) {

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

