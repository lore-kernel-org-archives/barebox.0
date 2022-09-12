Delivery-date: Mon, 12 Sep 2022 11:42:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfxv-0026Vp-KC
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 11:42:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfxu-0005z6-6K
	for lore@pengutronix.de; Mon, 12 Sep 2022 11:42:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FQYUASuyEh9ySrOA3j0GbD9oQVRsjDA2+uHJrVLXj5U=; b=K8rsrHg+w+J/y9IkAxtow++6m5
	CaUaYbNlrygONlK2ECuWSffIC6CHExDGD/WqA/c21gFRrtERxRfxKtpXhozDV+CjENczZhsEeIMrW
	NbxP+FpdkAXLiGN9osTIUO/PbAl7PsaFjv/3nxPd3LN18jXvVTMRPqIYjN70feBBucHAtVb1Ln/N1
	N2rMdYR0JnX0VRqiEG/qApLluPtI0rR9hb0BOXRS2ZKCO0fw15TQFsBzirtvv0m7oiU4+DHo/Bdgq
	jH8XdFJt2LPVswRChlntBDcJbwNRgC57TdtI1DOzRAXIbOkaeHSBufa4K/EvW0/oB5WCbAZ48U8Gm
	xNUWaD4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfwT-008LJg-88; Mon, 12 Sep 2022 09:41:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfwO-008LIF-02
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 09:41:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXfwM-0005ps-F7; Mon, 12 Sep 2022 11:41:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXfwM-0008H7-68; Mon, 12 Sep 2022 11:41:18 +0200
Date: Mon, 12 Sep 2022 11:41:18 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220912094118.GM24324@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
 <20220905095557.596891-12-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905095557.596891-12-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_024120_070522_7E7D5C47 
X-CRM114-Status: GOOD (  20.34  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 11/32] of: silence warning about never-read error
 assignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 11:55:36AM +0200, Ahmad Fatoum wrote:
> err is assigned specific error codes, but they are not propagated and
> instead NULL is returned for error. Make it explicit that we handle all
> errors the same by typecasting to (void).

This warning likely goes back to assigning the variable 'err' right
before jumping to the label 'err':

	err = -EINVAL;
	goto err;

The assignment is indeed unused. We should remove this assignment
rather than suppressing the resulting warning.

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/resolver.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/of/resolver.c b/drivers/of/resolver.c
> index 2457ae96a412..510d36f95192 100644
> --- a/drivers/of/resolver.c
> +++ b/drivers/of/resolver.c
> @@ -272,6 +272,7 @@ out:
>  err:
>  	of_delete_node(result);
>  
> +	(void)err;
>  	return NULL;
>  
>  }
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


