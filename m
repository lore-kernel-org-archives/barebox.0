Delivery-date: Tue, 21 Feb 2023 11:09:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUPal-00DlAo-DS
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 11:09:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUPak-00074I-2x
	for lore@pengutronix.de; Tue, 21 Feb 2023 11:09:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TR7uuNHJwMOluldNYqe9ckXooBTcU/vzxxTZLPcz51E=; b=2w6ymsdiSWJgXAdoKE1ATZ+PAJ
	2XSJrOoH62s7KYbPv82sUKy56BfmZcNt1JeimsfXr3ibc6/gJ0680oMB4jLXZzBrTRgdwP+nlQtXa
	ErsbTNL+fl1Yi0s5/+6jsE6W6sVo9nsMvETyv3lDq7iXMfVil5aMiS6EPLKdaHSETDDOvO91QXTSH
	wC0CtQCP35vPfj1TCHUHpHNUI8dP9ffcMqRSULOzNR1sXQnGZT5xYJ6NOIcGr+PvVv3++5wAtsFkH
	LXPr47RxGmpnv+vuFzKULOAABXbOpOtGCGdOMoFSQ81fBrqjOfx41IGgIW+0QqFztXPZ4toX6mu9r
	ec1uanNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUPZR-007Knm-3Z; Tue, 21 Feb 2023 10:08:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUPZM-007KmT-8n
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 10:08:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUPZK-0006ty-Pi; Tue, 21 Feb 2023 11:08:18 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUPZK-0003Js-AK; Tue, 21 Feb 2023 11:08:18 +0100
Date: Tue, 21 Feb 2023 11:08:18 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Message-ID: <20230221100818.GC10447@pengutronix.de>
References: <20230217203148.2902038-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230217203148.2902038-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_020820_327981_44C1DED9 
X-CRM114-Status: GOOD (  27.35  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: add new of_fixup command to list and disable
 DT fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 17, 2023 at 09:31:48PM +0100, Ahmad Fatoum wrote:
> For debugging, it can be useful to disable a fixup to rule out it causing
> issues. For platforms supporting kallsyms, we can readily allow enabling
> and disabling fixups by name, so let's add a command that does just that.
> 
> Suggested-by: Daniel Brát <danek.brat@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/Kconfig    | 15 ++++++++
>  commands/Makefile   |  1 +
>  commands/of_fixup.c | 86 +++++++++++++++++++++++++++++++++++++++++++++
>  common/kallsyms.c   |  8 ++---
>  common/oftree.c     | 17 +++++----
>  drivers/of/Kconfig  |  6 ++++
>  include/kallsyms.h  |  4 +++
>  include/of.h        | 10 ++++++
>  8 files changed, 137 insertions(+), 10 deletions(-)
>  create mode 100644 commands/of_fixup.c
> 
> +static int do_of_fixup(int argc, char *argv[])
> +{
> +	struct of_fixup *of_fixup;
> +	int opt, enable = -1;
> +
> +	while ((opt = getopt(argc, argv, "ed")) > 0) {
> +		switch (opt) {
> +		case 'e':
> +			enable = 1;
> +			break;
> +		case 'd':
> +			enable = 0;
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	argv += optind;
> +	argc -= optind;
> +
> +	if ((enable < 0 && argc > 0) || (enable >= 0 && argc == 0))
> +		return COMMAND_ERROR_USAGE;
> +
> +	list_for_each_entry(of_fixup, &of_fixup_list, list) {
> +		int i;
> +		ulong addr = (ulong)of_fixup->fixup;
> +		char sym[KSYM_SYMBOL_LEN];
> +		const char *name;
> +
> +		name = kallsyms_lookup(addr, NULL, NULL, NULL, sym);
> +		if (!name) {
> +			sprintf(sym, "<0x%lx>", addr);
> +			name = sym;
> +		}

Does this fallback make sense? kallsyms_lookup() should always return a
name, otherwise something is really wrong.

> +
> +		if (enable == -1) {
> +			printf("%s(0x%p)%s\n", name, of_fixup->context,
> +			       of_fixup->disabled ? " [DISABELD]" : "");

s/DISABELD/DISABLED/

We can have the same fixup function with different contexts, that's why
you print the context pointer here. Shouldn't we then have a way to
disable a specific fixup, like "of_fixup -d mtd_partition_fixup(0x2fed7a00)"?

Sascha

> +config OF_FIXUP_TOGGLE
> +	bool
> +	help
> +	  This is selected when some device tree fixups may be selectively
> +	  disabled.

Why does this have an extra config option? It doesn't look like it's
saving a lot of binary space.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


