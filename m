Delivery-date: Mon, 07 Apr 2025 10:07:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hW4-009TA3-0Z
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 10:07:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hW3-0006Kd-J4
	for lore@pengutronix.de; Mon, 07 Apr 2025 10:07:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kt5RgtZnZwqymUK+vjiutB83mFgBjjr2LBh+dNgc2yU=; b=wHHuuiuc7xaFFsSYFK66xvbUDP
	H0ycG7ubZwAhqlGqZNB38T9H57X81Oslo5ETMwpP7ytXW4ovu0z4lyQPz7y40uwdS5rhPuHXYoGLY
	UL46KnEvVDpByYD6pJw8JOVPWAP7IIJMkVpmW/M0WVyHKYl4FOfahQPGmHCU28LzIPOpw6VQSLT5f
	MY7i8Ma7PTrRI/JRlEVLBKVPWzbtKYa1aPb7b7Yfa/1iB9Hd7+ooygcU3ViGuQjgSsENS+XwDbQZE
	nhrcTst5A4PLw+XlhnpMIXaXno5sn7Ua/DUbOX0x2GtMKkRuXm7LHWYLHp4tXldZidFL7cGgCFpty
	NQAspIdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1hVZ-0000000GvnC-2nZU;
	Mon, 07 Apr 2025 08:07:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1hNz-0000000GuCU-09GO
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 07:59:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u1hNw-0004ML-8V; Mon, 07 Apr 2025 09:59:12 +0200
Message-ID: <ef9dc94a-a756-4903-8632-e94a89d83ba6@pengutronix.de>
Date: Mon, 7 Apr 2025 09:59:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20250407-ratp-fixes-v1-0-4c2501a83bca@pengutronix.de>
 <20250407-ratp-fixes-v1-1-4c2501a83bca@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250407-ratp-fixes-v1-1-4c2501a83bca@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_005915_075828_8A5F9446 
X-CRM114-Status: GOOD (  18.48  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ratp: Drop wrong alignment annotation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 07.04.25 09:29, Sascha Hauer wrote:
> When ratp command handling was introduced in ff612b866f301 ("ratp:
> implement generic command support") we had an explicit 64bit alignment

s/64bit/64 byte/

> for the ratp command array in sandbox. This was removed in 52e5c35671
> ("X86: lds: remove unnecessary alignments"). With this it can happen
> that the ratp command section starts at a non 64bit aligned address, but
> the first command in that section will be placed at the first 64bit
> boundary. __barebox_ratp_cmd_start will no longer point to the actual
> command then and the array iteration fails.
> 
> Just drop the wrong alignment annotation.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  include/ratp_bb.h | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/include/ratp_bb.h b/include/ratp_bb.h
> index 418be6fe7b..c6c7c4bc23 100644
> --- a/include/ratp_bb.h
> +++ b/include/ratp_bb.h
> @@ -57,12 +57,7 @@ struct ratp_command {
>  			       int req_len,
>  			       struct ratp_bb **rsp,
>  			       int *rsp_len);
> -}
> -#ifdef __x86_64__
> -/* This is required because the linker will put symbols on a 64 bit alignment */
> -__attribute__((aligned(64)))
> -#endif
> -;
> +};
>  
>  #define BAREBOX_RATP_CMD_START(_name)							\
>  extern const struct ratp_command __barebox_ratp_cmd_##_name;				\
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


