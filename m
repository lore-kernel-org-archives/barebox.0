Delivery-date: Tue, 07 Apr 2026 09:51:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA1DQ-009UL2-0S
	for lore@lore.pengutronix.de;
	Tue, 07 Apr 2026 09:51:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA1DP-000344-JE
	for lore@pengutronix.de; Tue, 07 Apr 2026 09:51:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+NVnuxvm80pbxaji7YRr+MYR5cVVqPwWmXQ438oJrH8=; b=JKZjBGqcFyHj6H+8butLRNDpwY
	ChSfIh+BsJahCWPcwlLr9jt+Z/6Gs63VT8Ht+5e2N9xqCIlhQ9i7wjJGrYDH6GzfIRf5udmWXrSsX
	ilE84D1UoMAHin+TQlFImXyzSM0nyd/APNtlt1LSve6HGfKgaPWt6esMXB2QfGDUSpzZSBltzq+6R
	HifduohjFQgziVYcRzI0Zy3j2ckBjMaXPNG6wLegCT/dq6mWSbsx5lZUsYMn9xMDq6nifuUyuQdwM
	IZnJf8ioiDZ9Cd8BXLnx5oiBDks0GzIIATzZCMC7u36dXjtY7Lwvo4+pgkH0/brvSnQSee9DUSouE
	vuJ93ghg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA1Co-000000066TI-3T7h;
	Tue, 07 Apr 2026 07:50:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA1Cl-000000066Sg-030V
	for barebox@lists.infradead.org;
	Tue, 07 Apr 2026 07:50:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wA1Ch-0002yU-PD; Tue, 07 Apr 2026 09:50:31 +0200
Message-ID: <230f6ac4-7540-4316-90ad-879fe5b8d855@pengutronix.de>
Date: Tue, 7 Apr 2026 09:50:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
References: <20260407-v2026-03-1-topic-filetype-v1-1-e2fd029ab0d4@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260407-v2026-03-1-topic-filetype-v1-1-e2fd029ab0d4@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_005035_130476_D7F7F028 
X-CRM114-Status: GOOD (  18.40  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] filetype: fix unaligned access for x86_linux_bootimage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/7/26 09:34, Steffen Trumtrar wrote:
> is_x86_linux_bootimage tries to access an unaligned pointer which may
> lead to errors on SoCs that don't allow it (e.g. ARMv5)
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks!
Ahmad

> ---
>  include/filetype.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/include/filetype.h b/include/filetype.h
> index d404e0cf3c..759ef9c2a3 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -5,6 +5,7 @@
>  #include <linux/string.h>
>  #include <linux/types.h>
>  #include <asm/byteorder.h>
> +#include <asm/unaligned.h>
>  
>  /*
>   * List of file types we know
> @@ -170,7 +171,7 @@ static inline bool is_riscv_linux_bootimage(const void *header)
>  
>  static inline bool is_x86_linux_bootimage(const void *header)
>  {
> -	return le32_to_cpup(header + 0x202) == 0x53726448;
> +	return get_unaligned_le32(header + 0x202) == 0x53726448;
>  }
>  
>  #endif /* __FILE_TYPE_H */
> 
> ---
> base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
> change-id: 20260407-v2026-03-1-topic-filetype-1255d131e636
> 
> Best regards,
> --  
> Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


