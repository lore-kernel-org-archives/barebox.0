Delivery-date: Mon, 18 Dec 2023 07:51:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rF7TS-002TVV-2Q
	for lore@lore.pengutronix.de;
	Mon, 18 Dec 2023 07:51:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rF7TS-0001je-6l
	for lore@pengutronix.de; Mon, 18 Dec 2023 07:51:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Up4E0CIhZ2k76zGMX2752wBQqKRBGCZODJ0wo86XTpk=; b=ner0P7+rHxE27BugE/v9SGwC2q
	NxhJyOe4/bzczNI1bxIT4E+kk8NHjvWdHmxIoltmlU+NfkjvESjB2yGHef6rqB18kHuJVpx6e/BWS
	re+HYZRsGZfHkyvk9jxj95gDsUR4YpIhvxqJ+bHdswSV7HQzqLt/RwZzdIOZLwSPCSfjQSDvPiF0g
	5IH9ULcylZMrm34sGqMWV6/YjsimvvLcOrUcOb5fF9Kw1yWR61tRLVvrOeeY+ojaXpX070++wQGwF
	ysj5RAyVpQUzBdzI7Pt+bFCDEsDe+6sNbH2nNH+Qv0haKrFeQPiXu3EUexVMGWtiCGV2qXhxhW2MR
	WddQEnPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF7S1-009Gd9-01;
	Mon, 18 Dec 2023 06:50:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF7Rw-009Gb1-1v
	for barebox@lists.infradead.org;
	Mon, 18 Dec 2023 06:50:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rF7Rq-0001Nk-27; Mon, 18 Dec 2023 07:49:54 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rF7Rp-00Gdie-MB; Mon, 18 Dec 2023 07:49:53 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rF7Rp-007XES-Jk; Mon, 18 Dec 2023 07:49:53 +0100
Date: Mon, 18 Dec 2023 07:49:53 +0100
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20231218064953.GP1318922@pengutronix.de>
References: <20231215-doc-fit-images-for-chainloading-v2-0-2fa359eee535@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231215-doc-fit-images-for-chainloading-v2-0-2fa359eee535@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231217_225000_656809_0634F41E 
X-CRM114-Status: GOOD (  17.33  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 0/2] doc: user: barebox: add method for fit image
 chainloading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Dec 15, 2023 at 02:43:52PM +0100, Stefan Kerkmann wrote:
> This small series fixes one small usage of `bootm` and adds a section
> for chainloading a Barebox FIT image from U-Boot.
> 
> To: open list:BAREBOX <barebox@lists.infradead.org>
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
> Changes in v2:
> - Added missing SOB
> - Added Acked-by from Ahmad Fatoum 
> - Link to v1: https://lore.kernel.org/r/20231215-doc-fit-images-for-chainloading-v1-0-9b704facdc3b@pengutronix.de

Applied, thanks

Sascha

> 
> ---
> Stefan Kerkmann (2):
>       doc: user: barebox: bootz instead of bootm
>       doc: user: barebox: add chainloading of fit images
> 
>  Documentation/user/barebox.rst | 28 +++++++++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> ---
> base-commit: 154884d7c0c9dac4578848849c8dac3afc5da3fc
> change-id: 20231215-doc-fit-images-for-chainloading-aea9783921d2
> 
> Best regards,
> -- 
> Stefan Kerkmann <s.kerkmann@pengutronix.de>
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


