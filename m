Delivery-date: Thu, 28 May 2026 15:22:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSaga-004ke2-3B
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 15:22:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSaga-0002eH-9V
	for lore@pengutronix.de; Thu, 28 May 2026 15:22:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=hTEWk8FKaNsFmIB8UWSr9YLe5+Sph95bCgwxzbKVmMM=; b=Iy9FrNnTCunoEuhS3U6RMbgRHo
	24kZu7urs9cjCVEE7hhnveooKI1nj6H6l4wYw5WvwYmdJ0MWCAHeopNfFSKCMQhPmKZDTc6DEH/IW
	UfR0nKmYRJH3eCxIfILQ5h019kWOWBr0ziLrBUuvsWD3W45hRZvhw5I7mIX2Y2iZv7ztftI4Q1FVX
	FIkAhOnWzpKOxPjswU/ekIGLrWQ8Bm/s5r1NPIVlf2LS2p+vOmQkUWLbaBioPHKWDj2x/bueNNG/j
	4Y8HysDl8iY5nhxYpd2wzMNSAtRk63mQLfxj9TuSMoOmlozAh92X2gXVB1X5RPb5VVTEVLhVZg3XV
	NzL94ejA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSa85-00000005jfu-2PVm;
	Thu, 28 May 2026 12:46:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSa83-00000005jf9-0FHA
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 12:46:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wSa80-0006oc-3m; Thu, 28 May 2026 14:46:24 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wSa7z-002H69-0a;
	Thu, 28 May 2026 14:46:23 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wSa7z-00000003egS-2bxT;
	Thu, 28 May 2026 14:46:23 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Alexander Shiyan" <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org, "Miaoqian Lin" <linmq006@gmail.com>, "Heiko
 Stuebner" <heiko@sntech.de>, "Alexander Shiyan" <eagle.alexander923@gmail.com>
In-Reply-To: <20260528121532.1242489-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 May 2026 12:46:23 +0000
Message-Id: <E1wSa7z-00000003egS-2bxT@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_054627_338549_08666E2F 
X-CRM114-Status: GOOD (  19.07  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: rockchip: Fix error pointer check after
 rockchip_clk_register_gate_link()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On 2026-05-28 15:15, Alexander Shiyan wrote:
> From: Miaoqian Lin <linmq006@gmail.com>
>=20
> Replace NULL check with IS_ERR_OR_NULL() check after calling
> rockchip_clk_register_gate_link() since this function
> returns error pointers (ERR_PTR).
>=20
> Fixes: c62fa612cfa6 ("clk: rockchip: implement linked gate clock support")
> Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
> Link: https://patch.msgid.link/20250805030358.3665878-1-linmq006@gmail.com
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/clk/rockchip/clk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

BTW better quote the whole Linux commit message including the tags and
make yourself the author of the patch. The original Linux commit authors
and reviewers are likely not interested in that the patch is merged in
barebox. Also when the original patch carries a reviewed-by: tag this
is only valid in the Linux context, not in barebox.

Sascha


>=20
> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index 987c3bc518..d01574c60b 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -566,7 +566,7 @@ void rockchip_clk_register_late_branches(struct devic=
e *dev,
>  			break;
>  		}
> =20
> -		if (!pdev)
> +		if (IS_ERR_OR_NULL(pdev))
>  			dev_err(dev, "failed to register device for clock %s\n", list->name);
>  	}
>  }
> --=20
> 2.52.0
>=20
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


