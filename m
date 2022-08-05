Delivery-date: Fri, 05 Aug 2022 09:31:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJrnO-00CEqk-Q3
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 09:31:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJrnP-0004bN-Jf
	for lore@pengutronix.de; Fri, 05 Aug 2022 09:31:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
	References:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pQDvlVpUKVplsiqxHrF07LwCYqIsuZOMHGSMG52OVmo=; b=g+0C2lg4A2Mk/9pTvejYH+lSjt
	SOWDcyrE5k5bPcKU+Ptl4woGpg436P1RBXB4R9mCMoT4VY1kqfF3JayURsEDz5c0ZxXwzjuP+A8GW
	TuwX6jtrL5HS5NmtY8OKJd8elCVNp3t0iWgm+W5NGv5QhrPAhXr0M3U6Oge82NnXkiCWLuZfvgkbo
	STdIQLZXBjPUMfysf8vCGC6w8AEvIeN6eCex9NXi4qqdl+VshMkFmAcxsbXspFkn0fR41ymmfWlQr
	K1MBxa1DStCIx3TMJqbKlK+fHG71Z5jTxEUP6IWZkHEQJb6fI2AE5jn2dyYp4qjX47tFJjtsUkQ/W
	uoWiBptQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJrlX-00CsIA-AZ; Fri, 05 Aug 2022 07:29:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJrkb-00Crea-Mv
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 07:28:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1oJrkP-00047X-My; Fri, 05 Aug 2022 09:27:53 +0200
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1oJrkO-007shU-Tx; Fri, 05 Aug 2022 09:27:52 +0200
References: <20220805040927.1658824-1-ahmad@a3f.at>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Date: Fri, 05 Aug 2022 08:53:00 +0200
In-reply-to: <20220805040927.1658824-1-ahmad@a3f.at>
Message-ID: <6r5yj7up3b.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_002805_805994_2E371470 
X-CRM114-Status: GOOD (  20.38  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] Documentation: devel: project-ideas: update after
 DSA framework addition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Fri, Aug 05 2022 at 06:09 +0200, Ahmad Fatoum <ahmad@a3f.at> wrote:
> We have a proper abstraction for switches now, so drop this idea
> from the list.
>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  Documentation/devel/project-ideas.rst | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/devel/project-ideas.rst b/Documentation/devel/=
project-ideas.rst
> index a3643298ab08..e49bfa6ca4da 100644
> --- a/Documentation/devel/project-ideas.rst
> +++ b/Documentation/devel/project-ideas.rst
> @@ -20,10 +20,8 @@ For GSoC, following barebox developers are mentoring:
>    - Rouven Czerwinski (IRC: ``Emantor``)
>=20=20
>  This list can be edited and extended by sending patches to the mailing l=
ist.
> -Other interesting ideas: Support for new file systems (EROFS, extfat, bt=
rfs).
> -Switch device framework (currently scripts write into a ``/dev/switch`` =
file
> -to configure passthrough), Improvements for barebox-efi (e.g. as a coreb=
oot
> -payload), ... etc.
> +Other interesting ideas: Support for new file systems (EROFS, extfat, bt=
rfs),
> +Improvements for barebox-efi (e.g. as a coreboot payload), ... etc.

as a drive-by, could you fix

  s/Improvements/improvements/

as well?

Best regards
Ulrich


>=20=20
>  Ideas listed below should contain a title, description, expected outcome=
s,
>  skills (and HW if any) required and a difficulty rating.
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


