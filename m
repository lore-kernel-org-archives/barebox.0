Delivery-date: Wed, 31 May 2023 12:36:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4JCO-0048UX-7I
	for lore@lore.pengutronix.de; Wed, 31 May 2023 12:36:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4JCL-0004jH-JK
	for lore@pengutronix.de; Wed, 31 May 2023 12:36:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n5i4rkIK8FAKCz3yzN/JZ13rdUKlOzySwfvBBIYcvAU=; b=OuYqzGHepPaSRCnIA6zeGnKCsC
	cRk9KiPzK8n63Y3dBKIE98edkuPqxJrQvJSzOmzJO5pdiHgL+x1VWH5LjLHzlCs77gvLqY1DGlNho
	eE99tcuMZIryzdkP7BChAjzJ+7HCYYZ1d3ZJnIzOaNECaaGsm5ZFdqKgu6bgSkaWpf9j/vtNYBcmb
	T4kgzJobbftXkQMoYw6CSLeCIpNPR67O4ua+iHZUK9u8eMaUGJPVz9/Yo/jL6k9aL0OmaYKPlSxZ3
	+Pda/X0kKaIMhOATNlw2rZRZIBKf5KAQUkshckV4gUGroQWdmpwEUkTa6F92C2nGiGOm5TYhSjNxA
	VrB1YNlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4JB8-00H7xX-01;
	Wed, 31 May 2023 10:35:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4JB4-00H7ul-2a
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 10:35:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4JB3-0004TA-Iv; Wed, 31 May 2023 12:35:37 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4JB3-0002eJ-91; Wed, 31 May 2023 12:35:37 +0200
Date: Wed, 31 May 2023 12:35:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <ahmad@a3f.at>
Message-ID: <20230531103537.GG17518@pengutronix.de>
References: <20230531102609.844477-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531102609.844477-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_033538_836657_1A61BBAC 
X-CRM114-Status: GOOD (  21.16  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/2] scripts: omap3-usb-loader: fix heap overflow
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Gna, forget this. Wrong patches sent.

Sascha

On Wed, May 31, 2023 at 12:26:08PM +0200, Sascha Hauer wrote:
> From: Ahmad Fatoum <ahmad@a3f.at>
> 
> Newer GCC versions correctly warn that the buffer allocated by realloc
> is too small. Correct the size.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> Link: https://lore.barebox.org/20230531062703.670521-3-ahmad@a3f.at
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  scripts/omap3-usb-loader.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/omap3-usb-loader.c b/scripts/omap3-usb-loader.c
> index a8d626c32f..31a03be8e7 100644
> --- a/scripts/omap3-usb-loader.c
> +++ b/scripts/omap3-usb-loader.c
> @@ -784,7 +784,7 @@ int main(int argc, char *argv[])
>  				file.addr = OMAP_BASE_ADDRESS;
>  
>  				/* commit the file object with the processor specified base address */
> -				args->files = realloc(args->files, filecount);
> +				args->files = realloc(args->files, filecount * sizeof(*args->files));
>  				args->numfiles = filecount;
>  				args->files[filecount - 1] = malloc(sizeof (file));
>  				memcpy(args->files[filecount - 1], &file, sizeof (file));
> -- 
> 2.39.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


