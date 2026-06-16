Delivery-date: Tue, 16 Jun 2026 17:23:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZVd0-006XlT-31
	for lore@lore.pengutronix.de;
	Tue, 16 Jun 2026 17:23:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZVd0-000161-7h
	for lore@pengutronix.de; Tue, 16 Jun 2026 17:23:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GeZagrgOifofQE+TzciXbdip6lxxxvC/D00BOALpsFA=; b=KOLv1c0C/sFQ/JuPSG+urZ15YY
	33mm2mxZZFnQz43tn63QUh3zpusgauNw/Z2+1/2LQt/ohbPn9YZUXCKtC9mBjaosjf7zmEIJ7KiAT
	KIhkDpLukTVYG7fQ8WFUJt8v71Y6x/rVjM1mKUpvRqfutX6f0ogB7mMT4sPgxFsYSyewljlZKRvOH
	F7Elpd0b+izmUBiqenZCd128gm2kzFxpOV60xZV0LM0FY2JDn6tPkzm5hYHERtBaZPUm+C297gDEN
	unxqnG8/Ewd5s/gXvv8qwKEjsLBofk2Tt9y96Y9rVrKPbeIRQ+32MiS3yxQ4pfitivq7mIUG1hpPs
	Mo6kwPCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVbq-0000000G01P-3znB;
	Tue, 16 Jun 2026 15:21:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVbm-0000000G011-2fov
	for barebox@lists.infradead.org;
	Tue, 16 Jun 2026 15:21:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wZVbk-0000UO-H1; Tue, 16 Jun 2026 17:21:44 +0200
Message-ID: <b74b8f1d-f301-403a-8522-f2963c6f2974@pengutronix.de>
Date: Tue, 16 Jun 2026 17:21:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Thorsten Scherer <t.scherer@eckelmann.de>, barebox@lists.infradead.org
References: <20260616151127.17557-1-t.scherer@eckelmann.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260616151127.17557-1-t.scherer@eckelmann.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_082146_714226_7CB2664E 
X-CRM114-Status: GOOD (  15.88  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: Layerscape: Fix typo im documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 6/16/26 5:11 PM, Thorsten Scherer wrote:
> Signed-off-by: Thorsten Scherer <t.scherer@eckelmann.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Spoiler: s/imaag/image/

> ---
>  Documentation/boards/layerscape.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/boards/layerscape.rst b/Documentation/boards/layerscape.rst
> index 5791b8632626..1467314954be 100644
> --- a/Documentation/boards/layerscape.rst
> +++ b/Documentation/boards/layerscape.rst
> @@ -27,11 +27,11 @@ The barebox binary is expected to be located 4K bytes into the SD-Card::
>  From there on, ``barebox_update`` can be used to flash
>  barebox to the QSPI NOR-Flash if required::
>  
> -  barebox_update -t qspi /mnt/tftp/barebox-${global.hostname}-qspi.imaag
> +  barebox_update -t qspi /mnt/tftp/barebox-${global.hostname}-qspi.image
>  
>  Flashing to the eMMC is possible likewise::
>  
> -  barebox_update -t sd /mnt/tftp/barebox-${global.hostname}-sd.imaag
> +  barebox_update -t sd /mnt/tftp/barebox-${global.hostname}-sd.image
>  
>  .. note:: Some SoCs like the LS1046A feature only a single eSDHC.
>    In such a case, using eMMC and SD-Card at the same time is not possible.

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



