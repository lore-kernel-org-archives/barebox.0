Delivery-date: Thu, 16 Dec 2021 14:13:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxqZF-008Sh3-2f
	for lore@lore.pengutronix.de; Thu, 16 Dec 2021 14:13:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxqZ8-0005Fz-UP
	for lore@pengutronix.de; Thu, 16 Dec 2021 14:13:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrRrmH+zF74Ph6/X6cwg/SbS5pG2BLCTN7IolpVX2kY=; b=ot3Z42NccmBvne
	pHMDwzIKyI/y0RzLCuuL4w9HN/ZUhSh+wSUQur2+guSYzygkS9fckDoCQO67twSDHVMSyVaxYDZIS
	74dI68V1mapB00QwLIXqkMYAZKI9Eh0cZVRgjfw9tbfq/0OU58VjI077Su3O4nhKdySnzn7NUzcMP
	4a/0dWv308C/jTzQefB+FjuLmbz/g7V4wd6gea/ZyyTbd6sBd+jlP/Fr+X/VvUiRb5B9dvt2by1B7
	bMkBHpbhH5S+hZ5EqQSnO2HMZrtzUehI9x3XcGvMMSlJNggEvFkWYSt8W1zQQ5XCpBShDNVYgAn22
	p0ubBOk5jXaZtS5Sf6bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxqXV-005fIE-3M; Thu, 16 Dec 2021 13:11:17 +0000
Received: from mxout.security-mail.net ([85.31.212.42]
 helo=fx302.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxq4o-005Uim-9r
 for barebox@lists.infradead.org; Thu, 16 Dec 2021 12:41:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id 29B973D3B1E6
 for <barebox@lists.infradead.org>; Thu, 16 Dec 2021 13:41:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1639658496;
 bh=ye5luLtUFIsonS1M1fpRDcYreyQv6bohWR1BHtRBngE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=r9ObPqYiV1R4qs98hR+8vU5AYmcIVAAevlq+L7uOGgl85Pcf2sW+43OUgNYIBSBP5
 CXdOkjCOaPcejrelsNGDf6fNsMmHgvodoPTp1W8zTPMAvD7mpAHHZNWTk7bKePQJ6X
 SdABF6+2Vxc9kjoKQwu2GhfR0xkpAclo+ainDN2Q=
Received: from fx302 (localhost [127.0.0.1]) by fx302.security-mail.net
 (Postfix) with ESMTP id D56313D3B1CD; Thu, 16 Dec 2021 13:41:35 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx302.security-mail.net (Postfix) with ESMTPS id 5DF673D3B1C5; Thu, 16 Dec
 2021 13:41:35 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 4520127E0398; Thu, 16 Dec 2021
 13:41:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 2EBDF27E03AD; Thu, 16 Dec 2021 13:41:35 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 vzfB3aK9fH4E; Thu, 16 Dec 2021 13:41:35 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 1E49727E0398; Thu, 16 Dec 2021
 13:41:35 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <a634.61bb33ff.5d853.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 2EBDF27E03AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1639658495;
 bh=B7gTPGJkFevFoY/v+U6lHL5c0axe6IwL1uSBYFV5foY=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=evhGHv8E24U40dz1UzzFfJR4FkuYtOhx4KOX//HvNqxHfL1Ak5AivSlAZ+sWAWpCZ
 d1AXo3dYaP6eTIENudWNa9paOOKSbsXrhMWs21X3g7lpi2omxKK6ZBtPqGbfKZtki/
 BKYUM7vz0opkdUEQ2vloNWntCOJPw4pk1CDxV1Bw=
Date: Thu, 16 Dec 2021 13:41:34 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211216124134.GG3394@tellis.lin.mbt.kalray.eu>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
 <20211213210905.3399551-22-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211213210905.3399551-22-s.hauer@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_044138_551386_C576FD15 
X-CRM114-Status: GOOD (  28.81  )
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
Subject: Re: [PATCH 21/25] edit: Improve behaviour on efi-stdio console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Mon, Dec 13, 2021 at 10:09:01PM +0100, Sascha Hauer wrote:
> Our console driver for the EFI simple text protocol does not support
> the "\e[1S" escape sequence to scroll the window which means sedit
> doesn't work properly. Disable smartscroll when the efi-stdio console
> is active. While at it put the screen height reduction into the same
> dynamic test.

FYI

>From the terminfo manpage:
In order to scroll text up, a program will go to the bottom left corner
of the screen and send the ind (index) string. [...] Parameterized
versions of the scrolling sequences are indn and rin which have the same
semantics as ind and ri except that they take one parameter, and scroll
that many lines. [...]

>From infocmp on my system: ind=\n and indn=\e[%p1$pS

So the smart scroll could be replaced by a move to the last line plus \n


> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/edit.c | 46 ++++++++++++++++++++++++++++++++++++----------
>  1 file changed, 36 insertions(+), 10 deletions(-)
> 
> diff --git a/commands/edit.c b/commands/edit.c
> index 30448cbc04..592cf4aa3d 100644
> --- a/commands/edit.c
> +++ b/commands/edit.c
> @@ -522,6 +522,25 @@ static int read_modal_key(bool is_modal)
>  	return -EAGAIN;
>  }
>  
> +static bool is_efi_console_active(void)
> +{
> +	struct console_device *cdev;
> +
> +	if (!IS_ENABLED(CONFIG_DRIVER_SERIAL_EFI_STDIO))
> +		return false;
> +
> +	for_each_console(cdev) {
> +		if (!(cdev->f_active & CONSOLE_STDIN))
> +			continue;
> +		if (!(cdev->f_active & CONSOLE_STDOUT))
> +			continue;
> +		if (!strcmp(dev_name(cdev->dev), "efi-stdio"))
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  static int do_edit(int argc, char *argv[])
>  {
>  	bool is_vi = false;
> @@ -539,16 +558,7 @@ static int do_edit(int argc, char *argv[])
>  		return 1;
>  
>  	screenwidth = 80;
> -
> -	/*
> -	 * The EFI simple text output protocol wraps to the next line and scrolls
> -	 * down when we write to the right bottom screen position. Reduce the number
> -	 * of rows by one to work around this.
> -	 */
> -	if (IS_ENABLED(CONFIG_EFI_BOOTUP))
> -		screenheight = 24;
> -	else
> -		screenheight = 25;
> +	screenheight = 25;
>  
>  	/* check if we are not called as "edit" */
>  	if (*argv[0] != 'e') {
> @@ -560,6 +570,22 @@ static int do_edit(int argc, char *argv[])
>  			is_vi = true;
>  	}
>  
> +	if (is_efi_console_active()) {
> +		/*
> +		 * The EFI simple text output protocol wraps to the next line and
> +		 * scrolls down when we write to the right bottom screen position.
> +		 * Reduce the number of rows by one to work around this.
> +		 */
> +		screenheight--;
> +
> +		/*
> +		 * Our console driver for the EFI simple text output protocol does
> +		 * not implement the "\e[1S" sequence we use for scrolling the
> +		 * screen.
> +		 */
> +		smartscroll = 0;
> +	}
> +
>  	cursx  = 0;
>  	cursy  = 0;
>  	textx  = 0;
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
> To declare a filtering error, please use the following link : https://www.security-mail.net/reporter.php?mid=51ef.61b7b6ff.b5dfd.0&r=jmaselbas%40kalray.eu&s=barebox-bounces%2Bjmaselbas%3Dkalray.eu%40lists.infradead.org&o=%5BPATCH+21%2F25%5D+edit%3A+Improve+behaviour+on+efi-stdio+console&verdict=C&c=7aca3328f2dac1c6571b69dba9c6a9e04f98dc81
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

