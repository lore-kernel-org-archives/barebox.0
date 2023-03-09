Delivery-date: Thu, 09 Mar 2023 11:51:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDrz-00EijE-QL
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:51:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDrz-0002RW-15
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:51:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=azzRdM+LkAWxz/yTlQuuA6UX3XSMpoLMNMeLpAg3Urk=; b=bQTd0U+pGmHp49Hpa/NPsIMQ8X
	LyGmNcJLc4XSPfN4HJKGEjUZm+uYNMxNcVVzd7NGD64814iEd+JUSaJlakThgypOsHVwofENTKnb7
	M/cSzjUd+AGF74olrL5QNLh5YVfqlirYyvffsSOIjlVZ3fZvUB+z46PxsLSG/nfhAABMtcB0R9Lx3
	wwGnzvWkV7Es+mCKnDSaHvOZRuYtXYEF5sc+JAFFTXyMKRbvKOBz/9yA0E5mtZ6KvKTnyoMBiH0YO
	NREbOM4vDqy7BE0mjjUnvDykxRLCITQmCkIRca8pHdrFXVssCfcK5ixNtPMDZJD3wNVwei23eXGyZ
	+svZi/7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDqu-009DjX-9E; Thu, 09 Mar 2023 10:50:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDqp-009Dib-FC
	for barebox@bombadil.infradead.org; Thu, 09 Mar 2023 10:50:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=azzRdM+LkAWxz/yTlQuuA6UX3XSMpoLMNMeLpAg3Urk=; b=qrjlAihH2Od6qpg1qHm0JD00nU
	gnn2tDib/WTu3WJGb907H0S90gECtqaQm+3nVkxIYgsgUbIPWs1HaD8d/UYwQ1v4MVSXjBQg+zG9D
	qNsrcmS/U5+MLCYf8hKkuFqRIEZ6sIlLlcmUP1J59WJmeVpauOnfwXhrJFIg2R4Frfsrl+7vsMIN8
	acyiIx88zPVQ7AYt2NmnI4urhUCiavpjna7RG6ocB3LRVrbvQqaKONW9QuNpngpyKPKle9iauutjd
	lxmTa8UnkPAZ07y1JTyhEhuX6u6VSj5VwdJws8bN+6/xFWTHxEflvThZI38fRY28BtK0uIqxQES/g
	kO5rVYnQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1paDql-0005ZS-13
	for barebox@lists.infradead.org;
	Thu, 09 Mar 2023 10:50:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paDqk-0002DB-KY; Thu, 09 Mar 2023 11:50:18 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paDqk-0004Oh-D9; Thu, 09 Mar 2023 11:50:18 +0100
Date: Thu, 9 Mar 2023 11:50:18 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230309105018.GB5784@pengutronix.de>
References: <20230307101446.2077676-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230307101446.2077676-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_105019_641936_51FAEC30 
X-CRM114-Status: GOOD (  19.77  )
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
Subject: Re: [PATCH master 1/5] net: dsa: realtek: rtl8365mb: add missing new
 line to log print
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 07, 2023 at 11:14:42AM +0100, Ahmad Fatoum wrote:
> Line should normally not show up, but when it does, have it look nice.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/realtek-dsa/rtl8365mb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/realtek-dsa/rtl8365mb.c b/drivers/net/realtek-dsa/rtl8365mb.c
> index 8f7d122da28f..1f11ed4ed4bc 100644
> --- a/drivers/net/realtek-dsa/rtl8365mb.c
> +++ b/drivers/net/realtek-dsa/rtl8365mb.c
> @@ -1216,7 +1216,7 @@ static int rtl8365mb_detect(struct realtek_priv *priv)
>  
>  	if (!mb->chip_info) {
>  		dev_err(priv->dev,
> -			"unrecognized switch (id=0x%04x, ver=0x%04x)", chip_id,
> +			"unrecognized switch (id=0x%04x, ver=0x%04x)\n", chip_id,
>  			chip_ver);
>  		return -ENODEV;
>  	}
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


