Delivery-date: Fri, 16 Jun 2023 08:43:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA3B1-008mik-8O
	for lore@lore.pengutronix.de; Fri, 16 Jun 2023 08:43:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA3Ay-0002rh-Ub
	for lore@pengutronix.de; Fri, 16 Jun 2023 08:43:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WU6Cez2v1NL2uYJNohXk3vlemqq8wTn+6i2CRgDQL4o=; b=J0MugfjqHsLUM32LFTZJNvDDJ7
	ISBcRkVDoIIqOywPlQWVU5i8tjTv9EPXP96pmqCZ/gH38XoyeQVmy7Le7HYZyIpmDbvpXJhYA1rY3
	2ORkKn2pnar4S0XetcCSjXW3IVZR96cyuqXMqGoqwkY2Sk5Qq1+IMqaHq+DwnJxY917qojjyiNRQ3
	NohxWbf3sFQ0pNR7Ma2cd/qvxEZ3a3jhrTbe/xV6zFlIPpo4CjYT3rQVoeGYjYs9pgPLy4fWnNPct
	rtY09NyLer9nJkZG2qPzTNGWPqP3W6y9WYgSD1hIeV2IrCVPajgQCfLfXPHV13erX6grimDdkojSA
	duyUfNzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA39n-00H40u-0q;
	Fri, 16 Jun 2023 06:42:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA39k-00H409-2k
	for barebox@lists.infradead.org;
	Fri, 16 Jun 2023 06:42:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qA39i-0002nd-Um; Fri, 16 Jun 2023 08:41:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qA39i-0007nM-F3; Fri, 16 Jun 2023 08:41:58 +0200
Date: Fri, 16 Jun 2023 08:41:58 +0200
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org
Message-ID: <20230616064158.GH18491@pengutronix.de>
References: <20230615135526.30878-1-abbotti@mev.co.uk>
 <20230615155738.39998-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230615155738.39998-1-abbotti@mev.co.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_234200_912529_FFA67FE0 
X-CRM114-Status: GOOD (  24.67  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] scripts: socfpga_import_preloader: Translate DOS line
 endings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ian,

On Thu, Jun 15, 2023 at 04:57:38PM +0100, Ian Abbott wrote:
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
> v2: Corrected tabs in echoed output.
> ---
>  scripts/socfpga_import_preloader | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
> index bd54e1b913..26a8556b1a 100755
> --- a/scripts/socfpga_import_preloader
> +++ b/scripts/socfpga_import_preloader
> @@ -79,6 +79,10 @@ copy_source() {
>  
>  	cp $src $tgt
>  
> +	echo "	Translating DOS line endings..."
> +	sed -i "s/`echo -e '\r'`$//" $tgt

Why `echo -e '\r'` here? A plain \r should work as well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


