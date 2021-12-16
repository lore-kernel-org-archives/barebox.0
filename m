Delivery-date: Thu, 16 Dec 2021 13:49:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxqCj-008RMv-3Q
	for lore@lore.pengutronix.de; Thu, 16 Dec 2021 13:49:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxqCg-0001tZ-Am
	for lore@pengutronix.de; Thu, 16 Dec 2021 13:49:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvYmH3Rr/fQID5sWpfPmvB5P80WmE+O1txDFWauFe9s=; b=HY+U+hWLqgC5VT
	8WSyDN5FlXrZKsLqN/GhhFhUfE+ZRjy0J1BlaDEoV6C6uBe1zh9JC/tjw0Dj3AdBMi+xXe3UdESkw
	Ki0XQaRXvnsOfx0oU1/pZt70nwohgkiYQovMKD2btChHGIHiyXI1gRqVMKvMQQyl87TPwPdSUMRVf
	HEVpFFECLBpQuTPD16LWhxaq9s8bzxd/4CQ4HgMgMgAmQ/nGMa6aSMhqm9bpr63mU7tM2ybDHea8z
	FT+kQEjz37HtxhQ253lPPlWuDl3N7ZggzE8gpyrcuuObUcHhLAHsNfIRfvuZO9TGt4pL1yDsDBwO6
	XZZ4BAnrstIlKCciIQLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxqAm-005WSx-5C; Thu, 16 Dec 2021 12:47:49 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149]
 helo=fx409.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxplR-005Oe6-BM
 for barebox@lists.infradead.org; Thu, 16 Dec 2021 12:21:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx409.security-mail.net (Postfix) with ESMTP id C01AB3236BB
 for <barebox@lists.infradead.org>; Thu, 16 Dec 2021 13:21:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1639657291;
 bh=amOM63XFSoUqHe04OeD2meYokaRYQeeYMOMl0/45Rio=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=0/hollWZ5Z6XIJAtEkjxMh2NgKQ96j0OAM6wGzPR6ak+2aBqhQ9xn6ATzQIDswaZz
 3c7fFTk75vtZhg9zYHitDSAWX9pLLENUhLetGryWoU4Jmu/2dbuLXzdhud0PY2HmMF
 g0QAyv4tywdm1bSYTTNFtm+zPLDoYWI8eRE8Tc1A=
Received: from fx409 (localhost [127.0.0.1]) by fx409.security-mail.net
 (Postfix) with ESMTP id 34C103235C8; Thu, 16 Dec 2021 13:21:31 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx409.security-mail.net (Postfix) with ESMTPS id 695DE32397A; Thu, 16 Dec
 2021 13:21:27 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id F136A27E0398; Thu, 16 Dec 2021
 13:21:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id DA5F527E03AD; Thu, 16 Dec 2021 13:21:26 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 VWA4-CPIYYX3; Thu, 16 Dec 2021 13:21:26 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id CA64927E0398; Thu, 16 Dec 2021
 13:21:26 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <1657a.61bb2f47.1d7b1.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu DA5F527E03AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1639657286;
 bh=3wK+2jYeHG6W4ZEsQRyjP1N/GVGjuGJ8EU1YUP3tbN0=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=Ne6GZimkmZgmx7BeebM8CQtdp0bkU9GA5BkjKkfwbZEyRHYyETyV5BGA4rwKKKeQC
 Kz0WjKaHXkNbxMBhUTWyYXaj/PL/c2Rw810MYqC/Y1FFLS6IbDzNV2qEgcWFpGceUL
 Voykmo4FqxDj0A2lscRG1qcTdgGZoptiEm6CgtF0=
Date: Thu, 16 Dec 2021 13:21:25 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211216122125.GF3394@tellis.lin.mbt.kalray.eu>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
 <20211213210905.3399551-6-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211213210905.3399551-6-s.hauer@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_042137_771830_507364AF 
X-CRM114-Status: GOOD (  16.57  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 05/25] console: Fix message colours
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Mon, Dec 13, 2021 at 10:08:45PM +0100, Sascha Hauer wrote:
> The correct code to change colours is "\033[1;31m", not "\033[31m". Fix
> that.

Uhmm I am curious why this is the "correct" way. From what I can tell
the terminfo for me says that 'setaf' red is '\e[31m'.
Maybe the EFI consol doesn't support setaf "termcap", an only has the
'sgr' capability, and the non-bold red selected as '\e[0;31m'.

cheers

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/console_common.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/common/console_common.c b/common/console_common.c
> index 91a81e50fa..7bef74c543 100644
> --- a/common/console_common.c
> +++ b/common/console_common.c
> @@ -23,12 +23,12 @@
>  #ifndef CONFIG_CONSOLE_NONE
>  
>  static const char *colored_log_level[] = {
> -	[MSG_EMERG] = "\033[31mEMERG:\033[0m ",		/* red */
> -	[MSG_ALERT] = "\033[31mALERT:\033[0m ",		/* red */
> -	[MSG_CRIT] = "\033[31mCRITICAL:\033[0m ",	/* red */
> -	[MSG_ERR] = "\033[31mERROR:\033[0m ",		/* red */
> -	[MSG_WARNING] = "\033[33mWARNING:\033[0m ",	/* yellow */
> -	[MSG_NOTICE] = "\033[34mNOTICE:\033[0m ",	/* blue */
> +	[MSG_EMERG] = "\033[1;31mEMERG:\033[0m ",	/* red */
> +	[MSG_ALERT] = "\033[1;31mALERT:\033[0m ",	/* red */
> +	[MSG_CRIT] = "\033[1;31mCRITICAL:\033[0m ",	/* red */
> +	[MSG_ERR] = "\033[1;31mERROR:\033[0m ",		/* red */
> +	[MSG_WARNING] = "\033[1;33mWARNING:\033[0m ",	/* yellow */
> +	[MSG_NOTICE] = "\033[1;34mNOTICE:\033[0m ",	/* blue */
>  };
>  
>  int barebox_loglevel = CONFIG_DEFAULT_LOGLEVEL;
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 
> 
> To declare a filtering error, please use the following link : https://www.security-mail.net/reporter.php?mid=3e86.61b7b6f5.c4cd9.0&r=jmaselbas%40kalray.eu&s=barebox-bounces%2Bjmaselbas%3Dkalray.eu%40lists.infradead.org&o=%5BPATCH+05%2F25%5D+console%3A+Fix+message+colours&verdict=C&c=c280cd527bf219cdc889e73ba093616095b2dfa3
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

