Delivery-date: Wed, 05 May 2021 12:29:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEmo-0007fm-Ry
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:29:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEmo-0000fU-2c
	for lore@pengutronix.de; Wed, 05 May 2021 12:29:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7MDNpOkYBKvnH6NcxVYu6yiruq3G3WUmFkZPBRGzH9M=; b=Jqkw3vwg2pO84gpZb7WdgdRH+
	ESZJaU4aPXS/QKm5JpeOQ7IWzbrKedQKM+eAAYJWdZfUn2fLfo9oaoMJkXRUWneobTmEWK9ZamNFc
	4W72SbxwUSS/cfP13+X/obz6rmy6sy0Zg5WWq7E2jbUypKQ5XbfcQLDM+HbwkN31whnWfbN4vMvBr
	sZjAg/WA8wY3SDxzasc4YtyY031Q1bmx4+tEhHqi0IoHHylavjgHdUNoz8TxynsdyZaDGJZMAQ8eF
	zEDBVLtUVeqVh63AviWZzYla+ObLCwFfXJwPSfAxdDUn9Udkd2fMV9YBo1SWuXLoROM6dMwGLGHNC
	Ndw0lzrQg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leElx-000xGj-Bq; Wed, 05 May 2021 10:28:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEln-000xEG-TT
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:28:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=aUe7fXzeGYPYzYECAXxQH7GZR39Tim3xwiy7AloOM3k=; b=MWIPrXFBudjq5I5tTsg3OYPTIa
 9UsFlNsEv/nb/Ui4HUUazd5My0m+vSkbeXZNFbybJvdcFL+fKkEvSgIxZgqzwdicDgLwKXAng0fsD
 rx/TpHb3+BSBX54627lqupmAoyLPi01jxmEPukpAB/+VD0QuEGRT+fY2/sHznZ866W5LZf+b1kAih
 XrTfr5leqjCxeP3ESR+a1JMwAL+9iRp2kR8j78LLhnznoPj/RFtFaks3TYjHgHLYWH72V2S+vE5aX
 M2yKGze252lSVKK6NN2CgnjoPDq2PDpGy9ekjjvAPEngEJxTX4r8G1arh4ueSurA+WyG6bcnPhp2+
 zShqqdtg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leElj-004fjv-Hy
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:28:42 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1leEli-0000Wu-8q; Wed, 05 May 2021 12:28:38 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
 <20210505100900.88141-3-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <02abfee4-1269-f7ef-0e17-88f910c9c2c1@pengutronix.de>
Date: Wed, 5 May 2021 12:28:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210505100900.88141-3-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_032839_622794_715F06B5 
X-CRM114-Status: GOOD (  18.07  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/9] RISC-V: boards: erizo: make it possible to use nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 05.05.21 12:08, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/riscv/boards/erizo/lowlevel.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo/lowlevel.c
> index d9edb530b7..185de6ed77 100644
> --- a/arch/riscv/boards/erizo/lowlevel.c
> +++ b/arch/riscv/boards/erizo/lowlevel.c
> @@ -7,8 +7,11 @@
>  ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
>  {
>  	extern char __dtb_z_erizo_generic_start[];
> +	extern void __barebox_nmon_entry(void);
>  
>  	debug_ll_ns16550_init();
> +	if (IS_ENABLED(CONFIG_NMON))
> +		__barebox_nmon_entry();

Nitpick: How about moving the #ifdef into the
header file, so you can do barebox_nmon_entry(); without ifdefing?

Anyways: Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

>  	putc_ll('>');
>  
>  	/* On POR, we are running from read-only memory here. */
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

