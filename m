Delivery-date: Tue, 10 Oct 2023 16:35:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpR-003BQ1-Cv
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:35:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpN-0000Hm-Fa
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:35:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ql1UdRRoKOzwqbHCKk5f4wzlnOodgd0V9I0BBi9nncE=; b=nTUi9409VHjAGQPhzgDu2ZU1Ds
	xYKyWfucytVuXQwu0304NYuWBh6rQYPCgBAf9KEF7gPyZa654MDvJZUoEx4A810K28+vBwHHptMo0
	N6u1b1g/zfNtVwpm6rLy6d788HDxWygImCRHkSdAaJ+mrMZZaBOnFEvG06cPgtd9AdKVWoxcdBXdW
	uXLQ2gsOc7C3C0b7XWACcD0m3RuMZgcuoaPSdWTK6OGhb1MCOf5mdIOkc0BvkOL2sKspo0yaG+kBj
	/43uIVRSGXXMhSOBpH4ziUUGSaAIrODYUzTus3etC9jucBAyoMtKsnK2njdcEZBB2dibUEK2laSaE
	oYK8M0gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDo2-00Da0I-0Q;
	Tue, 10 Oct 2023 14:33:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnt-00DZnI-1Q
	for barebox@bombadil.infradead.org;
	Tue, 10 Oct 2023 14:33:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Ql1UdRRoKOzwqbHCKk5f4wzlnOodgd0V9I0BBi9nncE=; b=NhevGC6Wk/as3Rir/BccHHDyJe
	LkBiP5N11sy++EJEEaAnH4PMB5oenqaJnhy3oiCtRKqmiITgm3dI9Qh4ojtTvQ80LetAr6SiP5e4S
	KN2a5i51HXN1Rs4A04WiRavW5ZNTscOlTPlDPgzDzowyocJZ8EYdVdhaNQWTsSQ5jLyRLhx37MO+Y
	Aq5kxdTuDG/qaYCOv9qtVVYB/WpnSKqWAEBroRznZKYbhG0UJ4ZGiAc9QAYAHWGNFP8epMdv0YZd4
	796ZSs+uaytjTvX8Je3MCgAe1gkPTYI/NgIwdHdsL4l+mDUnHaqJ+88TriIZtTgmLSWeD6ieNcDMh
	YKWw7tMg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDno-00GvIv-1f
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqDno-0007O4-RB; Tue, 10 Oct 2023 16:33:40 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qqDno-000gYU-Em; Tue, 10 Oct 2023 16:33:40 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqDno-00Dl1x-CK; Tue, 10 Oct 2023 16:33:40 +0200
Date: Tue, 10 Oct 2023 16:33:40 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231010143340.GF3114228@pengutronix.de>
References: <20231009115316.2418494-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231009115316.2418494-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_153342_105176_B8FEC192 
X-CRM114-Status: GOOD (  22.61  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: keystore: work around missing initialization
 false positive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 09, 2023 at 01:53:16PM +0200, Ahmad Fatoum wrote:
> clang is unhappy about this. While I can't see how s_len could be used
> uninitialized, there's value in silencing these warnings, so the real
> issues are not as easy to overlook.

Well we have:

	if (file)
		read_file_2(file, &s_len, (void *)&secret_str, FILESIZE_MAX);
	else if (secret_str)
		s_len = strlen(secret_str);

So s_len could be uninitialized after this when both file and secret_str
are NULL. This can't happen due to:

	if (!do_remove && !file && !secret_str)
		return COMMAND_ERROR_USAGE;

and later:

	if (do_remove) {
		...
		return 0;
	}

While I agree that s_len shouldn't slip through uninitialized this is
really buried in the code and I do not wonder when a compiler doesn't
catch this correctly.

Anyway, applied, thanks

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/keystore.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/keystore.c b/commands/keystore.c
> index 4922cf1bebe9..40bcb7105d75 100644
> --- a/commands/keystore.c
> +++ b/commands/keystore.c
> @@ -17,7 +17,7 @@ static int do_keystore(int argc, char *argv[])
>  	const char *file = NULL;
>  	char *secret_str = NULL;
>  	void *secret;
> -	size_t s_len;
> +	size_t s_len = 0;
>  
>  	while ((opt = getopt(argc, argv, "rs:f:")) > 0) {
>  		switch (opt) {
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


