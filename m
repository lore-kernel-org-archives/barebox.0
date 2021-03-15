Delivery-date: Mon, 15 Mar 2021 09:51:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiwj-0000dL-MH
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 09:51:29 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLiwi-0005PC-Aq
	for lore@pengutronix.de; Mon, 15 Mar 2021 09:51:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Ps/mTKutH5y9t6vX6lcUZmGkh+1vxjNxbRZWaQheZ8=; b=URmDGuFbznN0RXlYGoIThZ+Tr
	pgiV35Ihdh7UyurRF0DCgU+wz1nrnwpPgNlk/Fl4+/3iDbwC2mdgOzcPmCURrlFyaYeyWAw3cKay8
	B15tbA1bFPQ7Uh0yDSosCJDpg6TpEPCE/knam+OqMJe36yExTVJJLXqL/cZLol6gC/4UBp1X+dv5c
	Jj/eu19oH5qTs2wH8efBMSYusgcNX93f3ltRhsd9p5ZcBqUUMJg4lgXAb9ZkgHy+9C7yByWtq5TVQ
	+HT04mFsN/GsbN4WgeR8RvNs+H4vBvZpAqlfkWqNlxZxhkIYVAh3Kf4x+8NaJ38pv6ycUIu8e9GaV
	HSwwRwIvw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLivN-00FIN5-NV; Mon, 15 Mar 2021 08:50:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLisM-00FHfU-DJ
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 08:47:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLisL-0004fF-93; Mon, 15 Mar 2021 09:46:57 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lLisK-0007JA-Vq; Mon, 15 Mar 2021 09:46:56 +0100
Date: Mon, 15 Mar 2021 09:46:56 +0100
To: Denis Osterland-Heim <denis.osterland@diehl.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20210315084656.GM23724@pengutronix.de>
References: <20210311170334.22607-1-denis.osterland@diehl.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311170334.22607-1-denis.osterland@diehl.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:46:46 up 25 days, 12:10, 80 users,  load average: 0.10, 0.09, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_084659_367513_1114CDBA 
X-CRM114-Status: GOOD (  25.13  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] image-fit: ignore rsa by image selection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 11, 2021 at 05:07:21PM +0000, Denis Osterland-Heim wrote:
> From: Denis Osterland-Heim <Denis.Osterland@diehl.com>
> =

> For hash algorithm selection, only the first argument of the tuple is
> needed. The ',' is included to avoid false-positive matches.
> =

> Signed-off-by: Denis Osterland-Heim <Denis.Osterland@diehl.com>
> ---
>  common/image-fit.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/common/image-fit.c b/common/image-fit.c
> index 538e61f51..2c5ef7f68 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -230,11 +230,9 @@ static struct digest *fit_alloc_digest(struct device=
_node *sig_node,
>  return ERR_PTR(-EINVAL);
>  }
> =

> -if (strcmp(algo_name, "sha1,rsa2048") =3D=3D 0) {
> +if (strncmp(algo_name, "sha1,", 5) =3D=3D 0) {
>  algo =3D HASH_ALGO_SHA1;
> -} else if (strcmp(algo_name, "sha256,rsa2048") =3D=3D 0) {
> -algo =3D HASH_ALGO_SHA256;
> -} else if (strcmp(algo_name, "sha256,rsa4096") =3D=3D 0) {
> +} else if (strncmp(algo_name, "sha256,", 7) =3D=3D 0) {
>  algo =3D HASH_ALGO_SHA256;
>  } else{
>  pr_err("unknown algo %s\n", algo_name);
> --
> 2.30.2
> =

> Diehl Connectivity Solutions GmbH
> Gesch=E4ftsf=FChrung: Horst Leonberger
> Sitz der Gesellschaft: N=FCrnberg - Registergericht: Amtsgericht
> N=FCrnberg: HRB 32315
> =

> ________________________________
> =

> Der Inhalt der vorstehenden E-Mail ist nicht rechtlich bindend. Diese E-M=
ail enthaelt vertrauliche und/oder rechtlich geschuetzte Informationen.
> Informieren Sie uns bitte, wenn Sie diese E-Mail faelschlicherweise erhal=
ten haben. Bitte loeschen Sie in diesem Fall die Nachricht.
> Jede unerlaubte Form der Reproduktion, Bekanntgabe, Aenderung, Verteilung=
 und/oder Publikation dieser E-Mail ist strengstens untersagt.
> =

> - Informationen zum Datenschutz, insbesondere zu Ihren Rechten, erhalten =
Sie unter:
> =

> https://www.diehl.com/group/de/transparenz-und-informationspflichten/
> =

> The contents of the above mentioned e-mail is not legally binding. This e=
-mail contains confidential and/or legally protected information. Please in=
form us if you have received this e-mail by
> mistake and delete it in such a case. Each unauthorized reproduction, dis=
closure, alteration, distribution and/or publication of this e-mail is stri=
ctly prohibited.
> =

> - For general information on data protection and your respective rights p=
lease visit:
> =

> https://www.diehl.com/group/en/transparency-and-information-obligations/
> =

> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

