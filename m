Delivery-date: Thu, 15 Jun 2023 17:51:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9pFx-008BWo-DV
	for lore@lore.pengutronix.de; Thu, 15 Jun 2023 17:51:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9pFv-0001LG-2z
	for lore@pengutronix.de; Thu, 15 Jun 2023 17:51:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zG4p0cHmuMn4Ip+1QEMhQh0picTdERMTWd2nK2lqtHs=; b=vlfvxSHiEjNB9bTw+4KCoNs24i
	i7duRSP/XiB46aqHQHShSWj4Qr0hvw4etIrx28ZkBNsvgeh+8+4TyifAF0C8QzBvrQ4HrpTft/Bzn
	6RUnEjUIp+z5AXS8y30YZA4tGxjwpJu3YsPvy/4NqVltruvftzDxCLp0B4KNaOpPEqzjNeMPTrWcd
	QYpukIhB3cOYeCflm4WpoF8wJu+R702J9de6dGwADvHMUWh3IHAuxcaHKSJqXrBpGYWecdpjBhzO7
	ue7OLsybqm2Fyk1iqIe/LR4YTYD9U9nOEkZmR+4+4UXS9dTU0y391Mc6bobEKkAkifGGAgf+CrJpt
	Ct3qOhKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9pEe-00FL7C-13;
	Thu, 15 Jun 2023 15:50:08 +0000
Received: from smtp69.iad3b.emailsrvr.com ([146.20.161.69])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9pEa-00FL5d-2B
	for barebox@lists.infradead.org;
	Thu, 15 Jun 2023 15:50:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20221208-6x11dpa4; t=1686844200;
	bh=KSiwT44qH0NC739GlbZ9KR3KQXEaXGAOiz0nSInAiQI=;
	h=Date:Subject:To:From:From;
	b=mks6m3ZUF4AxYxdQRSEGbq9UGApadfDuaqiW6PYHR/21fnRcoRPIYeqQo/o89XjZE
	 MDcaimndBuHukIuueNrfBGXVj+orPNNdw7uYgC+nLz4OkXFBUwZCMPvjP6BjYQleoK
	 2AC8AvgYM42jqvAFhhJMqwbM5dObIqoAXAJOx4w4=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp17.relay.iad3b.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 8CA25A0123
	for <barebox@lists.infradead.org>; Thu, 15 Jun 2023 11:50:00 -0400 (EDT)
Message-ID: <a1e4481e-8ed9-55a0-a65d-ff182a54b360@mev.co.uk>
Date: Thu, 15 Jun 2023 16:49:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-GB
To: barebox@lists.infradead.org
References: <20230615135526.30878-1-abbotti@mev.co.uk>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <20230615135526.30878-1-abbotti@mev.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Classification-ID: f4a29f79-fa3c-48ce-9efe-db161afc360b-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_085004_859043_50AF28C4 
X-CRM114-Status: GOOD (  19.19  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] scripts: socfpga_import_preloader: Translate DOS line
 endings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 15/06/2023 14:55, Ian Abbott wrote:
> If the handoff files were generated on a Windows system, they will have
> DOS line endings.  The `indent` program (with the options used by the
> script) does a lousy job tidying up those files, leaving ASCII CR
> characters embedded in the lines.  This is particularly bad for array
> initializers that have one value per line, because they all end up on a
> single line with embedded ASCII CR characters between each value.
> 
> Add an initial `sed` command to `copy_source()` to match and remove an
> ASCII CR character from the end of each input line.
> 
> Also output a message before running `unifdef` and fix the spelling of
> "paths" in one of the other messages.
> 
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>   scripts/socfpga_import_preloader | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
> index bd54e1b913..156382009e 100755
> --- a/scripts/socfpga_import_preloader
> +++ b/scripts/socfpga_import_preloader
> @@ -79,6 +79,10 @@ copy_source() {
>   
>   	cp $src $tgt
>   
> +	echo "  Translating DOS line endings..."
> +	sed -i "s/`echo -e '\r'`$//" $tgt
> +
> +	echo "  Fixing conditional compilation..."
>   	unifdef -D HCX_COMPAT_MODE=1 -D ENABLE_INST_ROM_WRITE=1 $tgt -o $tgt

I got the whitespace wrong in those "echo" commands. They should start 
with a TAB, not two spaces!

I'll send a 'v2' patch shortly.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-



